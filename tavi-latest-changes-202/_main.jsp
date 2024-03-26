<%@page
	import="org.openmrs.module.ahimsa.procedure.core.web.context.UserRelationshipType"%>
<%@page
	import="org.openmrs.module.ahimsa.procedure.core.web.CoreProcedureWebConstants"%>
<%@page
	import="org.openmrs.module.ahimsa.procedure.core.web.context.UserRelationshipTypeHolder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="org.openmrs.api.context.Context"%>
<%@page import="org.openmrs.User"%>
<%@ taglib prefix="procedure"
	uri="/WEB-INF/view/module/procedure-tracking-core-module/resources/procedure_tracking.tld"%>
<%@ include file="/WEB-INF/view/module/ahimsa-core/template/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="AhimsaApp">

<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->
<%@ include
	file="/WEB-INF/view/module/procedure-tracking-module/v2/head.jsp"%>
<%
	if (!UserRelationshipTypeHolder.isUserRelationshipTypeSet()) {
		UserRelationshipTypeHolder
				.setUserRelationshipType((UserRelationshipType) session
						.getAttribute(CoreProcedureWebConstants.AUTHORIZED_USER_TYPE));
	}
	String name = UserRelationshipTypeHolder.getFamilyName();
	String uuid = UserRelationshipTypeHolder.getUserUuid();
%>

<script type="text/javascript">
	$(document).ready(function() {
		$('#myaccount').hide();
		$("#downarrow").click(function() {
			if ($('#myaccount').css('display') == 'none') {
				$('#myaccount').show();
			} else {
				$('#myaccount').hide();
			}
		});
		$('.m-nav a').on("click", function(){
     		$('.m-nav').slideUp();
    	});
		$('.m-nav').hide();
		$(".m-menu").click(function() {
			$('.m-nav').slideToggle();
		});
		$('.close').click(function(e) {
		//Cancel the terms and conditions
		e.preventDefault();
		$('#myModal').hide();
		$('#mask').hide();
	});
	});
