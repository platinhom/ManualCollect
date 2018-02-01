//      ccg_common.js        Common JavaScript functionality for MOE/webapps
//
//      21-aug-2014 (hf) test RGBA support, fix ghost text spacing
//      15-aug-2014 (hf) progress bar and ghost text widgets
//      12-aug-2014 (hf) split off functionality to mw.js
//      10-jul-2014 (xs) added javascript from RequestHTML.java
//      26-aug-2010 (hf) fixed clipboard paste error msg
//      26-feb-2010 (ac) added missing stacktrace function
//  22-apr-2009 (ac) created
//
// COPYRIGHT (C) 2010-2014 CHEMICAL COMPUTING GROUP INC.  ALL RIGHTS RESERVED.

var ccg_gototop = 0, ccg_gototops = 0;   // counter for gototop smooth scroll
var ccg_gototopx = 30, ccg_gototopy = 30,
    ccg_gototopid = ''; // indent, attach point for gototop
var ccg_menuh = 0, ccg_menuw = 0, ccg_menusz = 0, ccg_menuspeed = 0,
    ccg_menuid = '';  // menu popup related variables
var ccg_timer = null, ccg_mytimer = null; // global callback key
var ccg_isdrag = false, ccg_dragobj = null, ccg_dragx = 0, ccg_dragy = 0,
    ccg_dragcb = null, ccg_dragstartcb = null, ccg_dropcb = null,
    ccg_dragdirx = 1, ccg_dragdiry = 1;  // track drag and drop
var ccg_popuproot = new Array(), ccg_popupid = new Array(),
    ccg_nobodyclick = false;

// Generic add/remove event handlers.

var addEvent, removeEvent;
if (window.addEventListener) {
    addEvent = function(obj, type, fn) {
        obj.addEventListener(type, fn, false);
    }
    removeEvent = function(obj, type, fn) {
        obj.removeEventListener(type, fn, false);
    }
} else if (document.attachEvent) {
    addEvent = function(obj, type, fn) {
        var eProp = type + fn;
        obj['e' + eProp] = fn;
        obj[eProp] = function() {
            obj['e' + eProp](window.event);
        }
        obj.attachEvent('on' + type, obj[eProp]);
    }
    removeEvent = function(obj, type, fn) {
        var eProp = type + fn;
        obj.detachEvent('on' + type, obj[eProp]);
        obj[eProp] = null;
        obj["e" + eProp] = null;
    }
}

// Initialize.

//addEvent(window, 'load', InitCB);  // InitCB is being called in jsincludes_moe.js; a later version of ccg_common.js will ensure InitCB is called only once, so this will then no longer need to be commented out.
addEvent(document, 'click', ccg_menubodyclick);

// Initialization routine, set up various widgets after page loaded.

// Initialize a single file button object.

function InitButton(inp)
{
    if (inp.tagName != 'INPUT')
        return;
    if (inp.type != 'file')
        return;
    if (inp.className == 'ccg_buttonfile')  // already initted
        return;
    inp.className = 'ccg_buttonfile';
    var but = document.createElement('button');
    but.innerHTML = inp.title;
    but.id = inp.id + '_button';
    but.className = 'ccg_button';
    but.style.position = 'relative';
    but.style.top = '0px';
    but.style.left = '0px';
    but.style.width = getStyle(inp, 'width');
    but.style.height = getStyle(inp, 'height');
    inp.style.paddingLeft = '0px';
    inp.style.paddingRight = '0px';
    inp.style.paddingTop = '0px';
    inp.style.paddingBottom = '0px';
    but.style.marginLeft = getStyle(inp, 'margin-left');
    but.style.marginRight = getStyle(inp, 'margin-right');
    but.style.marginTop = getStyle(inp, 'margin-top');
    but.style.marginBottom = getStyle(inp, 'margin-bottom');
    inp.removeAttribute('title');
    inp.parentNode.insertBefore(but, inp);
    inp.onmouseover = new Function (
        "ccg_buttonclass(this, 'ccg_buttonhover');"
    );
    inp.onmouseout = new Function (
        "ccg_buttonclass(this, 'ccg_button');"
    );
    inp.onmousedown = new Function (
        "ccg_buttonclass(this, 'ccg_buttonclick');"
    );
    inp.onmouseup = new Function (
        "ccg_buttonclass(this, 'ccg_buttonhover');"
    );

    setTimeout(
        "ccg_buttonclass(document.getElementById('" + inp.id +
        "'), 'ccg_button');",
    100);
}

function InitTooltip(el)
{
    var tip = el.innerHTML;
    while (el.firstChild)
        el.removeChild(el.firstChild);
    var img = document.createElement('img');
    img.alt = 'Help';
    img.src = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAByElEQVR4XqVTzWoaYRQ9KZJmoVaS1J1QiYTIuOgqi9lEugguQhYhdGs3hTyAi0CWJTvJIks30ZBNsimUtlqkVLoQCuJsphRriyFjabWtEyf/Rv3iWcwwymTlgQuH851z5hu43wRGkEwmXwCIA4hiGAUAmUQikQbhEHwyGCWVSglVVUW73RYmyKnxjB56ncJ6NpsVxHGrI/ZLuniVb3DIqQmCHnrNkgcggNeSJPlisRgyJR2b737j/TcDsQUPwv6H5NR4BnroZcb6Z16N2PvyX6yna9Z8qp6JQ0Uf0ughmGHWBSAuyzJqrQ7eqKewY/dzE363C71e39LoWQq5wUwul4uzIBoIBHD01RgyrkZ8eDbvwUWnj623v2DHx4qB51IAzLIAXq8XP/7W0bUVVJtXWIk8wvlN364TA+/1IDMLwmWK/Hq3axmhaBdoGLeklm73ElaBYRgIzkyifHIOO4QQJKM3oJcZq6CgaVp0OTyHw9K/kQI4FiyHfdC0n2CWe5ApFosIPZ7C2tNpXpcDOehGyD/FIbd0euhlhllzFxRzC3fydbG4XRYbB9/tQ41n9m1U7l3lyp9LkfygiZeZCoecmtMqj/+Yxn7Od3v0j50qCO3zAAAAAElFTkSuQmCC';
    img.style.verticalAlign = 'middle';
    img.onmouseover = new Function (
        "helpwin(this, true, '" +
        tip.replace(/\'/g, "\\\'") + "');"
    );
    img.onmouseout = new Function (
        "helpwin(this, false, '');"
    );
    el.appendChild(img);
}

function InitGhosttext(inp)
{
    if (inp.tagName != 'INPUT' && inp.tagName != 'TEXTAREA')
        return;
    if (inp.type != 'text' && inp.tagName == 'INPUT')
        return;
    if (!inp.className) // already initialized
        return;
    inp.removeAttribute('class');
    inp.removeAttribute('className');
    var div = document.createElement('div');
    div.style.position = 'relative';
    var sp = document.createElement('sp');
    sp.className = 'ccg_ghosttext';
    sp.onmouseup = function () {
        previousElementSibling(this.parentNode).focus();
    };
    sp.innerHTML = inp.title;
    inp.removeAttribute('title');
    addEvent(inp, 'keyup', function () {
        if (this.value.length)
            nextElementSibling(this).style.visibility = 'hidden';
        else
            nextElementSibling(this).style.visibility = 'visible';
    });
    addEvent(inp, 'paste', function () {
        nextElementSibling(this).style.visibility = 'hidden';
    });
    addEvent(inp, 'input', function () {
        if (this.value.length)
            nextElementSibling(this).style.visibility = 'hidden';
        else
            nextElementSibling(this).style.visibility = 'visible';
    });
    addEvent(inp, 'cut', function () {  // temp. set id so callback can find it
        if (!this.id)
            this.id = 'ccg_cutel';
        setTimeout(
            "var el = document.getElementById('" + this.id + "'); " +
            "if (el.id == 'ccg_cutel') " +
                "el.removeAttribute('id'); " +
            "if (el.value.length) " +
                "nextElementSibling(el).style.visibility = 'hidden'; " +
            "else " +
                "nextElementSibling(el).style.visibility = 'visible';"
        , 100);
    });
    div.appendChild(sp);
    var el = nextElementSibling(inp);
    if (el)
        el.parentNode.insertBefore(div, el);
    else
        inp.parentNode.appendChild(div);
    var h = 0;
    var s = getStyle(inp, 'padding-top');
    if (s != 'auto')
        h = h - parseInt(s) / 2;
    s = getStyle(inp, 'padding-bottom');
    if (s != 'auto')
        h = h - parseInt(s);
    s = getStyle(inp, 'margin-bottom');
    if (s != 'auto')
        h = h - parseInt(s);
    s = getStyle(inp, 'height');
    if (s == 'auto')
        h = h - inp.clientHeight / 2;
    else
        h = h - parseInt(s) / 2
    s = getStyle(sp, 'font-size');
    if (s == 'auto')
        h = h - sp.clientHeight / 2;
    else
        h = h - parseInt(s) / 2
    if (document.all && !document.addEventListener) // IE8 and older
        h = h + 3;
    sp.style.top = h + 'px';
    if (
        inp.tagName == 'TEXTAREA' && inp.innerHTML.length ||
        inp.tagName == 'INPUT' && inp.value.length
    )
        div.style.visibility = 'hidden';
}

