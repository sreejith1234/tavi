<%@page language="java" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="procedure"
	uri="/WEB-INF/view/module/procedure-tracking-core-module/resources/procedure_tracking.tld"%>
<procedure:procedure-layout id="ffe4ab8d-13b6-49bc-a016-ae45b5a90384"
	section="TAVI_SYMPTOMS_V1">
	<div class="col-xs-12" ng-controller="TaviPrePHVSymptomsController"
		ng-init="init('ffe4ab8d-13b6-49bc-a016-ae45b5a90384', '${today}', '${month_year}', '${year}')"
		style="padding: 20px 10px;">
		<div class="col-xs-12" style="padding: 20px 0;" ng-form="symForm">
			<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 pad5 mi-hgt-err">
				<procedure:component id="_nhya">
				${label}<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
					<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
					<select class="in-field"
						ng-model="$parent.sectionData[sectionIndex].${key}"
						ng-init="$parent.sectionData[sectionIndex].${key} = '0'"
						ng-disabled="$parent.patientdata.freeze">
						<option value="0">Select</option>
						<procedure:component-options>
							<option value="${uuid}">${label}</option>
						</procedure:component-options>
					</select>
				</procedure:component>
				<procedure:procedure-layout
					id="720bc6c7-3ceb-4f9e-874d-e049cd042306"
					section="TAVI_PROCEDURE_COMMENTS_GROUP">
					<procedure:component id="_nyhacomnt">
						<span class="com-icon"
							ng-click="showSymptomsCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
							class="fa fa-commenting" aria-hidden="true"></i></span>
					</procedure:component>
				</procedure:procedure-layout>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 pad5 mi-hgt-err">
				<procedure:component id="_ccsc">
				${label}<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
					<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
					<select class="in-field"
						ng-model="$parent.sectionData[sectionIndex].${key}"
						ng-init="$parent.sectionData[sectionIndex].${key} = '0'"
						ng-disabled="$parent.patientdata.freeze">
						<option value="0">Select</option>
						<procedure:component-options>
							<option value="${uuid}">${label}</option>
						</procedure:component-options>
					</select>
				</procedure:component>
				<procedure:procedure-layout
					id="720bc6c7-3ceb-4f9e-874d-e049cd042306"
					section="TAVI_PROCEDURE_COMMENTS_GROUP">
					<procedure:component id="_ccsccomnt">
						<span class="com-icon"
							ng-click="showSymptomsCommentBox($event, '$parent.$parent.commentsData[sectionIndex].${key}')"><i
							class="fa fa-commenting" aria-hidden="true"></i></span>
					</procedure:component>
				</procedure:procedure-layout>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 pad5 mi-hgt-err">
				<procedure:component id="_syncope">
				${label} <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
					<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
					<select class="in-field"
						ng-model="$parent.sectionData[sectionIndex].${key}"
						ng-init="$parent.sectionData[sectionIndex].${key} = '0'"
						ng-disabled="$parent.patientdata.freeze">
						<option value="0">Select</option>
						<procedure:component-options>
							<option value="${uuid}">${label}</option>
						</procedure:component-options>
					</select>
				</procedure:component>
				<procedure:procedure-layout
					id="720bc6c7-3ceb-4f9e-874d-e049cd042306"
					section="TAVI_PROCEDURE_COMMENTS_GROUP">
					<procedure:component id="_syncopecomnt">
						<span class="com-icon"
							ng-click="showSymptomsCommentBox($event, '$parent.$parent.commentsData[sectionIndex].${key}')"><i
							class="fa fa-commenting" aria-hidden="true"></i></span>
					</procedure:component>
				</procedure:procedure-layout>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 pad5 mi-hgt-err">
				<procedure:component id="_coronaryarterydisease">
				Coronary artery disease present
				<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
					<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
					<select class="in-field"
						ng-model="$parent.sectionData[sectionIndex].${key}"
						ng-init="$parent.sectionData[sectionIndex].${key} = '0'"
						ng-disabled="$parent.patientdata.freeze">
						<option value="0">Select</option>
						<procedure:component-options>
							<option value="${uuid}">${label}</option>
						</procedure:component-options>
					</select>
				</procedure:component>
				<procedure:procedure-layout
					id="720bc6c7-3ceb-4f9e-874d-e049cd042306"
					section="TAVI_PROCEDURE_COMMENTS_GROUP">
					<procedure:component id="_hosadmsncomnt">
						<span class="com-icon"
							ng-click="showSymptomsCommentBox($event, '$parent.$parent.commentsData[sectionIndex].${key}')"><i
							class="fa fa-commenting" aria-hidden="true"></i></span>
					</procedure:component>
				</procedure:procedure-layout>
			</div>


			<div class="col-xs-12"
				style="padding: 10px 30px 10px 30px; margin-top: 20px; background: #f4f6f7; border: 1px solid #CCC">
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_prevpci">
                    ${label}
                    <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                    	<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
                        <select class="in-field"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-init="$parent.sectionData[sectionIndex].${key} = '0'"
							ng-disabled="$parent.patientdata.freeze">
							<option value="0">Select</option>
							<procedure:component-options>
								<option value="${uuid}">${label}</option>
							</procedure:component-options>
						</select>
					</procedure:component>
					<procedure:procedure-layout
						id="720bc6c7-3ceb-4f9e-874d-e049cd042306"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_prevpcicomnt">
							<span class="com-icon"
								ng-click="showSymptomsCommentBox($event, '$parent.$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_prevpci30">
                    ${label}
                    <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                   		<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
                        <select class="in-field"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-init="$parent.sectionData[sectionIndex].${key} = '0'"
							ng-disabled="$parent.patientdata.freeze">
							<option value="0">Select</option>
							<procedure:component-options>
								<option value="${uuid}">${label}</option>
							</procedure:component-options>
						</select>
					</procedure:component>
					<procedure:procedure-layout
						id="720bc6c7-3ceb-4f9e-874d-e049cd042306"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_pcithrtycomnt">
							<span class="com-icon"
								ng-click="showSymptomsCommentBox($event, '$parent.$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
				</div>
			</div>

			<!--------------------Pre Symptoms Table Start------------------------------>
			<div class="col-xs-12"
				style="padding: 10px 30px 30px 30px; margin-top: 20px; background: #f4f6f7; border: 1px solid #CCC">


				<div class="col-xs-12" style="padding: 0;">
					<h4>PREVIOUS CARDIAC SURGERY</h4>
					<div class="pre_syn_add" ng-hide="$parent.patientdata.freeze">ADD</div>
				</div>
				<div class="col-xs-12" style="padding: 0;">
					<!-------Table Head Start--------->
					<div class="col-xs-12 pre_syn_tab_hed">
						<div class="col-xs-2" style="padding: 0">Date</div>
						<div class="col-xs-3" style="padding: 0">Pre-CABG</div>
						<div class="col-xs-3" style="padding: 0">Valves</div>
						<div class="col-xs-2" style="padding: 0">Others</div>
						<div class="col-xs-2" style="padding: 0"></div>
					</div>
					<!-------Table Head Start--------->
					<!-------Table body Start--------->
					<div class="col-xs-12 pre_syn_tab_row"
						ng-repeat="p in previousCardiacSurgeries">
						<div class="col-xs-2" style="padding: 0">
							<p class="ng-class: {'strikethrough': p.deleted == true}">{{p.surgerydone}}</p>
						</div>
						<div class="col-xs-3" style="padding: 0">
							<p class="ng-class: {'strikethrough': p.deleted == true}">{{p.prcabgname}}</p>
						</div>
						<div class="col-xs-3" style="padding: 0">
							<p class="ng-class: {'strikethrough': p.deleted == true}">{{p.valvesname}}</p>
						</div>
						<div class="col-xs-2" style="padding: 0">
							<p class="ng-class: {'strikethrough': p.deleted == true}">{{p.othersurgery}}</p>
						</div>
						<div class="col-xs-2 ed-del_cl">
							<a href ng-click="editPreviousCardiacSurgery(p)"
								ng-if="!p.deleted"><span
								class="glyphicon glyphicon-pencil ed-del"></span></a> <a href
								ng-click="deletePreviousCardiacSurgery(p.uuid)"
								ng-if="!p.deleted"><span
								class="glyphicon glyphicon-trash ed-del"></span></a>
						</div>
					</div>
					<!-------Table body End--------->
				</div>
			</div>
			<!--------------------Pre Symptoms Table End------------------------------>

			<div class="col-xs-12"
				style="padding: 10px 30px 10px 30px; background: #f4f6f7; border: 1px solid #CCC; margin-top: 20px;">
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_prevbav">
                    ${label}
                    <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                    <!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
                        <select class="in-field"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-init="$parent.sectionData[sectionIndex].${key} = '0'"
							ng-disabled="$parent.patientdata.freeze">
							<option value="0">Select</option>
							<procedure:component-options>
								<option value="${uuid}">${label}</option>
							</procedure:component-options>
						</select>
					</procedure:component>
					<procedure:procedure-layout
						id="720bc6c7-3ceb-4f9e-874d-e049cd042306"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_prevbavcomnt">
							<span class="com-icon"
								ng-click="showSymptomsCommentBox($event, '$parent.$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
				</div>
				<div class="col-xs-12" style="padding: 0">
					<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
						<procedure:component id="_bav1">
                    ${label}
                    <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                    <!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
                    <div class='input-group date date-picker-bg'
								id='_wmtwbyflqr'>
								<input class="in-field" id='_wmtwbyflqr' name='wmtwbyflqr'
									ng-model="$parent.sectionData[sectionIndex].${key}"
									placeholder="mm-yyyy" type='text'
									ng-disabled="$parent.patientdata.freeze || $parent.sectionData[sectionIndex].prev_bav != '0aef0af6-0c6f-41e3-a8e4-87175b7b27fd'"
									style="background: transparent;" />
								<div class="close-date"
									ng-click="$parent.sectionData[sectionIndex].${key} = undefined"
									ng-if="$parent.sectionData[sectionIndex].${key} 
                        		&& !$parent.patientdata.freeze && $parent.sectionData[sectionIndex].prev_bav == '0aef0af6-0c6f-41e3-a8e4-87175b7b27fd'"></div>
								<span style="border: 1px solid #CCCCCC;"
									class="input-group-addon"> <span class="glyphicon"
									ng-disabled="$parent.patientdata.freeze"> <img
										src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/clndr.png" />
								</span>
								</span>
							</div>
							<input type="hidden" id="___wmtwbyflqr" value="${key}" />
						</procedure:component>
						<procedure:procedure-layout
							id="720bc6c7-3ceb-4f9e-874d-e049cd042306"
							section="TAVI_PROCEDURE_COMMENTS_GROUP">
							<procedure:component id="_bav1comnt">
								<span class="com-icon"
									ng-click="showSymptomsCommentBox($event, '$parent.$parent.commentsData[sectionIndex].${key}')"><i
									class="fa fa-commenting" aria-hidden="true"></i></span>
							</procedure:component>
						</procedure:procedure-layout>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
						<procedure:component id="_bav2">
                    ${label}
                    <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                    <!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
                    <div class='input-group date date-picker-bg'
								id='_thljbqcusm'>
								<input class="in-field" id='_thljbqcusm' name='thljbqcusm'
									ng-model="$parent.sectionData[sectionIndex].${key}"
									placeholder="mm-yyyy" type='text'
									ng-disabled="$parent.patientdata.freeze || $parent.sectionData[sectionIndex].prev_bav != '0aef0af6-0c6f-41e3-a8e4-87175b7b27fd'"
									style="background: transparent;" />
								<div class="close-date"
									ng-click="$parent.sectionData[sectionIndex].${key} = undefined"
									ng-if="$parent.sectionData[sectionIndex].${key} 
                        		&& !$parent.patientdata.freeze && $parent.sectionData[sectionIndex].prev_bav == '0aef0af6-0c6f-41e3-a8e4-87175b7b27fd'"></div>
								<span style="border: 1px solid #CCCCCC;"
									class="input-group-addon"> <span class="glyphicon"
									ng-disabled="$parent.patientdata.freeze"> <img
										src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/clndr.png" />
								</span>
								</span>
							</div>
							<input type="hidden" id="___thljbqcusm" value="${key}" />
						</procedure:component>
						<procedure:procedure-layout
							id="720bc6c7-3ceb-4f9e-874d-e049cd042306"
							section="TAVI_PROCEDURE_COMMENTS_GROUP">
							<procedure:component id="_bav2comnt">
								<span class="com-icon"
									ng-click="showSymptomsCommentBox($event, '$parent.$parent.commentsData[sectionIndex].${key}')"><i
									class="fa fa-commenting" aria-hidden="true"></i></span>
							</procedure:component>
						</procedure:procedure-layout>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
						<procedure:component id="_bav3">
                    ${label}
                    <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                    <!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
                    <div class='input-group date date-picker-bg'
								id='_ejkxwqlgva'>
								<input class="in-field" id='_ejkxwqlgva' name='ejkxwqlgva'
									ng-model="$parent.sectionData[sectionIndex].${key}"
									placeholder="mm-yyyy" type='text'
									ng-disabled="$parent.patientdata.freeze || $parent.sectionData[sectionIndex].prev_bav != '0aef0af6-0c6f-41e3-a8e4-87175b7b27fd'"
									style="background: transparent;" />
								<div class="close-date"
									ng-click="$parent.sectionData[sectionIndex].${key} = undefined"
									ng-if="$parent.sectionData[sectionIndex].${key} 
                        		&& !$parent.patientdata.freeze && $parent.sectionData[sectionIndex].prev_bav == '0aef0af6-0c6f-41e3-a8e4-87175b7b27fd'"></div>
								<span style="border: 1px solid #CCCCCC;"
									class="input-group-addon"> <span class="glyphicon"
									ng-disabled="$parent.patientdata.freeze"> <img
										src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/clndr.png" />
								</span>
								</span>
							</div>
							<input type="hidden" id="___ejkxwqlgva" value="${key}" />
						</procedure:component>
						<procedure:procedure-layout
							id="720bc6c7-3ceb-4f9e-874d-e049cd042306"
							section="TAVI_PROCEDURE_COMMENTS_GROUP">
							<procedure:component id="_bav3comnt">
								<span class="com-icon"
									ng-click="showSymptomsCommentBox($event, '$parent.$parent.commentsData[sectionIndex].${key}')"><i
									class="fa fa-commenting" aria-hidden="true"></i></span>
							</procedure:component>
						</procedure:procedure-layout>
					</div>
				</div>
			</div>
			<div class="col-xs-12" style="padding: 0; margin-top: 10px;">

				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_cancer">
				${label}
				<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
				<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
					<select class="in-field"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-init="$parent.sectionData[sectionIndex].${key} = '0'"
							ng-disabled="$parent.patientdata.freeze">
							<option value="0">Select</option>
							<procedure:component-options>
								<option value="${uuid}">${label}</option>
							</procedure:component-options>
						</select>
					</procedure:component>
					<procedure:procedure-layout
						id="720bc6c7-3ceb-4f9e-874d-e049cd042306"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_cancercomnt">
							<span class="com-icon"
								ng-click="showSymptomsCommentBox($event, '$parent.$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_liverdisease">
				${label}
				<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
					<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
					<select class="in-field"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-init="$parent.sectionData[sectionIndex].${key} = '0'"
							ng-disabled="$parent.patientdata.freeze">
							<option value="0">Select</option>
							<procedure:component-options>
								<option value="${uuid}">${label}</option>
							</procedure:component-options>
						</select>
					</procedure:component>
					<procedure:procedure-layout
						id="720bc6c7-3ceb-4f9e-874d-e049cd042306"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_liverdiscomnt">
							<span class="com-icon"
								ng-click="showSymptomsCommentBox($event, '$parent.$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_chestradiotherapy">
				${label}
				<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
					<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
					<select class="in-field"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-init="$parent.sectionData[sectionIndex].${key} = '0'"
							ng-disabled="$parent.patientdata.freeze">
							<option value="0">Select</option>
							<procedure:component-options>
								<option value="${uuid}">${label}</option>
							</procedure:component-options>
						</select>
					</procedure:component>
					<procedure:procedure-layout
						id="720bc6c7-3ceb-4f9e-874d-e049cd042306"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_chestradiocomnt">
							<span class="com-icon"
								ng-click="showSymptomsCommentBox($event, '$parent.$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_ppacemaker">
				${label}
				<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
					<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
					<select class="in-field"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-init="$parent.sectionData[sectionIndex].${key} = '0'"
							ng-disabled="$parent.patientdata.freeze">
							<option value="0">Select</option>
							<procedure:component-options>
								<option value="${uuid}">${label}</option>
							</procedure:component-options>
						</select>
					</procedure:component>
					<procedure:procedure-layout
						id="720bc6c7-3ceb-4f9e-874d-e049cd042306"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_permpacemkrcomnt">
							<span class="com-icon"
								ng-click="showSymptomsCommentBox($event, '$parent.$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_aicd">
				${label}
				<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
					<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
					<select class="in-field"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-init="$parent.sectionData[sectionIndex].${key} = '0'"
							ng-disabled="$parent.patientdata.freeze">
							<option value="0">Select</option>
							<procedure:component-options>
								<option value="${uuid}">${label}</option>
							</procedure:component-options>
						</select>
					</procedure:component>
					<procedure:procedure-layout
						id="720bc6c7-3ceb-4f9e-874d-e049cd042306"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_aicdcomnt">
							<span class="com-icon"
								ng-click="showSymptomsCommentBox($event, '$parent.$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_actherapy">
				${label}
				<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
					<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
					<select class="in-field"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-init="$parent.sectionData[sectionIndex].${key} = '0'"
							ng-disabled="$parent.patientdata.freeze">
							<option value="0">Select</option>
							<procedure:component-options>
								<option value="${uuid}">${label}</option>
							</procedure:component-options>
						</select>
					</procedure:component>
					<procedure:procedure-layout
						id="720bc6c7-3ceb-4f9e-874d-e049cd042306"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_anticoagcomnt">
							<span class="com-icon"
								ng-click="showSymptomsCommentBox($event, '$parent.$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_smoking">
				${label}
				<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
				<!-- 	<span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
					<select class="in-field"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-init="$parent.sectionData[sectionIndex].${key} = '0'"
							ng-disabled="$parent.patientdata.freeze">
							<option value="0">Select</option>
							<procedure:component-options>
								<option value="${uuid}">${label}</option>
							</procedure:component-options>
						</select>
					</procedure:component>
					<procedure:procedure-layout
						id="720bc6c7-3ceb-4f9e-874d-e049cd042306"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_smokingcomnt">
							<span class="com-icon"
								ng-click="showSymptomsCommentBox($event, '$parent.$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_lvstatus">
				${label}
				<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
					<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
					<select class="in-field"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-init="$parent.sectionData[sectionIndex].${key} = '0'"
							ng-disabled="$parent.patientdata.freeze">
							<option value="0">Select</option>
							<procedure:component-options>
								<option value="${uuid}">${label}</option>
							</procedure:component-options>
						</select>
					</procedure:component>
					<procedure:procedure-layout
						id="720bc6c7-3ceb-4f9e-874d-e049cd042306"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_livstatcomnt">
							<span class="com-icon"
								ng-click="showSymptomsCommentBox($event, '$parent.$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
				</div>
				<%-- <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_fscore">
				${label}
					<select class="in-field"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-init="$parent.sectionData[sectionIndex].${key} = '0'"
							ng-disabled="$parent.patientdata.freeze">
							<option value="0">Select</option>
							<procedure:component-options>
								<option value="${uuid}">${label}</option>
							</procedure:component-options>
						</select>
					</procedure:component>
				</div> --%>
				
				<%--Enabled based on the requirement dated 4th June 2020 --%>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_surgicalrisk">
				${label}
				<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
					<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
					<select class="in-field"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-init="$parent.sectionData[sectionIndex].${key} = '0'"
							ng-disabled="$parent.patientdata.freeze">
							<option value="0">Select</option>
							<procedure:component-options>
								<option value="${uuid}">${label}</option>
							</procedure:component-options>
						</select>
					</procedure:component>
					<procedure:procedure-layout
						id="720bc6c7-3ceb-4f9e-874d-e049cd042306"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_surgicalriskcomnt">
							<span class="com-icon"
								ng-click="showSymptomsCommentBox($event, '$parent.$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
				</div>
				<!-- creatinine -->
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_rfcreatin">
					${label}
					<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
					<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
						<input type="number" id="_rfcreatin"
							name="rfcreatin" class="in-field"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-disabled="$parent.patientdata.freeze">
						
					</procedure:component>
					<procedure:procedure-layout
						id="720bc6c7-3ceb-4f9e-874d-e049cd042306"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_rfunccreatininecomnt">
							<span class="com-icon"
								ng-click="showSymptomsCommentBox($event, '$parent.$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
					<span class="err-span-v2" ng-show="symForm.rfcreatin.$error.number">Not a valid number.</span>
						
				</div>
				
				<!-- gfr -->
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_rfcgfr">
					${label}
					<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
					<!--  <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
						<input type="number" id="_rfcgfr"
							name="rfcgfr" class="in-field"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-disabled="$parent.patientdata.freeze">
						
					</procedure:component>
					<procedure:procedure-layout
						id="720bc6c7-3ceb-4f9e-874d-e049cd042306"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_rfuncgfrcomnt">
							<span class="com-icon"
								ng-click="showSymptomsCommentBox($event, '$parent.$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
					<span class="err-span-v2" ng-show="symForm.rfcgfr.$error.number">Not a valid number.</span>
				</div>
				<%-- <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_surgicalrisk">
				${label}
					<select class="in-field"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-init="$parent.sectionData[sectionIndex].${key} = '0'"
							ng-disabled="$parent.patientdata.freeze">
							<option value="0">Select</option>
							<procedure:component-options>
								<option value="${uuid}">${label}</option>
							</procedure:component-options>
						</select>
					</procedure:component>
				</div> --%>
				<div class="col-xs-12 col-sm-6 col-md-12 col-lg-12 pad5">
					<procedure:component id="_crothers">
				${label}
					<textarea id="_crothers" class="txtarea-new-des-demo"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-disabled="$parent.patientdata.freeze"></textarea>
					</procedure:component>
				</div>
			</div>
		</div>

		<div class="col-xs-12 pre-box-v2" style="padding-top: 10px"
			ui-view="previous_surgery"></div>
		<!-- end of previous cabg/valves/other surgery  -->
	</div>
</procedure:procedure-layout>