</script>
<body class="body-bg-new">
<div id="open-overlay"></div>
	<div id="myModal" style="display:none;">
	    <a href="#" class="close">&times;</a>   
	    <iframe id="_tcnd" class="embed-responsive-item" src="javascript:false" style="width:100%;height:85%;overflow:scroll;border:none;"></iframe>
	</div>
	<div id="mask"></div>
	<!-- ------------------------------- Header start ----------------------------------------------- -->
	<!-- ------------------------------- Left Side start ----------------------------------------------- -->


	<div ng-controller="MainController" ng-init="init('${token}')">

		<div class="left-menu-new-des dis_none leftMenu">
			<a ui-sref="postlogin">
				<div class="logo-new-des">
					<img
						src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/newlogo_ap22.png" />
					<div>
						<span class="vers-aftr-login">Ver. 2.5</span>
					</div>
				</div>
			</a>
			<div class="col-xs-12 pro-pic">
				<a
					ui-sref="my_profile({user: '<%=uuid%>', ct: <%=System.currentTimeMillis()%>})"
					title="Edit Profile">
					<div class="col-xs-12">
						<span><img
							src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/pro33.png" /></span>
					</div>
				</a>
				<div class="col-xs-12" style="margin-top: 10px;">
					<span class="pro-name"> <%=name%> <%-- </span> <span style="margin-left: 5px; cursor: pointer" id="downarrow"><img
						src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/myprof.png" /></span> --%>
				</div>
			</div>

			<div class="col-xs-12" style="margin-top: 50px; padding: 0;">
				<procedure:isUserType type="admin,delegate,normaladmin">
					<a id="dashlink" ui-sref="delegate_dashboard({ruuid : '0', wtype : 'WAITING'})"
						data-it-mark="_headerlink">
						<div class="col-xs-12 nav-newdes DASHBOARD">
							<span class="nav-icon"><img
								src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/home3.png" /></span><span
								class="nav-txt-newdes">Dashboard</span>
						</div>
					</a>
				</procedure:isUserType>
				<procedure:isUserType type="normalspecial,normal" not="superadmin,admin,normaladmin,delegate">
					<a id="dashlink" ui-sref="dashboard" data-it-mark="_headerlink">
						<div class="col-xs-12 nav-newdes DASHBOARD">
							<span class="nav-icon"><img
								src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/home3.png" /></span><span
								class="nav-txt-newdes">Dashboard</span>
						</div>
					</a>
				</procedure:isUserType>
				
				<!----------------------------------------- Analytics link ----------------------------------------------- -->
				<procedure:isUserType type="admin,delegate,normaladmin">
					<a id="analink"  data-it-mark="_headerlink">
						<div class="col-xs-12 nav-newdes ANALYTICS" ng-click = "redirectToAnalysis(); analyticsSubMenu = 'MORTALITY' ">
							<span class="nav-icon"><i class="fa fa-line-chart" style="font-size:24px; font-weight: 50; padding-left: 4px;" ></i></span><span
								class="nav-txt-newdes">Analytics</span>
						</div>
						<div id = "analiticsSubmenu" >
							<div class="anly-submenu col-xs-12 MORTALITY" ng-class = "{'anly-submenu-active12' : analyticsSubMenu == 'MORTALITY'}" ng-click = "redirectToAnalysis();analyticsSubMenu = 'MORTALITY'">
								<span>Mortality</span>
							</div>
							<div class="anly-submenu col-xs-12 MAJORCOMPLICATION" ng-class = "{'anly-submenu-active12' : analyticsSubMenu == 'MAJORCOMPLICATION'}"  ng-click = "redirectToMajorComplication();analyticsSubMenu = 'MAJORCOMPLICATION'">
								<span>Major Complications</span>
							</div>
							<div class="anly-submenu col-xs-12 COSTANALYSIS" ng-class = "{'anly-submenu-active12' : analyticsSubMenu == 'COST'}"  ng-click = "redirectToCostAnalysis();analyticsSubMenu = 'COST'">
								<span>Cost Analysis</span>
							</div>
						</div>
					</a>
				</procedure:isUserType>
				<procedure:isUserType type="normalspecial" not="superadmin,normaladmin,,normal,admin,delegate">
						<a id="analink" ui-sref="normal_user_analytics_dashboard" data-it-mark="_headerlink">
							<div class="col-xs-12 nav-newdes ANALYTICS">
								<span class="nav-icon"><i class="fa fa-line-chart" style="font-size:24px; font-weight: 50; padding-left: 4px;" ></i></span><span
									class="nav-txt-newdes">Analytics</span>
							</div>
						</a>
						<div id = "analiticsSubmenu" >
							<a  ui-sref="normal_user_analytics_dashboard" data-it-mark="_headerlink">
								<div class="anly-submenu col-xs-12 MORTALITY" ng-class = "{'anly-submenu-active12' : analyticsSubMenu == 'MORTALITY'}" analyticsSubMenu = 'MORTALITY'">
									<span>Mortality</span>
								</div>
							</a>
							<div class="anly-submenu col-xs-12 MAJORCOMPLICATION" ng-class = "{'anly-submenu-active12' : analyticsSubMenu == 'MAJORCOMPLICATION'}"  ng-click = "redirectToNormalUserMajorComplication();analyticsSubMenu = 'MAJORCOMPLICATION'">
								<span>Major Complications</span>
							</div>
							<div class="anly-submenu col-xs-12 COSTANALYSIS" ng-class = "{'anly-submenu-active12' : analyticsSubMenu == 'COST'}"  ng-click = "redirectToNormalUserCostAnalysis();analyticsSubMenu = 'COST'">
								<span>Cost Analysis</span>
							</div>
						</div>
					
				</procedure:isUserType>
				<!--------------------------------------------- Analytics link End ---------------------------------------- -->


				<procedure:isUserType type="superadmin,admin,normal">
					<a id="patlink"  data-it-mark="_headerlink"
						ng-click="patientLinkClicked()">
						<div class="col-xs-12 nav-newdes PATIENTDETAILS">
							<span class="nav-icon"><img
								src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/patient2.png" /></span><span
								class="nav-txt-newdes">Patient</span>
						</div>
					</a>
				</procedure:isUserType>
				<procedure:isUserType type="admin,normaladmin">
					<a id="patlink" ng-click="adminLinkClicked()"  data-it-mark="_headerlink">
						<div class="col-xs-12 nav-newdes ADMINPAGE">
							<span class="nav-icon"><img
								src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/admin2.png" /></span><span
								class="nav-txt-newdes">Admin</span>
						</div>
					</a>
				</procedure:isUserType>

				<div class="col-xs-12" style="padding-top: 50px;">

					<div class="col-xs-12" style="text-align: center; padding-top:0px;">
						<a
							href="<ahimsa:contextPath />/ms/ahimsaLogoutServlet?r=/ahimsa/procedure/v2/launch.htm&dt=<%=System.currentTimeMillis()%>"
							title="Logout"
							onclick="return confirm('Are you sure, you want to end your session ..?')"> <img
							src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/logout-btn-vv.png" />
						</a>
					</div>

				</div>

			</div>
			<div class="col-xs-12 footer-new-des">&copy; Cirakas 2021 | <span><a style="cursor:pointer;text-decoration:underline !important;font-size:12px;"  onClick='loadTermsAndConditions()'>Privacy Policy</a></span></div>
		</div>
	
	<%-- <div class=" my-pro" style="display: none;" id="myaccount">
		<div class="edprof-hd" id="myaccounthead">MY ACCOUNT</div>
		<a
			ui-sref="my_profile({user: '<%=uuid%>', ct: <%=System.currentTimeMillis()%>})">
			<div class="edprof">
				<img
					src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/editpro1.png" /><span
					style="padding: 10px;">Edit profile</span>
			</div>
		</a> <a
			href="<ahimsa:contextPath />/ms/ahimsaLogoutServlet?r=/ahimsa/procedure/v2/launch.htm&dt=<%=System.currentTimeMillis()%>"
			title="Logout">
			<div class="edprof">
				<img
					src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/logout-boot.png" /><span
					style="padding: 10px;">Logout</span>
			</div>
		</a>
	</div> --%>

	<!--mobile-v2 start-->
	
	<div class="col-xs-12 mob-v2  leftMenu" style="position:fixed; top:-1px;">
		<div class="col-xs-4" style="padding: 0;">
			<a ui-sref="postlogin">
			    <div class="logo-mob-v2" >
					<div>
						<img src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/newlogo_ap22.png" />
					</div>
					<div>
						<span class="vers-aftr-login">Ver.2.5</span>
					</div>
			    </div>	
			</a>
		</div>
			
		<div class="col-xs-8">
			<div style="float: right; padding: 20px;" id="mobmenudiv">
				<span class="glyphicon glyphicon-menu-hamburger m-menu" id="mobmenu" style="font-size: 26px; cursor: pointer;"></span>
			</div>
			<a style="float: right; padding-top:25px;"  ui-sref="my_profile({user: '<%=uuid%>', ct: <%=System.currentTimeMillis()%>})" title="Edit Profile">
				<span class="pro-name"> <%=name%> </span>
			</a>
			
		</div>

		<div id="slideup" class="m-nav">
			<div class="col-xs-12" style="padding: 0;">

				<procedure:isUserType type="admin,delegate,normaladmin">
					<a id="dashlink" ui-sref="delegate_dashboard({ruuid : '0', wtype : 'WAITING'})"
						data-it-mark="_headerlink"><div
							class="col-xs-12 nav-newdes m-nav-uline DASHBOARD">
							<span class="nav-icon"><img
								src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/home3.png" /></span><span
								class="nav-txt-newdes">Dashboard</span>
						</div></a>
				</procedure:isUserType>
				<procedure:isUserType type="normalspecial,normal" not="superadmin,admin,normaladmin,delegate">
					<a id="dashlink" ui-sref="dashboard" data-it-mark="_headerlink"><div
							class="col-xs-12 nav-newdes m-nav-uline DASHBOARD">
							<span class="nav-icon"><img
								src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/home3.png" /></span><span
								class="nav-txt-newdes">Dashboard</span>
						</div></a>
				</procedure:isUserType>
				<procedure:isUserType type="superadmin,admin,normal">
					<a id="patlink"  data-it-mark="_headerlink"
						ng-click="patientLinkClicked()"><div
							class="col-xs-12 nav-newdes m-nav-uline PATIENTDETAILS">
							<span class="nav-icon"><img
								src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/patient2.png" /></span><span
								class="nav-txt-newdes">Patient</span>
						</div></a>
				</procedure:isUserType>
				<procedure:isUserType type="admin,normaladmin">
					<a id="patlink" ng-click="adminLinkClicked()"  data-it-mark="_headerlink"><div
							class="col-xs-12 nav-newdes m-nav-uline ADMINPAGE">
							<span class="nav-icon"><img
								src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/admin2.png" /></span><span
								class="nav-txt-newdes">Admin</span>
						</div></a>
				</procedure:isUserType>

				<!----------------------------------------- Analytics link ----------------------------------------------- -->
				<procedure:isUserType type="admin,delegate,normaladmin">
					<a id="analink" ng-click = "redirectToAnalysis()" data-it-mark="_headerlink">
						<div class="col-xs-12 nav-newdes m-nav-uline ANALYTICS">
							<span class="nav-icon"><i class="fa fa-line-chart" style="font-size:24px; font-weight: 50; padding-left: 4px;" ></i></span><span
								class="nav-txt-newdes">Analytics</span>
						</div>
					</a>
				</procedure:isUserType>
				<procedure:isUserType type="normalspecial" not="superadmin,normaladmin,,normal,admin,delegate">
					<a id="analink" ui-sref="normal_user_analytics_dashboard" data-it-mark="_headerlink">
						<div class="col-xs-12 nav-newdes m-nav-uline ANALYTICS">
							<span class="nav-icon"><i class="fa fa-line-chart" style="font-size:24px; font-weight: 50; padding-left: 4px;" ></i></span><span
								class="nav-txt-newdes">Analytics</span>
						</div>
					</a>
				</procedure:isUserType>
				<!--------------------------------------------- Analytics link End ---------------------------------------- -->










				
				<a
					href="<ahimsa:contextPath />/ms/ahimsaLogoutServlet?r=/ahimsa/procedure/v2/launch.htm&dt=<%=System.currentTimeMillis()%>"
					title="Logout">
					<div class="col-xs-12 nav-newdes">
						<span class="nav-icon"><img
							src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/lout-v2.png" /></span><span
							class="nav-txt-newdes"> Logout</span>
					</div>
				</a>
				<!--  -->

				<!--  -->


			</div>
		</div>
	</div>
