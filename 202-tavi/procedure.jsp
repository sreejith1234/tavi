<%@page language="java" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="procedure"
	uri="/WEB-INF/view/module/procedure-tracking-core-module/resources/procedure_tracking.tld"%>
<!--Right Side start-->
<%
	request.setAttribute("wpage", "procedure");
%>
<script>
	$(document).ready(function() {
		$(".pdata-menu-list").hide();
		$(".pdata-menu").click(function() {
			$(".pdata-menu-list").toggle();
		});
		$(".pdata-menu-list div").click(function() {
			$(".pdata-menu-list").toggle();
		});

	});

	$('.sur-his-r').after($('.sur-com-r'));

	$('.trsfer-his-r').after($('.trsfer-com-r'));

	$('.trsax-his-r').after($('.trsax-com-r'));

	$('.trscal-his-r').after($('.trscal-com-r'));

	$('.carart-his-r').after($('.carart-com-r'));

	$('.trarbc-his-r').after($('.trarbc-com-r'));

	$('.traffp-his-r').after($('.traffp-com-r'));

	$('.traplat-his-r').after($('.traplat-com-r'));

	$('.mrgrd-his-r').after($('.mrgrd-com-r'));

	$('.argrd-his-r').after($('.argrd-com-r'));

	$('.pre-trarbc-his-r').after($('.pre-trarbc-com-r'));

	$('.pre-traffp-his-r').after($('.pre-traffp-com-r'));

	$('.pre-traplat-his-r').after($('.pre-traplat-com-r'));
</script>

<style>
.com-icon3 {
	float: right;
	margin-right: 80px;
	cursor: pointer;
}

.com-icon2 {
	float: right;
	margin-right: 70px;
	cursor: pointer;
}

.com-icon1 {
	float: right;
	margin-right: 120px;
	cursor: pointer;
}

.pndng-proc-btn {
	display: inline-block;
	padding: 0px 10px;
	margin-bottom: 0;
	font-size: 14px;
	font-weight: 400;
	line-height: 1.42857143;
	text-align: center;
	background-image: none;
	border: 1px solid transparent;
	border-radius: 4px;
}

.back-procedure {
	margin-left: 10px;
	background: #337ab7;
	color: #fff;
	border-radius: 5px;
	padding-left: 10px;
	padding-right: 10px;
	padding-top: 5px;
	padding-bottom: 5px;
	box-shadow: 0 10px 6px -6px #777;
	cursor: pointer;
}

.back-procedure:hover {
	color: #fff;
}