function InitLightbox(lb)
{
    if (lb.onclick) // already initted
        return;
    lb.onclick = function () {
        this.style.display = 'none';
    };
    var d = document.createElement('div');
    d.className = 'ccg_lightboxmsg';
    d.onclick = function (e) {
        e = e || window.event;
        if (e.stopPropagation)
            e.stopPropagation();
        else
            e.cancelBubble = true;
        return false;
    }
    var img = document.createElement('img');  // images/lb_close.png
    img.src = 'data:image/png;base64,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';
    img.alt = 'Close';
    img.onclick = function () {
        this.parentNode.parentNode.style.display = 'none';
    };
    img.style.position = 'relative';
    img.style.cursor = 'pointer';
    lb.insertBefore(img, firstElementChild(lb));
    while (firstElementChild(lb))
        d.appendChild(firstElementChild(lb));
    lb.appendChild(d);
    img.style.top = '-65px';
}

function InitGototop(el)
{
    if (el.onclick)  // already done
        return;
    el.onclick = function () {
        if (!ccg_gototop) {
            ccg_gototop = getScrollOffsetY();
            ccg_gototops = ccg_gototop;
        }
    };
}

function InitProgress(el)
{
    if (firstElementChild(el)) // already initted
        return;
    if (!el.clientWidth)  // invisible, cannot measure
        return;
    var div = document.createElement('div');
    el.appendChild(div);
    div.style.textAlign = 'right';
    var sp = document.createElement('span');
    div.appendChild(sp);
    sp.className = 'ccg_link';
    sp.appendChild(document.createTextNode('Cancel'));
    sp.onclick = function () {
        if (typeof(ccg_progressCancel) == "function")
            ccg_progressCancel(this.parentNode.parentNode);
    }
    var w = el.clientWidth - 20;
    var h = el.clientHeight - 30;
    
    div = document.createElement('div');
    el.appendChild(div);
    div.style.position = 'relative';
    div.style.verticalAlign = 'middle';
    
    var img = document.createElement('img');
    div.appendChild(img);
    img.alt = 'Progress Bar';
    img.src = "data:image/png;base64,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";
    img.style.width = w + 'px';
    img.style.height = h + 'px';
    
    var div2 = document.createElement('div');
    div.appendChild(div2);
    div2.className = 'ccg_progress_bg';
    div2.style.width = (w - 18) + 'px';
    div2.style.height =  (h - 20) + 'px';
    
    div2 = document.createElement('div');
    div.appendChild(div2);
    div2.className = 'ccg_progress_perc';
    div2.appendChild(document.createTextNode('0%'));
    div2.style.width = (w - 18) + 'px';
    div2.style.top = (h / 2 - div2.clientHeight / 2) + 'px';

    img = document.createElement('img');
    div.appendChild(img);
    img.alt = 'Current Progress';
    img.src = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAArCAYAAAC5IuLZAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAAB3RJTUUH3gYaFAEDzzn+8wAAAAd0RVh0QXV0aG9yAKmuzEgAAAAMdEVYdERlc2NyaXB0aW9uABMJISMAAAAKdEVYdENvcHlyaWdodACsD8w6AAAADnRFWHRDcmVhdGlvbiB0aW1lADX3DwkAAAAJdEVYdFNvZnR3YXJlAF1w/zoAAAALdEVYdERpc2NsYWltZXIAt8C0jwAAAAh0RVh0V2FybmluZwDAG+aHAAAAB3RFWHRTb3VyY2UA9f+D6wAAAAh0RVh0Q29tbWVudAD2zJa/AAAABnRFWHRUaXRsZQCo7tInAAAAcUlEQVQImUWMQRKDIBRDn8FB0E3v20N5oq49QrGF/7tA7CbzkkzCsc9OfT1d7hW5fYe0D/J2XmRWLmutINobWW/LTSdyG4v+4hXhFaW0oWV9oEkRMUVESAglhPJtV4Q2RMij6FlGhJv03y7jTxGOffYf8IxAHUgJDT4AAAAASUVORK5CYII=";
    img.className = 'ccg_progress_image';
    img.style.height = (h - 20) + 'px';

    div = document.createElement('div');
    el.appendChild(div);
    sp = document.createElement('span');
    div.appendChild(sp);
    sp.style.fontWeight = 'bold';
    sp.style.paddingLeft = '10px';
}

function InitCalendar(el, date)
{
    var id = el.id;
    if (!id)  // must set an id
        return;
        
    while (el.firstChild)
        el.removeChild(el.firstChild);
    
    var row = el.insertRow(-1);
    row.className = 'ccg_calendar_year';
    
    var cell = row.insertCell(-1);
    var sp = document.createElement('span');
    cell.appendChild(sp);
    sp.style.cursor = 'pointer';
    sp.title = 'Back 5 Years';
    sp.onclick = new Function ( "ccg_calendar_yearback('" + id + "');" );
    sp.appendChild(document.createTextNode('<<'));
    cell.appendChild(document.createTextNode('\u00a0\u00a0'));
    sp = document.createElement('span');
    cell.appendChild(sp);
    sp.style.cursor = 'pointer';
    sp.title = 'Previous Month';
    sp.onclick = new Function ( "ccg_calendar_monthback('" + id + "');" );
    sp.appendChild(document.createTextNode('<'));
    
    cell = row.insertCell(-1);
    cell.appendChild(document.createTextNode('\u00a0'));
    cell.style.width = '120px';
    cell.style.textAlign = 'center';

    cell = row.insertCell(-1);
    sp = document.createElement('span');
    cell.appendChild(sp);
    sp.style.cursor = 'pointer';
    sp.title = 'Next Month';
    sp.onclick = new Function ( "ccg_calendar_monthfwd('" + id + "');" );
    sp.appendChild(document.createTextNode('>'));
    cell.appendChild(document.createTextNode('\u00a0\u00a0'));
    sp = document.createElement('span');
    cell.appendChild(sp);
    sp.style.cursor = 'pointer';
    sp.title = 'Ahead 5 Years';
    sp.onclick = new Function ( "ccg_calendar_yearfwd('" + id + "');" );
    sp.appendChild(document.createTextNode('>>'));

    cell = row.insertCell(-1);
    cell.appendChild(document.createTextNode('X'));
    cell.style.color = '#ff0000';
    cell.style.cursor = 'pointer';
    cell.title = 'Cancel';
    cell.onclick = new Function (
        "document.getElementById('" + id + "').style.display = 'none';"
    );

    row = el.insertRow(-1);
    cell = row.insertCell(-1);
    cell.colSpan = '6';
    
    var t = document.createElement('table');
    cell.appendChild(t);
    t.style.width = '100%';
    t.className = 'ccg_calendar_day';
    t.id = 'caldays_' + id;

    row = t.insertRow(-1);
    cell = document.createElement('th');
    row.appendChild(cell);
    cell.appendChild(document.createTextNode('S'));
    cell = document.createElement('th');
    row.appendChild(cell);
    cell.appendChild(document.createTextNode('M'));
    cell = document.createElement('th');
    row.appendChild(cell);
    cell.appendChild(document.createTextNode('T'));
    cell = document.createElement('th');
    row.appendChild(cell);
    cell.appendChild(document.createTextNode('W'));
    cell = document.createElement('th');
    row.appendChild(cell);
    cell.appendChild(document.createTextNode('T'));
    cell = document.createElement('th');
    row.appendChild(cell);
    cell.appendChild(document.createTextNode('F'));
    cell = document.createElement('th');
    row.appendChild(cell);
    cell.appendChild(document.createTextNode('S'));

    var x, y;
    for (y = 0; y < 6; y++) {
        row = t.insertRow(-1);
        for (x = 0; x < 7; x++) {
            cell = row.insertCell(-1);
            cell.onclick = new Function (
                "ccg_calendar_onclick(this, " + x + ", " + y + ");" 
            );
        }
    }
    
    var todayvar = new Date();
    todayvar.setDate(1);
    if (date == 'YYYY-MM-DD') {
        var cur = new Date();
        todayvar.setFullYear(cur.getFullYear());
        todayvar.setMonth(cur.getMonth());
    }
    else {
        var cur = date.split('-');
        if (
            cur.length != 3 || isNaN(parseInt(cur[0])) ||
            isNaN(parseInt(cur[1])) || isNaN(parseInt(cur[2]))
        ) {
            var cur = new Date();
            todayvar.setFullYear(cur.getFullYear());
            todayvar.setMonth(cur.getMonth());
        }
        else {
            todayvar.setFullYear(cur[0]);
            todayvar.setMonth(eval(cur[1] - 1));
        }
    }
    eval('today' + id + ' = todayvar;');
    
    ccg_calendar_draw(id);
}

