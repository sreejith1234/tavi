<%@page
	import="org.openmrs.module.ahimsa.procedure.core.web.CoreProcedureWebConstants"%>
<%@page language="java"%>
<%@ include file="/WEB-INF/view/module/ahimsa-core/template/taglib.jsp"%>
<%@ taglib prefix="procedure"
	uri="/WEB-INF/view/module/procedure-tracking-core-module/resources/procedure_tracking.tld"%>
<%@page
	import="org.openmrs.module.ahimsa.procedure.core.web.context.UserRelationshipType"%>
<%@page
	import="org.openmrs.module.ahimsa.procedure.core.web.context.UserRelationshipTypeHolder"%>
<!-- ----------------- --------------Right Side start--- ----------------------------------- --------- -->
<%
	if (!UserRelationshipTypeHolder.isUserRelationshipTypeSet()) {
		UserRelationshipTypeHolder
				.setUserRelationshipType((UserRelationshipType) session
						.getAttribute(CoreProcedureWebConstants.AUTHORIZED_USER_TYPE));
	}
	boolean isDelegateUser = (UserRelationshipTypeHolder
			.isDelegateUser());
%>
<script type="text/javascript">
	$(document).ready(function() {
		$('.procedureListDiv').hide();
		$(".procedureListIcon").click(function() {
			if ($('.procedureListDiv').css('display') == 'none') {
				$('.procedureListDiv').show();
				
			} else {
				$('.procedureListDiv').hide();
			}
		});
		$(".closeButton").click(function() {
			$('.procedureListDiv').hide();
			
		});
		$('.close').click(function(e) {
			//Cancel the terms and conditions
			e.preventDefault();
			$('#myModal').hide();
			$('#mask').hide();
		});
	});
</script>
<div id="open-overlay"></div>
<div id="myModal" style="display:none;">
    <a href="#" class="close">&times;</a>   
    <iframe id="_tcnd" class="embed-responsive-item" src="javascript:false" style="width:100%;height:85%;overflow:scroll;border:none;"></iframe>
</div>
<div id="mask"></div>

<div class="col-xs-12 header-new-des">
	<a ui-sref="postlogin">
		<div class="logo-new-des" style="padding: 10px 3px; width: 210px;">
			<img
				src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/newlogo_ap22.png" />
			<div>
				<span class="vers-post-login">Ver.2.5 </span>
			</div>
		</div>
	</a> 
	<a
		href="<ahimsa:contextPath />/ms/ahimsaLogoutServlet?r=/ahimsa/procedure/v2/launch.htm&dt=<%=System.currentTimeMillis()%>"
		title="Logout"
		onclick="return confirm('Are you sure, you want to end your session ..?')">
		<div class="logout-new-des">
			<span class="logout-new"> <img
				src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/logout-btn-newdes1.png" />
			</span>
		</div>
	</a>
</div>

