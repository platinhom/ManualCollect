var writeMoeFooter = function() {
	//alert ("footer");
	var useBackToTopButton = true;
	var footerText = "";
	var imgEnd = "";
	var fcnref = "/fcnref";
	var apiref = "/apiref";
		
	var docDir = window.location.pathname.replace(/[\\\/][^\\\/]*$/, '').slice(-7);
	
	// use the DOMContentLoaded event to ensure the MoeFooter <div> is defined in the DOM before calling getElementById().
	// call the writeMoeFooter function only after the DOMContentLoaded event fires.
	var divFooter = document.getElementById("MoeFooter");

	if (gman_usingOldIE) {imgEnd = "png";} else {imgEnd = "svg";} // svg not supported in IE7-8;
	
	if (divFooter.className == "TOC") { // TOC shouldn't refer to itself in the footer
		footerText += '<p> </p>';
	} else {
		footerText += '<p> <a href="' + getMoePrefix() + 'index.htm">MOE Table of Contents</a>';
		if (docDir===fcnref) { // add fcnindex next to TOC
			footerText += ' &nbsp;<b>|</b>&nbsp; <a href="' + getMoePrefix() + 'fcnindex.htm">SVL Function Index</a> </p>';
		} else if (docDir===apiref) { // add apifcnindex and fcnindex next to TOC
			footerText += ' &nbsp;<b>|</b>&nbsp; <a href="' + getMoePrefix() + 'apifcnindex.htm">API Function Index</a> \
			&nbsp;<b>|</b>&nbsp; <a href="' + getMoePrefix() + 'fcnindex.htm">SVL Function Index</a> </p>';
		} else {
			footerText += ' </p>';
		}
	}
	footerText += 
		'<hr noshade="noshade" /> \
		<a href="http://www.chemcomp.com" class="linkAlways"> <img src="' + getMoePrefix() + 'images/ccgicon.' + imgEnd + '" \
		alt="CCG Logo Icon" align="left" width="30" height="30" border="0" hspace="5" vspace="1" /> </a> \
		<font size="2"> \
		<a href="' + getMoePrefix() + 'release_notes/legal.htm">Copyright</a> &copy; 1997&ndash;'+ gman_CopyYear + ' \
		<a href="http://www.chemcomp.com" class="linkAlways">Chemical Computing Group Inc.</a><br /> \
		<a href="mailto:info@chemcomp.com" class="linkAlways"><i>info@chemcomp.com</i></a> \
		</font>';
	
	if (useBackToTopButton) {
        ccg_gototopy = 25;  // move it down a bit from the default position of 30.
		footerText +=
			'<div class="ccg_gototop" id="moe_totop" style="left:-100px"> \
			<img src="' + getMoePrefix() + 'images/back_to_top.png" \
			alt="Back to top" width="24" height="30" border="0" /> </div>';
	}
	
	divFooter.innerHTML = footerText;
}
