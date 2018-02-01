/*
 *  $MOE$/html/jsincludes_moe.js
 *  Single include file for javascripts used with CCG's MOE documentation.
 *
 *  Copyright (c) 2014 Chemical Computing Group Inc.
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 */

 
var gman_CopyYear = "2015";  // can be different from the MOE year.
var gman_MoeYear = "2014";
var gman_MoeVersion = gman_MoeYear+".09";

function getMoeVersion() { return gman_MoeVersion; }
function getMoeYear() { return gman_MoeYear; }


// Grab the hash from the URL so we can correctly jump to it.
// This is needed for when auto-TOC content moves the initial anchor position.
// It also allows auto-TOC links to be used as anchors.
// The final step in this process is in afterFocus(), after the auto-TOC is created.
var gman_urlHash = window.location.hash;
var gman_urlOrig = window.location.href;
if (gman_urlHash) { // replace anchor url with non-anchor version.
	var repurl = gman_urlOrig.replace("#"+gman_urlHash,"");
	window.location.replace(repurl); // use replace() so back-button stays correct.
}


// The following two variables are needed for IE support. 
// They are more accurately defined after ccg_common.js is loaded.
var gman_usingOldIE = (navigator.userAgent.search(/MSIE [78]/) > -1); // true for IE7-8 (reasonably)
var gman_usingSadIE = (navigator.userAgent.search(/MSIE /) > -1); // true for IE7-10 (reasonably)


// Needed to support older browsers (IE7, IE8, *and* IE9, plus some others).
// Use getClasses(element) instead of element.classList.
// Original function retrieved 2014-08-14 from 
// http://blog.alexanderdickson.com/manipulating-classes-with-javascript
var getClasses = function(elem) {
	if (elem != undefined) {
		return elem.className.split(/\s+/);
	} else {
		return [];
	}
};


// Define document.querySelector & document.querySelectorAll for old browsers (IE7)
// Original function retrieved 2014-08-14 from 
// https://gist.github.com/Fusselwurm/4673695
if (gman_usingSadIE) {
(function () {
	var style, select;
	style = document.createStyleSheet(),
	select = function (selector) {
		var all, resultSet;
		all = document.all,
		resultSet = [];
		style.addRule(selector, "foo:bar");
		for (var i = 0; i < all.length; i++) {
			if (all[i].currentStyle.foo === "bar") {
				resultSet.push(all[i]);
			}
		}
		style.removeRule(0);
		return resultSet;
	};

	//  don't overwrite if browser already supports them
	if (document.querySelectorAll || document.querySelector) {
		return;
	}

	document.querySelectorAll = function (selector) {
		return select(selector);
	};
	document.querySelector = function (selector) {
		return select(selector)[0] || null;
	};
}());
}


// IEcallback function retrieved 2014-08-28 from https://stackoverflow.com/a/15437678.
// Deal with IE 9-10 onReadyState events.
var IEcallback = function (elementParam, cbParam){ 
	var IEstate = elementParam.readyState;
	if (IEstate == "complete") { // cannot rely on just readyState == "loaded"; it must be "complete".
		cbParam(); 
	} else {
		setTimeout(function() {IEcallback(elementParam, cbParam); }, 10);
	} 
};


 // loadScript example downloaded 2014-04-08; from Stack Overflow at https://stackoverflow.com/posts/950146/revisions
 // Loads an external javascript and runs the callback function after the script is loaded.
function loadScript(url, callback)
{
    // Adding the script tag to the head
	var head = document.getElementsByTagName("head")[0];
    var script = document.createElement("script");
    script.type = "text/javascript";
    script.src = url;

    // Then bind the event to the callback function.
    // There are several events for cross browser compatibility.    
    if (gman_usingOldIE) { // this event needed for IE7-8, but fires many times in IE9-10.
		script.onreadystatechange = callback;
	} else if (gman_usingSadIE) { // for IE9-10 do another layer, to ensure the callback happens just once.
		script.onreadystatechange = IEcallback(script, callback);
	} else { // non-IE
		script.onload = callback;
	}
    // Fire the loading
    head.appendChild(script);
}

 // Loads an external css file and runs the callback function after the style is loaded.