</div>
	<!---------------------------------Left Side end------------------------------------------------->
	<!---------------------------------Header end------------------------------------------------->
	<ui-view></ui-view>

	<!---------------------------------Footer start------------------------------------------------->

	<!---------------------------------Footer end------------------------------------------------->

	<!-- loading highcharts and its plugins  -->
	<%-- <script src="${pageContext.request.contextPath}/moduleResources/ahimsa-core/js/lib/highcharts.js"></script> --%>
	<script
		src="${pageContext.request.contextPath}/moduleResources/ahimsa-core/js/lib/highstock.js"></script>
	<script
		src="${pageContext.request.contextPath}/moduleResources/ahimsa-core/js/lib/grouped-categories.js"></script>
	<script
		src="${pageContext.request.contextPath}/moduleResources/ahimsa-core/js/lib/map.js"></script>
	<script
		src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/util/nz.js"></script>
	<script
		src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/DependencyModule.js"></script>

	<script
		src="${pageContext.request.contextPath}/moduleResources/ahimsa-core/js/app/ErrorService.js"></script>
	<script
		src="${pageContext.request.contextPath}/moduleResources/ahimsa-core/js/app/CoreFactory.js"></script>
	<script
		src="${pageContext.request.contextPath}/moduleResources/ahimsa-core/js/app/CoreProvider.js"></script>
	<script
		src="${pageContext.request.contextPath}/moduleResources/ahimsa-core/js/app/CoreService.js"></script>
	<script
		src="${pageContext.request.contextPath}/moduleResources/ahimsa-core/js/app/AhimsaModule.js"></script>
	<script
		src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/controller/MainController.js"></script>
	<!-- include all dependency js files; providers, library js etc -->

	<%-- 	<script
		src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/controller/PrePHVController.js"></script>
	<script
		src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/controller/ProcedureController.js"></script>
	<script
		src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/controller/FollowUpController.js"></script> --%>
	<%-- 	<script
		src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/controller/ListFollowupController.js"></script>
	<script
		src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/controller/ListProcedureController.js"></script> --%>
	<script
		src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/controller/ScoreWaitPeriodSummaryController.js"></script>
	<script
		src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/controller/PatientListController.js"></script>
	<script
		src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/controller/RoleController.js"></script>
	<script
		src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/controller/LocationController.js"></script>
	<script
		src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/controller/WaitTimeGraphController.js"></script>
	<script
		src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/controller/PatientController.js"></script>
	<script
		src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/controller/PrePatientController.js"></script>
	<script
		src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/controller/UserController.js"></script>

	<!-- Providers -->
	<script
		src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/provider/PrePHVServiceProvider.js"></script>
	<script
		src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/provider/ProcedureServiceProvider.js"></script>
	<script
		src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/location/provider/LocationServiceProvider.js"></script>
	<script
		src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/provider/LocationPlotServiceProvider.js"></script>
	<script
		src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/provider/PatientServiceProvider.js"></script>
	<script
		src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/provider/ProcedureModuleService.js"></script>
	<%-- <script
		src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/provider/AuthenticationServiceProvider.js"></script> --%>
	<script
		src="${pageContext.request.contextPath}/moduleResources/ahimsa-core/js/app/MainDirective.js" type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/ProcedureModule.js"></script>
	<script
		src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/provider/AdminServiceProvider.js"></script>
	<script
		src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/admin/AdminStateProviderModule.js"></script>
	<script
		src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/laao/StateProviderModule.js"></script>
	<script
		src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/tavi/StateProviderModule.js"></script>
	
	<!-- components -->
	<script src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/tavi/providers/ValveServiceProvider.js"></script>
	<script src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/tavi/component/CreateValveComponent.js"></script>
	<script src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/js/tavi/component/ValveComponent.js"></script>
	

	<script>
		$(document).on('click', function(e) {
			var elem = $(e.target).closest('.logout'), box = $(e.target).closest('.logout-list'), mobelem = $(e.target).closest('.mob-nav1'), mobbox = $(e.target).closest('.mob-nav2')
			dashlink = $(e.target).closest('#dashlink'), patlink = $(e.target).closest('#patlink'), loglink = $(e.target).closest('#loglink');
			
			if (elem.length) {
				e.preventDefault();
				$('.logout-list').toggle();
			} else if (!box.length) {
				$('.logout-list').hide();
			}
			
			if ((mobelem.length) || (dashlink.length) || (patlink.length) || (loglink.length)) {
				e.preventDefault();
				$('.mob-nav2').slideToggle();
			} else if (!mobbox.length) {
				$('.mob-nav2').hide();
			}
		});
	</script>
	<div id="__overlay_"
		style="position: fixed; top: 0; bottom: 0; left: 0; right: 0; background: #CCCCCC; opacity: .1; z-index: 1000; display: none;"></div>
		<script>
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

</script>
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
</body>
</html>