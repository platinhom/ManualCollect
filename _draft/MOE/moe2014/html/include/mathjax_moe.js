/*
 *  $MOE$/html/include/mathjax_moe.js
 *  MathJax configuration for use with CCG's MOE documentation.
 *
 *  Full MathJax installation information is at 
 *  http://docs.mathjax.org/en/latest/installation.html
 *  The local MathJax installation included with the MOE documentation
 *  (at $MOE$/html/lib/mathjax/) has been reduced following the guide at
 *  https://github.com/mathjax/MathJax-docs/wiki/Guide%3A-reducing-size-of-a-mathjax-installation
 *
 *  Copyright (c) 2014 Chemical Computing Group Inc.
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */


// user configs:
var tryCDN = true; // whether to try to get MathJax from its CDN; set to false to always use the local install of MathJax.
var forceHtmlRender = false; // whether to always use HTML-CSS to render MathJax, even for local install of MathJax. (set to true if using Chrome.)

// IE overrides to user configs:
if (gman_usingSadIE) {tryCDN = false;} // IE7-10 don't work with CDN, so always use local install for those browsers.
if (gman_usingOldIE) {forceHtmlRender = true;} // IE7-8 don't support SVG, so always use HTML-CSS for those browsers.

//       Use the script src from the https secure CDN to prevent cross-site scripting and man-in-the-middle attacks.
//       Regular (nonsecure) CDN at: src="http://cdn.mathjax.org/mathjax/latest/MathJax.js"
var mjUrlCDN = "https://cdn.mathjax.org/mathjax/latest/MathJax.js";
//var mjUrlCDN = "https://cdn.mathjax.org/mathjax/latest/MathJax_TEST-CDN-FAIL.js"; // for testing (file does not exist)

//LOCAL INSTALL: Change the url in the code immediately following these comments, 
//               using the full file path to your installation of MOE, followed by '/html/lib/mathjax/MathJax.js'.
//               Some possible examples:
//                   var mjUrlLoc = "file:///C:/Program%20Files%20%28x86%29/moe/html/lib/mathjax/MathJax.js";
//                   var mjUrlLoc = "file:///C:/Program%20Files/moe/html/lib/mathjax/MathJax.js";
//                   var mjUrlLoc = "file:///C:/moe/html/lib/mathjax/MathJax.js";
//                   var mjUrlLoc = "file:///moe/html/lib/mathjax/MathJax.js";
//       NOTE: using MathJax.js from a local source (instead of the CDN) can affect the way math fonts are displayed.
//       This is why SVG (instead of HTML-CSS) is used by default to render MathJax when MathJax is loaded locally.
//       For more information, see http://docs.mathjax.org/en/latest/installation.html#firefox-and-local-fonts
//       and http://docs.mathjax.org/en/latest/misc/faq.html#why-is-mathjax-using-image-fonts-instead-of-web-fonts
//  The getMoePrefix() function is defined in jsincludes_moe.js
var mjUrlLoc = getMoePrefix() + "lib/mathjax/MathJax.js";
//var mjUrlLoc = getMoePrefix() + "lib/mathjax/MathJax_TEST-LOCAL-FAIL.js"; // for testing (file does not exist)