function loadStyle(url, callback)
{
    // Adding the link tag to the head
	var head = document.getElementsByTagName("head")[0];
    var link = document.createElement("link");
    link.rel = "stylesheet";
	link.type = "text/css";
	link.media = "screen,print";
    link.href = url;

    // Then bind the event to the callback function.
    // There are several events for cross browser compatibility.
    if (gman_usingOldIE) { // this event needed for IE7-8, but fires many times in IE9-10.
		link.onreadystatechange = callback;
	} else if (gman_usingSadIE) { // for IE9-10 do another layer, to ensure the callback happens just once.
		link.onreadystatechange = IEcallback(link, callback);
	} else { // non-IE
		link.onload = callback;
	}

    // Fire the loading
    head.appendChild(link);
}


function findMoeOnlineStatus() {
	var isOnline = false;
	//var findstr = "moemanuals"; // for testing, set to something in local path.
	var findstr = "www.chemcomp.com";
	var myloc = window.location.href;
	var n = myloc.search(findstr);
	if (n > -1) {
		isOnline = true;
	}
	return isOnline;
}

var gman_isOnline = findMoeOnlineStatus();
function isMoeOnline() { return gman_isOnline; }


var gman_depth = -1; 
var gman_home = "";
function findMoePrefix() {
	var fullpath = "";
	var scriptsrc = "";
	var prefix = "";
	var findstr = "include/jsincludes_moe.js";  // this file has the correct relative path in each man page, so use it as a reference.
	var docscripts = document.scripts;
	for (var i=0; i < docscripts.length; i++) {
		scriptsrc = docscripts[i].getAttribute("src");
		var n = scriptsrc.search(findstr);
		if (n > -1) {
			gman_depth = n;
			fullpath = docscripts[i].src;
			if (n == 0) {
				prefix = "./";
			} else {
				prefix = scriptsrc.split(findstr, 1)[0];
			}
			gman_home = fullpath.split(findstr, 1)[0];
			break;
		}
	}
	return prefix;
}

var gman_prefix = findMoePrefix();
function getMoePrefix() { return gman_prefix; }

function getMoeDepth() { getMoePrefix(); return gman_depth; }

function getMoeHome() { getMoePrefix(); return gman_home; }


/**
*** Javascript's asynchronous calling was really mucking things up, especially if MathJax took some time (about 1 second)
*** to return from its CDN. Often, the footer would not get displayed. To rectify this, the header, footer, and MathJax
*** scripts are called synchronously. Header JS is loaded, then Footer JS is loaded, then header and footer functions 
*** are called to write them to the page when the DOM is ready; and finally the MathJax JS to init and display MathJax 
*** is called. The overall delay is minimal because the header and footer parts are so fast. And this seems to be the only
*** way to make sure everything is displayed correctly.
**/ 

var src = ""; 

var gotcssMoeStyle = function() {  // this is the callback in loadStyle() when the manstyle.css file is finished loading.
	//alert ("loaded manstyle.css");
	return;
}

var gotcssCCGStyle = function() {  // this is the callback in loadStyle() when the ccg_common.css file is finished loading.
	//alert ("loaded ccg_common.css");
	src = getMoePrefix() + "include/manstyle.css?depth=" + getMoeDepth();
	loadStyle(src, gotcssMoeStyle);
}
	
var checkingFocus;

function afterDomLoaded() {  
	//alert("Dom Loaded");

	// Checking for focus is needed in case a page is opened in a new tab that doesn't immediately get focus.
	if ( document.hasFocus() ) {
		afterFocus();
	} else {
		checkingFocus = setInterval ("checkFocus ()", 200);
	}
}

function checkFocus () {
	if ( document.hasFocus() ) {
		clearInterval(checkingFocus);
		afterFocus();
	}
	else {
		//alert("The document doesn't have the focus.");
	}
}

