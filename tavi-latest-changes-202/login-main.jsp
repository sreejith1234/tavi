<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page language="java"%>
<%@ include file="/WEB-INF/view/module/ahimsa-core/template/taglib.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<title>..:: Procedure Tracking ::..</title>
<link rel="icon" href="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/fv-icon.png" type="image/gif" sizes="16x16">
<link rel="stylesheet" href="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/css/style-copy1.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/moduleResources/ahimsa-core/css/bootstrap.min.css" />
<script src="${pageContext.request.contextPath}/moduleResources/ahimsa-core/js/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/moduleResources/ahimsa-core/js/bootstrap/bootstrap.min.js"></script>
<style>
.cc-banner.cc-bottom {
    left: 0;
    right: 0;
    bottom: 0;
    position:fixed;
}
.cc-window.cc-banner {
    -ms-flex-align: center;
    -ms-grid-row-align: center;
    align-items: center;
}
.cc-window.cc-banner {
    padding: 1em 1.8em;
    width: 100%;
    -ms-flex-direction: row;
    flex-direction: row;
}
.cc-banner .cc-message {
    -ms-flex: 1;
    flex: 1;
}
.cc-message > a{
	text-decoration: underline !important;
}
.cc-message > a:hover{
	text-decoration: none !important;
}
.cc-color-override-688238583.cc-window {
    color: rgb(255, 255, 255);
    background-color: rgb(0, 0, 0);
}
.cc-bottom {
    bottom: 1em;
}
.cc-revoke, .cc-window {
    position: fixed;
    overflow: hidden;
    box-sizing: border-box;
    font-family: Helvetica,Calibri,Arial,sans-serif;
    font-size: 16px;
    line-height: 1.5em;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: nowrap;
    flex-wrap: nowrap;
    z-index: 9999;
}

.cc-link {
    color: rgb(222, 214, 214);
}
.cc-link:hover {
    opacity: 1;
    color:#fff;
}

.cc-btn {
    display: block;
    padding: .4em 3em;
    font-size: .9em;
    font-weight: 700;
    border-width: 2px;
    border-style: solid;
    text-align: center;
    white-space: nowrap;
    cursor: pointer;
        color: rgb(255, 255, 255);
    background-color: rgb(3, 153, 252);
    border-color: transparent;
}
.cc-btn:hover{
	background-color: rgb(0, 123, 204);
	color:#fff;
}
/* styles for terms and conditions*/
*{margin:0;padding:0;}
#myModal{ /* we set all of the properties for are overlay */
    height:90%;
    width:80%;
    margin:0 auto;
    background:white;
    color:black;
    padding:10px;
    position:absolute;
    top:5%;
    left:10%;
    z-index:1000;
    display:none;
    /* CSS 3 */
    -webkit-border-radius:10px;
    -moz-border-radius:10px;
    -o-border-radius:10px;
    border-radius:10px;
}

#mask{ /* create are mask */
    position:fixed;
    top:0;
    left:0;
    background:rgba(0,0,0,0.6);
    z-index:500;
    width:100%;
    height:100%;
    display:none;
}
/* use :target to look for a link to the overlay then we find are mask */
#myModal:target, #myModal:target + #mask{
    display:block;
    opacity:1;
}
.close{ /* to make a nice looking pure CSS3 close button */
    display:block;
    position:absolute;
    top:5px;
    right:10px;
    color:#000;
    height:40px;
    width:40px;
    line-height:40px;
    font-size:35px;
    text-decoration:none;
    text-align:center;
    font-weight:bold;
    -webkit-border-radius:40px;
    -moz-border-radius:40px;
    -o-border-radius:40px;
    border-radius:40px;
}
</style>
</head>

<body>
	<div class="login-left-new-des">
		<div class="col-xs-12" style="padding:0;">
			<iframe src="<ahimsa:contextPath />/ahimsa/procedure/v2/login-iframe.htm" class="log-ifrm" style="height:700px;width:100%;"   frameborder="1"></iframe>
			<div class="cc-window cc-banner cc-type-info cc-theme-block cc-bottom cc-color-override-688238583 ">
				<span class="cc-message">This website uses cookies to ensure you get the best experience on our website.&nbsp;<a class="cc-link" href="https://cookiesandyou.com/" target="_blank">Learn More</a></span>
				<div class="cc-compliance"><a class="cc-btn">Got it!</a></div>
			</div>
		</div>
	</div>
	<div id="open-overlay"></div>
	<div id="myModal">
	    <a href="#" class="close">&times;</a>   
	    <iframe id="_tcnd" class="embed-responsive-item" src="javascript:false" style="width:100%;height:85%;overflow:scroll;border:none;"></iframe>
	</div>
	<div id="mask"></div>
	<div class="col-xs-12" style="position: fixed; bottom: 10px; color: #FFFFFF;font-size:14px;"> &copy; Cirakas 2021 |&nbsp;<span>&nbsp;<span><a style="text-decoration:underline !important;font-size:14px;" href="#" onClick='loadTermsAndConditions()'>Privacy Policy</a></span></div>
</body>

<script>
$(document).ready(function() {    
	var x = getCookie('datavaultcookie');
	$('.cc-window').hide();
	if (!x) {
		$('.cc-window').show();
	}
	
	//load terms and condition
	var y = getCookie('termscondition');
	$('#myModal').hide();
	$('#mask').hide();
	if (!y) {
		loadTermsAndConditions();
	}
	
	$('.cc-btn').click(function(e) {
		//Cancel the link behavior
		e.preventDefault();
		setCookie('datavaultcookie','accepted', 7);
		$('.cc-window').hide();
	});
	
	$('.close').click(function(e) {
		//Cancel the terms and conditions
		e.preventDefault();
		$('#myModal').hide();
		$('#mask').hide();
	});
});
function setCookie(name,value,days) {
    /* var expires = "";
    if (days) {
        var date = new Date();
        date.setTime(date.getTime() + (days*24*60*60*1000));
        expires = "; expires=" + date.toUTCString();
    }
    document.cookie = name + "=" + (value || "")  + expires + "; path=/"; */
    window.localStorage.setItem(name, value || "");
}
function getCookie(name) {
    /* var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for(var i=0;i < ca.length;i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') c = c.substring(1,c.length);
        if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
    }
    return null; */
    return window.localStorage.getItem(name);
}
function eraseCookie(name) {   
    document.cookie = name+'=; Max-Age=-99999999;';  
}
function loadTermsAndConditions() {
	$('#mask').show();
	$('#myModal').show();
    var $iframe = $('#_tcnd');
    if ( $iframe.length ) {
        $iframe.attr('src', '${pageContext.request.contextPath}/ahimsa/procedure/v2/terms.htm');   
        return false;
    }
    return true;
}
function acceptTerms() {
	setCookie('termscondition','accepted', 365);
	$('#mask').hide();
	$('#myModal').hide()
}
</script>
</html>