// Test RGBA support

function supportsRGBA()
{
    var el = document.getElementsByTagName('script')[0];
    var col = getStyle(el, 'color');
    try {
        el.style.color = 'rgba(1,5,13,0.44)';
    } catch(e) {}
    var result = getStyle(el, 'color') != col;
    el.style.color = col;
    return result;
}

function InitCB(e)
{
    if (!supportsRGBA()) {
        var style = document.createElement("style");
        style.setAttribute('type', 'text/css');
        var css = '.ccg_lightbox { ' +
            'filter: alpha(opacity=70); ' +
            '}';
        if (style.styleSheet)
            style.styleSheet.cssText = css;
        else
            style.innerHTML = css;
        document.getElementsByTagName('head')[0].appendChild(style);
    }

        // Initialize tooltip(s).

    var hl = document.createElement('img');
    hl.id = 'ccg_helpwinL';
    hl.src = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABcAAAAyCAYAAAC3S0AlAAAAAXNSR0IArs4c6QAAAAZiS0dEAP8A/wD/oL2nkwAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAAd0SU1FB94GHhA7BPyfiqIAAAMaSURBVFjD7djPS9tQHADw78uPYVkSYk3aNBvV4qiWKSkEBK2sKq1z2EEttZbuSYdCochgSg6rUqQ/YLDDzg68jG2wHbbDYLsNvOwP2NlddhB2GAw6cCZ0ZBcdm1at9vUg7AvvFPjwXvK+3/e+Adu2gcSoVCq2aZq2ZVl/BgVtDGL4wQragrd15v/xhoEQAoqi2oMzDAP1ep08jhBSJEkChmHI4gghuVAolHd2do6upkW4q1gsPuzs7JzNZrNHnx/OqmZDURQpn89vSpIUzmQyFsdxLiK4pmlqMpl8parq9fn5eQsh5G64srPikUjENz4+/ra3t/dKPB43aZpWjn1tzeIIIX5mZsar6/r7YDDIR6NREyGknLg9m4QFjHG/3+9/NzIyQoVCoVPhpnCEkLC4uDjk9XpfT01N/dI0rSn4VBwhJCwtLUXcbvfTRCJh+f1+55my9iR4eXk5LUnS41Qqtdfd3d115pJwHFwoFO7xPP8AY/xTURTpXPWmEby2tlYVRfFuNpvdFUXRde4M/nsr8jwvGoax4XQ6b2KMTY7j3C2VhwNcEATBMIw3qqrqqVTKdDgc7laLGrX/Ki4bhrGpKMoQxnivo6PDJlGKKYSQAwAo27Zn0+n0LkVR0Ow+PhW3bfsnACCKor5ub29fInmGMvsXmhoAeEqlks2y7PdAIEDmXD1cuCqVyo/p6en64OCgSBwHAKhWq99GR0fpUCgkEscBAMrl8hdN04TJyUmLYRgXURwAoFQqffL5fN50Om0hhFxEcQCA9fX1Dx6PR5+bm7M4jpOJ4gAAq6urL2RZjmGMTVEUZaI4AMDKysojWZbzmUzGVFW1iygOAJDL5e739PRUk8mk6fP5nERxAACM8Z2+vr6NWCxWHxgYEIniAADxePyWruvPw+EwNTw8LBLFAQDGxsZCExMTL4PBIBeNRhvmwrnviltbWx8DgcBt27af1Wq1q4lEAliWJTPzg/B4PP25XO6Jqqo3FhYWGrd4rQyWZa8Vi8V/GlxiTa5lWZ9pmm5PZ3HxW0XiPVHLV+hmgqbpIz8XLu4H/Q0MdHyN4MPNvAAAAABJRU5ErkJggg==';
    hl.alt = '';
    hl.style.position = 'absolute';
    hl.style.display = 'none';
    hl.style.zIndex = '6';

    var hr = document.createElement('img');
    hr.id = 'ccg_helpwinR';
    hr.src = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABcAAAAyCAYAAAC3S0AlAAAABHNCSVQICAgIfAhkiAAAAz1JREFUWIXt10tIG2EQAOCZTdzEx6VUIT310ntvvXgsXlrooaVVqKUHC/bipUhBcA1W1B6CFooIoYdKtkFjiDlESo34AEUoBJJqMWpDVOpm82hYkqXWdc30Ukt95vV7aOnAf1h29puf3X8ZBjRNo8O1t7dHPT09RETAYnFwgXEEP6x4ITjr+I/nxzmOA0S8GFzXdTAajReDG41GqK2tBUS0MMcBAHZ2dqCjo+MFItYxx9va2qCurq5REIR+RLxcDo6app34JVVVTTidTj6VSs0PDw8/kWU5xQwHACCiuMPh4CVJ+ux2uxtDoZDEDAcAODg4kL1erykSiezMzs7emZ6ejjLDAQCISPb7/aZgMJgNBAK3JiYmtokoWwie91AjoqWhoUGuqqqqyeVyc9XV1bcRMUxEmbLxwwL19fVyTU2NiYj8LS0t9xDxY74CeV/L8VhfX097PB4+Ho8/Hhoamj6vQNE4AMDW1tY3l8tlTqVSzwYHB0fPKlASDgAgy3JKFEVzNpt92d/f//q0AiXjAACKoiRGRkYqFUV529vb23m8QFk4AICqqnFRFE3pdPqDzWZ7ms1mFWY4AMDu7m7c5XKZJEkK2Gy2u5lMJgPAqBOZzWZqbm7+YbFYbrS3t79BxGpmOCJaOI6Dpqam70R0HwA4RKxk2kM3NjZ4juNkAEAi2mWGh8Nhk8/nuyQIwpXDU8OkYS4vLyuTk5MVVqv1SHcvG19cXFQWFhYOBEG4dPxeybiu64mpqSk+FAplurq6rp6WUxJORInx8XE+Go1uW63W62flFY2rqpocGxszxWKxQHd3983zcovCFUVJiqJoSiaTvr6+vof58gvGJUn65nQ6K5PJ5PDAwMDzQp4pCI9Go2m3223e3NzstNvtrwrdUF58ZWVF8fl8/NraWqsoiu8KhfPiS0tLyvz8fC4QCDzwer3vi4HPxHVdT/j9fj4YDKozMzNNc3Nzi8XCp+L7+/vg8Xj4SCTydXR09NHq6mqwFPhU3OFwgCRJn+x2e2ssFguXCgMAwJ9DrqZpJAgCVVRUXGM+5Oq6DgaDATRN+1LWjn/FPzLNsRy2TuCsw5jL5X5fICIYDAZm+N/7QX8CD2wwJiYyYwkAAAAASUVORK5CYII=';
    hr.alt = '';
    hr.style.position = 'absolute';
    hr.style.display = 'none';
    hr.style.zIndex = '6';

    var hw = document.createElement('div');
    hw.id = 'ccg_helpwin';
    hw.className = 'ccg_helpwin';
    hw.style.display = 'none';

    var hp = document.createElement('p');
    hp.style.paddingTop = '10px';
    hp.style.paddingBottom = '10px';
    hw.appendChild(hp);
    
    document.body.appendChild(hw);
    document.body.appendChild(hl);
    document.body.appendChild(hr);

    var els = getElementsByClassName('ccg_tooltip');
    var i;
    for (i = 0; i < els.length; i++) {
        InitTooltip(els[i]);
    }

        // Initialize go to top
        
    els = getElementsByClassName('ccg_gototop');
    for (i = 0; i < els.length; i++) {
        InitGototop(els[i]);
    }

        // Initialize lightbox.

    els = getElementsByClassName('ccg_lightbox');
    for (i = 0; i < els.length; i++) {
        InitLightbox(els[i]);
    }

        // Mouse up/down used for drag and drop.

    addEvent(document.body, 'mousedown', ccg_selectmouse);
    addEvent(document.body, 'mouseup', ccg_mouseup);
    addEvent(window, 'scroll', ccg_lazyload);
    addEvent(window, 'resize', ccg_lazyload);

        // Initialize buttons - convert file input buttons.
        
    els = getElementsByClassName('ccg_button');
    for (i = 0; i < els.length; i++) {
        InitButton(els[i]);
    }
    
        // Initialize ghost text.
        
    els = getElementsByClassName('ccg_ghosttext');
    for (i = 0; i < els.length; i++) {
        InitGhosttext(els[i]);
    }

        // Initialize progress bars.
        
    els = getElementsByClassName('ccg_progress');
    for (i = 0; i < els.length; i++) {
        InitProgress(els[i]);
    }

        // Initialize visible 'lazy images'.

    ccg_lazyload(null);
    
        // Initialize calendar.
        
    els = getElementsByClassName('ccg_calendar');
    for (i = 0; i < els.length; i++) {
        var initdate = els[i].title;
        if (initdate)
            els[i].removeAttribute('title');
        InitCalendar(els[i], initdate);
    }

        // Start up main timer routine.
    
    setInterval('MainCB()', 25);
}