<div class="right-side-v2" ng-controller="PostLoginController"
	ng-init="init()" id="mainDiv">
	<div class="container">
		<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6"
			style="padding-top: 15px;">
			<procedure:isUserType type="admin,normaladmin,delegate">
				<a id="dashlink" ui-sref="delegate_dashboard({ruuid : '0', wtype : 'WAITING'})"
					data-it-mark="_headerlink" ng-click="hideMainDiv('true')">
					<div class="col-xs-12 po-lo-v2">
						<div class="col-xs-12 po-lo-hd">
							<span class="heading">DASHBOARD</span>
						</div>
						<div class="col-xs-12" style="text-align: center; padding: 20px;">
							<img
								src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/db-v2-1.png" />
						</div>
					</div>
				</a>
			</procedure:isUserType>
			<procedure:isUserType type="normal,normalspecial" not="superadmin,admin,normaladmin,delegate">
				<a id="dashlink" ui-sref="dashboard" data-it-mark="_headerlink"
					ng-click="hideMainDiv('true')">
					<div class="col-xs-12 po-lo-v2">
						<div class="col-xs-12 po-lo-hd">
							<span class="heading">DASHBOARD</span>
						</div>
						<div class="col-xs-12" style="text-align: center; padding: 20px;">
							<img
								src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/db-v2-1.png" />
						</div>
					</div>
				</a>
			</procedure:isUserType>
		</div>

		
		<procedure:isUserType type="superadmin,admin,normal">
			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6"
				style="padding-top: 15px;">
				<a id="patlink" ui-sref="prepatient" data-it-mark="_headerlink"
					ng-click="hideMainDiv('true')">
					<div class="col-xs-12 po-lo-v2">
						<div class="col-xs-12 po-lo-hd">
							<span class="heading">PATIENT</span>
						</div>
						<div class="col-xs-12" style="text-align: center; padding: 20px;">
							<img
								src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/pat-v2-1.png" />
						</div>
					</div>
				</a>
			</div>
		</procedure:isUserType>
		
		<procedure:isUserType type="superadmin,admin,normal">
			<div id="analytic-link-mv" class="col-xs-12 col-sm-6 hidden-md hidden-lg" style="padding-top: 15px;">
				<a id="patlink" data-it-mark="_headerlink"
					ng-click = "redirectToAnalysis()">
					<div class="col-xs-12 po-lo-v2">
						<div class="col-xs-12 po-lo-hd">
							<span class="heading">Analytics</span>
						</div>
						<div class="col-xs-12 analytic-link-mv" style="text-align: center; padding: 20px;">
							<img
								src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/db-2.png" />
						</div>
					</div>
				</a>
			</div>
		</procedure:isUserType>
		

		<procedure:isUserType type="admin,normaladmin">
			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6" style="padding-top: 15px; margin-bottom: 20px;">
				<a id="patlink" ui-sref="adminhome" data-it-mark="_headerlink" ng-click="hideMainDiv('true')">
					<div class="col-xs-12 po-lo-v2">
						<div class="col-xs-12 po-lo-hd">
							<span class="heading">ADMIN</span>
						</div>
						<div class="col-xs-12" style="text-align: center; padding: 20px;">
							<img src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/adm-v2-1.png" />
						</div>
					</div>
				</a>
			</div>
		</procedure:isUserType>


		<div class="p-type-mdiv col-xs-12 col-sm-6 col-md-6 col-lg-6">
			<div class="col-xs-12 po-lo-v2">
				<div class="col-xs-12 po-lo-hd">
					<span class="heading">PROCEDURE TYPE</span>
				</div>
				<div class="col-xs-12" style="padding: 0px;">
					<div class="col-xs-12 procedureListIcon"
						style="text-align: center;">
						<span class="pro-typ-v2"><img
							src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/pty-v2-1.png" /></span>
					</div>
				</div>
			</div>
		</div>
	<div class="procedureListDiv col-xs-12" style="position:fixed;left:0; top:60px;width:100%; height:100%; overflow: auto;">
		<div class="p-type-pop">
			<div class="col-xs-12 po-lo-hd">
				<span class="heading">PROCEDURE TYPE</span><span
					class="glyphicon glyphicon-remove ptype-cls closeButton"
					style="float: right; cursor: pointer;"></span>
			</div>

			<div class="col-xs-12 pro-type-row-v2"
				ng-repeat="x in procedureTypes"
				ng-class="{'div-selected': x.disable == false}">

				<procedure:isUserType type="superadmin,admin,delegate">
					<a
						ng-click="redirectToDashboard(x.disable == false, x.uuid)">
						<div style="padding: 10px">
							<span>{{x.name}}</span>
						</div>
					</a>
				</procedure:isUserType>
				<procedure:isUserType type="normal,normaladmin,normalspecial" not="superadmin,admin,delegate">
					<a
						ui-sref="{{x.disable == false ? 'dashboard({puuid: x.uuid})' : '.'}}"
						ng-click="hideMainDiv(x.disable == false)">
						<div style="padding: 10px">
							<span>{{x.name}}</span>
						</div>
					</a>
				</procedure:isUserType>

			</div>
		</div>
	</div>
	</div>
	
	<div class="col-xs-12  aft-log-foot">&copy; Cirakas
		2021 | <span><a style="text-decoration:underline !important;font-size:12px;cursor:pointer;"  onClick='loadTermsAndConditions()'>Privacy Policy</a></span> </div>
</div>
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
<!---------------------------------Right Side start------------------------------------------------->