// Original function retrieved 2014-08-26 from StackOverflow at 
// https://stackoverflow.com/a/187946
var generateDocTOC = function (tocStartLevel, tocEndLevel, useOrderedList) {

    // defaults:
	// <h1> is used for doc title; TOC is usually <h2> - <h5>; <h6> is a minor subsection not in TOC.
	tocStartLevel = typeof tocStartLevel !== 'undefined' ? tocStartLevel : 2;
    tocEndLevel = typeof tocEndLevel !== 'undefined' ? tocEndLevel :5;
    useOrderedList = typeof useOrderedList !== 'undefined' ? useOrderedList : false;
	
	if (gman_usingOldIE) { useOrderedList = false; } // IE7 doesn't correctly display the legal-number order list.

	var key = "ccgts_"; // key to use with generated links, to prevent collisions with existing links.
    var toc = "";
    var level = tocStartLevel - 1; 
	var hasTOC = false;
	var listStart = "<ol class=\"tight\">";
	var listEnd = "</li></ol>";
	
	if (!useOrderedList) {
		listStart = "<ul class=\"tight\">";
		listEnd = "</li></ul>";
	}
	document.body.innerHTML =
        document.body.innerHTML.replace(
            /<h([\d])(.*)>([^<]+?)<\/h([\d])>/gi,
            function (str, openLevel, hclassText, titleText, closeLevel) {
			// str is the entire regex in the replace method.
			// openLevel is the 1st paren in the regex.
			// hclassText is the 2nd paren in the regex.
			// titleText is the 3rd paren in the regex.
			// closeLevel is the 4th paren in the regex.
                if (openLevel != closeLevel) {
                    return str;
                }
				
				if (openLevel < tocStartLevel) {
					return str;
				}

				if (openLevel > tocEndLevel) {
					return str;
				}

                if (openLevel > level) {
                    toc += (new Array(openLevel - level + 1)).join(listStart);
                } else if (openLevel < level) {
                    toc += (new Array(level - openLevel + 1)).join(listEnd);
					toc += "</li>";
                } else {
					toc += "</li>";
				}
				
				hasTOC = true;
                // TOC links are all internal (within the same page), so enable them even for online docs where external links are disabled.
				var aclassText = "class=\"linkAlways ";  // no end-quote, in case need to add "example" class.
				// TOC entries that are Examples are formatted via class="example".
				if (titleText.substr(0, 7).toLowerCase() == "example") {
					aclassText += " example ";
				}
				aclassText += "\"";  // add the end-quote.

                level = parseInt(openLevel);

                var anchor = key + titleText.replace(/ /g, "_");
                toc += "<li><a " + aclassText + "href=\"#" + anchor + "\">" + titleText + "</a>";
/*
                return "<h" + openLevel + "><a name=\"" + anchor + "\">"
                    + titleText + "</a></h" + closeLevel + ">";
*/
                return "<a name=\"" + anchor + "\"></a><h" + openLevel + hclassText + ">"
                    + titleText + "</h" + closeLevel + ">";
            }
        );

    if (hasTOC) {
        toc += (new Array(level - tocStartLevel + 1)).join(listEnd);
    }

    document.getElementById("toc-list").innerHTML = toc; //IE9-10 fire the DOMLoaded function multiple times, so don't use +=.
	//alert ("end of TOCgen");
};



// Original function retrieved 2014-08-15 from
// http://www.danielacton.com/Mashups/JS-Breadcrumbs/
var insertCrumbs = function() {
	var moehome = getMoeHome();
	var full = document.location.href;
	var match = full.split(moehome)[1];
	var div = document.getElementById("MoeCrumb");
	if (div == undefined) {return;}
	
	var sep = '&nbsp;<b>&raquo;</b>&nbsp;';
	var aPref = '<a href="';
	var aBefore = '" class="crumb">';
	var aAfter = '</a>';

	var txt = "";
	var baseUrl = moehome;
	var subUrl = "";
	var components = match.split('/');
	
	for (var i = 0; i < components.length - 1; i++) {
		subUrl = subUrl + components[i]	 + '/';	
		txt += sep + aPref + baseUrl + subUrl + aBefore + components[i] + aAfter;
	}
	txt += sep + components[i].split(".htm")[0];
	div.innerHTML = txt;
}



var writeMoeHeader = function() { 
	//alert("header");
	var useCrumbs = false;  // disable crumbs until the doc folders are better organized.
	var headerText = "";
	var imgEnd = "";
	var docTitle = document.title;
	
	// use the DOMContentLoaded event to ensure the MoeHeader <div> is defined in the DOM before calling getElementById().
	// call the writeMoeHeader function only after the DOMContentLoaded event fires.
	var divHeader = document.getElementById("MoeHeader");
	
	if (gman_usingOldIE) {imgEnd = "png";} else {imgEnd = "svg";} // svg not supported in IE7-8;
	
	if (divHeader.className == "TOC") { // TOC has its own header.
		useCrumbs = false; // never use crumbs on the index page.
		headerText += 
			'<table border="0" padding="0" margin="0" width="100%"> \
			<tr> \
			<td width="272" valign="bottom"> ';
		headerText +=
			'	<img src="' + getMoePrefix() + 'images/MOE_' + getMoeYear() + '_banner.' + imgEnd + '" \
				alt="MOE ' + getMoeYear() + ' banner" align="left" width="271" height="32" border="0" /> \
			</td> \
			<td align="center" valign="bottom"> \
				<input type="button" onclick="menuView(\'short\');" value="Short View" /> \
				&nbsp;&nbsp; \
				<input type="button" onclick="menuView(\'long\');" value="Long View" /> \
				&nbsp;&nbsp;&nbsp;&nbsp; \
			</td> \
			<td width="170" valign="bottom"> ';
		headerText +=
			'	<img src="' + getMoePrefix() + 'images/ccglogo.' + imgEnd + '" \
				alt="CCG Logo" align="right" width="169" height="60" border="0" /> \
			</td> \
			</tr> \
			</table>  \
			<hr noshade="noshade" />';			
	} else {
		if (isMoeOnline()) { // when online, CCG logo link always works and goes to CCG homepage.
			headerText +=
			'<a href="http://www.chemcomp.com/" class="linkAlways">';
		} else { // when offline, CCG logo goes to manuals index page.
			headerText +=
			'<a href="' + getMoePrefix() + 'index.htm">';
		}
		headerText +=
			'<img src="' + getMoePrefix() + 'images/ccglogo.' + imgEnd + '" \
			alt="CCG Logo" align="right" width="169" height="60" border="0" /> </a> ';
		headerText +=
			'<a href="' + getMoePrefix() + 'index.htm"> \
			<img src="' + getMoePrefix() + 'images/MOE_' + getMoeYear() + '_banner.' + imgEnd + '" \
			alt="MOE ' + getMoeYear() + ' banner" align="left" width="135" height="16" border="0" /> </a> \
			<div id="MoeCrumb" class="crumb">&nbsp;</div> \
			<h1 class="title">' + docTitle + '</h1> \
			<hr noshade="noshade" />';
	}
/*	
	if (useBackToTopButton) {
		headerText +=
			'<div class="ccg_gototop" id="moe_totop" style="left:-100px"> \
			<img src="' + getMoePrefix() + 'images/back_to_top.png" \
			alt="Back to top" width="24" height="30" border="0" /> </div>';
	}
*/	
	divHeader.innerHTML = headerText;
	if (useCrumbs) {insertCrumbs();}
}