// Main callback function triggered by a timer, to update page, positions, etc.

function MainCB()
{
    if (MainCB.tick == undefined)
        MainCB.tick = 0;
    else
        MainCB.tick++;
    if (MainCB.tick >= 100)
        MainCB.tick = 0;
        
        // Go to top button.  To create, make an object of class 'ccg_gototop'.

    var h = parseInt(getInnerHeight());
    var w = parseInt(getInnerWidth());
    var els = getElementsByClassName('ccg_gototop');
    if (ccg_gototopid) {
        var el = document.getElementById(ccg_gototopid);
        w = getElementAbsPosX(el) + el.clientWidth;
        if (document.body.scrollLeft)
            w = w - document.body.scrollLeft;
        if (document.documentElement.scrollLeft)
            w = w - document.documentElement.scrollLeft;
    }
    var i;
    for (i = 0; i < els.length; i++) {
        if (ccg_gototopy < 0)
            ccg_gototopy = 0;
        els[i].style.top = (h - els[i].clientHeight - ccg_gototopy) + 'px';
        if (ccg_gototopid)
            els[i].style.left = w + ccg_gototopx + 'px';
        else {
            if (ccg_gototopx < 0)  // put on left side of window
                els[i].style.left = (-ccg_gototopx) + 'px';
            else
                els[i].style.left = (w - els[i].clientWidth - ccg_gototopx) +
                    'px';
        }
    }
    if (ccg_gototop) {
        var dy = Math.max(Math.round(  // control speed of smooth scroll
            256 * Math.cos(
                (Math.PI / 2) * 0.95 * (1.0 - ccg_gototop / ccg_gototops)
            )
        ), 1);
        ccg_gototop = Math.max (0, ccg_gototop - dy);
        if (document.body.scrollTop)
            document.body.scrollTop = ccg_gototop;
        if (document.documentElement.scrollTop)
            document.documentElement.scrollTop = ccg_gototop;
    }

        // Update lightbox positions.  To make a lightbox, simply make a div
        // of class 'ccg_lightbox' and put the desired content inside the div
        // tag.

    els = getElementsByClassName('ccg_lightbox');
    for (i = 0; i < els.length; i++) {
        if (els[i].style.display == 'none')
            continue;
        var div = firstElementChild(els[i]);
        var img = firstElementChild(div);
        img.style.left = (div.clientWidth / 2) + 'px';
        var w = getAbsWindowRight();
        var h = getAbsWindowBottom();
        els[i].style.width = w + 'px';
        els[i].style.height = h + 'px';
        div.style.left = getInnerWidth() / 2 - parseInt(div.clientWidth) / 2
            + 'px';
        div.style.top = getInnerHeight() / 2 - parseInt(div.clientHeight) / 2
            + 'px';
    }
    
        // Animate popup menu.
        
    var el;
    if (ccg_menuid != '' && (el = document.getElementById(ccg_menuid))) {
        var dy = Math.max(Math.round(
            ccg_menuspeed * Math.cos((Math.PI /2) * (ccg_menusz / ccg_menuh))
        ), 1);
        if (ccg_menusz + dy > ccg_menuh) {
            dy = ccg_menuh - ccg_menusz;
            ccg_menuid = '';  // terminate animation
        }
        ccg_menusz = ccg_menusz + dy;
        el.style.clip = 'rect(' + (ccg_menuh - ccg_menusz) + 'px,' +
            ccg_menuw + 'px, ' + ccg_menuh + 'px,0px)';
        el.style.top = (parseInt(el.style.top) + dy) + 'px';
    }
    
        // Call user timer if any.
    
    if (ccg_mytimer)
        eval(ccg_mytimer + "()");
}

function printStackTrace()
{
    var e = new Error('Error');
    alert(e.stack);
}

function getStyle(el, cssrule) {
    var val = "";
    if (document.defaultView && document.defaultView.getComputedStyle) {
        val = document.defaultView.getComputedStyle(el, "").getPropertyValue(
            cssrule
        );
    }
    else if (el.currentStyle) {
        cssrule = cssrule.replace(/\-(\w)/g, function (strMatch, p1) {
            return p1.toUpperCase();
        });
        val = el.currentStyle[cssrule];
    }
    else
        val = el.style[cssrule];
    return val;
}

//
// Patches for old browser support
// --------------------------------
//
// Patch for IE 8 and earlier not supporting firstElementChild,
// childElementCount, nextElementSibling, previousElementSibling.

function firstElementChild(node)
{
    var ch = node.firstChild;
    while (ch) {
        if (ch.nodeType == 1 /*Node.ELEMENT_NODE*/)
            break;
        ch = ch.nextSibling;
    }
    return ch;
}

function childElementCount(node)
{
    var ch = node.firstChild;
    var c = 0;
    while (ch) {
        if (ch.nodeType == 1 /*Node.ELEMENT_NODE*/)
            c = c + 1;
        ch = ch.nextSibling;
    }
    return c;
}
function nextElementSibling(node)
{
    while (node) {
        node = node.nextSibling;
        if (node && node.nodeType == 1 /*Node.ELEMENT_NODE*/)
            break;
    }
    return node;
}

function previousElementSibling(node)
{
    while (node) {
        node = node.previousSibling;
        if (node && node.nodeType == 1 /*Node.ELEMENT_NODE*/)
            break;
    }
    return node;
}

// More IE8 inadequacies.

if (typeof String.prototype.trim !== 'function')
{
    String.prototype.trim = function() {
        return this.replace(/^\s+|\s+$/g, ''); 
    }
}

