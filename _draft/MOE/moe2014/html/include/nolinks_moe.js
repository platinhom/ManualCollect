// Original css function retrieved 2014-08-11 from https://stackoverflow.com/a/11081100
function css(selector, property, value) {
    for (var i=0; i<document.styleSheets.length;i++) {//Loop through all styles
        //Try add rule
        try { document.styleSheets[i].insertRule(selector+ ' {'+property+':'+value+'}', document.styleSheets[i].cssRules.length);
        } catch(err) {try { document.styleSheets[i].addRule(selector, property+':'+value);} catch(err) {}}//IE
    }
}


function DisableAllLinks (disableLinks) {
	if (disableLinks) {
		src = getMoePrefix() + "include/nolinks.css?depth=" + getMoeDepth();
	} else {  //return to defaults
		src = getMoePrefix() + "include/yeslinks.css?depth=" + getMoeDepth();
	}
	loadStyle(src, function(){DisableEnableLinks(disableLinks)});
}

  
// Original DisableEnableLinks function retrieved 2014-08-11 from 
// http://www.codeproject.com/Tips/61476/Disable-all-links-on-the-page-via-Javascript.aspx
// Disabling the links works in all browsers; re-enabling does *not* work in IE7-10.
function DisableEnableLinks (disableLinks) {
    var strClick = "";
    var objLinks = document.getElementsByTagName("a");
	//{alert (objLinks.length + " " + disableLinks);}
    for (var i=0; i < objLinks.length; i++) {
		
		var keepLink = false;
        if (disableLinks) {
            // Determine whether to keep a link (if class="linkAlways") despite disableLinks=true.
            //var objClasses = objLinks[i].classList; // classList not supported in IE7-9.
			var objClasses = getClasses(objLinks[i]);
            for (var j=0; j < objClasses.length; j++) {
                if (objClasses[j] == "linkAlways") {
                        keepLink = true;
                        break;
                }
            }
            if (!keepLink) {
                objLinks[i].data = objLinks[i].href;
                objLinks[i].href = "javascript:void(0)";
                //objLinks[i].setAttribute("disabled", "disabled"); // setting the disabled attribute in IE7-9 forces text to become gray.
            }
        } else {
            if (objLinks[i].data != undefined) {
				objLinks[i].href = objLinks[i].data; 
			}
            //if (objLinks[i].hasAttribute("disabled")) { // hasAttribute not supported in IE7.
            if (objLinks[i].getAttribute("disabled") != null) {
				objLinks[i].removeAttribute("disabled");
			}
        }
        
        //disable a link that already uses onclick
		if ((objLinks[i].onclick != null) && disableLinks && !keepLink) {   
            strClick = objLinks[i].onclick.toString().getFuncBody();
            objLinks[i].onclick = new Function("return false; /*onclick some*/"  + strClick);
        }
        //disable a link that does not already use onclick
        else if (disableLinks && !keepLink) {    
            objLinks[i].onclick = function(){return false; /*onclick none*/};
        }
        //restore link that had previously not used onclick
        else if (!disableLinks && (objLinks[i].onclick != null)
		         && objLinks[i].onclick.toString().indexOf("return false; /*onclick none*/") != -1) { 
            objLinks[i].onclick = null;
        }
        //restore link that had previously used onclick, by removing the added "return false;" line 
        else if (!disableLinks && (objLinks[i].onclick != null)
		         && objLinks[i].onclick.toString().indexOf("return false; /*onclick some*/") != -1) {    
            strClick = objLinks[i].onclick.toString().getFuncBody().replace("return false; /*onclick some*/","")
            objLinks[i].onclick = new Function(strClick);
        }
		else {
			//alert ("link not modified.");
		}
    }
}

String.prototype.getFuncBody = function(){ 
  var str=this.toString(); 
  str=str.replace(/[^{]+{/,"");
  str=str.substring(0,str.length-1);   
  str = str.replace(/\n/gi,"");
  //if(!str.match(/\(.*\)/gi))str += ")";
  return str; 
}