// Configure some MathJax options. Must be done before calling the MathJax.js script.
function configMathJax() {
//alert("config mathjax");
var head = document.getElementsByTagName("head")[0];
var script = document.createElement("script");
script.type = "text/x-mathjax-config";
var config =
  'MathJax.Hub.Config({ \n' +
  '  jax: ["input/TeX","output/HTML-CSS","output/SVG"], \n' +
  '  extensions: ["tex2jax.js","MathMenu.js","MathZoom.js","FontWarnings.js"], \n' +
//  '  extensions: ["tex2jax.js","MathMenu.js","MathZoom.js"], \n' +
  '  skipStartupTypeset: true,  // when true, must call MathJax.Hub.Typeset() to typeset the page. \n' +
  '  menuSettings: {  // MathZoom settings until user sets own values. \n' +
  '    zoom: "Hover",  // zoom trigger. (Hover is for tool tips, Click for equation ref links, Double-Click not discoverable.) \n' +
  '    zscale: "200%"  // zoom scaling factor; can be set to any of the values in the Zoom Factor submenu of the context menu. \n' +
  '  }, \n' +      
  '  MathMenu: { \n' +
  '      showRenderer: true,  // whether to allow user to switch among: HTML-CSS, MathML, or SVG Math displays. \n' +
  '      showMathPlayer: false,  // whether MathPlayer plugin for IE is used (when installed). \n' +
  '      showFontMenu: false,  // whether to allow user to switch Math display fonts. \n' +
  '      showDiscoverable: true  // whether to allow user to select Highlight on Hover. \n' +
  '  }, \n' +
  '  "HTML-CSS": { \n' +
  '    availableFonts: ["TeX"],  // support only TeX font locally. \n' +
  '    imageFont: null  // do not allow image fonts b/c they render so poorly and are >7MB in size. \n' +
  '  }, \n' +
  '  FontWarnings: { \n' +
  '    removeAfter: 0,  // show the FontWarning message until user closes the warning window manually. \n' +
  '    Message: { \n' +
  '      webFont: "",  // remove the message used when MathJax uses web-based fonts. \n' +
  '      noFonts: [ \n' +
  '        ["closeBox"], \n' +
  '        ["noFonts", \n' +
  '          "MathJax cannot find any local or web-based fonts to render this page. "+ \n' +
  '          "Image fonts are not being used because of their poor performance. "+ \n' +
  '          "Instead, MathJax is falling back on generic unicode characters in "+ \n' +
  '          "the hope that your browser will be able to display them. Some "+ \n' +
  '          "characters may not show up properly, or possibly not at all, "+ \n' +
  '          "and the overall visual experience is extremely poor."], \n' +
  '        ["fonts"], \n' +
  '        ["favorSVG"], \n' +
  '        ["badFonts"], \n' +
  '        ["clearCookie"] \n' +
  '      ] \n' +
  '    }, \n' +
  '    HTML: { \n' +
  '      favorSVG: [ \n' +
  '        ["p"], \n' +
  '        ["favorSVG", \n' +
  '          "If you cannot install a local font, try rendering the page using SVG. "+ \n' +
  '          "Select the context menu of an equation, click on its \\\"Math Settings\\\" menu, "+ \n' +
  '          "then the \\\"Math Renderer\\\" submenu, and select \\\"SVG\\\"." \n' +
  '        ] \n' +
  '      ], \n' +
  '      badFonts: [ \n' +
  '        ["p"], \n' +
  '        ["badFonts", \n' +
  '          "If this rendering problem persists, open the mathjax_moe.js file and "+ \n' +
  '          "ensure that the value of forceHtmlRender is false. Using a different "+ \n' +
  '          "web browser might also solve this rendering problem. "+ \n' +
  '          "For more information and other solutions, see the [MathJax FAQ](%1).", \n' +
  '           "http://docs.mathjax.org/en/latest/misc/faq.html#why-is-mathjax-using-image-fonts-instead-of-web-fonts" \n' +
  '        ] \n' +
  '      ], \n' +
  '      clearCookie: [ \n' +
  '        ["p"], \n' +
  '        ["clearCookie", \n' +
  '          "To see this message again, clear the \\\"mjx.fontWarn\\\" cookie from your web browser." \n' +
  '        ] \n' +
  '      ] \n' +
  '    } \n' +
  '  }, \n' +
  '  TeX: { \n' +
  '    extensions: ["AMSmath.js","AMSsymbols.js","action.js","mhchem.js"],  // see http://docs.mathjax.org/en/latest/tex.html \n' +
  '    equationNumbers: { \n' +
  '      autoNumber: "all",  // "none", "all", or "AMS" for equation numbering only via \\equation. \n' +
  '      useLabelIds: true  // make element IDs use \\label name rather than equation number \n' +
  '    } \n' +
  ' }, \n' +
  '  tex2jax: { \n' +
  '    // do not use $ for inline math b/c already use it in many places as environment variables. \n' +
  '    inlineMath: [ ["\\\\(","\\\\)"] ],  // use escaped parens for displaying inline Math. \n' +
  '    displayMath: [ ["\\\\[","\\\\]"] ],  // use escaped brackets for displaying Math on its own line. \n' +
  '    preview: ["{LaTeX expression}"]  // until MathJax displays the Math, "{LaTeX expression}" text is displayed. \n' +
  '  } \n' +
  '}); \n';
if (window.opera) {script.innerHTML = config;} else {script.text = config;}
head.appendChild(script);
}