if (!('indexOf' in Array.prototype)) {
    Array.prototype.indexOf = function(find, i /*opt*/) {
        if (i === undefined)
            i = 0;
        if (i < 0)
            i += this.length;
        if (i < 0)
            i = 0;
        for (var n = this.length; i < n; i++)
            if (i in this && this[i] === find)
                return i;
        return -1;
    };
}

// IE-proof getElementsByClassName - try each successively less efficient
// method of obtaining the desired result.

var getElementsByClassName = function (className)
{
    if (document.getElementsByClassName) {
        getElementsByClassName = function (className) {
            return document.getElementsByClassName(className);
        };
    }
    else if (document.evaluate) {
        getElementsByClassName = function (className) {
            var classes = className.split(" ");
            var classesToCheck = "";
            var xhtmlNamespace = "http://www.w3.org/1999/xhtml";
            var namespaceResolver = (document.documentElement.namespaceURI === xhtmlNamespace)?xhtmlNamespace:null;
            var returnElements = [];
            var elements, node;
            for (var j = 0, jl = classes.length; j < jl; j++)
                classesToCheck += "[contains(concat(' ', @class, ' '), ' " +
                    classes[j] + " ')]";
            try {
                elements = document.evaluate(
                    ".//*" + classesToCheck, document, namespaceResolver,0, null
                );
            }
            catch (e) {
                elements = document.evaluate(
                    ".//*" + classesToCheck, document, null, 0, null
                );
            }
            while ((node = elements.iterateNext()))
                returnElements.push(node);
            return returnElements;
        };
    }
    else {
        getElementsByClassName = function (className) {
            var classes = className.split(" ");
            var classesToCheck = [];
            var elements = (document.all)?document.all:document.getElementsByTagName('*');
            var current, match;
            var returnElements = [];
            for (var k = 0, kl = classes.length; k < kl; k++)
                classesToCheck.push(
                    new RegExp("(^|\\s)" + classes[k] + "(\\s|$)")
                );
            for (var l = 0, ll = elements.length; l < ll; l++) {
                current = elements[l];
                match = false;
                for (var m = 0, ml = classesToCheck.length; m < ml; m++) {
                    match = classesToCheck[m].test(current.className);
                    if (!match)
                        break;
                }
                if (match)
                    returnElements.push(current);
            }
            return returnElements;
        };
    }
    return getElementsByClassName(className);
}

// ----------------------------- General Utility -----------------------------

// Makes an effort to figure out if some version of Internet Explorer is being
// used, since this line of browsers has rather different standards compliance.
// All other browsers are assumed to be compliant.

function browserInfo()
{
    var mozillas = new Array(
        'Camino',
        'Epiphany',
        'Firebird',
        'Firefox',
        'Galeon',
        'Gecko Debian',
        'Iceweasel',
        'K-Meleon',
        'MultiZilla',
        'Netscape',
        'Netscape6',
        'Phoenix'
    );
    var isns4 = false;
    var isopera = false;
    var isie = false;
    var issafari = false;
    var iskonq = false;
    var ismoz = false;
    var ischrome = false;
    var a = navigator.userAgent;
    var pos, ver = 0;
    var browser = 'Unknown';
    if ((pos = a.indexOf('Opera')) != -1) {
        isopera = true;
        ver = parseInt(a.substr(pos + 6, 2));
        browser = 'Opera';
    }
    if ((pos = a.indexOf('Safari')) != -1) {
        issafari = true;
        if ((ver = a.indexOf('Version')) != -1)
            ver = parseInt(a.substr(ver + 8, 2));
        browser = 'Safari';
    }
    if ((pos = a.indexOf('Konqueror')) != -1 && !issafari) {
        iskonq = true;
        ver = parseInt(a.substr(pos + 10, 2));
        browser = 'Konqueror';
    }
    if ((pos = a.indexOf('Chrome')) != -1) {
        ischrome = true;
        ver = parseInt(a.substr(pos + 7, 2));
//      if (ver.substr(1, 1) == '.')
//          ver = ver.substr(0, 1);
        browser = 'Chrome';
    }
    if (a.indexOf('Gecko') != -1 && !issafari && !iskonq && !ischrome) {
        ismoz = true;
        
            // Which sub-version of Mozilla?
            
        var i;
        for (i = 0; i < mozillas.length; i++) {
            if ((pos = a.indexOf(mozillas[i])) != -1) {
                browser = mozillas[i];
                ver = parseInt(a.substr(pos + browser.length + 1, 2));
                break;
            }
        }
        if (browser == 'Unknown') {
            if (a.indexOf('Trident/') != -1)
                browser = 'Internet Explorer';
            else
                browser = 'Mozilla';
        }
        if (!ver || isNaN(ver)) {
            var rv = a.indexOf('rv');
            if (rv != -1)
                ver = parseInt(a.substr(rv + 3, 2));
        }
        browser = browser;
    }
    if ((pos = a.indexOf('MSIE')) != -1 && !isopera) {
        isie = true;
        ver = parseInt(a.substr(pos + 5, 2));
        browser = 'Internet Explorer';
    }
    return [browser, ver];
}

// Creates a new request for HTTP content.

function getXmlHttpObject(handler) 
{ 
    var objXmlHttp = null;
    
    if (window.XMLHttpRequest) {
        objXmlHttp = new XMLHttpRequest();
        objXmlHttp.onload = handler;
        objXmlHttp.onerror = handler;
    }
    else { // for IE 5/6
        try { 
            objXmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
            objXmlHttp.onreadystatechange = handler;
        } 
        catch (e) { 
            alert("Error. Scripting for ActiveX must be enabled");
            return null;
        } 
    }
    return objXmlHttp;
} 

// Trims both sides of a string for whitespace.

function trim(str) 
{
    return (str + "").replace(/^\s+|\s+$/g,"");
}

// -------------------------- Object Size Utilities ------------------------

// Return the status of the page scrolling.

function getScrollOffsetX() {
    if (document.pageXOffset) // all except Explorer
        return document.pageXOffset;

        // Explorer 6 Strict

    else if (document.documentElement && document.documentElement.scrollLeft)
        return document.documentElement.scrollLeft;
    else if (document.body) // all other Explorers
        return document.body.scrollLeft;
    return 0;
}

function getScrollOffsetY() {
    if (document.pageYOffset) // all except Explorer
        return document.pageYOffset;

        // Explorer 6 Strict

    else if (document.documentElement && document.documentElement.scrollTop)
        return document.documentElement.scrollTop;
    else if (document.body) // all other Explorers
        return document.body.scrollTop;
    return 0;
}

function getInnerHeight() {
    if (self.innerHeight) // all except Explorer
        return self.innerHeight;

        // Explorer 6 Strict Mode

    else if (document.documentElement && document.documentElement.clientHeight)
        return document.documentElement.clientHeight;
    else if (document.body) // other Explorers
        return document.body.clientHeight;
    return 0;
}

function getInnerWidth() {
    if (self.innerWidth) // all except Explorer
        return self.innerWidth;

        // Explorer 6 Strict Mode

    else if (document.documentElement && document.documentElement.clientWidth)
        return document.documentElement.clientWidth;
    else if (document.body) // other Explorers
        return document.body.clientWidth;
    return 0;
}

// Compute the bottom of the popup window and the bottom of the browser window,
// in absolute co-ordinates - different on all browsers but the below should be
// accurate usually!

function getAbsWindowBottom()
{
    var abswindowbottom = 0;
    if (typeof(window.innerHeight) == 'number')
        abswindowbottom = window.innerHeight;
    else if (document.documentElement && document.documentElement.clientHeight)
        abswindowbottom = document.documentElement.clientHeight;
    else if (document.body && document.body.clientHeight)
        abswindowbottom = document.body.clientHeight;

    if (typeof(window.pageYOffset) == 'number')
        abswindowbottom = abswindowbottom + window.pageYOffset;
    else if (document.body && document.body.scrollTop)
        abswindowbottom = abswindowbottom + document.body.scrollTop;
    else if (document.documentElement && document.documentElement.scrollTop)
        abswindowbottom = abswindowbottom + document.documentElement.scrollTop;
    return abswindowbottom;
}

// Compute the right of the popup window and the right of the browser window,
// in absolute co-ordinates - different on all browsers but the below should be
// accurate usually!