function afterFocus() {  
	//alert("after focus");
	writeMoeHeader();
	writeMoeFooter();

	// Start MathJax if '<div id="useMathJax"></div>' exists in the htm file.
	// This relies on finding a document id, so it must be called only *after* the DOM is loaded.
	if (document.getElementById("useMathJax") != null) {
		startMoeMathJax();
	}

	// Disable all links in the doc if '<div id="noOnlineLinks"></div>' exists in the htm file and the file is online.
	// Disable links (if needed) only after header and footer written, so those links are affected too.
	if (isMoeOnline()) {
		if (document.getElementById("noOnlineLinks") != null) {
			DisableAllLinks(true); 
		}
	}
	
	// Auto-create TOC (within the <div> tag) based on <h#> tags, if '<div id="toc-list"></div>' exists in htm.
	if (document.getElementById("toc-list") != null) {
        // If '<div id="toc-list"><script>var gman_OrderedListTOC=bool; </script></div>' 
        //   is used to explicitly define whether to use OrderedLists in the TOC, use that value;
        //   otherwise, use the default value below:
        gman_OrderedListTOC = typeof gman_OrderedListTOC !== 'undefined' ? gman_OrderedListTOC : false;
		generateDocTOC(2, 5, gman_OrderedListTOC); 
	}
	
	// Go to the anchor only after auto-TOC has been generated.
	if (gman_urlHash) window.location.replace(gman_urlOrig);
	
	// Initialize the CCG Common Toolkit (needed for Go-To-Top button, and others...)
	InitCB();
}

var gotjsMoeFooter = function() {  // this is the callback in loadScript() when the footer_moe.js file is finished loading.
   //alert ("loaded footer js");
   
   // Ensure the DOM is loaded before writing the header and footer.
   if (!gman_usingSadIE) {
		document.addEventListener("DOMContentLoaded", afterDomLoaded(), false); 
	} else { 
		//window.attachEvent("onload", function(){afterDomLoaded()}); // the onload event doesn't fire properly with MathJax, so use next work-around.
		// work-around for IE7-10 retrieved on 2014-08-14 from http://javascript.info/tutorial/onload-ondomcontentloaded
		gman_domLoaded = false;
		if (document.documentElement.doScroll) {
		  function tryScroll(){
			if (gman_domLoaded) { return; }
			try {
			  document.documentElement.doScroll("left");
			  gman_domLoaded = true;
			  afterDomLoaded();
			} catch(e) {
			  setTimeout(tryScroll, 10);
			}
		  }
		  tryScroll();
		}
	}
	
	src = getMoePrefix() + "include/ccg_common.css?depth=" + getMoeDepth();
	loadStyle(src, gotcssCCGStyle);
}

var gotjsMoeHeader = function() {  // this is the callback in loadScript() when the header_moe.js file is finished loading.
	//alert ("loaded header js");
	src = getMoePrefix() + "include/footer_moe.js?depth=" + getMoeDepth();
	loadScript(src, gotjsMoeFooter);
}

var gotjsMoeMathJax = function() {  // this is the callback in loadScript() when the mathjax_moe.js file is finished loading.
	//alert ("loaded MathJax js for Moe");
	src = getMoePrefix() + "include/header_moe.js?depth=" + getMoeDepth();
	loadScript(src, gotjsMoeHeader);
}

var gotjsCCGCommon = function() {  // this is the callback in loadScript() when the ccg_common.js file is finished loading.
	//alert ("loaded CCG Common js");

	if (gman_usingSadIE) {
		// More accurately determine the current browser and its version:
		var currentBrowser = browserInfo();  // defined in ccg_common.js
		gman_usingOldIE = false; // for IE 7-8
		gman_usingSadIE = false; // for IE 7-10
		if (currentBrowser[0] == 'Internet Explorer') {
			var ver = currentBrowser[1];
			if ( (ver == 8) || (ver == 7) ) {
				gman_usingOldIE = true;
				gman_usingSadIE = true;
			} else if (ver < 11) {
				gman_usingSadIE = true;
			}
			//alert (gman_usingOldIE + " " + gman_usingSadIE);
		}
	}
		
	src = getMoePrefix() + "include/mathjax_moe.js?depth=" + getMoeDepth();
	loadScript(src, gotjsMoeMathJax);
}

var gotjsMoeNoLinks = function() {  // this is the callback in loadScript() when the nolinks_moe.js file is finished loading.
	//alert ("loaded nolinks js");
	src = getMoePrefix() + "include/ccg_common.js?depth=" + getMoeDepth();
	loadScript(src, gotjsCCGCommon);
}

// Script processing starts here.
if (isMoeOnline()) {
	src = getMoePrefix() + "include/nolinks_moe.js?depth=" + getMoeDepth();
	loadScript(src, gotjsMoeNoLinks);
} else { // skip loading nolinks js, and start with loading header js.
	gotjsMoeNoLinks();
}