var runAfterMJLoaded = function()
{
	window.clearTimeout(timeoutIdCDN);  // clear timeout so the MathJaxCDNTimeout function doesn't run.
	window.clearTimeout(timeoutIdLoc);  // clear timeout so the MathJaxLocTimeout function doesn't run.
	// Put here any other config to do after MathJax is loaded.
	if (forceHtmlRender) {
		MathJax.Hub.Queue(["setRenderer", MathJax.Hub, "HTML-CSS"]);
	} else {
		if (favorSVG) {
			MathJax.Hub.Queue(["setRenderer", MathJax.Hub, "SVG"]);
		} else {
			MathJax.Hub.Queue(["setRenderer", MathJax.Hub, "HTML-CSS"]);
		}
	}	
	MathJax.Hub.Queue(["Typeset",MathJax.Hub]);
}  


// This callback function is called if the CDN MathJax library is not found within the timeoutValCDN timeout OR if tryCDN is false, 
//   AND the Local MathJax library is not found within the timeoutValLoc timeout.
var MathJaxLocTimeout = function() 
{
	if (typeof MathJax == 'undefined') {
		// Find everything marked with class="LaTeX" and make it light red so it is obvious this is not the intended display.
		var nodeList = document.querySelectorAll(".LaTeX");
		for (var i = 0, length = nodeList.length; i < length; i++) {
			nodeList[i].style.color = "rgb(192,128,128)";
		}
		alert("Local MathJax library not found. To fix, open the mathjax_moe.js file, search for 'LOCAL INSTALL', and follow the instructions given there.");
	}
}


// This callback function is called if the CDN MathJax library is not found within the timeoutValCDN timeout OR if tryCDN is false. 
var MathJaxCDNTimeout = function() 
{
	var timeoutValLoc=2000; // set timeout (in ms) to retrieve MathJax locally.
	favorSVG = true; // b/c using local MathJax, favor SVG instead of HTML to render MathJax, to prevent local font problems in Firefox and IE.
	if (gman_usingOldIE) { 
		mjUrlExt = '?config=TeX-AMS_HTML'; // don't confuse IE7-8 by potentially using SVG.
	} else {
		mjUrlExt = '?config=TeX-AMS_SVG-HTML'; // b/c using local MathJax, use this modified config to use SVG or HTML to render MathJax.
	}
	//alert(mjUrlLoc);
	timeoutIdLoc = window.setTimeout(MathJaxLocTimeout, timeoutValLoc);
	loadScript(mjUrlLoc + mjUrlExt, runAfterMJLoaded);
}


// Call the MathJax.js script from the secure CDN, with a fallback to local installation.
var timeoutIdCDN, timeoutIdLoc, favorSVG, mjUrlExt; 

var startMoeMathJax = function () {
	//alert('startMoeMathJax');
	var timeoutValCDN=2000; // set timeout (in ms) to retrieve MathJax from its CDN.
	configMathJax();
	if (!tryCDN) {
		MathJaxCDNTimeout();
	} else { 
		favorSVG = false; // b/c using CDN MathJax, use HTML to render MathJax b/c manages placement better.
		mjUrlExt = '?config=TeX-AMS_HTML'; // b/c using CDN MathJax, use this standard config to use HTML to render MathJax.
		timeoutIdCDN = window.setTimeout(MathJaxCDNTimeout, timeoutValCDN);
		loadScript(mjUrlCDN + mjUrlExt, runAfterMJLoaded);
	}
}