function getAbsWindowRight()
{
    var abswindowright = 0;
    if (typeof(window.innerWidth) == 'number')
        abswindowright = window.innerWidth;
    else if (document.documentElement && document.documentElement.clientWidth)
        abswindowright = document.documentElement.clientWidth;
    else if (document.body && document.body.clientWidth)
        abswindowright = document.body.clientWidth;

    if (typeof(window.pageXOffset) == 'number')
        abswindowright = abswindowright + window.pageXOffset;
    else if (document.body && document.body.scrollLeft)
        abswindowright = abswindowright + document.body.scrollLeft;
    else if (document.documentElement && document.documentElement.scrollLeft)
        abswindowright = abswindowright + document.documentElement.scrollLeft;
    return abswindowright;
}

// Compute absolute X-position of an element on the page.

function getElementAbsPosX(el)
{
    if (!el)
        return 0;
    var e = el;
    var dx = 0;
    if (el.offsetParent) {
        dx = el.offsetLeft;
        while (el = el.offsetParent) {
            dx = dx + el.offsetLeft;
        }
    }
    el = e;
    while (el && el.tagName != 'BODY') {
        if (el.scrollLeft)
            dx = dx - el.scrollLeft;
        el = el.parentNode;
    }
    return dx;
}

// Compute absolute Y-position of an element on the page.

function getElementAbsPosY(el)
{
    if (!el)
        return 0;
    var e = el;
    var dy = 0;
    if (el.offsetParent) {
        dy = el.offsetTop;
        while (el = el.offsetParent) {
            dy = dy + el.offsetTop;
        }
    }
    el = e;
    while (el && el.tagName != 'BODY') {
        if (el.scrollTop)
            dy = dy - el.scrollTop;
        el = el.parentNode;
    }
    return dy;
}

function ccg_menubodyclick(e)
{
    if (ccg_nobodyclick || !ccg_popupid.length)
        return;
        
    e = e || window.event;
    var cobj = e.target || e.srcElement;

    var i, idx;
    var keep = new Array();
    if (cobj.tagName != 'A' && cobj.tagName != 'SPAN') {
        while (cobj) {  // always close if clicked on a link
            if (cobj.id) {
                if ((idx = ccg_popuproot.indexOf(cobj.id)) >= 0)
                    keep.push(idx);
                if ((idx = ccg_popupid.indexOf(cobj.id)) >= 0)
                    keep.push(idx);
            }
            cobj = cobj.parentNode;
        }
    }
    for (i = 0; i < ccg_popupid.length; i++) {
        if (keep.indexOf(i) >= 0)
            continue;
        ccg_popupmenu(ccg_popupid[i], null, 0);
    }
}

// Generic popup menu handler.  el is the name of the menu to show/hide, tag
// is the name of the element where the menu should appear, and vis is 0 to
// hide the menu. 1 to show it.

function ccg_popupmenu(elid, tag, vis, speed, deltax, deltay)
{
    var el = document.getElementById(elid);
    if (!el)
        return;
    if (deltax === undefined)
        deltax = 0;
    if (deltay === undefined)
        deltay = 0;
    
        // Track root locations of popup menus in global array.  Note these
        // may change with each call.
    
    var idx = ccg_popupid.indexOf(elid);
    if (idx < 0) {
        ccg_popupid.push(elid);
        ccg_popuproot.push(tag);
    }
    else if (tag)
        ccg_popuproot[idx] = tag;
        
        // Hide menu.

    if (vis == 0) {
        el.style.visibility = 'hidden';
        return;
    }

        // Otherwise show menu.  Must first position it so it is visible
        // and not poking off bottom of window for example.
        // MainCB takes care of animation here so we just initialize it.

    if (!speed)
        speed = 32;
    if (ccg_menuid != '') {  // wait until other animations complete
        setTimeout(
            "ccg_popupmenu('" + elid + "', '" + tag + "', " + vis + ", " +
            speed + ")",
        100);
        return;
    }
    ccg_menuid = elid;
    ccg_menuw = el.clientWidth;
    ccg_menuh = el.clientHeight;
    ccg_menusz = 0;
    ccg_menuspeed = speed;
    el.style.clip = 'rect(' + (ccg_menuh - ccg_menusz) + 'px,' + ccg_menuw +
        'px, ' + ccg_menuh + 'px,0px)';
    var row = document.getElementById(tag);
    var dx = getElementAbsPosX(row) + deltax;
    var dy = getElementAbsPosY(row) + deltay;
    
        // Ensure we don't go past bottom of page - 20px.
    
    var bot = getAbsWindowBottom();
    if (dy + ccg_menuh > bot - 20)
        dy = bot - 20 - ccg_menuh;

    el.style.left = dx + 'px';
    el.style.top = (dy - ccg_menuh + ccg_menusz) + 'px';
    el.style.visibility = 'visible';
    ccg_nobodyclick = true;
    setTimeout("ccg_nobodyclick = false;", 300);
}

// The following set of functions are used to handle drag 'n' drop.
// selectmouse is triggered on mousedown.

function ccg_selectmouse(e)
{
    var eorig = e;
    e = e || window.event;
    var fobj = e.target || e.srcElement;  // what was clicked on?
    
    var button = e.which || e.button; // ensure LEFT-click
    if (button != 1)
        return;

        // Found something to drag? - if not an input widget that is.

    if (
        fobj.tagName == 'INPUT' || fobj.tagName == 'SELECT' ||
        fobj.tagName == 'TEXTAREA'
    )
        return;
    while (fobj) {
        if (fobj.className && fobj.className == "ccg_drag")
            break;
        fobj = fobj.parentNode;
    }
    if (!fobj)
        return;

        // Got something to drag - fobj.  Prevent normal object selection.

    if (e && e.preventDefault)
        e.preventDefault();
    else if (window.event)
        window.event.returnValue = false; 
    
    ccg_isdrag = true;
    ccg_dragobj = fobj;
    document.body.style.cursor = 'move';

        // ccg_dragx, ccg_dragy is absolute co-ordinates within the page

    if (e.pageX) {
        ccg_dragx = e.pageX;
        ccg_dragy = e.pageY;
    }
    else {
        ccg_dragx = e.clientX + document.body.scrollLeft +
            document.documentElement.scrollLeft;
        ccg_dragy = e.clientY + document.body.scrollTop +
            document.documentElement.scrollTop;
    }
    addEvent(document.body, 'mousemove', ccg_movemouse);
    
    if (!window.ccg_fakeel) {
        window.ccg_fakeel = ccg_dragobj.cloneNode(true);
        ccg_fakeel.style.position = 'absolute';
        document.body.appendChild(ccg_fakeel);
        var w = getStyle(ccg_dragobj, 'width');
        var h = getStyle(ccg_dragobj, 'height');
        if (w == 'auto' || h == 'auto') {
            w = ccg_dragobj.clientWidth + 'px';
            h = ccg_dragobj.clientHeight + 'px';
        }
        else {
            w = w + getStyle(ccg_dragobj, 'padding-left') +
                getStyle(ccg_dragobj, 'padding-right');
            h = h + getStyle(ccg_dragobj, 'padding-top') +
                getStyle(ccg_dragobj, 'padding-bottom');
        }
        ccg_fakeel.style.width = w;
        ccg_fakeel.style.height = h;
        ccg_movemouse(eorig);
    }
    if (ccg_dragstartcb)
        eval(ccg_dragstartcb + "(e)");
    
    return false;
}

// mouseup is triggered when user releases the mouse, and has been dragging
// something.

function ccg_mouseup(e)
{
    if (!ccg_isdrag || !window.ccg_fakeel)
        return;

    e = e || window.event;

    var yh;
    if (e.pageY)
        yh = e.pageY;
    else
        yh = e.clientY
            + document.body.scrollTop + document.documentElement.scrollTop;

        // Call user-provided callback if one is set.
        
    if (ccg_dropcb)
        eval(ccg_dropcb + "(e)");
        
        // Clean up temporary fake element.
        
    document.body.removeChild(ccg_fakeel);
    window.ccg_fakeel = null;
    document.body.style.cursor = 'default';

    ccg_isdrag = false;
    removeEvent(document.body, 'mousemove', ccg_movemouse);
}