.operator-list-border{
  width: 100%;
}
.operator-list{
  margin: 5px;
  list-style: none;
}
.date-v{float:right;right:0;color:#ff761d}
.top-menu-mv-bd{
	width:calc(100% - 200px);
}
</style>
<procedure:module-privilege name="Case_Module">
	<procedure:procedure-layout id="e4e23c4d-1b10-4fff-8cb3-d9bf515e520d"
		section="TAVI_PROCEDURE">
		<div class="right-side-v22" ng-controller="TaviProcedureController"
			ng-init="sessionId = '${sessionId}';proceduredata.vuuid = '${vuuid}'; freeze = '${vuuid}' == '0'|| ${freeze}; isPreferred = ${isPreferred} ;isOtherPendingProcedure = ${isOtherPendingProcedure };init('${today}', '${dateofbirth}');
         activeTab='tavi'; proceduredata.isfollowupreached = ${isfollowupreached};">
			<!--------------------fixed header start------------------>
			<div class="top-menu-mv-bd">
				<!-- top menu -->
				<div class="col-xs-12 p-0">
					<jsp:include page="../topmenu.jsp" />
				</div>
				<div id="pat-detail-mv" class="col-xs-12 mrn-fix">
					<div class="col-xs-12 mt-5">
						<span class="heading">Procedure Data<sup>{{isDataAvailableInDraft
								== true ? '**' : ''}}</sup></span>

						<c:if test="${redirectUuid != null}">
							<a class="back-procedure"
								ng-click="redirectToPreviousProcedure( '${redirectUuid}' ) ">
								<< Procedure page.</a>
						</c:if>

						<div class="cas-id">
							<span> Transcatheter Aortic Valve Implantation </span>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2 mt-10">
							<div class="col-xs-12 pr-box">
								<div class="col-xs-12 pr-box-hd pad3">
									<span class="heading-sub">MRN</span>
								</div>
								<div class="col-xs-12 pad3">{{proceduredata.mrn}}</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2 mt-10">
							<div class="col-xs-12 pr-box">
								<div class="col-xs-12 pr-box-hd pad3">
									<span class="heading-sub">First Name</span>
								</div>
								<div class="col-xs-12 pad3">{{proceduredata.fname}}</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2 mt-10">
							<div class="col-xs-12 pr-box">
								<div class="col-xs-12 pr-box-hd pad3">
									<span class="heading-sub">Last Name</span>
								</div>
								<div class="col-xs-12 pad3">{{proceduredata.lname}}</div>
							</div>
						</div>
						 <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 mt-10">
                    <div class="col-xs-12 pr-box">
                        <div class="col-xs-12 pad3 ng-binding">Referal letter Date
                            <span class="date-v">{{dateInfo.referralletterdate}}</span>
                        </div>
                        <div class="col-xs-12 pad3 ng-binding">HTM Date
                            <span class="date-v">{{dateInfo.heartteamdate}}</span>
                        </div>
                        <div class="col-xs-12 pad3 ng-binding">Waitlisted Date
                            <span class="date-v">{{dateInfo.referraldate}}</span>
                        </div>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 mt-10">
                    <div class="col-xs-12 pr-box">
                        <div class="col-xs-12 pad3">Waitlisted to HTM
                            <span class="date-v">{{dateInfo.htmreferraldays}}</span>
                        </div>
                        <div class="col-xs-12 pad3">Referral to WaitListed
                            <span class="date-v">{{dateInfo.referralletterdays}}</span>
                        </div>
                    </div>
                </div>
					</div>
				</div>
			</div>
			<!--fixed header end-->
			<!--right side content start-->
			<div class="col-xs-12 pre-right-vv2" ng-form="myForm">
				<div class="col-xs-12 procedure-tab-cstm">
					<div class="col-xs-12 pro_tab">
						<ul class="nav nav-tabs mt-10 pl-10" id="myTab" role="tablist">
							<li class="nav-item ng-class:{'active': activeTab == 'tavi' }"><a
								class="nav-link active" id="home-tab" data-toggle="tab" href
								role="tab" aria-controls="home"
								aria-selected="{{activeTab == 'tavi' ? true : false}}"
								ng-click="activeTab = 'tavi'">TAVI</a></li>
							<li
								class="nav-item  ng-class:{'active': activeTab == 'postproccomp' }"><a
								class="nav-link" id="post-comp-tab" data-toggle="tab" href
								role="tab" aria-controls="profile"
								aria-selected="{{activeTab == 'postproccomp' ? true : false}}"
								ng-click="activeTab = 'postproccomp'">Post Procedure
									Complications</a></li>
							<li
								class="nav-item ng-class:{'active': activeTab == 'predischarge' }"><a
								class="nav-link" id="pre-discharge-tab" data-toggle="tab" href
								role="tab" aria-controls="contact"
								aria-selected="{{activeTab == 'predischarge' ? true : false}}"
								ng-click="activeTab = 'predischarge'">Pre-discharge data </a></li>
							<li class="nav-item ng-class:{'active': activeTab == 'outcome' }"><a
								class="nav-link" id="outcome-tab" data-toggle="tab" href
								role="tab" aria-controls="contact"
								aria-selected="{{activeTab == 'outcome' ? true : false}}"
								ng-click="activeTab = 'outcome'">Outcome</a></li>
						</ul>
					</div>
					<div class="pData_menu_main">
						<div class="pdata-menu">
							<div>
								<img
									src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/pdata.png" />
							</div>
						</div>
						<div class="pdata-menu-list">
							<div class="pdata-menu-items  pdata-menu-items-arro"
								ng-click="activeTab = 'tavi';activeSubtab = undefined"
								ng-class="{'act-pat-lst': activeTab == 'tavi'}">
								TAVI
								<div class="pdata-menu-list-arrow">
									<span class="rt-arr"><img
										src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/rt-arrow.png" /></span>
									<span class="rt-arr1"><img
										src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/rt-arrow1.png" /></span>
								</div>
							</div>
							<div class="pdata-menu-items"
								ng-click="activeTab = 'postproccomp';activeSubtab = undefined"
								ng-class="{'act-pat-lst': activeTab == 'postproccomp'}">Post
								Procedure Complications</div>
							<div class="pdata-menu-items"
								ng-click="activeTab = 'predischarge';activeSubtab = undefined"
								ng-class="{'act-pat-lst': activeTab == 'predischarge'}">Pre-discharge
								data</div>
							<div class="pdata-menu-items"
								ng-click="activeTab = 'outcome';activeSubtab = undefined"
								ng-class="{'act-pat-lst': activeTab == 'outcome'}">Outcome</div>
						</div>
					</div>
					<div class="tab-content" id="myTabContent">
						<div class="tab-pane ng-class:{'active': activeTab == 'tavi' }"
							id="tavi" role="tabpanel" aria-labelledby="home-tab"
							ng-show="activeTab == 'tavi'">
							<div class="col-xs-12 block_box1">
								<div class="col-xs-12 box_hdr">
									<span class="heading_New_pro">TAVI</span>
								</div>
								<!-- ------------- ECG BLOCK START --------------------------------------- -->
								<procedure:procedure-layout
									id="89247b32-082d-4485-85e3-6de70daa9c0a"
									section="TAVI_PROCEDURE">
									<div class="col-xs-12 grp_box">
										<div class="col-xs-12 grp_box11">
											<div class="col-xs-12 grp_box_sub">
												<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
													<procedure:component id="_ecgrythm">
                                       ECG Rhythm <ahimsa-archive expression = "${expr3}" callback = "loadArchive" sgid="1"></ahimsa-archive>
                                       <!-- <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}',1)"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<select class="in-field"
															ng-model="proceduredata.preecg.${key}"
															ng-init="proceduredata.preecg.${key} = '0'"
															ng-disabled="freeze">
															<option value="0">Select</option>
															<procedure:component-options>
																<option value="${uuid}">${label}</option>
															</procedure:component-options>
														</select>
													</procedure:component>
													<procedure:component id="_ecgrhycomnt">
														<span class="com-icon"
															ng-click="showProcedureCommentBox($event, 'proceduredata.preecg.${key}')"><i
															class="fa fa-commenting" aria-hidden="true"></i></span>
													</procedure:component>
												</div>
												<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
													<procedure:component id="_avblock">
                                       A-V Block <ahimsa-archive expression = "${expr3}" callback = "loadArchive" sgid="1"></ahimsa-archive>
                                        <!-- <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}',1)"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<select class="in-field"
															ng-model="proceduredata.preecg.${key}"
															ng-init="proceduredata.preecg.${key} = '0'"
															ng-disabled="freeze">
															<option value="0">Select</option>
															<procedure:component-options>
																<option value="${uuid}">${label}</option>
															</procedure:component-options>
														</select>
													</procedure:component>
													<procedure:component id="_avblockcomnt">
														<span class="com-icon"
															ng-click="showProcedureCommentBox($event, 'proceduredata.preecg.${key}')"><i
															class="fa fa-commenting" aria-hidden="true"></i></span>
													</procedure:component>
												</div>
												<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
													<procedure:component id="_bubrhblock">
                                       Bundle branch block <ahimsa-archive expression = "${expr3}" callback = "loadArchive" sgid="1"></ahimsa-archive>
                                       <!--  <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}',1)"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<select class="in-field"
															ng-model="proceduredata.preecg.${key}"
															ng-init="proceduredata.preecg.${key} = '0'"
															ng-disabled="freeze">
															<option value="0">Select</option>
															<procedure:component-options>
																<option value="${uuid}">${label}</option>
															</procedure:component-options>
														</select>
													</procedure:component>
													<procedure:component id="_bbbcomnt">
														<span class="com-icon"
															ng-click="showProcedureCommentBox($event, 'proceduredata.preecg.${key}')"><i
															class="fa fa-commenting" aria-hidden="true"></i></span>
													</procedure:component>
												</div>
											</div>
										</div>
									</div>
								</procedure:procedure-layout>
								<!----------------------- ECG BLOCK END ----------------------------------->
								<!----------------------- PROCEDURE DATE BLOCK START------------------------>
								<procedure:view-container name="tavi.referral.details"
									model="org.openmrs.module.ahimsa.procedure.web.cardiology.tavi.referral.viewmodel.ReferralModel"
									layout="5bb3b1e5-6fce-4178-a372-cb2d0dd67d03">
									<div class="col-xs-12 grp_box">
										<div class="col-xs-12 grp_box11">
											<div class="col-xs-12 grp_box_sub">
												<div class="col-sm-12 col-md-4 col-lg-4 com_fild">
													<procedure:component id="_admdate">
                                       Admission date <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                       <!-- <span style="color: red">*</span>
														<span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}')"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<div class='input-group date date-picker-bg'
															id='_dateofadmission'>
															<input class="in-field" id='_dateofadmission'
																name='dateofadmission' ng-model="proceduredata.${key}"
																placeholder="yyyy-mm-dd" type='text'
																ng-disabled="freeze || proceduredata.pstatus == 'REOPEN'"
																required />
															<div class="close-date"
																ng-click="proceduredata.${key} = undefined"
																ng-if="proceduredata.${key} && !freeze && proceduredata.pstatus != 'REOPEN'"></div>
															<span 
																class="input-group-addon"> <span
																class="glyphicon" ng-disabled="freeze"> <img
																	src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/clndr.png" />
															</span>
															</span>
														</div>
														<input type="hidden" id="___dateofadmission"
															value="${key}" />

													</procedure:component>
													<procedure:procedure-layout
														id="52774f3d-f1f2-4030-acc2-d51c8859086e"
														section="TAVI_PROCEDURE_COMMENTS_GROUP">
														<procedure:component id="_admdatecomnt">
															<span class="com-icon"
																ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
																class="fa fa-commenting" aria-hidden="true"></i></span>
														</procedure:component>
													</procedure:procedure-layout>
													<span class="err-span-v2"
														ng-show="myForm.dateofadmission.$error.required">Admission
														date is mandatory!</span>
												</div>
												<div class="col-sm-12 col-md-4 col-lg-4 com_fild">
													<procedure:component id="_procdate">
                                       Procedure date <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                      <!--  <span style="color: red">*</span>
														<span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}')"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<div class='input-group date date-picker-bg'
															id='_dateofprocedure'>
															<input class="in-field" id='_dateofprocedure'
																name='dateofprocedure' ng-model="proceduredata.${key}"
																placeholder="yyyy-mm-dd" type='text'
																ng-disabled="freeze || proceduredata.pstatus == 'REOPEN'"
																required />
															<div class="close-date"
																ng-click="proceduredata.${key} = undefined"
																ng-if="proceduredata.${key} && !freeze && proceduredata.pstatus != 'REOPEN'"></div>
															<span 
																class="input-group-addon"> <span
																class="glyphicon" ng-disabled="freeze"> <img
																	src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/clndr.png" />
															</span>
															</span>
														</div>
														<input type="hidden" id="___dateofprocedure"
															value="${key}" />

													</procedure:component>
													<procedure:procedure-layout
														id="52774f3d-f1f2-4030-acc2-d51c8859086e"
														section="TAVI_PROCEDURE_COMMENTS_GROUP">
														<procedure:component id="_procdatecomnt">
															<span class="com-icon"
																ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
																class="fa fa-commenting" aria-hidden="true"></i></span>
														</procedure:component>
													</procedure:procedure-layout>
													<span class="err-span-v2"
														ng-show="myForm.dateofprocedure.$error.required">Procedure
														date is mandatory!</span>
												</div>
												<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
													<procedure:component id="_anastused">
                                       Anesthesia used <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                       <!-- <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}')"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<select class="in-field" ng-model="proceduredata.${key}"
															ng-init="proceduredata.${key} = '0'" ng-disabled="freeze">
															<option value="0">Select</option>
															<procedure:component-options>
																<option value="${uuid}">${label}</option>
															</procedure:component-options>
														</select>
													</procedure:component>
													<procedure:procedure-layout
														id="52774f3d-f1f2-4030-acc2-d51c8859086e"
														section="TAVI_PROCEDURE_COMMENTS_GROUP">
														<procedure:component id="_anesthesiausecomnt">
															<span class="com-icon"
																ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
																class="fa fa-commenting" aria-hidden="true"></i></span>
														</procedure:component>
													</procedure:procedure-layout>
												</div>
												<div class="col-md-3 com_fild">
													<procedure:component id="_oper1">
													<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
														<!-- <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}')"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<select class="in-field" id="_oper1"
															ng-model="proceduredata.${key}"
															ng-init="proceduredata.${key} = '0'" ng-disabled="freeze">

															<option value="0">Operator - 1</option>

															<procedure:component-options>
																<option value="${uuid}"
																	ng-disabled="procedureflags.oper1.disable[${index}]">${label}</option>
															</procedure:component-options>
														</select>

													</procedure:component>
													<procedure:procedure-layout
														id="52774f3d-f1f2-4030-acc2-d51c8859086e"
														section="TAVI_PROCEDURE_COMMENTS_GROUP">
														<procedure:component id="_oprt1comnt">
															<span class="com-icon"
																ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
																class="fa fa-commenting" aria-hidden="true"></i></span>
														</procedure:component>
													</procedure:procedure-layout>
													<div class="operator-list-border">
													  <ul class="operator-list">
													    <li ng-show= "operator1.given">Name :{{operator1.given}}</li>
													    <li ng-show="operator1.email">email:{{operator1.email}}</li>
													     <li ng-show="operator1.address">Address:{{operator1.address}}</li>
													      <li ng-show="operator1.phone">Phone:{{operator1.phone}}</li>
													  </ul>
													</div>
												</div>
												<div class="col-md-3 com_fild">
													<procedure:component id="_oper2">
													<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
														<!-- <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}')"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<select class="in-field" id="_oper2"
															ng-model="proceduredata.${key}"
															ng-init="proceduredata.${key} = '0'" ng-disabled="freeze">
															<option value="0">Operator - 2</option>
															<procedure:component-options>
																<option value="${uuid}"
																	ng-disabled="procedureflags.oper2.disable[${index}]">${label}</option>
															</procedure:component-options>
														</select>

													</procedure:component>
													<procedure:procedure-layout
														id="52774f3d-f1f2-4030-acc2-d51c8859086e"
														section="TAVI_PROCEDURE_COMMENTS_GROUP">
														<procedure:component id="_oprt2comnt">
															<span class="com-icon"
																ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
																class="fa fa-commenting" aria-hidden="true"></i></span>
														</procedure:component>
													</procedure:procedure-layout>
													<div class="operator-list-border" >
													  <ul class="operator-list">
													   <li ng-show="operator2.given">Name :{{operator2.given}}</li>
													    <li ng-show="operator2.email">email :{{operator2.email}}</li>
													     <li ng-show="operator2.address">Address :{{operator2.address}}</li>
													     <li ng-show="operator2.phone">Phone :{{operator2.phone}}</li>
													  </ul>
													</div>
												</div>
												<div class="col-md-3 com_fild">
													<procedure:component id="_oper3">
													<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
														<!-- <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}')"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<select class="in-field" id="_oper3"
															ng-model="proceduredata.${key}"
															ng-init="proceduredata.${key} = '0'" ng-disabled="freeze">
															<option value="0">Operator - 3</option>
															<procedure:component-options>
																<option value="${uuid}"
																	ng-disabled="procedureflags.oper3.disable[${index}]">${label}</option>
															</procedure:component-options>
														</select>
													</procedure:component>
													<procedure:procedure-layout
														id="52774f3d-f1f2-4030-acc2-d51c8859086e"
														section="TAVI_PROCEDURE_COMMENTS_GROUP">
														<procedure:component id="_oprt3comnt">
															<span class="com-icon"
																ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
																class="fa fa-commenting" aria-hidden="true"></i></span>
														</procedure:component>
													</procedure:procedure-layout>
													<div class="operator-list-border">
													  <ul class="operator-list">
													    <li ng-show="operator3.given">Name :{{operator3.given}}</li>
													    <li ng-show="operator3.email">email :{{operator3.email}}</li>
													    <li ng-show="operator3.address">Address :{{operator3.address}}</li>
													     <li ng-show="operator3.phone">Phone :{{operator3.phone}}</li>
													  </ul>
													</div>
												</div>
												<div class="col-md-3 com_fild">
													<procedure:component id="_oper4">
													<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
													<!-- 	<span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}')"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<select class="in-field" id="_oper4"
															ng-model="proceduredata.${key}"
															ng-init="proceduredata.${key} = '0'" ng-disabled="freeze">
															<option value="0">Operator - 4</option>
															<procedure:component-options>
																<option value="${uuid}"
																	ng-disabled="procedureflags.oper4.disable[${index}]">${label}</option>
															</procedure:component-options>
														</select>
													</procedure:component>
													<procedure:procedure-layout
														id="52774f3d-f1f2-4030-acc2-d51c8859086e"
														section="TAVI_PROCEDURE_COMMENTS_GROUP">
														<procedure:component id="_oprt4comnt">
															<span class="com-icon"
																ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
																class="fa fa-commenting" aria-hidden="true"></i></span>
														</procedure:component>
													</procedure:procedure-layout>
													<div class="operator-list-border">
													  <ul class="operator-list">
													    <li ng-show="operator4.given">Name :{{operator4.given}}</li>
													    <li ng-show="operator4.email">email :{{operator4.email}}</li>
													    <li ng-show="operator4.address">Address :{{operator4.address}}</li>
													     <li ng-show="operator4.phone">Phone :{{operator4.phone}}</li>
													  </ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</procedure:view-container>
								<!------------------------PROCEDRE DATE BLOCK END----------------------------- -->
								<!------------------------PROCEDURE PLAN BLOCK START-------------------->
								<procedure:procedure-layout
									id="17bc09a9-a064-481e-9cf4-f4a47b06a8e9"
									section="TAVI_PROCEDURE">
									<div class="col-xs-12 grp_box">
										<div class="col-xs-12 grp_box11">
											<div class="col-xs-12 grp_box_sub">
												<procedure:component id="_surtype">
													<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->

												</procedure:component>

												<div class="col-xs-12 col-md-12">
													<div class="p-0 col-xs-12 col-md-4">
														<procedure:component-option id="_surtype1" cid="_surtype">
															<span class="marg-left10"> 
																<input type="radio"
																name="${key}" ng-model="proceduredata.pplan.${key}"
																value="${uuid}" ng-disabled="freeze"> Surgical
																TAVI 
																<procedure:component
																	id="_surtavi">
																	<ahimsa-archive class="cus-r-his" expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
																</procedure:component>
																<span class="err-span-v2"
																ng-show="myForm.surtavi.$error.required">Please
																	choose Surgical TAVI option.</span> 
																
															</span>
														</procedure:component-option>
														<procedure:procedure-layout
															id="52774f3d-f1f2-4030-acc2-d51c8859086e"
															section="TAVI_PROCEDURE_COMMENTS_GROUP">
															<procedure:component id="_surgtavicomnt">
																<span class="sur-com-r cursor"
																	ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
																	class="fa fa-commenting" aria-hidden="true"></i></span>
															</procedure:component>
														</procedure:procedure-layout>
													</div>
												</div>
												<procedure:component id="_surtavi">
													<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
														<div class="in-field-ckbox b-none">
															<div class="col-xs-6 col-md-4">
																<procedure:component-option id="_surtavi1"
																	cid="_surtavi">
																	<span class="marg-left10"> <input type="radio"
																		name="${key}"
																		ng-required="proceduredata.pplan.surtype == '08f7eaa0-6fa1-998p-a3ac-32b7109a8d63'"
																		ng-model="proceduredata.pplan.${key}" value="${uuid}"
																		ng-disabled="freeze || proceduredata.pplan.surtype != '08f7eaa0-6fa1-998p-a3ac-32b7109a8d63'">
																		Trans apical
																	</span>
																</procedure:component-option>
															</div>
															<div class="col-xs-6 col-md-4">
																<procedure:component-option id="_surtavi2"
																	cid="_surtavi">
																	<span class="marg-left10"> <input type="radio"
																		name="${key}"
																		ng-required="proceduredata.pplan.surtype == '08f7eaa0-6fa1-998p-a3ac-32b7109a8d63'"
																		ng-model="proceduredata.pplan.${key}" value="${uuid}"
																		ng-disabled="freeze || proceduredata.pplan.surtype != '08f7eaa0-6fa1-998p-a3ac-32b7109a8d63'">
																		Trans aortic
																	</span>
																</procedure:component-option>

															</div>

														</div>
													</div>
												</procedure:component>
												<div class="col-xs-12 p-0 mt-20">
													<div class="col-xs-12">
														<procedure:component-option id="_surtype2" cid="_surtype">
															<span class="marg-left10"> <input type="radio"
																name="${key}" ng-model="proceduredata.pplan.${key}"
																value="${uuid}" ng-disabled="freeze"> Trans
																arterial TAVI
															</span>
														</procedure:component-option>
													</div>
													<div class="col-xs-12 mt-10">

														<div class="col-xs-12 col-md-3">
															

															<procedure:component id="_transfemoral">

																
																	Transfemoral 
																	<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
																	<div class="in-field-ckbox">
																
																	<procedure:component-options>
																		<div class="col-xs-3 p-0">
																			<span class="marg-left10"> <input type="radio"
																				name="transfemoral"
																				ng-model="proceduredata.pplan.${key}"
																				value="${uuid}"
																				ng-disabled="freeze || proceduredata.pplan.surtype != '69l3611d-be3b-4a9d-a047-66efb9c624d3'">
																				${label}
																			</span>
																		</div>
																	</procedure:component-options>
																</div>
																
																

															</procedure:component>
															<procedure:procedure-layout
																id="52774f3d-f1f2-4030-acc2-d51c8859086e"
																section="TAVI_PROCEDURE_COMMENTS_GROUP">
																<procedure:component id="_trnsfemcomnt">
																	<span class="com-icon"
																		ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
																		class="fa fa-commenting" aria-hidden="true"></i></span>
																</procedure:component>
															</procedure:procedure-layout>
														</div>





														<div class="col-xs-12 col-md-3">
															
															<procedure:component id="_transaxillary">
																
																	Trans axillary 
																	<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
																	
																<div class="in-field-ckbox">
																	<procedure:component-options>
																		<div class="col-xs-3 p-0">
																			<span class="marg-left10"> <input type="radio"
																				name="transaxillary"
																				ng-model="proceduredata.pplan.${key}"
																				value="${uuid}"
																				ng-disabled="freeze || proceduredata.pplan.surtype != '69l3611d-be3b-4a9d-a047-66efb9c624d3'">
																				${label}
																			</span>
																		</div>
																	</procedure:component-options>
																</div>
																
															</procedure:component>
															<procedure:procedure-layout
																id="52774f3d-f1f2-4030-acc2-d51c8859086e"
																section="TAVI_PROCEDURE_COMMENTS_GROUP">
																<procedure:component id="_trnsauxcomnt">
																	<span class="com-icon"
																		ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
																		class="fa fa-commenting" aria-hidden="true"></i></span>
																</procedure:component>
															</procedure:procedure-layout>
														</div>


														<div class="col-xs-12 col-md-3">
															
															<procedure:component id="_transcaval">
																
																	Transcaval 
																	<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
																	
																
																<div class="in-field-ckbox">
																	<procedure:component-options>
																		<div class="col-xs-3 p-0">
																			<span class="marg-left10"> <input type="radio"
																				name="transcaval"
																				ng-model="proceduredata.pplan.${key}"
																				value="${uuid}"
																				ng-disabled="freeze || proceduredata.pplan.surtype != '69l3611d-be3b-4a9d-a047-66efb9c624d3'">
																				${label}
																			</span>
																		</div>
																	</procedure:component-options>
																</div>
																
															</procedure:component>
															<procedure:procedure-layout
																id="52774f3d-f1f2-4030-acc2-d51c8859086e"
																section="TAVI_PROCEDURE_COMMENTS_GROUP">
																<procedure:component id="_trnscavcomnt">
																	<span class="com-icon"
																		ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
																		class="fa fa-commenting" aria-hidden="true"></i></span>
																</procedure:component>
															</procedure:procedure-layout>
														</div>


														<div class="col-xs-12 col-md-3">
															
															<procedure:component id="_carotidartery">
																
																	Carotid artery
																	<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
																	
																<div class="in-field-ckbox">
																	<procedure:component-options>
																		<div class="col-xs-3 p-0">
																			<span class="marg-left10"> <input type="radio"
																				name="carotidartery"
																				ng-model="proceduredata.pplan.${key}"
																				value="${uuid}"
																				ng-disabled="freeze || proceduredata.pplan.surtype != '69l3611d-be3b-4a9d-a047-66efb9c624d3'">
																				${label}
																			</span>
																		</div>
																	</procedure:component-options>
																</div>
																
															</procedure:component>
															<procedure:procedure-layout
																id="52774f3d-f1f2-4030-acc2-d51c8859086e"
																section="TAVI_PROCEDURE_COMMENTS_GROUP">
																<procedure:component id="_cararterycomnt">
																	<span class="com-icon"
																		ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
																		class="fa fa-commenting" aria-hidden="true"></i></span>
																</procedure:component>
															</procedure:procedure-layout>
														</div>

													</div>
												</div>
											</div>
										</div>
									</div>
								</procedure:procedure-layout>
								<!-- ------------PROCEDURE PLAN BLOCK END-------------- -->
								<!-- --------LARGE SHEATH ACCESS BLOCK START-------------- -->
								<div class="col-xs-12 grp_box">
									<div class="col-xs-12 grp_box11">
										<div class="col-xs-12 grp_box_sub">
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
												<procedure:component id="_largesheaaccess">
                                    Large sheath access
                                    <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                   <!--  <span class="his-icon"
														ng-click="showHistoryClicked($event,'${expr3}')"><i
														class="fa fa-history" aria-hidden="true"></i></span> -->
													<select class="in-field" ng-model="proceduredata.${key}"
														ng-init="proceduredata.${key} = '0'" ng-disabled="freeze">
														<option value="0">Select</option>
														<procedure:component-options>
															<option value="${uuid}">${label}</option>
														</procedure:component-options>
													</select>
												</procedure:component>
												<procedure:procedure-layout
													id="52774f3d-f1f2-4030-acc2-d51c8859086e"
													section="TAVI_PROCEDURE_COMMENTS_GROUP">
													<procedure:component id="_largesheeacccomnt">
														<span class="com-icon"
															ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
															class="fa fa-commenting" aria-hidden="true"></i></span>
													</procedure:component>
												</procedure:procedure-layout>
											</div>
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
												<procedure:component id="_delsheathsize">
                                    Delivery sheath size [Fr]
                                    <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                   <!--  <span class="his-icon"
														ng-click="showHistoryClicked($event,'${expr3}')"><i
														class="fa fa-history" aria-hidden="true"></i></span> -->
													<select class="in-field" ng-model="proceduredata.${key}"
														ng-init="proceduredata.${key} = '0'" ng-disabled="freeze">
														<option value="0">Select</option>
														<procedure:component-options>
															<option value="${uuid}">${label}</option>
														</procedure:component-options>
													</select>
												</procedure:component>
												<procedure:procedure-layout
													id="52774f3d-f1f2-4030-acc2-d51c8859086e"
													section="TAVI_PROCEDURE_COMMENTS_GROUP">
													<procedure:component id="_delsheesizecomnt">
														<span class="com-icon"
															ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
															class="fa fa-commenting" aria-hidden="true"></i></span>
													</procedure:component>
												</procedure:procedure-layout>
											</div>
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
												<procedure:component id="_delcatheter">
                                    Delivery catheter
                                    <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                    <!-- <span class="his-icon"
														ng-click="showHistoryClicked($event,'${expr3}')"><i
														class="fa fa-history" aria-hidden="true"></i></span> -->
													<select class="in-field" ng-model="proceduredata.${key}"
														ng-init="proceduredata.${key} = '0'" ng-disabled="freeze">
														<option value="0">Select</option>
														<procedure:component-options>
															<option value="${uuid}">${label}</option>
														</procedure:component-options>
													</select>
												</procedure:component>
												<procedure:procedure-layout
													id="52774f3d-f1f2-4030-acc2-d51c8859086e"
													section="TAVI_PROCEDURE_COMMENTS_GROUP">
													<procedure:component id="_delivcathcomnt">
														<span class="com-icon"
															ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
															class="fa fa-commenting" aria-hidden="true"></i></span>
													</procedure:component>
												</procedure:procedure-layout>
											</div>
										</div>
									</div>
								</div>
								<!-- ----------------------------LARGE SHEATH ACCESS BLOCK END ---------- -->

								<!-- ----------------------------CLOSURE DEVICE BLOCK START----------- -->
								<div class="col-xs-12 grp_box">
									<div class="col-xs-12 grp_box11">
										<div class="col-xs-12 grp_box_sub">
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
												<procedure:component id="_closdevused"> Closure device used
												<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
											<!-- 	<span class="his-icon"
														ng-click="showHistoryClicked($event,'${expr3}')"><i
														class="fa fa-history" aria-hidden="true"></i></span> -->
													<select class="in-field" ng-model="proceduredata.${key}"
														ng-init="proceduredata.${key} = '0'" ng-disabled="freeze">
														<option value="0">Select</option>
														<procedure:component-options>
															<option value="${uuid}">${label}</option>
														</procedure:component-options>
													</select>


												</procedure:component>
												<procedure:procedure-layout
													id="52774f3d-f1f2-4030-acc2-d51c8859086e"
													section="TAVI_PROCEDURE_COMMENTS_GROUP">
													<procedure:component id="_closureducomnt">
														<span class="com-icon"
															ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
															class="fa fa-commenting" aria-hidden="true"></i></span>
													</procedure:component>
													<br /><br />
													<input type="text" name="otherclosdev" class="in-field"
																ng-model="proceduredata.otherclosdev"
																ng-model-options="{ updateOn: 'default' }"
																ng-disabled="freeze || proceduredata.closdevused != 'd0e6457e-2251-4a7a-8304-bcabc27768b6'" max-length="200"
																ng-show="proceduredata.closdevused == 'd0e6457e-2251-4a7a-8304-bcabc27768b6'"/>
												</procedure:procedure-layout>
											</div>
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild"
												hide="true">
												<procedure:component id="_succdevclos"> Success device closure
												<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
												<!-- <span class="his-icon"
														ng-click="showHistoryClicked($event,'${expr3}')"><i
														class="fa fa-history" aria-hidden="true"></i></span> -->
													<select class="in-field" ng-model="proceduredata.${key}"
														ng-init="proceduredata.${key} = '0'"
														ng-disabled="freeze || proceduredata.closdevused == '0'">
														<option value="0">Select</option>
														<procedure:component-options>
															<option value="${uuid}">${label}</option>
														</procedure:component-options>
													</select>
												</procedure:component>
												<procedure:procedure-layout
													id="52774f3d-f1f2-4030-acc2-d51c8859086e"
													section="TAVI_PROCEDURE_COMMENTS_GROUP">
													<procedure:component id="_succdcloscomnt">
														<span class="com-icon"
															ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
															class="fa fa-commenting" aria-hidden="true"></i></span>
													</procedure:component>
												</procedure:procedure-layout>
											</div>
										</div>
									</div>
								</div>
								<!-- ----------------------------CLOSURE DEVICE USED BLOCK END--------- -->
								<!-- ----------------------------HAEMODYNAMIC BLOCK START--------- -->
								<div class="col-xs-12 grp_box">
									<div class="col-xs-12 grp_box11 p-0">
										<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 p-0">
											<div class="col-xs-12">
												<div class="col-xs-12 grp_box_sub">
													<div class="col-xs-12 com_fild">
														<procedure:component id="_haemosupp">
                                          Haemodynamic support
                                          <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                          <!-- <span class="his-icon"
																ng-click="showHistoryClicked($event,'${expr3}')"><i
																class="fa fa-history" aria-hidden="true"></i></span> -->
															<select class="in-field" ng-model="proceduredata.${key}"
																ng-init="proceduredata.${key} = '0'"
																ng-disabled="freeze">
																<option value="0">Select</option>
																<procedure:component-options>
																	<option value="${uuid}">${label}</option>
																</procedure:component-options>
															</select>
														</procedure:component>
														<procedure:procedure-layout
															id="52774f3d-f1f2-4030-acc2-d51c8859086e"
															section="TAVI_PROCEDURE_COMMENTS_GROUP">
															<procedure:component id="_haemodynamicsuppcomnt">
																<span class="com-icon"
																	ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
																	class="fa fa-commenting" aria-hidden="true"></i></span>
															</procedure:component>
														</procedure:procedure-layout>
													</div>
													<div class="col-xs-12 com_fild">
														<procedure:component id="_preppgrad"> Pre peak-to-peak gradient
														<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
														<!-- <span class="his-icon"
																ng-click="showHistoryClicked($event,'${expr3}')"><i
																class="fa fa-history" aria-hidden="true"></i></span> -->
															<input type="number" name="preppgrad" class="in-field"
																ng-model="proceduredata.${key}"
																ng-model-options="{ updateOn: 'default' }"
																ng-disabled="freeze" min="0" step="0.001" max="200" />

														</procedure:component>
														<procedure:procedure-layout
															id="52774f3d-f1f2-4030-acc2-d51c8859086e"
															section="TAVI_PROCEDURE_COMMENTS_GROUP">
															<procedure:component id="_preptopgcomnt">
																<span class="com-icon"
																	ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
																	class="fa fa-commenting" aria-hidden="true"></i></span>
															</procedure:component>
														</procedure:procedure-layout>
														<span class="err-span-v2"
															ng-show="myForm.preppgrad.$error.step || myForm.preppgrad.$error.number">Not
															a valid number!</span>

															<span class="err-span-v2"
															ng-show="myForm.preppgrad.$error.min || myForm.preppgrad.$error.max">Range is from 0 to 200</span>
													</div>
													<div class="col-xs-12 com_fild">
														<procedure:component id="_preaormeangrad"> Pre Aortic mean gradient
														<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
														<!-- <span class="his-icon"
																ng-click="showHistoryClicked($event,'${expr3}')"><i
																class="fa fa-history" aria-hidden="true"></i></span> -->
															<input type="number" name="preaormeangrad"
																class="in-field" ng-model="proceduredata.${key}"
																ng-model-options="{ updateOn: 'default' }"
																ng-disabled="freeze" min="0" step="0.001" max="200" />

														</procedure:component>
														<procedure:procedure-layout
															id="52774f3d-f1f2-4030-acc2-d51c8859086e"
															section="TAVI_PROCEDURE_COMMENTS_GROUP">
															<procedure:component id="_preaomngrcomnt">
																<span class="com-icon"
																	ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
																	class="fa fa-commenting" aria-hidden="true"></i></span>
															</procedure:component>
														</procedure:procedure-layout>
														<span class="err-span-v2"
															ng-show="myForm.preaormeangrad.$error.min || myForm.preaormeangrad.$error.max ||myForm.preaormeangrad.$error.step || myForm.preaormeangrad.$error.number">Not
															a valid number!</span>
													</div>
												</div>
											</div>
											<div class="col-xs-12 mt-20">
												<div class="col-xs-12 grp_box_sub">
													<div class="col-xs-12 com_fild">
														<procedure:component id="_tavipos">
                                          TAVI position
                                          <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                          <!-- <span class="his-icon"
																ng-click="showHistoryClicked($event,'${expr3}')"><i
																class="fa fa-history" aria-hidden="true"></i></span> -->
															<select class="in-field" ng-model="proceduredata.${key}"
																ng-init="proceduredata.${key} = '0'"
																ng-disabled="freeze">
																<option value="0">Select</option>
																<procedure:component-options>
																	<option value="${uuid}">${label}</option>
																</procedure:component-options>
															</select>
														</procedure:component>
														<procedure:procedure-layout
															id="52774f3d-f1f2-4030-acc2-d51c8859086e"
															section="TAVI_PROCEDURE_COMMENTS_GROUP">
															<procedure:component id="_tavipositioncomnt">
																<span class="com-icon"
																	ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
																	class="fa fa-commenting" aria-hidden="true"></i></span>
															</procedure:component>
														</procedure:procedure-layout>
													</div>
													<div class="col-xs-12 com_fild">
														<procedure:component id="_posbavbal">
                                          Post BAV
                                          <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                        <!--   <span class="his-icon"
																ng-click="showHistoryClicked($event,'${expr3}')"><i
																class="fa fa-history" aria-hidden="true"></i></span> -->
															<select class="in-field" ng-model="proceduredata.${key}"
																ng-init="proceduredata.${key} = '0'"
																ng-disabled="freeze">
																<option value="0">Select</option>
																<procedure:component-options>
																	<option value="${uuid}">${label}</option>
																</procedure:component-options>
															</select>
														</procedure:component>
														<procedure:procedure-layout
															id="52774f3d-f1f2-4030-acc2-d51c8859086e"
															section="TAVI_PROCEDURE_COMMENTS_GROUP">
															<procedure:component id="_postbballoncomnt">
																<span class="com-icon"
																	ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
																	class="fa fa-commenting" aria-hidden="true"></i></span>
															</procedure:component>
														</procedure:procedure-layout>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
											<div class="col-xs-12 grp_box_sub">
												<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 com_fild">
													<procedure:component id="_prebav">
                                       Pre BAV
                                       <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                       <!-- <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}')"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<select class="in-field" ng-model="proceduredata.${key}"
															ng-init="proceduredata.${key} = '0'" ng-disabled="freeze">
															<option value="0">Select</option>
															<procedure:component-options>
																<option value="${uuid}">${label}</option>
															</procedure:component-options>
														</select>
													</procedure:component>
													<procedure:procedure-layout
														id="52774f3d-f1f2-4030-acc2-d51c8859086e"
														section="TAVI_PROCEDURE_COMMENTS_GROUP">
														<procedure:component id="_prebavcomnt">
															<span class="com-icon"
																ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
																class="fa fa-commenting" aria-hidden="true"></i></span>
														</procedure:component>
													</procedure:procedure-layout>
												</div>
												<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 com_fild">
													<procedure:component id="_succval">
                                       Successful valvuloplasty
                                       <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                       <!-- <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}')"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<select class="in-field" ng-model="proceduredata.${key}"
															ng-init="proceduredata.${key} = '0'" ng-disabled="freeze">
															<option value="0">Select</option>
															<procedure:component-options>
																<option value="${uuid}">${label}</option>
															</procedure:component-options>
														</select>
													</procedure:component>
													<procedure:procedure-layout
														id="52774f3d-f1f2-4030-acc2-d51c8859086e"
														section="TAVI_PROCEDURE_COMMENTS_GROUP">
														<procedure:component id="_succvplastycomnt">
															<span class="com-icon"
																ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
																class="fa fa-commenting" aria-hidden="true"></i></span>
														</procedure:component>
													</procedure:procedure-layout>
												</div>
												<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 com_fild">
													<procedure:component id="_succtavi">
                                       Successful TAVI
                                       <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                      <!--  <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}')"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<select class="in-field" ng-model="proceduredata.${key}"
															ng-init="proceduredata.${key} = '0'" ng-disabled="freeze">
															<option value="0">Select</option>
															<procedure:component-options>
																<option value="${uuid}">${label}</option>
															</procedure:component-options>
														</select>
													</procedure:component>
													<procedure:procedure-layout
														id="52774f3d-f1f2-4030-acc2-d51c8859086e"
														section="TAVI_PROCEDURE_COMMENTS_GROUP">
														<procedure:component id="_succestproccomnt">
															<span class="com-icon"
																ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
																class="fa fa-commenting" aria-hidden="true"></i></span>
														</procedure:component>
													</procedure:procedure-layout>
												</div>
												<div class="col-xs-12" hide="true"
													ng-show="proceduredata.succtavi == 'f7a14418-3276-48db-bc01-4df9bcfcc1e1'">
													<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 com_fild">
														<procedure:component id="_tav1type">
                                          TAVI Type 1
                                          <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                          <!-- <span class="his-icon"
																ng-click="showHistoryClicked($event,'${expr3}')"><i
																class="fa fa-history" aria-hidden="true"></i></span> -->
															<select class="in-field" ng-model="proceduredata.${key}"
																ng-init="proceduredata.${key} = '0'"
																ng-disabled="freeze || proceduredata.succtavi != 'f7a14418-3276-48db-bc01-4df9bcfcc1e1'">
																<option value="0">Select</option>
																<procedure:component-options>
																	<option value="${uuid}">${label}</option>
																</procedure:component-options>
															</select>
														</procedure:component>
														<procedure:procedure-layout
															id="52774f3d-f1f2-4030-acc2-d51c8859086e"
															section="TAVI_PROCEDURE_COMMENTS_GROUP">
															<procedure:component id="_tav1typecomnt">
																<span class="com-icon"
																	ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
																	class="fa fa-commenting" aria-hidden="true"></i></span>
															</procedure:component>
														</procedure:procedure-layout>
													</div>
													<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 com_fild">
														<procedure:component id="_tav2type">
                                          TAVI Type 2
                                          <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                         <!--  <span class="his-icon"
																ng-click="showHistoryClicked($event,'${expr3}')"><i
																class="fa fa-history" aria-hidden="true"></i></span> -->
															<select class="in-field" ng-model="proceduredata.${key}"
																ng-init="proceduredata.${key} = '0'"
																ng-disabled="freeze || proceduredata.succtavi != 'f7a14418-3276-48db-bc01-4df9bcfcc1e1'">
																<option value="0">Select</option>
																<procedure:component-options>
																	<option value="${uuid}">${label}</option>
																</procedure:component-options>
															</select>
														</procedure:component>
														<procedure:procedure-layout
															id="52774f3d-f1f2-4030-acc2-d51c8859086e"
															section="TAVI_PROCEDURE_COMMENTS_GROUP">
															<procedure:component id="_tav2typecomnt">
																<span class="com-icon"
																	ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
																	class="fa fa-commenting" aria-hidden="true"></i></span>
															</procedure:component>
														</procedure:procedure-layout>
													</div>
												</div>
												<procedure:procedure-layout
													id="fadf6749-4135-460d-9a64-78837de8b6f1"
													section="TAVI_PROCEDURE">
													<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 com_fild"
														ng-show="proceduredata.succtavi == '9b99dac6-c026-4151-8355-1ef1abff01df'">
														<procedure:component id="_tavifailreason">
														Reason for failure
														<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
															<!-- <span class="his-icon"
																ng-click="showHistoryClicked($event,'${expr3}')"><i
																class="fa fa-history" aria-hidden="true"></i></span> -->
															<select class="in-field"
																ng-model="proceduredata.chain1.${key}"
																ng-init="proceduredata.chain1.${key} = '0'"
																ng-disabled="freeze || proceduredata.succtavi != '9b99dac6-c026-4151-8355-1ef1abff01df'">
																<option value="0">Select</option>
																<procedure:component-options>
																	<option value="${uuid}">${label}</option>
																</procedure:component-options>
															</select>
														</procedure:component>
														<procedure:procedure-layout
															id="52774f3d-f1f2-4030-acc2-d51c8859086e"
															section="TAVI_PROCEDURE_COMMENTS_GROUP">
															<procedure:component id="_reasonfailcomnt">
																<span class="com-icon"
																	ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
																	class="fa fa-commenting" aria-hidden="true"></i></span>
															</procedure:component>
														</procedure:procedure-layout>
													</div>
												</procedure:procedure-layout>
												<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 com_fild">
													Conversion to open heart surgery
													<procedure:component id="_convopenheartsurg">
													<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
														<!-- <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}')"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<select class="in-field" ng-model="proceduredata.${key}"
															ng-init="proceduredata.${key} = '0'" ng-disabled="freeze">
															<option value="0">Select</option>
															<procedure:component-options>
																<option value="${uuid}">${label}</option>
															</procedure:component-options>
														</select>
													</procedure:component>
													<procedure:procedure-layout
														id="52774f3d-f1f2-4030-acc2-d51c8859086e"
														section="TAVI_PROCEDURE_COMMENTS_GROUP">
														<procedure:component id="_contohsurgcomnt">
															<span class="com-icon"
																ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
																class="fa fa-commenting" aria-hidden="true"></i></span>
														</procedure:component>
													</procedure:procedure-layout>
												</div>
												<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 com_fild">
													<procedure:component id="_concomproc">
                                       Concomitant procedure
                                       <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                      <!--  <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}')"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<select class="in-field" ng-model="proceduredata.${key}"
															ng-init="proceduredata.${key} = '0'" ng-disabled="freeze">
															<option value="0">Select</option>
															<procedure:component-options>
																<option value="${uuid}">${label}</option>
															</procedure:component-options>
														</select>
													</procedure:component>
													<procedure:procedure-layout
														id="52774f3d-f1f2-4030-acc2-d51c8859086e"
														section="TAVI_PROCEDURE_COMMENTS_GROUP">
														<procedure:component id="_concomitantproccomnt">
															<span class="com-icon"
																ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
																class="fa fa-commenting" aria-hidden="true"></i></span>
														</procedure:component>
													</procedure:procedure-layout>
												</div>
												<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 com_fild">
													<procedure:component id="_icubedused">
                                       ICU bed used
                                       <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                      <!--  <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}')"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<select class="in-field" ng-model="proceduredata.${key}"
															ng-init="proceduredata.${key} = '0'" ng-disabled="freeze">
															<option value="0">Select</option>
															<procedure:component-options>
																<option value="${uuid}">${label}</option>
															</procedure:component-options>
														</select>
													</procedure:component>
													<procedure:procedure-layout
														id="52774f3d-f1f2-4030-acc2-d51c8859086e"
														section="TAVI_PROCEDURE_COMMENTS_GROUP">
														<procedure:component id="_icubeduscomnt">
															<span class="com-icon"
																ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
																class="fa fa-commenting" aria-hidden="true"></i></span>
														</procedure:component>
													</procedure:procedure-layout>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- ---------------------------HAEMODYNAMIC BLOCK END------------------- -->
								<!-- -----------------IMMEDIATIVE POST OPERATVE DATA BLOCK START--------- -->
								<div class="col-xs-12 grp_box">
									<div class="col-xs-12">
										<span class="gro_head">Immediate post operative data</span>
									</div>
									<div class="col-xs-12 grp_box11">
										<div class="col-xs-12 grp_box_sub">
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
												<procedure:component id="_postppgrad">
                                    Post TAVI peak-to-peak gradient
                                    <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                    <!-- <span class="his-icon"
														ng-click="showHistoryClicked($event,'${expr3}')"><i
														class="fa fa-history" aria-hidden="true"></i></span> -->
													<input type="number" name="postppgrad" class="in-field"
														ng-model="proceduredata.${key}"
														ng-model-options="{ updateOn: 'default' }"
														ng-disabled="freeze" min="0" step="0.001" max="200" />

												</procedure:component>
												<procedure:procedure-layout
													id="52774f3d-f1f2-4030-acc2-d51c8859086e"
													section="TAVI_PROCEDURE_COMMENTS_GROUP">
													<procedure:component id="_postptopgcomnt">
														<span class="com-icon"
															ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
															class="fa fa-commenting" aria-hidden="true"></i></span>
													</procedure:component>
												</procedure:procedure-layout>
												<span class="err-span-v2"
													ng-show="myForm.postppgrad.$error.step || myForm.postppgrad.$error.number">Not
													a valid number!</span>

													<span class="err-span-v2"
													ng-show="myForm.postppgrad.$error.min || myForm.postppgrad.$error.max">Rangeis from 0 to 200</span>
											</div>
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
												<procedure:component id="_postaormeangrad">
                                    Post TAVI Aortic mean gradient
                                    <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                    <!-- <span class="his-icon"
														ng-click="showHistoryClicked($event,'${expr3}')"><i
														class="fa fa-history" aria-hidden="true"></i></span> -->
													<input type="number" name="postaormeangrad"
														class="in-field" ng-model="proceduredata.${key}"
														ng-model-options="{ updateOn: 'default' }"
														ng-disabled="freeze" min="0" step="0.001" max="200" />

												</procedure:component>
												<procedure:procedure-layout
													id="52774f3d-f1f2-4030-acc2-d51c8859086e"
													section="TAVI_PROCEDURE_COMMENTS_GROUP">
													<procedure:component id="_postaomngrcomnt">
														<span class="com-icon"
															ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
															class="fa fa-commenting" aria-hidden="true"></i></span>
													</procedure:component>
												</procedure:procedure-layout>
												<span class="err-span-v2"
													ng-show="myForm.postaormeangrad.$error.step || myForm.postaormeangrad.$error.number">Not
													a valid number!</span>

												<span class="err-span-v2"
												ng-show="myForm.postaormeangrad.$error.min || myForm.postaormeangrad.$error.max">Rangeis from 0 to 200</span>
											</div>
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
												<procedure:component id="_aronangiallcom">
                                    Post Tavi AR
                                    <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                    <!-- <span class="his-icon"
														ng-click="showHistoryClicked($event,'${expr3}')"><i
														class="fa fa-history" aria-hidden="true"></i></span> -->
													<select class="in-field" ng-model="proceduredata.${key}"
														ng-init="proceduredata.${key} = '0'" ng-disabled="freeze">
														<option value="0">Select</option>
														<procedure:component-options>
															<option value="${uuid}">${label}</option>
														</procedure:component-options>
													</select>
												</procedure:component>
												<procedure:procedure-layout
													id="52774f3d-f1f2-4030-acc2-d51c8859086e"
													section="TAVI_PROCEDURE_COMMENTS_GROUP">
													<procedure:component id="_postarcomnt">
														<span class="com-icon"
															ng-click="showProcedureCommentBox($event, 'proceduredata.procedureMainComment.${key}')"><i
															class="fa fa-commenting" aria-hidden="true"></i></span>
													</procedure:component>
												</procedure:procedure-layout>
											</div>
										</div>
									</div>
								</div>
								<!---------------- --IMMEDIATIVE POST OPERATIVE DATA BLOCK END----------- -->
								<!---------------- --POST PROCEDURE ECG BLOCK START------------------- -->
								<div class="col-xs-12 grp_box">
									<div class="col-xs-12">
										<span class="gro_head">Post procedure ECG </span>
									</div>
									<procedure:procedure-layout
										id="89247b32-082d-4485-85e3-6de70daa9c0a"
										section="TAVI_PROCEDURE">
										<div class="col-xs-12 grp_box11">
											<div class="col-xs-12 grp_box_sub">
												<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
													ECG Rhythm
													<procedure:component id="_ecgrythm">
													<ahimsa-archive expression = "${expr3}" callback = "loadArchive" sgid="2"></ahimsa-archive>
														<!-- <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}',2)"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->

														<select class="in-field"
															ng-model="proceduredata.postecg.${key}"
															ng-init="proceduredata.postecg.${key} = '0'"
															ng-disabled="freeze">
															<option value="0">Select</option>
															<procedure:component-options>
																<option value="${uuid}">${label}</option>
															</procedure:component-options>
														</select>
													</procedure:component>
													<procedure:component id="_ecgrhycomnt">
														<span class="com-icon"
															ng-click="showProcedureCommentBox($event, 'proceduredata.postecg.${key}')"><i
															class="fa fa-commenting" aria-hidden="true"></i></span>
													</procedure:component>
												</div>
												<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
													<procedure:component id="_avblock">
                                       A-V Block
                                       <ahimsa-archive expression = "${expr3}" callback = "loadArchive" sgid="2"></ahimsa-archive>
                                       <!-- <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}',2)"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->

														<select class="in-field"
															ng-model="proceduredata.postecg.${key}"
															ng-init="proceduredata.postecg.${key} = '0'"
															ng-disabled="freeze">
															<option value="0">Select</option>
															<procedure:component-options>
																<option value="${uuid}">${label}</option>
															</procedure:component-options>
														</select>
													</procedure:component>
													<procedure:component id="_avblockcomnt">
														<span class="com-icon"
															ng-click="showProcedureCommentBox($event, 'proceduredata.postecg.${key}')"><i
															class="fa fa-commenting" aria-hidden="true"></i></span>
													</procedure:component>
												</div>
												<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
													Bundle branch block
													<procedure:component id="_bubrhblock">
													<ahimsa-archive expression = "${expr3}" callback = "loadArchive" sgid="2"></ahimsa-archive>
														<!-- <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}',2)"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<select class="in-field"
															ng-model="proceduredata.postecg.${key}"
															ng-init="proceduredata.postecg.${key} = '0'"
															ng-disabled="freeze">
															<option value="0">Select</option>
															<procedure:component-options>
																<option value="${uuid}">${label}</option>
															</procedure:component-options>
														</select>
													</procedure:component>
													<procedure:component id="_bbbcomnt">
														<span class="com-icon"
															ng-click="showProcedureCommentBox($event, 'proceduredata.postecg.${key}')"><i
															class="fa fa-commenting" aria-hidden="true"></i></span>
													</procedure:component>
												</div>
											</div>
										</div>
									</procedure:procedure-layout>
								</div>
								<!-- ----------POST PROCEDURE ECG BLOCK END----------- -->
							</div>
						</div>
						<div
							class="tab-pane ng-class: {'active': activeTab == 'postproccomp'}"
							id="postpro" role="tabpanel" aria-labelledby="post-comp-tab"
							ng-show="activeTab == 'postproccomp'">
							<!-- ----------------POST PROCEDURE COMPLIACTION BLOCK START--------------- -->
							<div class="col-xs-12 block_box1">
								<div class="col-xs-12 box_hdr">
									<span class="heading_New_pro">Post procedure
										complications</span>
								</div>
								<!-- --------------VASCULAR COMPLICATION BLOCK START--------------------- -->
								<div class="col-xs-12 grp_box">
									<div class="col-xs-12 grp_box11">
										<div class="col-xs-12 grp_box_sub">
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
												<procedure:component id="_accsitevasccompl">
                                    Vascular complication & Access site
                                    <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                    <!-- <span class="his-icon"
														ng-click="showHistoryClicked($event,'${expr3}')"><i
														class="fa fa-history" aria-hidden="true"></i></span> -->
													<select class="in-field" ng-model="proceduredata.${key}"
														ng-init="proceduredata.${key} = '0'" ng-disabled="freeze">
														<option value="0">Select</option>
														<procedure:component-options>
															<option value="${uuid}">${label}</option>
														</procedure:component-options>
													</select>
												</procedure:component>
												<procedure:procedure-layout
													id="2e50153f-2ae9-41db-9cd8-bb983b9c9029"
													section="TAVI_PROCEDURE_COMMENTS_GROUP">
													<procedure:component id="_accandvasccomnt">
														<span class="com-icon"
															ng-click="showProcedureCommentBox($event, 'proceduredata.procedureCompliComment.${key}')"><i
															class="fa fa-commenting" aria-hidden="true"></i></span>
													</procedure:component>
												</procedure:procedure-layout>
											</div>
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
												<procedure:component id="_vascaccsitevar">
                                    Vascular & Access site(VARC)
                                    <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                    <!-- <span class="his-icon"
														ng-click="showHistoryClicked($event,'${expr3}')"><i
														class="fa fa-history" aria-hidden="true"></i></span> -->
													<select class="in-field" ng-model="proceduredata.${key}"
														ng-init="proceduredata.${key} = '0'" ng-disabled="freeze">
														<option value="0">Select</option>
														<procedure:component-options>
															<option value="${uuid}">${label}</option>
														</procedure:component-options>
													</select>
												</procedure:component>
												<procedure:procedure-layout
													id="2e50153f-2ae9-41db-9cd8-bb983b9c9029"
													section="TAVI_PROCEDURE_COMMENTS_GROUP">
													<procedure:component id="_vascaccesscomnt">
														<span class="com-icon"
															ng-click="showProcedureCommentBox($event, 'proceduredata.procedureCompliComment.${key}')"><i
															class="fa fa-commenting" aria-hidden="true"></i></span>
													</procedure:component>
												</procedure:procedure-layout>
											</div>
										</div>
									</div>
								</div>
								<!-- ---------------------VASCULAR COMPLICATION BLOCK END------------- -->
								<!-- --------------------BLOOD TRANSFUSION BLOCK START------------------- -->
								<div class="col-xs-12 grp_box">
									<div class="col-xs-12 grp_box11">
										<div class="col-xs-12 grp_box_sub">
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
												<procedure:component id="_transf">
                                    Blood Transfusion
                                    <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                   <!--  <span class="his-icon"
														ng-click="showHistoryClicked($event,'${expr3}')"><i
														class="fa fa-history" aria-hidden="true"></i></span> -->
													<select class="in-field" ng-model="proceduredata.${key}"
														ng-init="proceduredata.${key} = '0'" ng-disabled="freeze">
														<option value="0">Select</option>
														<procedure:component-options>
															<option value="${uuid}">${label}</option>
														</procedure:component-options>
													</select>
												</procedure:component>
												<procedure:procedure-layout
													id="2e50153f-2ae9-41db-9cd8-bb983b9c9029"
													section="TAVI_PROCEDURE_COMMENTS_GROUP">
													<procedure:component id="_transfussioncomnt">
														<span class="com-icon"
															ng-click="showProcedureCommentBox($event, 'proceduredata.procedureCompliComment.${key}')"><i
															class="fa fa-commenting" aria-hidden="true"></i></span>
													</procedure:component>
												</procedure:procedure-layout>
											</div>
											<div class="col-xs-12" hide="true">
												<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 ">
													
													<procedure:component id="_transfrbc">
														<div>
															Transfusion RBC 
															<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>

														</div>
														<div class="col-xs-12 p-0">
															<div class="in-field-ckbox">
															<procedure:component-options>
																
																	<input type="radio" name="transfrbc"
																		ng-model="proceduredata.${key}" value="${uuid}"
																		ng-disabled="freeze || proceduredata.transf != 'c4b1fd7f-3ee6-458d-ad18-7176a7df81cf'">
																	${label}
																
															</procedure:component-options>
															</div>
														</div>
													</procedure:component>
													<procedure:procedure-layout
														id="2e50153f-2ae9-41db-9cd8-bb983b9c9029"
														section="TAVI_PROCEDURE_COMMENTS_GROUP">
														<procedure:component id="_transfussionrbccomnt">
															<span class="com-icon"
																ng-click="showProcedureCommentBox($event, 'proceduredata.procedureCompliComment.${key}')"><i
																class="fa fa-commenting" aria-hidden="true"></i></span>
														</procedure:component>
													</procedure:procedure-layout>
												</div>
												<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
													
													<procedure:component id="_transfffp">
														<div>
															Transfusion FFP 
															<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>


														</div>
														<div class="col-xs-12 p-0">
															<div class="in-field-ckbox">
															<procedure:component-options>
																
																	<input type="radio" name="transfffp"
																		ng-model="proceduredata.${key}" value="${uuid}"
																		ng-disabled="freeze || proceduredata.transf != 'c4b1fd7f-3ee6-458d-ad18-7176a7df81cf'">
																	${label}
																
															</procedure:component-options>
														</div>
														</div>
													</procedure:component>
													<procedure:procedure-layout
														id="2e50153f-2ae9-41db-9cd8-bb983b9c9029"
														section="TAVI_PROCEDURE_COMMENTS_GROUP">
														<procedure:component id="_transfussionffpcomnt">
															<span class="com-icon"
																ng-click="showProcedureCommentBox($event, 'proceduredata.procedureCompliComment.${key}')"><i
																class="fa fa-commenting" aria-hidden="true"></i></span>
														</procedure:component>
													</procedure:procedure-layout>
												</div>
												<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
													
													<procedure:component id="_transfplat">
														<div>
															Transfusion Platelets 
															<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
														</div>
														<div class="col-xs-12 p-0">
															<div class="in-field-ckbox">
															<procedure:component-options>
																	<input type="radio" name="transfplat"
																		ng-model="proceduredata.${key}" value="${uuid}"
																		ng-disabled="freeze || proceduredata.transf != 'c4b1fd7f-3ee6-458d-ad18-7176a7df81cf'">
																	${label}
															</procedure:component-options>
															</div>
														</div>
													</procedure:component>
													<procedure:procedure-layout
														id="2e50153f-2ae9-41db-9cd8-bb983b9c9029"
														section="TAVI_PROCEDURE_COMMENTS_GROUP">
														<procedure:component id="_transfussionplatecomnt">
															<span class="com-icon"
																ng-click="showProcedureCommentBox($event, 'proceduredata.procedureCompliComment.${key}')"><i
																class="fa fa-commenting" aria-hidden="true"></i></span>
														</procedure:component>
													</procedure:procedure-layout>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- --------------------BLOOD TRANSFUSION BLOCK END--------------------- -->
								<!-- --------------------PERI PROCEDURAL MI BLOCK START------------------ -->
								<div class="col-xs-12 grp_box">
									<div class="col-xs-12 grp_box11">
										<div class="col-xs-12 grp_box_sub">
											<div class="col-xs-12 mt-20 p-0">
												<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
													<procedure:component id="_periprocmi">
                                       Peri procedural MI
                                       <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                      <!--  <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}')"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<select class="in-field" ng-model="proceduredata.${key}"
															ng-init="proceduredata.${key} = '0'" ng-disabled="freeze">
															<option value="0">Select</option>
															<procedure:component-options>
																<option value="${uuid}">${label}</option>
															</procedure:component-options>
														</select>
													</procedure:component>
													<procedure:procedure-layout
														id="2e50153f-2ae9-41db-9cd8-bb983b9c9029"
														section="TAVI_PROCEDURE_COMMENTS_GROUP">
														<procedure:component id="_periprocmicomnt">
															<span class="com-icon"
																ng-click="showProcedureCommentBox($event, 'proceduredata.procedureCompliComment.${key}')"><i
																class="fa fa-commenting" aria-hidden="true"></i></span>
														</procedure:component>
													</procedure:procedure-layout>
												</div>
												<procedure:procedure-layout
													id="fadf6749-4135-460d-9a64-78837de8b6f1"
													section="TAVI_PROCEDURE">
													<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
														<procedure:component id="_coronaryartery">
                                          Coronary artery occlusion
                                          <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                          <!-- <span class="his-icon"
																ng-click="showHistoryClicked($event,'${expr3}')"><i
																class="fa fa-history" aria-hidden="true"></i></span> -->
															<select class="in-field"
																ng-model="proceduredata.chain1.${key}"
																ng-init="proceduredata.chain1.${key} = '0'"
																ng-disabled="freeze">
																<option value="0">Select</option>
																<procedure:component-options>
																	<option value="${uuid}">${label}</option>
																</procedure:component-options>
															</select>
														</procedure:component>
														<procedure:procedure-layout
															id="2e50153f-2ae9-41db-9cd8-bb983b9c9029"
															section="TAVI_PROCEDURE_COMMENTS_GROUP">
															<procedure:component id="_corartocclcomnt">
																<span class="com-icon"
																	ng-click="showProcedureCommentBox($event, 'proceduredata.procedureCompliComment.${key}')"><i
																	class="fa fa-commenting" aria-hidden="true"></i></span>
															</procedure:component>
														</procedure:procedure-layout>
													</div>
													<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
														<procedure:component id="_annulusrupture">
                                          Annulas rupture
                                          <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                          <!-- <span class="his-icon"
																ng-click="showHistoryClicked($event,'${expr3}')"><i
																class="fa fa-history" aria-hidden="true"></i></span> -->
															<select class="in-field"
																ng-model="proceduredata.chain1.${key}"
																ng-init="proceduredata.chain1.${key} = '0'"
																ng-disabled="freeze">
																<option value="0">Select</option>
																<procedure:component-options>
																	<option value="${uuid}">${label}</option>
																</procedure:component-options>
															</select>
														</procedure:component>
														<procedure:procedure-layout
															id="2e50153f-2ae9-41db-9cd8-bb983b9c9029"
															section="TAVI_PROCEDURE_COMMENTS_GROUP">
															<procedure:component id="_annrupcomnt">
																<span class="com-icon"
																	ng-click="showProcedureCommentBox($event, 'proceduredata.procedureCompliComment.${key}')"><i
																	class="fa fa-commenting" aria-hidden="true"></i></span>
															</procedure:component>
														</procedure:procedure-layout>
													</div>
												</procedure:procedure-layout>
											</div>
										</div>
									</div>
								</div>
								<!-- --------------------PERI PROCEDURAL MI BLOCK END--------------------- -->
								<!-- --------------------PERICARDIAL EFFUSION BLOCK START-------------- -->
								<div class="col-xs-12 grp_box">
									<div class="col-xs-12 grp_box11">
										<div class="col-xs-12 grp_box_sub">
											<procedure:procedure-layout
												id="fadf6749-4135-460d-9a64-78837de8b6f1"
												section="TAVI_PROCEDURE">
												<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
													<procedure:component id="_perieffipostdepl">
                                       Pericardial effusion
                                       <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                       <!-- <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}')"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<select class="in-field"
															ng-model="proceduredata.chain1.${key}"
															ng-init="proceduredata.chain1.${key} = '0'"
															ng-disabled="freeze">
															<option value="0">Select</option>
															<procedure:component-options>
																<option value="${uuid}">${label}</option>
															</procedure:component-options>
														</select>
													</procedure:component>
													<procedure:procedure-layout
														id="2e50153f-2ae9-41db-9cd8-bb983b9c9029"
														section="TAVI_PROCEDURE_COMMENTS_GROUP">
														<procedure:component id="_perieffcomnt">
															<span class="com-icon"
																ng-click="showProcedureCommentBox($event, 'proceduredata.procedureCompliComment.${key}')"><i
																class="fa fa-commenting" aria-hidden="true"></i></span>
														</procedure:component>
													</procedure:procedure-layout>
												</div>
												<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild"
													ng-show="proceduredata.chain1.perieffipostdepl == '0c8a82e6-1e64-409c-9f8f-a4798f877868'">
													Pericardial tamponade

													<procedure:component id="_peritamponade">
													<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
														<!-- <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}')"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<select class="in-field"
															ng-model="proceduredata.chain1.${key}"
															ng-init="proceduredata.chain1.${key} = '0'"
															ng-disabled="freeze || proceduredata.chain1.perieffipostdepl != '0c8a82e6-1e64-409c-9f8f-a4798f877868'">
															<option value="0">Select</option>
															<procedure:component-options>
																<option value="${uuid}">${label}</option>
															</procedure:component-options>
														</select>
													</procedure:component>
													<procedure:procedure-layout
														id="2e50153f-2ae9-41db-9cd8-bb983b9c9029"
														section="TAVI_PROCEDURE_COMMENTS_GROUP">
														<procedure:component id="_peritempcomnt">
															<span class="com-icon"
																ng-click="showProcedureCommentBox($event, 'proceduredata.procedureCompliComment.${key}')"><i
																class="fa fa-commenting" aria-hidden="true"></i></span>
														</procedure:component>
													</procedure:procedure-layout>
												</div>
											</procedure:procedure-layout>
										</div>
									</div>
								</div>
								<!-- --------------------PERICARDIAL EFFUSION BLOCK END-------------- -->
								<!-- --------------------TRANSFERRED TO BLOCK START--------------------- -->
								<procedure:procedure-layout
									id="fadf6749-4135-460d-9a64-78837de8b6f1"
									section="TAVI_PROCEDURE">
									<div class="col-xs-12 grp_box">
										<div class="col-xs-12 grp_box11">
											<div class="col-xs-12 grp_box_sub">
												<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
													Transferred to
													<procedure:component id="_transferredto">
													<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
														<!-- <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}')"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<select class="in-field"
															ng-model="proceduredata.chain1.${key}"
															ng-init="proceduredata.chain1.${key} = '0'"
															ng-disabled="freeze">
															<option value="0">Select</option>
															<procedure:component-options>
																<option value="${uuid}">${label}</option>
															</procedure:component-options>
														</select>
													</procedure:component>
													<procedure:procedure-layout
														id="2e50153f-2ae9-41db-9cd8-bb983b9c9029"
														section="TAVI_PROCEDURE_COMMENTS_GROUP">
														<procedure:component id="_transftocomnt">
															<span class="com-icon"
																ng-click="showProcedureCommentBox($event, 'proceduredata.procedureCompliComment.${key}')"><i
																class="fa fa-commenting" aria-hidden="true"></i></span>
														</procedure:component>
													</procedure:procedure-layout>
												</div>
											</div>
										</div>
									</div>
								</procedure:procedure-layout>
								<!-- --------------------TRANSFERRED TO BLOCK END--------------------- -->
							</div>
							<!-- -----------POST PROCEDURE COMPLICATION BLOCK END---------------------- -->
						</div>
						<!-- --------------PRE DISCHARGE DATA BLOCK START--------------------------- -->
						<div
							class="tab-pane ng-class: {'active': activeTab == 'predischarge'}"
							id="predis" role="tabpanel" aria-labelledby="pre-discharge-tab"
							ng-show="activeTab == 'predischarge'">
							<!-- --------------PRE DISCHARGE DATA BLOCK START--------------------------- -->
							<div class="col-xs-12 block_box1">
								<div class="col-xs-12 box_hdr">
									<span class="heading_New_pro">Pre-discharge data</span>
								</div>
								<!-- --------------ECHOCARDIOGRAPHY BLOCK START--------------------------- -->
								<procedure:procedure-layout
									id="675eb1fc-890b-414d-9716-ed86760a35d4"
									section="TAVI_PROCEDURE">
									<div class="col-xs-12 grp_box">
										<div class="col-xs-12 grp_box11">
											<div class="col-xs-12 grp_box_sub">
												<div class="col-xs-12">
													<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 p-0">
														<procedure:component id="_dtex">
                                          Date of examination
                                          <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                          <!-- <span class="his-icon"
																ng-click="showHistoryClicked($event,'${expr3}')"><i
																class="fa fa-history" aria-hidden="true"></i></span> -->
															<div class='input-group date date-picker-bg'
																id='_dechodateofexam'>
																<input class="in-field" id='_dechodateofexam'
																	ng-model="proceduredata.disecho.${key}"
																	placeholder="yyyy-mm-dd" type='text'
																	ng-disabled="freeze" />
																<div class="close-date"
																	ng-click="proceduredata.disecho.${key} = undefined"
																	ng-if="proceduredata.disecho.${key} && !freeze"></div>
																<span 
																	class="input-group-addon"> <span
																	class="glyphicon" ng-disabled="freeze"> <img
																		src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/clndr.png" />
																</span>
																</span>
															</div>
															<input type="hidden" id="___dechodateofexam"
																value="disecho.${key}" />
														</procedure:component>
														<procedure:procedure-layout
															id="35e4f4e6-96d2-4d88-a19d-f547a7f9ee20"
															section="TAVI_PROCEDURE_COMMENTS_GROUP">
															<procedure:component id="_doexamcomnt">
																<span class="com-icon"
																	ng-click="showProcedureCommentBox($event, 'proceduredata.procedureDischargeComment.${key}')"><i
																	class="fa fa-commenting" aria-hidden="true"></i></span>
															</procedure:component>
														</procedure:procedure-layout>
													</div>
													<div class="col-xs-12 t-head">AORTIC VALVE</div>
													<div class="col-xs-12">
														<div class="col-xs-12 col-md-3 p-10">
															Mean Gradient
															<procedure:component id="_meang">
															<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
																<input class="in-field" type="number" name="meang"
																	ng-model="proceduredata.disecho.${key}"
																	ng-disabled="freeze" max="200" min="0" step="0.001">

															</procedure:component>
															<procedure:procedure-layout
																id="35e4f4e6-96d2-4d88-a19d-f547a7f9ee20"
																section="TAVI_PROCEDURE_COMMENTS_GROUP">
																<procedure:component id="_mngrcomnt">
																	<span class="com-icon"
																		ng-click="showProcedureCommentBox($event, 'proceduredata.procedureDischargeComment.${key}')"><i
																		class="fa fa-commenting" aria-hidden="true"></i></span>
																</procedure:component>
															</procedure:procedure-layout>
															<span class="err-span-v2"
																ng-show="myForm.meang.$error.step || myForm.meang.$error.number">Not
																a valid number!</span>

																<span class="err-span-v2"
																ng-show="myForm.meang.$error.min || myForm.meang.$error.max">Range is from 0 to 200</span>
														</div>

														<div class="col-xs-12 col-md-3 p-10">
															Peak-to-Peak Gradient
															<procedure:component id="_ptpgrad">
															<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
																<input class="in-field" type="number" name="ptpgrad"
																	ng-model="proceduredata.disecho.${key}"
																	ng-disabled="freeze" min="0" max="200" step="0.001">

															</procedure:component>
															<procedure:procedure-layout
																id="35e4f4e6-96d2-4d88-a19d-f547a7f9ee20"
																section="TAVI_PROCEDURE_COMMENTS_GROUP">
																<procedure:component id="_ptopgcomnt">
																	<span class="com-icon"
																		ng-click="showProcedureCommentBox($event, 'proceduredata.procedureDischargeComment.${key}')"><i
																		class="fa fa-commenting" aria-hidden="true"></i></span>
																</procedure:component>
															</procedure:procedure-layout>
															<span class="err-span-v2"
																ng-show="myForm.ptpgrad.$error.step || myForm.ptpgrad.$error.number">Not
																a valid number!</span>

																<span class="err-span-v2"
																ng-show="myForm.ptpgrad.$error.min || myForm.ptpgrad.$error.max">Range is from 0 to 200</span>
														</div>

														


													</div>

													<div class="col-xs-12">
														<div class="col-xs-12 col-md-3 p-10">
															Aortic Valve Area (cm<sup>2</sup>)

															<procedure:component id="_aovalve">
															<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
																<input class="in-field" type="number" name="aovalve"
																	ng-model="proceduredata.disecho.${key}"
																	ng-disabled="freeze" min="0.01" max="200" step="0.001">

															</procedure:component>
															<procedure:procedure-layout
																id="35e4f4e6-96d2-4d88-a19d-f547a7f9ee20"
																section="TAVI_PROCEDURE_COMMENTS_GROUP">
																<procedure:component id="_aovareacomnt">
																	<span class="com-icon"
																		ng-click="showProcedureCommentBox($event, 'proceduredata.procedureDischargeComment.${key}')"><i
																		class="fa fa-commenting" aria-hidden="true"></i></span>
																</procedure:component>
															</procedure:procedure-layout>
															<span class="err-span-v2"
																ng-show="myForm.aovalve.$error.step || myForm.aovalve.$error.number">Not
																a valid number!</span>

																<span class="err-span-v2"
																ng-show="myForm.aovalve.$error.min || myForm.aovalve.$error.max ">Range is from 0 to 200</span>
														</div>

														<div class="col-xs-12 col-md-6 p-10">
															AR Grade
															<procedure:component id="_aigradeec">
															<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive><br/>
																	<div class="in-field-ckbox">
																<procedure:component-options>
																
																	<span class="marg-left10"> <input type="radio"
																		name="aigradeec"
																		ng-model="proceduredata.disecho.${key}"
																		value="${uuid}" ng-disabled="freeze"> ${label}
																	</span>
																
																</procedure:component-options>
																</div>
															</procedure:component>
															<procedure:procedure-layout
																id="35e4f4e6-96d2-4d88-a19d-f547a7f9ee20"
																section="TAVI_PROCEDURE_COMMENTS_GROUP">
																<procedure:component id="_argradecomnt">
																	<span class="com-icon"
																		ng-click="showProcedureCommentBox($event, 'proceduredata.procedureDischargeComment.${key}')"><i
																		class="fa fa-commenting" aria-hidden="true"></i></span>
																</procedure:component>
															</procedure:procedure-layout>
														</div>

													</div>

													<div class="col-xs-12">
														<div class="col-xs-12 col-md-3 p-10">
															Valvular AR
															<procedure:component id="_vascularar">
															<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
																<input class="in-field" type="number" name="vascularar"
																	ng-model="proceduredata.disecho.${key}"
																	ng-disabled="freeze" min="0" max="200" step="0.001">

															</procedure:component>
															<procedure:procedure-layout
																id="35e4f4e6-96d2-4d88-a19d-f547a7f9ee20"
																section="TAVI_PROCEDURE_COMMENTS_GROUP">
																<procedure:component id="_vascarcomnt">
																	<span class="com-icon"
																		ng-click="showProcedureCommentBox($event, 'proceduredata.procedureDischargeComment.${key}')"><i
																		class="fa fa-commenting" aria-hidden="true"></i></span>
																</procedure:component>
															</procedure:procedure-layout>
															<span class="err-span-v2"
																ng-show="myForm.vascularar.$error.step || myForm.vascularar.$error.number">Not
																a valid number!</span>

																<span class="err-span-v2"
																ng-show="myForm.vascularar.$error.min || myForm.vascularar.$error.max">Range is from 0 to 200</span>
														</div>

														<div class="col-xs-12 col-md-3 p-10">
															Para-valvular leak
															<procedure:component id="_paravalvularleak">
															<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
																<select class="in-field"
																	ng-model="proceduredata.disecho.${key}"
																	ng-init="proceduredata.disecho.${key} = '0'"
																	ng-disabled="freeze">
																	<option value="0">Select</option>
																	<procedure:component-options>
																		<option value="${uuid}">${label}</option>
																	</procedure:component-options>
																</select>

															</procedure:component>
															<procedure:procedure-layout
																id="35e4f4e6-96d2-4d88-a19d-f547a7f9ee20"
																section="TAVI_PROCEDURE_COMMENTS_GROUP">
																<procedure:component id="_paravleakcomnt">
																	<span class="com-icon"
																		ng-click="showProcedureCommentBox($event, 'proceduredata.procedureDischargeComment.${key}')"><i
																		class="fa fa-commenting" aria-hidden="true"></i></span>
																</procedure:component>
															</procedure:procedure-layout>
														</div>
													</div>

													
													<div class="col-xs-12">
														<div class="col-xs-12 col-md-6 p-10">
															MR Grade
															<procedure:component id="_mrgrade">
															<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
																<!-- <span class="mrgrd-his-r cursor"
																	ng-click="showHistoryClicked($event,'${expr3}')"><i
																	class="fa fa-history" aria-hidden="true"></i></span> --> <br/>
																	<div class="in-field-ckbox">
																<procedure:component-options>
																	<span class="marg-left10"> <input type="radio"
																		name="mrgrade" ng-model="proceduredata.disecho.${key}"
																		value="${uuid}" ng-disabled="freeze"> ${label}
																	</span>
																</procedure:component-options>
															</div>
																
															</procedure:component>
															<procedure:procedure-layout
																id="35e4f4e6-96d2-4d88-a19d-f547a7f9ee20"
																section="TAVI_PROCEDURE_COMMENTS_GROUP">
																<procedure:component id="_mrgradecomnt">
																	<span class="com-icon"
																		ng-click="showProcedureCommentBox($event, 'proceduredata.procedureDischargeComment.${key}')"><i
																		class="fa fa-commenting" aria-hidden="true"></i></span>
																</procedure:component>
															</procedure:procedure-layout>
														</div>
													</div>
													



													<div class="col-xs-12 t-head">LEFT
														VENTRICULAR</div>
													<div class="col-xs-12">
														<div class="col-xs-12 col-md-4 p-10">
															LVEF (%)
															<procedure:component id="_lvefper">
															<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
																<input class="in-field" type="number" name="lvefper"
																	ng-model="proceduredata.disecho.${key}"
																	ng-disabled="freeze" min="0" max="200" step="0.001">

															</procedure:component>
															<procedure:procedure-layout
																id="35e4f4e6-96d2-4d88-a19d-f547a7f9ee20"
																section="TAVI_PROCEDURE_COMMENTS_GROUP">
																<procedure:component id="_lvefcomnt">
																	<span class="com-icon"
																		ng-click="showProcedureCommentBox($event, 'proceduredata.procedureDischargeComment.${key}')"><i
																		class="fa fa-commenting" aria-hidden="true"></i></span>
																</procedure:component>
															</procedure:procedure-layout>
															<span class="err-span-v2"
																ng-show="myForm.lvefper.$error.step || myForm.lvefper.$error.number">Not
																a valid number!</span> 

																<span class="err-span-v2"
																ng-show="myForm.lvefper.$error.min || myForm.lvefper.$error.max">Range is from 0 to 200</span> 
														</div>
													</div>
													<div class="col-xs-12 t-head">MITRAL
														VALVE</div>
													<div class="col-xs-12">
														<div class="col-xs-12 col-md-4 p-10">
															Pericardial effusion
															<procedure:component id="_pericardialeffusion">
															<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
																<select class="in-field"
																	ng-model="proceduredata.disecho.${key}"
																	ng-init="proceduredata.disecho.${key} = '0'"
																	ng-disabled="freeze">
																	<option value="0">Select</option>
																	<procedure:component-options>
																		<option value="${uuid}">${label}</option>
																	</procedure:component-options>
																</select>
															</procedure:component>
															<procedure:procedure-layout
																id="35e4f4e6-96d2-4d88-a19d-f547a7f9ee20"
																section="TAVI_PROCEDURE_COMMENTS_GROUP">
																<procedure:component id="_perieffusioncomnt">
																	<span class="com-icon"
																		ng-click="showProcedureCommentBox($event, 'proceduredata.procedureDischargeComment.${key}')"><i
																		class="fa fa-commenting" aria-hidden="true"></i></span>
																</procedure:component>
															</procedure:procedure-layout>
														</div>
													

														<!-- <div class="col-xs-12 col-md-4" style="padding: 10px;">
															Stroke volume
															<procedure:component id="_strokevolume">
															<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
																
																<input class="in-field" type="number"
																	name="strokevolume"
																	ng-model="proceduredata.disecho.${key}"
																	ng-disabled="freeze" min="0" max="200" step="0.001">

															</procedure:component>
															<procedure:procedure-layout
																id="35e4f4e6-96d2-4d88-a19d-f547a7f9ee20"
																section="TAVI_PROCEDURE_COMMENTS_GROUP">
																<procedure:component id="_strokevolcomnt">
																	<span class="com-icon"
																		ng-click="showProcedureCommentBox($event, 'proceduredata.procedureDischargeComment.${key}')"><i
																		class="fa fa-commenting" aria-hidden="true"></i></span>
																</procedure:component>
															</procedure:procedure-layout>
															<span class="err-span-v2"
																ng-show="myForm.strokevolume.$error.step || myForm.strokevolume.$error.number">Not
																a valid number!</span>

																<span class="err-span-v2"
																ng-show="myForm.strokevolume.$error.min || myForm.strokevolume.$error.max">Range is from 0 to 200</span>
														</div> -->
													</div>
													
												</div>
											</div>
										</div>
									</div>
								</procedure:procedure-layout>
								<!-- ---------------ECHOCARDIOGRAPHY BLOCK END--------------------------- -->
								<!--------------------- ---ECG BLOCK START-------------------------------- -->
								<div class="col-xs-12 grp_box">
									<procedure:procedure-layout
										id="89247b32-082d-4485-85e3-6de70daa9c0a"
										section="TAVI_PROCEDURE">
										<div class="col-xs-12 grp_box11">
											<div class="col-xs-12 grp_box_sub">
												<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
													<procedure:component id="_ecgrythm">
                                       ECG Rhythm
                                       <ahimsa-archive expression = "${expr3}" callback = "loadArchive" sgid="3"></ahimsa-archive>
                                       <!-- <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}',3)"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<select class="in-field"
															ng-model="proceduredata.disecg.${key}"
															ng-init="proceduredata.disecg.${key} = '0'"
															ng-disabled="freeze">
															<option value="0">Select</option>
															<procedure:component-options>
																<option value="${uuid}">${label}</option>
															</procedure:component-options>
														</select>
													</procedure:component>
													<procedure:component id="_ecgrhycomnt">
														<span class="com-icon"
															ng-click="showProcedureCommentBox($event, 'proceduredata.disecg.${key}')"><i
															class="fa fa-commenting" aria-hidden="true"></i></span>
													</procedure:component>
												</div>
												<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
													<procedure:component id="_avblock">
                                       A-V Block
                                       <ahimsa-archive expression = "${expr3}" callback = "loadArchive" sgid="3"></ahimsa-archive>
                                        <!-- <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}',3)"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<select class="in-field"
															ng-model="proceduredata.disecg.${key}"
															ng-init="proceduredata.disecg.${key} = '0'"
															ng-disabled="freeze">
															<option value="0">Select</option>
															<procedure:component-options>
																<option value="${uuid}">${label}</option>
															</procedure:component-options>
														</select>
													</procedure:component>
													<procedure:component id="_avblockcomnt">
														<span class="com-icon"
															ng-click="showProcedureCommentBox($event, 'proceduredata.disecg.${key}')"><i
															class="fa fa-commenting" aria-hidden="true"></i></span>
													</procedure:component>
												</div>
												<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
													<procedure:component id="_bubrhblock">
                                       Bundle branch block
                                       <ahimsa-archive expression = "${expr3}" callback = "loadArchive" sgid="3"></ahimsa-archive>
                                       <!--  <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}',3)"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<select class="in-field"
															ng-model="proceduredata.disecg.${key}"
															ng-init="proceduredata.disecg.${key} = '0'"
															ng-disabled="freeze">
															<option value="0">Select</option>
															<procedure:component-options>
																<option value="${uuid}">${label}</option>
															</procedure:component-options>
														</select>
													</procedure:component>
													<procedure:component id="_bbbcomnt">
														<span class="com-icon"
															ng-click="showProcedureCommentBox($event, 'proceduredata.disecg.${key}')"><i
															class="fa fa-commenting" aria-hidden="true"></i></span>
													</procedure:component>
												</div>
											</div>
										</div>
									</procedure:procedure-layout>
								</div>
								<!-- ----------ECG BLOCK END----------------------------- -->
								<!-- ------------PACEMAKER IMPLANTATION BLOCK START-------------- -->
								<procedure:procedure-layout
									id="fadf6749-4135-460d-9a64-78837de8b6f1"
									section="TAVI_PROCEDURE">
									<div class="col-xs-12 grp_box">
										<div class="col-xs-12 grp_box11">
											<div class="col-xs-12 grp_box_sub">
												<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
													Pacemaker Implantation
													<procedure:component id="_pacemakerimplant">
													<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
														<!-- <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}')"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<select class="in-field"
															ng-model="proceduredata.chain1.${key}"
															ng-init="proceduredata.chain1.${key} = '0'"
															ng-disabled="freeze">
															<option value="0">Select</option>
															<procedure:component-options>
																<option value="${uuid}">${label}</option>
															</procedure:component-options>
														</select>
													</procedure:component>
													<procedure:procedure-layout
														id="35e4f4e6-96d2-4d88-a19d-f547a7f9ee20"
														section="TAVI_PROCEDURE_COMMENTS_GROUP">
														<procedure:component id="_paceimpcomnt">
															<span class="com-icon"
																ng-click="showProcedureCommentBox($event, 'proceduredata.procedureDischargeComment.${key}')"><i
																class="fa fa-commenting" aria-hidden="true"></i></span>
														</procedure:component>
													</procedure:procedure-layout>
												</div>
												<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4"
													ng-show="proceduredata.chain1.pacemakerimplant == 'de20087b-5d96-4034-81ea-b746b0e5e5a2'">
													<procedure:component id="_dopacemaker">
                                       Date of Pacemaker Implantation
                                       <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                      <!--  <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}')"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<div class='input-group date date-picker-bg'
															id='_dateofpacemakerimpl'>
															<input class="in-field" id='_dateofpacemakerimpl'
																name='dateofpacemakerimpl'
																ng-model="proceduredata.chain1.${key}"
																placeholder="yyyy-mm-dd" type='text'
																ng-disabled="freeze"
																ng-required="proceduredata.chain1.pacemakerimplant == 'de20087b-5d96-4034-81ea-b746b0e5e5a2'" />
															<div class="close-date"
																ng-click="proceduredata.chain1.${key} = undefined"
																ng-if="proceduredata.chain1.${key} && !freeze"></div>
															<span 
																class="input-group-addon "> <span
																class="glyphicon" ng-disabled="freeze"> <img
																	src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/clndr.png" />
															</span>
															</span>
														</div>
														<input type="hidden" id="___dateofpacemakerimpl"
															value="chain1.${key}" />

													</procedure:component>
													<procedure:procedure-layout
														id="35e4f4e6-96d2-4d88-a19d-f547a7f9ee20"
														section="TAVI_PROCEDURE_COMMENTS_GROUP">
														<procedure:component id="_paceimpdcomnt">
															<span class="com-icon"
																ng-click="showProcedureCommentBox($event, 'proceduredata.procedureDischargeComment.${key}')"><i
																class="fa fa-commenting" aria-hidden="true"></i></span>
														</procedure:component>
													</procedure:procedure-layout>
													<span class="err-span-v2"
														ng-show="myForm.dateofpacemakerimpl.$error.required">Date
														of pacemaker implantation is mandatory!</span>
												</div>
											</div>
										</div>
									</div>
								</procedure:procedure-layout>
								<!-- ------------PACEMAKER IMPLANTATION BLOCK END-------------- -->
								<!-- ------------STROKE BLOCK START-------------- -->
								<procedure:procedure-layout
									id="fadf6749-4135-460d-9a64-78837de8b6f1"
									section="TAVI_PROCEDURE">
									<div class="col-xs-12 grp_box">
										<div class="col-xs-12 grp_box11">
											<div class="col-xs-12 grp_box_sub">
												<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
													Stroke
													<procedure:component id="_predischargestroke">
													<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
														<!-- <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}')"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<select class="in-field"
															ng-model="proceduredata.chain1.${key}"
															ng-init="proceduredata.chain1.${key} = '0'"
															ng-disabled="freeze">
															<option value="0">Select</option>
															<procedure:component-options>
																<option value="${uuid}">${label}</option>
															</procedure:component-options>
														</select>
													</procedure:component>
													<procedure:procedure-layout
														id="35e4f4e6-96d2-4d88-a19d-f547a7f9ee20"
														section="TAVI_PROCEDURE_COMMENTS_GROUP">
														<procedure:component id="_predisstrokecomnt">
															<span class="com-icon"
																ng-click="showProcedureCommentBox($event, 'proceduredata.procedureDischargeComment.${key}')"><i
																class="fa fa-commenting" aria-hidden="true"></i></span>
														</procedure:component>
													</procedure:procedure-layout>
												</div>
												<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild"
													ng-show="proceduredata.chain1.predischargestroke == '42961d04-add4-44a5-90fd-124d7ab6cec2'">
													CT proven stroke
													<procedure:component id="_ctprovenstroke">
													<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
														<!-- <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}')"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<select class="in-field"
															ng-model="proceduredata.chain1.${key}"
															ng-init="proceduredata.chain1.${key} = '0'"
															ng-disabled="freeze">
															<option value="0">Select</option>
															<procedure:component-options>
																<option value="${uuid}">${label}</option>
															</procedure:component-options>
														</select>
													</procedure:component>
													<procedure:procedure-layout
														id="35e4f4e6-96d2-4d88-a19d-f547a7f9ee20"
														section="TAVI_PROCEDURE_COMMENTS_GROUP">
														<procedure:component id="_ctstrokecomnt">
															<span class="com-icon"
																ng-click="showProcedureCommentBox($event, 'proceduredata.procedureDischargeComment.${key}')"><i
																class="fa fa-commenting" aria-hidden="true"></i></span>
														</procedure:component>
													</procedure:procedure-layout>
												</div>
												<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4"
													ng-show="proceduredata.chain1.ctprovenstroke == '247edd1b-f737-4c0b-9323-735ff77f0ebb'">
													<procedure:component id="_doct">
                                       Date of CT
                                       <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                       <!-- <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}')"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<div class='input-group date date-picker-bg'
															id='_dateofstrokect'>
															<input class="in-field" id='_dateofstrokect'
																name='dateofstrokect'
																ng-model="proceduredata.chain1.${key}"
																placeholder="yyyy-mm-dd" type='text'
																ng-disabled="freeze"
																ng-required="proceduredata.chain1.ctprovenstroke == '247edd1b-f737-4c0b-9323-735ff77f0ebb'" />
															<div class="close-date"
																ng-click="proceduredata.chain1.${key} = undefined"
																ng-if="proceduredata.chain1.${key} && !freeze"></div>
															<span 
																class="input-group-addon"> <span
																class="glyphicon" ng-disabled="freeze"> <img
																	src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/clndr.png" />
															</span>
															</span>
														</div>
														<input type="hidden" id="___dateofstrokect"
															value="chain1.${key}" />

													</procedure:component>
													<procedure:procedure-layout
														id="35e4f4e6-96d2-4d88-a19d-f547a7f9ee20"
														section="TAVI_PROCEDURE_COMMENTS_GROUP">
														<procedure:component id="_ctdatecomnt">
															<span class="com-icon"
																ng-click="showProcedureCommentBox($event, 'proceduredata.procedureDischargeComment.${key}')"><i
																class="fa fa-commenting" aria-hidden="true"></i></span>
														</procedure:component>
													</procedure:procedure-layout>
													<span class="err-span-v2"
														ng-show="myForm.dateofstrokect.$error.required">Date
														of CT is mandatory!</span>
												</div>
											</div>
										</div>
									</div>
								</procedure:procedure-layout>
								<!-- ------------------------------------STROKE BLOCK END----------------------------- -->
								<!-- -----------------------------BLOOD TRANSFUSION BLOCK START------------------- -->
								<div class="col-xs-12 grp_box">
									<div class="col-xs-12 grp_box11">
										<procedure:procedure-layout
											id="fadf6749-4135-460d-9a64-78837de8b6f1"
											section="TAVI_PROCEDURE">
											<div class="col-xs-12 grp_box_sub">
												<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
													<procedure:component id="_distransf">
                                       Blood Transfusion 
                                       <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                       <!-- <span
															class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}')"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<select class="in-field"
															ng-model="proceduredata.chain1.${key}"
															ng-init="proceduredata.chain1.${key} = '0'"
															ng-disabled="freeze">
															<option value="0">Select</option>
															<procedure:component-options>
																<option value="${uuid}">${label}</option>
															</procedure:component-options>
														</select>
													</procedure:component>
													<procedure:procedure-layout
														id="35e4f4e6-96d2-4d88-a19d-f547a7f9ee20"
														section="TAVI_PROCEDURE_COMMENTS_GROUP">
														<procedure:component id="_transfussioncomnt">
															<span class="com-icon"
																ng-click="showProcedureCommentBox($event, 'proceduredata.procedureDischargeComment.${key}')"><i
																class="fa fa-commenting" aria-hidden="true"></i></span>
														</procedure:component>
													</procedure:procedure-layout>
												</div>


												<div class="col-xs-12 p-0" hide="true">
													<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 ">

														<procedure:component id="_distransfrbc">
															
															Transfusion RBC 
															<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
															<div class="col-xs-12 p-0">
																<div class="in-field-ckbox">
																	<procedure:component-options>
																		
																		<input type="radio" name="distransfrbc"
																			ng-model="proceduredata.chain1.${key}"
																			value="${uuid}"
																			ng-disabled="freeze || proceduredata.chain1.distransf != 'c4b1fd7f-3ee6-458d-ad18-7176a7df81cf'">
																		${label}
																		
																	</procedure:component-options>
																</div>
															</div>
														</procedure:component>
														<procedure:procedure-layout
															id="35e4f4e6-96d2-4d88-a19d-f547a7f9ee20"
															section="TAVI_PROCEDURE_COMMENTS_GROUP">
															<procedure:component id="_transfussionrbccomnt">
																<span class="com-icon"
																	ng-click="showProcedureCommentBox($event, 'proceduredata.procedureDischargeComment.${key}')"><i
																	class="fa fa-commenting" aria-hidden="true"></i></span>
															</procedure:component>
														</procedure:procedure-layout>
													</div>
													<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">

														


														<procedure:component id="_distransfffp">
															
															Transfusion FFP 
															<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
															<div class="col-xs-12 p-0">
																<div class="in-field-ckbox">
																	<procedure:component-options>
																	
																		<input type="radio" name="distransfffp"
																			ng-model="proceduredata.chain1.${key}"
																			value="${uuid}"
																			ng-disabled="freeze || proceduredata.chain1.distransf != 'c4b1fd7f-3ee6-458d-ad18-7176a7df81cf'">
																		${label}
																	
																	</procedure:component-options>
																</div>
															</div>
														</procedure:component>
														<procedure:procedure-layout
															id="35e4f4e6-96d2-4d88-a19d-f547a7f9ee20"
															section="TAVI_PROCEDURE_COMMENTS_GROUP">
															<procedure:component id="_transfussionffpcomnt">
																<span class="com-icon"
																	ng-click="showProcedureCommentBox($event, 'proceduredata.procedureDischargeComment.${key}')"><i
																	class="fa fa-commenting" aria-hidden="true"></i></span>
															</procedure:component>
														</procedure:procedure-layout>
													</div>
													<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">

														


														<procedure:component id="_distransfplat">
															
																Transfusion Platelets 
																<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
																
															
															<div class="col-xs-12 p-0">
																<div class="in-field-ckbox">
																  <procedure:component-options>
																	
																		<input type="radio" name="distransfplat"
																			ng-model="proceduredata.chain1.${key}"
																			value="${uuid}"
																			ng-disabled="freeze || proceduredata.chain1.distransf != 'c4b1fd7f-3ee6-458d-ad18-7176a7df81cf'">
																		${label}
																	
																   </procedure:component-options>
															    </div>
															</div>
														</procedure:component>
														<procedure:procedure-layout
															id="35e4f4e6-96d2-4d88-a19d-f547a7f9ee20"
															section="TAVI_PROCEDURE_COMMENTS_GROUP">
															<procedure:component id="_transfussionplatecomnt">
																<span class="com-icon"
																	ng-click="showProcedureCommentBox($event, 'proceduredata.procedureDischargeComment.${key}')"><i
																	class="fa fa-commenting" aria-hidden="true"></i></span>
															</procedure:component>
														</procedure:procedure-layout>
													</div>
												</div>
											</div>
										</procedure:procedure-layout>
									</div>
								</div>
								<!-- ---------------BLOOD TRANSFUSION BLOCK END------------------- -->
								<!-- ---------------VASCULAR COMPLICATION BLOCK START------------------- -->
								<div class="col-xs-12 grp_box">
									<div class="col-xs-12 grp_box11">
										<procedure:procedure-layout
											id="fadf6749-4135-460d-9a64-78837de8b6f1"
											section="TAVI_PROCEDURE">
											<div class="col-xs-12 grp_box_sub">
												<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
													Vascular Complication
													<procedure:component id="_vascularcomp">
													<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
														<!-- <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}')"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<select class="in-field"
															ng-model="proceduredata.chain1.${key}"
															ng-init="proceduredata.chain1.${key} = '0'"
															ng-disabled="freeze">
															<option value="0">Select</option>
															<procedure:component-options>
																<option value="${uuid}">${label}</option>
															</procedure:component-options>
														</select>
													</procedure:component>
													<procedure:procedure-layout
														id="35e4f4e6-96d2-4d88-a19d-f547a7f9ee20"
														section="TAVI_PROCEDURE_COMMENTS_GROUP">
														<procedure:component id="_vasccompcomnt">
															<span class="com-icon"
																ng-click="showProcedureCommentBox($event, 'proceduredata.procedureDischargeComment.${key}')"><i
																class="fa fa-commenting" aria-hidden="true"></i></span>
														</procedure:component>
													</procedure:procedure-layout>
												</div>
												<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4"
													ng-show="proceduredata.chain1.vascularcomp == 'f3ccfe2c-e721-4ad0-9d01-131e328d6c6e' || proceduredata.chain1.vascularcomp == '926b898e-12ac-4b2b-b398-538df907feb4'">
													<procedure:component id="_dovc">
                                       Date of Vascular Complication
                                       <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                       <!-- <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}')"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<div class='input-group date date-picker-bg'
															id='_dateofvascularcomp'>
															<input class="in-field" id='_dateofvascularcomp'
																name='dateofvascularcomp'
																ng-model="proceduredata.chain1.${key}"
																placeholder="yyyy-mm-dd" type='text'
																ng-disabled="freeze"
																ng-required="proceduredata.chain1.vascularcomp == 'f3ccfe2c-e721-4ad0-9d01-131e328d6c6e' || proceduredata.chain1.vascularcomp == '926b898e-12ac-4b2b-b398-538df907feb4'" />
															<div class="close-date"
																ng-click="proceduredata.chain1.${key} = undefined"
																ng-if="proceduredata.chain1.${key} && !freeze"></div>
															<span 
																class="input-group-addon"> <span
																class="glyphicon" ng-disabled="freeze"> <img
																	src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/clndr.png" />
															</span>
															</span>
														</div>
														<input type="hidden" id="___dateofvascularcomp"
															value="chain1.${key}" />

													</procedure:component>
													<procedure:procedure-layout
														id="35e4f4e6-96d2-4d88-a19d-f547a7f9ee20"
														section="TAVI_PROCEDURE_COMMENTS_GROUP">
														<procedure:component id="_vcdatecomnt">
															<span class="com-icon"
																ng-click="showProcedureCommentBox($event, 'proceduredata.procedureDischargeComment.${key}')"><i
																class="fa fa-commenting" aria-hidden="true"></i></span>
														</procedure:component>
													</procedure:procedure-layout>
													<span class="err-span-v2"
														ng-show="myForm.dateofvascularcomp.$error.required">Date
														of vascular complication is mandatory!</span>
												</div>
											</div>
										</procedure:procedure-layout>
									</div>
								</div>
								<div class="col-xs-12 grp_box">
									<div class="col-xs-12 grp_box11">
										<div class="col-xs-12 grp_box_sub">
											<procedure:procedure-layout
												id="fadf6749-4135-460d-9a64-78837de8b6f1"
												section="TAVI_PROCEDURE">
												<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
													<procedure:component id="_lengthicu">
                                       Length of ICU Stay
                                       <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                       <!-- <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}')"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<input class="in-field" type="number" name="lengthicu"
															ng-model="proceduredata.chain1.${key}"
															ng-disabled="freeze" min="0" max="100" step="1">

													</procedure:component>
													<procedure:procedure-layout
														id="35e4f4e6-96d2-4d88-a19d-f547a7f9ee20"
														section="TAVI_PROCEDURE_COMMENTS_GROUP">
														<procedure:component id="_icustaycomnt">
															<span class="com-icon"
																ng-click="showProcedureCommentBox($event, 'proceduredata.procedureDischargeComment.${key}')"><i
																class="fa fa-commenting" aria-hidden="true"></i></span>
														</procedure:component>
													</procedure:procedure-layout>
													<span class="err-span-v2"
														ng-show="myForm.lengthicu.$error.step || myForm.lengthicu.$error.number">Not
														a valid number!</span>

														<span class="err-span-v2"
														ng-show="myForm.lengthicu.$error.min || myForm.lengthicu.$error.max">Range is from 0 to 100</span>
												</div>
											</procedure:procedure-layout>
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
												<procedure:component id="_creat24hrpost">
                                    Discharge creatinine
                                    <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                    <!-- <span class="his-icon"
														ng-click="showHistoryClicked($event,'${expr3}')"><i
														class="fa fa-history" aria-hidden="true"></i></span> -->
														<div class="input-group">
													<input type="number" name="creat24hrpost" class="in-field"
														ng-model="proceduredata.${key}"
														ng-model-options="{ updateOn: 'default' }"
														ng-disabled="freeze" min="0" max="30" step="0.001"
														ng-change="onCreat24hrpostChange()" />
														<span class="input-group-addon addon-text"> 
												          <span>mg/dL</span>
												        </span>
												    </div>
												</procedure:component>
												<procedure:procedure-layout
													id="35e4f4e6-96d2-4d88-a19d-f547a7f9ee20"
													section="TAVI_PROCEDURE_COMMENTS_GROUP">
													<procedure:component id="_discreatininecomnt">
														<span class="com-icon"
															ng-click="showProcedureCommentBox($event, 'proceduredata.procedureDischargeComment.${key}')"><i
															class="fa fa-commenting" aria-hidden="true"></i></span>
													</procedure:component>
												</procedure:procedure-layout>
												<span class="err-span-v2"
													ng-show="myForm.creat24hrpost.$error.step || myForm.creat24hrpost.$error.number">Not
													a valid number!</span>
													<span class="err-span-v2"
													ng-show="myForm.creat24hrpost.$error.min || myForm.creat24hrpost.$error.max">Range is from 0 to 30</span>
												
											</div>
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
												<procedure:component id="_gfr24hrpost">
                                    Discharge eGFR
                                    <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                    <!-- <span class="his-icon"
														ng-click="showHistoryClicked($event,'${expr3}')"><i
														class="fa fa-history" aria-hidden="true"></i></span> -->
														<div class="input-group">
													<input type="number" name="gfr24hrpost" class="in-field"
														ng-model="proceduredata.${key}"
														ng-model-options="{ updateOn: 'default' }"
														ng-disabled="freeze" min="0" step="0.001"
														ng-change="onGfr24hrpostChange()" />
														<span class="input-group-addon addon-text"> 
												          <span>&#181;mol/L</span>
												        </span>
													</div>

												</procedure:component>
												<procedure:procedure-layout
													id="35e4f4e6-96d2-4d88-a19d-f547a7f9ee20"
													section="TAVI_PROCEDURE_COMMENTS_GROUP">
													<procedure:component id="_disegfrcomnt">
														<span class="com-icon"
															ng-click="showProcedureCommentBox($event, 'proceduredata.procedureDischargeComment.${key}')"><i
															class="fa fa-commenting" aria-hidden="true"></i></span>
													</procedure:component>
												</procedure:procedure-layout>
												<span class="err-span-v2"
													ng-show="myForm.gfr24hrpost.$error.step || myForm.gfr24hrpost.$error.number">Not
													a valid number!</span>

													<span class="err-span-v2"
													ng-show="myForm.gfr24hrpost.$error.min || myForm.gfr24hrpost.$error.max">Not in Range </span> 

												
											</div>
										</div>
									</div>
								</div>
								<!-- --------VASCULAR COMPLCATION BLOCK END---------- ----------->
							</div>
						</div>
						<!-- ---------------------------PRE DISCHARGE DATA BLOCK END----------------------- -->
						<!-- -----------------------------------OUTCOME BLOCK START--------------------------- -->
						<div class="tab-pane ng-class: {'active': activeTab == 'outcome'}"
							id="outcome" role="tabpanel" aria-labelledby="outcome-tab"
							ng-show="activeTab == 'outcome'">
							<div class="col-xs-12 block_box1">
								<div class="col-xs-12 grp_box">
									<div class="col-xs-12 grp_box11">
										<div class="col-xs-12 grp_box_sub">
											<div class="col-xs-12  p-10">
												<span class="heading_New_pro">Procedure Cost</span>
											</div>
											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
												Procedure Cost ($) 
												<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
												<!-- <span class="his-icon"
													ng-click="showHistoryClicked($event,'PROCEDURE_COST,2')"><i
													class="fa fa-history" aria-hidden="true"></i></span> --> <input
													type="number" name="procedureCost" class="in-field"
													ng-model="proceduredata.procedureCost" step="0.001"
													ng-disabled="freeze"> <span class="com-icon"
													ng-click="showProcedureCommentBox($event, 'proceduredata.procedureCostComment')"><i
													class="fa fa-commenting" aria-hidden="true"></i></span>
											</div>

											<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
												Total Cost ($) 
												<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
												<!-- <span class="his-icon"
													ng-click="showHistoryClicked($event,'PROCEDURE_TOTAL_COST,2')"><i
													class="fa fa-history" aria-hidden="true"></i></span> --> <input
													type="number" class="in-field" name="totalcost"
													ng-model="proceduredata.totalCost" step="0.001"
													ng-disabled="freeze"> <span class="com-icon"
													ng-click="showProcedureCommentBox($event, 'proceduredata.totalCostComment')"><i
													class="fa fa-commenting" aria-hidden="true"></i></span>
											</div>
											<div class="col-xs-12 grp_box_sub">
												<div class="col-xs-12 p-10">
													<span class="heading_New_pro">Outcome - Discharge</span>
												</div>
												<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 com_fild">
													<procedure:component id="_disdesfromcard">
                                    Discharge
                                    <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                    <!--  <span class="his-icon"
															ng-click="showHistoryClicked($event,'${expr3}')"><i
															class="fa fa-history" aria-hidden="true"></i></span> -->
														<select class="in-field" ng-model="proceduredata.${key}"
															ng-init="proceduredata.${key} = '0'" ng-disabled="freeze">
															<option value="0">Select</option>
															<procedure:component-options>
																<option value="${uuid}">${label}</option>
															</procedure:component-options>
														</select>
													</procedure:component>

													<procedure:procedure-layout
														id="9c2a0564-7710-47e3-be33-bcd707dcfe4b"
														section="TAVI_PROCEDURE_COMMENTS_GROUP">
														<procedure:component id="_dischargecomnt">
															<span class="com-icon"
																ng-click="showProcedureCommentBox($event, 'proceduredata.procedureOutcomeComment.${key}')"><i
																class="fa fa-commenting" aria-hidden="true"></i></span>
														</procedure:component>
													</procedure:procedure-layout>
												</div>
												<procedure:procedure-layout
													id="fadf6749-4135-460d-9a64-78837de8b6f1"
													section="TAVI_PROCEDURE">
													<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
														<procedure:component id="_dodischarge">
                                       Date of discharge
                                       <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                        <!-- <span class="his-icon"
																ng-click="showHistoryClicked($event,'${expr3}')"><i
																class="fa fa-history" aria-hidden="true"></i></span> -->
															<div class='input-group date date-picker-bg'
																id='_dateofdischargefrmcservice'>
																<input class="in-field" id='_dateofdischargefrmcservice'
																	name="dodischarge"
																	ng-model="proceduredata.chain1.${key}"
																	placeholder="yyyy-mm-dd" type='text'
																	ng-disabled="freeze || proceduredata.isfollowupreached"
																	ng-required="proceduredata.chain1.procedureoutcome == '79d01b40-ea49-44b1-a97b-9f7a07a532dd'" />
																<div class="close-date"
																	ng-click="proceduredata.chain1.${key} = undefined"
																	ng-if="proceduredata.chain1.${key} && !freeze"></div>
																<span 
																	class="input-group-addon"> <span
																	class="glyphicon" ng-disabled="freeze"> <img
																		src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/clndr.png" />
																</span>
																</span>
															</div>
															<input type="hidden" id="___dateofdischargefrmcservice"
																value="chain1.${key}" />

														</procedure:component>
														<procedure:procedure-layout
															id="9c2a0564-7710-47e3-be33-bcd707dcfe4b"
															section="TAVI_PROCEDURE_COMMENTS_GROUP">
															<procedure:component id="_datediscomnt">
																<span class="com-icon"
																	ng-click="showProcedureCommentBox($event, 'proceduredata.procedureOutcomeComment.${key}')"><i
																	class="fa fa-commenting" aria-hidden="true"></i></span>
															</procedure:component>
														</procedure:procedure-layout>
														<span class="err-span-v2"
															ng-show="myForm.dodischarge.$error.required">Date
															of discharge is mandatory!</span>
													</div>
												</procedure:procedure-layout>
											</div>
											<procedure:procedure-layout
												id="fadf6749-4135-460d-9a64-78837de8b6f1"
												section="TAVI_PROCEDURE">
												<div
													class="col-xs-12 col-sm-12 col-md-12 col-lg-12 grp_box_sub mt-20"
													id="deathInfo">
													<div class="col-xs-12"
														style="background: #FFFFFF; padding-top: 10px; padding-bottom: 8px;">
														<div class="col-xs-12 box_hdr">
															<span class="heading_New_pro">Outcome - Death </span> <span
																style="color: #f50702;" ng-if="!isPreferred">
																&nbsp; &nbsp;&nbsp;&nbsp;This is not preferred referral.</span>

															<span style="color: #ff9900; font-size: 14px;"
																ng-if="isPreferred && isOtherPendingProcedure">
																&nbsp; &nbsp;There are some ongoing procedure. &nbsp;
																&nbsp; <a href ng-click="showPendingProcedures()">click
																	to view</a>
															</span>

														</div>
														<procedure:procedure-layout
															id="e4e23c4d-1b10-4fff-8cb3-d9bf515e520d"
															section="TAVI_PROCEDURE">
															<div
																class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pad5 mi-hgt-err">
																<procedure:component id="_dateofdeath">
                                             Date of death
                                             <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                              <!-- <span class="his-icon"
																		ng-click="showHistoryClicked($event,'${expr3}')"><i
																		class="fa fa-history" aria-hidden="true"></i></span> -->
																	<div class='input-group date date-picker-bg'
																		id='_dateofdeath'>
																		<input class="in-field" id='____dateofdeath'
																			name="dateofdeath" ng-model="proceduredata.${key}"
																			placeholder="yyyy-mm-dd" type='text'
																			ng-required="proceduredata.chain1.procedureoutcome == 'b57fe77d-0013-4c39-af97-951535858ca2'"
																			ng-disabled="freeze || proceduredata.isfollowupreached || isDeathUpdated || !isPreferred || isOtherPendingProcedure" />
																		<div class="close-date"
																			ng-click="proceduredata.${key} = undefined"
																			ng-if="proceduredata.${key} && !proceduredata.isfollowupreached && !isDeathUpdated"></div>
																		<span 
																			class="input-group-addon"> <span
																			class="glyphicon"
																			ng-disabled="freeze || proceduredata.isfollowupreached || isDeathUpdated ||
																			!isPreferred ">
																				<img
																				src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/clndr.png" />
																		</span>
																		</span>
																	</div>
																	<input type="hidden" id="___dateofdeath" value="${key}" />

																</procedure:component>
																<procedure:procedure-layout
																	id="9c2a0564-7710-47e3-be33-bcd707dcfe4b"
																	section="TAVI_PROCEDURE_COMMENTS_GROUP">
																	<procedure:component id="_datedeathcomnt">
																		<span class="com-icon"
																			ng-click="showProcedureCommentBox($event, 'proceduredata.procedureOutcomeComment.${key}')"><i
																			class="fa fa-commenting" aria-hidden="true"></i></span>
																	</procedure:component>
																</procedure:procedure-layout>
																<span class="err-span-v2"
																	ng-show="myForm.dateofdeath.$error.required">Date
																	of death is mandatory!</span>
															</div>
														</procedure:procedure-layout>
														<div
															class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pad5 mi-hgt-err">
															<procedure:component id="_autopsy">
                                          ${label}
                                          <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                           <!-- <span class="his-icon"
																	ng-click="showHistoryClicked($event,'${expr3}')"><i
																	class="fa fa-history" aria-hidden="true"></i></span> -->
																<select class="in-field"
																	ng-model="proceduredata.chain1.${key}"
																	ng-init="proceduredata.chain1.${key} = '0'"
																	ng-disabled="freeze || !proceduredata.dateofdeath || proceduredata.isfollowupreached || isDeathUpdated">
																	<option value="0">Select</option>
																	<procedure:component-options>
																		<option value="${uuid}">${label}</option>
																	</procedure:component-options>
																</select>
															</procedure:component>
															<procedure:procedure-layout
																id="9c2a0564-7710-47e3-be33-bcd707dcfe4b"
																section="TAVI_PROCEDURE_COMMENTS_GROUP">
																<procedure:component id="_autopsycomnt">
																	<span class="com-icon"
																		ng-click="showProcedureCommentBox($event, 'proceduredata.procedureOutcomeComment.${key}')"><i
																		class="fa fa-commenting" aria-hidden="true"></i></span>
																</procedure:component>
															</procedure:procedure-layout>
														</div>
														<div
															class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pad5 mi-hgt-err">
															<procedure:component id="_deathrelto">
                                          ${label}
                                          <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                           <!-- <span class="his-icon"
																	ng-click="showHistoryClicked($event,'${expr3}')"><i
																	class="fa fa-history" aria-hidden="true"></i></span> -->
																<select class="in-field"
																	ng-model="proceduredata.chain1.${key}"
																	ng-init="proceduredata.chain1.${key} = '0'"
																	ng-disabled="freeze || !proceduredata.dateofdeath || proceduredata.isfollowupreached || isDeathUpdated">
																	<option value="0">Select</option>
																	<procedure:component-options>
																		<option value="${uuid}">${label}</option>
																	</procedure:component-options>
																</select>
															</procedure:component>
															<procedure:procedure-layout
																id="9c2a0564-7710-47e3-be33-bcd707dcfe4b"
																section="TAVI_PROCEDURE_COMMENTS_GROUP">
																<procedure:component id="_deathreltocomnt">
																	<span class="com-icon"
																		ng-click="showProcedureCommentBox($event, 'proceduredata.procedureOutcomeComment.${key}')"><i
																		class="fa fa-commenting" aria-hidden="true"></i></span>
																</procedure:component>
															</procedure:procedure-layout>
														</div>
														<div
															class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pad5 mi-hgt-err">
															<procedure:component id="_causeofd">
                                          ${label}
                                          <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                          <!--  <span class="his-icon"
																	ng-click="showHistoryClicked($event,'${expr3}')"><i
																	class="fa fa-history" aria-hidden="true"></i></span> -->
																<select class="in-field"
																	ng-model="proceduredata.chain1.${key}"
																	ng-init="proceduredata.chain1.${key} = '0'"
																	ng-disabled="freeze || !proceduredata.dateofdeath || proceduredata.isfollowupreached || isDeathUpdated">
																	<option value="0">Select</option>
																	<procedure:component-options>
																		<option value="${uuid}">${label}</option>
																	</procedure:component-options>
																</select>
															</procedure:component>
															<procedure:procedure-layout
																id="9c2a0564-7710-47e3-be33-bcd707dcfe4b"
																section="TAVI_PROCEDURE_COMMENTS_GROUP">
																<procedure:component id="_causedeathcomnt">
																	<span class="com-icon"
																		ng-click="showProcedureCommentBox($event, 'proceduredata.procedureOutcomeComment.${key}')"><i
																		class="fa fa-commenting" aria-hidden="true"></i></span>
																</procedure:component>
															</procedure:procedure-layout>
														</div>
														<div
															class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pad5 mi-hgt-err">
															<procedure:component id="_causdeathdet">
                                          ${label}
                                          <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                                          <!--  <span class="his-icon"
																	ng-click="showHistoryClicked($event,'${expr3}')"><i
																	class="fa fa-history" aria-hidden="true"></i></span> -->
																<select class="in-field"
																	ng-model="proceduredata.chain1.${key}"
																	ng-init="proceduredata.chain1.${key} = '0'"
																	ng-disabled="freeze || !proceduredata.dateofdeath || proceduredata.isfollowupreached || isDeathUpdated">
																	<option value="0">Select</option>
																	<procedure:component-options>
																		<option value="${uuid}">${label}</option>
																	</procedure:component-options>
																</select>
															</procedure:component>
															<procedure:procedure-layout
																id="9c2a0564-7710-47e3-be33-bcd707dcfe4b"
																section="TAVI_PROCEDURE_COMMENTS_GROUP">
																<procedure:component id="_deathditcomnt">
																	<span class="com-icon"
																		ng-click="showProcedureCommentBox($event, 'proceduredata.procedureOutcomeComment.${key}')"><i
																		class="fa fa-commenting" aria-hidden="true"></i></span>
																</procedure:component>
															</procedure:procedure-layout>
														</div>
														<div
															class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pad5 mi-hgt-err">
															<procedure:component id="_daystod">
                                          ${label} <input type="number"
																	class="in-field" ng-model="proceduredata.chain1.${key}"
																	ng-disabled="true">
															</procedure:component>
														</div>
														<div
															class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pad5 mi-hgt-err">
															<procedure:component id="_deathcomm">
                                          ${label} <textarea
																	class="txtarea-new-des-demo"
																	ng-model="proceduredata.chain1.${key}"
																	ng-disabled="freeze || !proceduredata.dateofdeath || proceduredata.isfollowupreached || isDeathUpdated"></textarea>
															</procedure:component>
														</div>
													</div>
												</div>
											</procedure:procedure-layout>
										</div>
									</div>
								</div>
							</div>
							<!-- ----------OUTCOME BLOCK END---------------------- -->
						</div>
					</div>
				</div>
				<div class="save-cancel-fixed">
					<div class="ldr-box" ng-show="progressWidth != 100"></div>
					<div>
						<c:set var="link" scope="request"
							value="${!freeze ? 'submitProcedureData(0)' : 'submitProcedureData(0)'}" />
						<button class="btn-sav-new-des1" ng-click="${link}"
							ng-show="!proceduredata.dateofdeath"
							ng-disabled="freeze || disableButton || proceduredata.pstatus == 'SUBMITTED' || myForm.$invalid">
							Save<span class="sa1-ca-icon-bl1"> <img
								src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/save-cancel-orl.png" />
							</span> <span class="sa-ca-icon-wt1"> <img
								src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/save-cancel-wt.png" />
							</span>
						</button>
						<button class="btn-sav-new-des1" ng-click="${link}"
							ng-show="proceduredata.dateofdeath"
							ng-disabled="freeze || disableButton || proceduredata.pstatus == 'SUBMITTED' || myForm.$invalid">
							Save & Submit<span class="sa1-ca-icon-bl1"> <img
								src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/save-cancel-orl.png" />
							</span> <span class="sa-ca-icon-wt1"> <img
								src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/save-cancel-wt.png" />
							</span>
						</button>
						<button class="btn-sav-new-des1" ng-click="submitCancel()"
							ng-disabled="disableButton">
							Cancel <span class="sa1-ca-icon-bl1"> <img
								src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/save-cancel-orl.png" />
							</span> <span class="sa-ca-icon-wt1"> <img
								src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/save-cancel-wt.png" />
							</span>
						</button>
						<procedure:has-permission module="Procedure_Module"
							permission="submit">
							<c:if test="${show_submit == true}">
								<button class="btn-sav-new-des1"
									ng-click="showProcedureSummary(true)"
									ng-if="!freeze
								&& (proceduredata.pstatus == 'READY_TO_SUBMIT' || proceduredata.pstatus == 'REOPEN')
								&& !proceduredata.dateofdeath && proceduredata.chain1.dodischarge"
									ng-disabled="disableButton">

									Submit <span class="sa1-ca-icon-bl1"> <img
										src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/save-cancel-orl.png" />
									</span> <span class="sa-ca-icon-wt1"> <img
										src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/save-cancel-wt.png" />
									</span>
								</button>
							</c:if>
						</procedure:has-permission>
						<procedure:has-permission module="Procedure_Module"
							permission="reopen">
							<button class="btn-sav-new-des1" ng-click="reopenProcedure()"
								ng-if="proceduredata.pstatus == 'SUBMITTED'">
								Reopen <span class="sa1-ca-icon-bl1"> <img
									src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/save-cancel-orl.png" />
								</span> <span class="sa-ca-icon-wt1"> <img
									src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/save-cancel-wt.png" />
								</span>
							</button>
						</procedure:has-permission>
						<button class="btn-sav-new-des1" ng-click="showProcedureSummary(false)" ng-if = "proceduredata.procuuid != '0' "
							>View Summary
						</button>
					</div>
				</div>

				<!-- -------------------------------------------------------------------------------------------------------------------------- -->
				<!-- -------------------------------------------Start pending-procedures popup content----------------------------------------- -->
				<!-- -------------------------------------------------------------------------------------------------------------------------- -->
				<div style="z-index: 1000;" class="modal" id="pendingProcedures">

					<div class="modal-dialog">
						<div style="height: auto !important; width: 70%;"
							class="modal-content">
							<div class="modal-header">
								<i style="font-size: 15px;" class="btn_close close fa fa-close"
									ng-click="closePendingProceduresPopUp()"></i>

								<h4 class="modal-title">Pending procedures</h4>
							</div>
							<div style="height: auto;" class="pad-0 modal-body">

								<table class="his-table">
									<tbody>
										<tr>
											<th>Procedure Date</th>
											<th></th>
										</tr>
										<tr ng-repeat="p in pendingProcedures ">
											<td>{{p.procedureDate}}</td>
											<td><button type="button"
													ng-click="loadPreviousProcedure(p.visitUuid)"
													class="pndng-proc-btn">Go to Procedure</button></td>
										</tr>

									</tbody>
								</table>

							</div>
						</div>
					</div>
				</div>
				<!-- ---------------------------------------------------------------------------------------------------------------------------- -->
				<!-- ------------------------------------------------------------End of pending-procedures popup content------------------------- -->
				<!-- ---------------------------------------------------------------------------------------------------------------------------- -->


				<!-------------------------22-01-2018 start(Procedure Data PopUp------------------------------------------>
				<div class="popup-pro" style="display: none;">
					<div class="popup-pro-cont">
						<iframe id="_procedure_summary"
							style="border: none; border-radius: 5px; width: 100%; height: 100%;"
							src="${pageContext.request.contextPath}/ahimsa/procedure/ext/v2/blank.htm">
						</iframe>
					</div>
				</div>
				<!-------------------------22-01-2018 end(Procedure Data PopUp------------------------------------------>
			</div>
	</procedure:procedure-layout>
</procedure:module-privilege>