// mousemove is triggered as a draggable object is moved around the screen.

function ccg_movemouse(e)
{
    if (!ccg_isdrag)
        return;

    e = e || window.event;
    
    var absx = getElementAbsPosX(ccg_dragobj);
    var absy = getElementAbsPosY(ccg_dragobj);
    var xh, yh;
    if (e.pageX) {
        xh = e.pageX;
        yh = e.pageY;
    }
    else {
        xh = e.clientX
            + document.body.scrollLeft + document.documentElement.scrollLeft;
        yh = e.clientY
            + document.body.scrollTop + document.documentElement.scrollTop;
    }
    if (ccg_dragdirx)
        ccg_fakeel.style.left = (xh - ccg_dragx + absx) + 'px';
    else
        ccg_fakeel.style.left = absx + 'px';
    if (ccg_dragdiry)
        ccg_fakeel.style.top = (yh - ccg_dragy + absy) + 'px';
    else
        ccg_fakeel.style.top = absy + 'px';
        
        // Call user-provided callback if one is set.
        
    if (ccg_dragcb)
        eval(ccg_dragcb + "(e)");
    return false;
}

// Modify button color, shadows, etc. supporting all browser variants.

function ccg_buttoncolor(
    id, txtcol, col1, col2, bordercol, textshadow, boxshadow, rad, fs, dis
) {
    el = document.getElementById(id);
    if (!el)
        return;
        
    InitButton(el);  // in case not initialized yet
    if (el.tagName == 'INPUT') // 'File upload' button
        id = previousElementSibling(el).id;
        
        // Clear existing CSS if any
        
    var s = document.getElementsByTagName('style');
    var i, j;
    for (i = 0; i < s.length; i++) {
        var sheet = s[i].sheet || s[i].styleSheet;
        var rules = sheet.rules || sheet.cssRules;
        for (j = rules.length - 1; j >= 0; j--) {
            if (
                rules[j].selectorText == '#' + id ||
                rules[j].selectorText == '#' + id + ':hover' ||
                rules[j].selectorText == '#' + id + '.ccg_buttonhover' ||
                rules[j].selectorText == '#' + id + ':active'
            ) {
                s[i].parentNode.removeChild(s[i]);
                break;
            }
        }
    }
        
    var style = document.createElement("style");
    style.setAttribute('type', 'text/css');
    var css = '#' + id + ' { ' + 
        'color: ' + txtcol + '; ' +
        'background: ' + col1 + '; ' +
        'background: -moz-linear-gradient(top, ' + col1 + ' 5%, ' + col2 + ' 100%); ' +
        'background: -webkit-gradient(linear, left top, left bottom, color-stop(5%,' + col1 + '), color-stop(100%,' + col2 + ')); ' +
        'background: -webkit-linear-gradient(top, ' + col1 + ' 5%,' + col2 + ' 100%); ' +
        'background: -o-linear-gradient(top, ' + col1 + ' 5%,' + col2 + ' 100%); ' +
        'background: -ms-linear-gradient(top, ' + col1 + ' 5%,' + col2 + ' 100%); ' +
        'background: linear-gradient(to bottom, ' + col1 + ' 5%, ' + col2 + ' 100%); ' +
        'filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=\'' + col1 + '\', endColorstr=\'' + col2 + '\',GradientType=0); ';
    if (boxshadow)
        css = css + 'box-shadow: ' + boxshadow + '; ';
    if (textshadow)
        css = css + 'text-shadow: ' + textshadow + '; ';
    if (bordercol)
        css = css + 'border: 1px solid ' + bordercol + '; ';
    if (fs)
        css = css + 'font-size: ' + fs + 'px; ';
    if (rad) {
        css = css + '-webkit-border-radius: ' + rad + 'px; ';
        css = css + '-khtml-border-radius: ' + rad + 'px; ';
        css = css + '-moz-border-radius: ' + rad + 'px; ';
        css = css + 'border-radius: ' + rad + 'px; ';
    }
    if (dis)
        css = css + 'cursor: default; ';
    else
        css = css + 'cursor: pointer; ';
    css = css + '} ';
    css = css + '#' + id;
    if (el.tagName == 'INPUT')
        css = css + '.ccg_button';
    else
        css = css + ':';
    css = css + 'hover { ';
    if (dis)
        css = css + 'text-decoration: none; ';
    else
        css = css + 'text-decoration: underline; ' +
            'background: ' + col2 + '; ' +
            'background: -moz-linear-gradient(top, ' + col2 + ' 5%, ' + col1 + ' 100%); ' +
            'background: -webkit-gradient(linear, left top, left bottom, color-stop(5%,' + col2 + '), color-stop(100%,' + col1 + ')); ' +
            'background: -webkit-linear-gradient(top, ' + col2 + ' 5%,' + col1 + ' 100%); ' +
            'background: -o-linear-gradient(top, ' + col2 + ' 5%,' + col1 + ' 100%); ' +
            'background: -ms-linear-gradient(top, ' + col2 + ' 5%,' + col1 + ' 100%); ' +
            'background: linear-gradient(to bottom, ' + col2 + ' 5%, ' + col1 + ' 100%); ' +
            'filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=\'' + col2 + '\', endColorstr=\'' + col1 + '\',GradientType=0); ';
    css = css + '} ' +
        '#' + id + ':active { ';
    if (dis)
        css = css + 'top: 0px; ';
    else
        css = css + 'position: relative; ' +
            'top: 2px; ';
    css = css + '}';
    if (style.styleSheet)
        style.styleSheet.cssText = css;
    else
        style.innerHTML = css;
        
/*
if (!h)
        h =  document.getElementById(id).clientHeight;
    if (el.tagName == 'INPUT') {
        el.style.height = h + 'px';
//      el.style.top = '-' + h + 'px';
    }
    */
    document.getElementsByTagName('head')[0].appendChild(style); // IE 7/8 compliant
}

// Helper function for tooltips, not to be called directly.

function helpwin(el, show, tip) {
    var h = document.getElementById('ccg_helpwin');
    var l = document.getElementById('ccg_helpwinL');
    var r = document.getElementById('ccg_helpwinR');

    if (!show) {
        h.style.display = 'none';
        l.style.display = 'none';
        r.style.display = 'none';
        return;
    }
    var px = getElementAbsPosX(el);
    var py = getElementAbsPosY(el);
    firstElementChild(h).innerHTML = tip;

    h.style.top = (py - 47) + 'px'; 
    if (tip.length < 100)
        h.style.top = (py - 27) + 'px';

        // Show on left instead, no room on right.

    if (px + 290 + 45 > getAbsWindowRight()) {
        h.style.left = (px - 55 - 290 + 37) + 'px'; 
        r.style.left = (px - 40 + 19) + 'px'; 
        r.style.top = (py - 17) + 'px';
        r.style.display = 'block';
    }
    else {
        h.style.left = (px + 34) + 'px'; 
        l.style.left = (px + 16) + 'px'; 
        l.style.top = (py - 17) + 'px';
        l.style.display = 'block';
    }
    h.style.display = 'block';
    
        // Short tooltips need some padding on top and bottom so L/R triangle
        // attaches visually.
    
    if (tip.length < 100) {
        h.style.paddingTop = '15px';
        h.style.paddingBottom = '15px';
    }
    else {
        h.style.paddingTop = '0px';
        h.style.paddingBottom = '0px';
    }
}

// Used internally for file ccg_buttons.

function ccg_buttonclass(inp, cls)
{
    var but = previousElementSibling(inp);
    but.className = cls;
    if (cls == 'ccg_buttonclick')
        but.style.top = '2px';
    else
        but.style.top = '0px';
    inp.style.left = getElementAbsPosX(but) + 'px';
    inp.style.top = getElementAbsPosY(but) + 'px';
}

// Callback to set progress bar with id 'id' to given percentage 'perc' and
// progress message 'msg'.

function ccg_setProgress(id, perc, msg)
{
    var bar = document.getElementById(id);
    if (!bar)
        return;

    var txt = firstElementChild(nextElementSibling(nextElementSibling(
        firstElementChild(bar)
    )));
    if (txt)
        txt.innerHTML = msg;
        
    perc = parseFloat(perc);
    if (isNaN(perc) || perc < 0 || perc > 100)
        return;
    txt = nextElementSibling(nextElementSibling(firstElementChild(
        nextElementSibling(firstElementChild(bar))
    )));
    var img = nextElementSibling(txt);
    if (!txt || !img)
        return;
    var w = previousElementSibling(txt).clientWidth;
    img.style.width = Math.round(perc * w / 100.0) + 'px';
    txt.innerHTML = perc + '%';
}

function ccg_popupmenucolor(id, col, bgcol, bordcol, hoverbgcol, hovercol, w)
{
    el = document.getElementById(id);
    if (!el)
        return;
        
    var style = document.createElement("style");
    style.setAttribute('type', 'text/css');
    var css = '#' + id + ' { ' + 
        'background-color: ' + bgcol + '; ' +
        'color: ' + col + '; ';
    if (w)
        css = css + 'width: ' + w + 'px; ';
    css = css + '} ' +
        '#' + id + ' table { ' + 
        'border: 1px solid ' + bordcol + '; ' +
        '} ' +
        '#' + id + ' td:hover { ' + 
        'color: ' + hovercol + '; ' +
        'background-color: ' + hoverbgcol + '; ' +
        '} ' +
        '#' + id + ' td { ' + 
        'border: 1px solid ' + bordcol + '; ' +
        'color: ' + col + '; ';
        '} ' +
        '#' + id + ' span:hover { ' + 
        'border-bottom: 1px solid ' + hovercol + '; ' +
        '} ' +
        '#' + id + ' a:hover { ' + 
        'background-color: ' + hoverbgcol + '; ' +
        'border-bottom: 1px solid ' + hovercol + '; ' +
        '} ' +
        '#' + id + ' a { ' + 
        'color: ' + col + '; ' +
        '}';
    if (style.styleSheet)
        style.styleSheet.cssText = css;
    else
        style.innerHTML = css;
    document.getElementsByTagName('head')[0].appendChild(style); // IE 7/8 compliant
}

// Load 'lazy images', i.e. not loaded until they appear in the browser window.

function ccg_lazyload(e)
{
    var ytop = getScrollOffsetY(document);
    var ybottom = ytop + getInnerHeight(document);
    var els = getElementsByClassName('ccg_lazyimg');
    var i;
    for (i = 0; i < els.length; i++) {
        var el = els[i];
        var eltop = getElementAbsPosY(el);
        var elbottom = eltop + el.offsetHeight;
        if (elbottom < ytop)
            continue;
        if (eltop > ybottom)
            break;

        var htm;
        if (document.all) { // IE
            htm = el.innerHTML;
            htm = htm.substr(4, htm.length - 7);
        }
        else
            htm = el.firstChild.textContent;
        htm = htm.trim();
        var pos = htm.indexOf(' ');
        var endpos = htm.indexOf('>');
        var newel = document.createElement(htm.substr(1,pos - 1).toUpperCase());
        while (1) {
            htm = htm.substr(pos + 1, htm.length - pos - 1);
            pos = htm.indexOf('=');
            if (pos < 0 || pos > endpos)
                break;
            var key = htm.substr(0, pos);
            htm = htm.substr(pos + 1, htm.length - pos - 1);
            if (htm.substr(0, 1) == "\"") {
                htm = htm.substr(1, htm.length - 1);
                pos = htm.indexOf("\"");
            }
            else
                pos = htm.indexOf(" ");
            val = htm.substr(0, pos);
            pos++;
            if (key == 'style') {
                var skey, sval, spos;
                while (1) {
                    spos = val.indexOf(':');
                    if (spos < 0)
                        break;
                    skey = val.substr(0, spos);
                    val = val.substr(spos + 1, val.length - spos - 1);
                    spos = val.indexOf(";");
                    sval = val.substr(0, spos);
                    if (sval.substr(0, 1) == " ")
                        sval = sval.substr(1, sval.length - 1);
                    eval('newel.style.' + skey + ' = "' + sval + '"');
                    spos++;
                    val = val.substr(spos + 1, val.length - spos - 1);
                }
            }
            else
                eval('newel.' + key + ' = "' + val + '"');
        }
        newel.id = el.id;
        el.parentNode.replaceChild(newel, el);
    }
}

// Calendar functions

function ccg_calendar_monthback(field)
{
    var todayvar = eval('today' + field);
    var mo = todayvar.getMonth();
    if (mo == 0) {
        mo = 11;
        var yr = todayvar.getFullYear();
        if (yr > 1900) {
            yr--;
            todayvar.setFullYear(yr);
        }
        else {
        
                // Absolute limit of Jan 1900
                
            mo = 0;
        }
    }
    else
        mo--;
    eval('today' + field).setMonth(mo);
    ccg_calendar_draw(field);
}

function ccg_calendar_monthfwd(field)
{
    var todayvar = eval('today' + field);
    var mo = todayvar.getMonth();
    if (mo == 11) {
        mo = 0;
        var yr = todayvar.getFullYear();
        if (yr < 2030) {
            yr++;
            todayvar.setFullYear(yr);
        }
        else {
        
                // Absolute limit of Dec 2029
        
            mo = 11;
        }
    }
    else
        mo++;
    eval('today' + field).setMonth(mo);
    ccg_calendar_draw(field);
}

function ccg_calendar_yearfwd(field)
{
    var todayvar = eval('today' + field);
    var yr = todayvar.getFullYear();
    yr += 5;
    if (yr > 2030)
        yr = 2030;
    eval('today' + field).setFullYear(yr);
    ccg_calendar_draw(field);
}

function ccg_calendar_yearback(field)
{
    var todayvar = eval('today' + field);
    var yr=todayvar.getFullYear();
    yr-=5;
    if (yr < 1900)
        yr = 1900;
    eval('today' + field).setFullYear(yr);
    ccg_calendar_draw(field);
}

function ccg_calendar_draw(field)
{
    var ccg_calendar_days = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    var ccg_calendar_months = new Array(
        'January', 'February', 'March', 'April', 'May', 'June',
        'July', 'August', 'September', 'October', 'November', 'December'
    );
        
        // Draw the calendar with the current date in today
    
    var todayvar = eval('today' + field);
    var table = document.getElementById(field);
    var yr = todayvar.getFullYear();
    var mo = todayvar.getMonth();
    var day = todayvar.getDay();
    table.rows[0].cells[1].innerHTML = ccg_calendar_months[mo] + ", " + yr;
    table = document.getElementById('caldays_' + field);
    var currow = 1;
    var row = table.rows[currow];
    var curday = 1;
    var maxday = ccg_calendar_days[mo];
    
        // Leap year check
        
    if (mo == 1) {
        if (yr % 4 == 0) {
            if (yr % 100 == 0 && yr % 400 != 0)
                maxday--;
        }
        else
            maxday--;
    }
    for (x = 0; x < day; x++)
        row.cells[x].innerHTML = "";
    while (1) {
        row.cells[x].innerHTML = curday;
        curday++;
        x++;
        if (curday > maxday) {
            break;
        }
        if (x > 6) {
            x = 0;
            currow++;
            row = table.rows[currow];
        }       
    }
    while (x > 0 && x < 7) {
        row.cells[x].innerHTML = "";
        x++;
    }
    currow++;
    while (row = table.rows[currow]) {
        for (x = 0; x < 7; x++)
            row.cells[x].innerHTML = "";
        currow++;
    }
}

function ccg_calendar_onclick(el, x, y)
{
    var t = el;
    while (t.tagName != 'TABLE')
        t = t.parentNode;
    var id = t.id.substr(8, t.id.length - 8); // remove caldays_ prefix
    var todayvar = eval ('today' + id);
    var mo = eval(todayvar.getMonth() + 1);
    if (t.rows[y + 1].cells[x].innerHTML == '')
        return;
    var day = t.rows[y + 1].cells[x].innerHTML;
    if (day < 10)
        day = '0' + day;
    if (mo < 10)
        mo = '0' + mo;
    document.getElementById(id).style.display = 'none';
    if (typeof(ccg_calendarcb) == 'function')
        ccg_calendarcb(id, todayvar.getFullYear(), mo, day);
}