<%@page language="java" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="procedure"
	uri="/WEB-INF/view/module/procedure-tracking-core-module/resources/procedure_tracking.tld"%>
<procedure:procedure-layout id="f0ac69e1-e235-4651-ba4c-a7643136ef27"
	section="TAVI_PREPHV_ECHO_CARDIOGRAPHY">
	<div class="col-xs-12"
		ng-controller="TaviPrePHVEchoCardiographyController"
		ng-init="init('f0ac69e1-e235-4651-ba4c-a7643136ef27', '${today}')"
		style="padding: 20px 10px;">
		<div class="col-xs-12" style="padding: 20px 0;" ng-form="echoForm">
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
				<procedure:component id="_dtex">
	       	Date of examination
	       			<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
					<!-- <span class="his-icon"
						ng-click="showHistoryClicked($event,'${expr3}')"><i
						class="fa fa-history" aria-hidden="true"></i></span> -->
					<div class='input-group date date-picker-bg'
						id='_dateofexamination'>
						<input class="in-field" id='_dateofexamination'
							ng-model="$parent.sectionData[sectionIndex].${key}"
							placeholder="yyyy-mm-dd" type='text'
							ng-disabled="$parent.patientdata.freeze" />
						<div class="close-date"
							ng-click="$parent.sectionData[sectionIndex].${key} = undefined"
							ng-if="$parent.sectionData[sectionIndex].${key}"></div>
						<span style="border: 1px solid #CCCCCC;" class="input-group-addon">
							<span class="glyphicon" ng-disabled="$parent.patientdata.freeze">
								<img
								src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/clndr.png" />
						</span>
						</span>
					</div>
					<input type="hidden" id="___dateofexamination" value="${key}" />
				</procedure:component>
				<procedure:procedure-layout
					id="3232ba76-9151-49c8-bab4-b9007ce85f3d"
					section="TAVI_PROCEDURE_COMMENTS_GROUP">
					<procedure:component id="_doexamcomnt">
						<span class="com-icon"
							ng-click="showEchoCardioCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
							class="fa fa-commenting" aria-hidden="true"></i></span>
					</procedure:component>
				</procedure:procedure-layout>
			</div>
			<%-- <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
	        <procedure:component id="_anwidth">
	        <div>${label}</div>
	        <div class="in-field-ckbox">
                <procedure:component-options>
	                <span class="marg-left10">
	                	<input type="radio" ng-model="$parent.sectionData[sectionIndex].${key}" value="${uuid}" ng-disabled="$parent.patientdata.freeze">
	                	${label}
	                 </span>
                </procedure:component-options>
	           
	            <span class="marg-left10">
	            	<procedure:component-option id="_anwidth2">
	                <input type="radio" id="_toe" ng-model="$parent.sectionData[sectionIndex].${key}" ng-true-value="'${uuid}'" ng-false-value="" ng-disabled="$parent.patientdata.freeze">
	                ${label}
	                </procedure:component-option>
	            </span>
	        </div>
	        </procedure:component>
	    </div> --%>
			<div class="col-xs-12" style="padding: 5px 0px 5px 0px;">
				<div class="col-xs-12 col-12" style="padding: 0; width: 130px;">AORTIC
					VALVE</div>
				<div class="col-xs-12 col-md-12" style="padding: 0;">

						<div class="row" style="padding: 10px;">
						<div class="col-xs-12 col-md-4" style="padding: 10px;">
						<procedure:component id="_meang">
							Mean Gradient
							<%-- <procedure:procedure-layout
								id="3232ba76-9151-49c8-bab4-b9007ce85f3d"
								section="TAVI_PROCEDURE_COMMENTS_GROUP">
								<procedure:component id="_mngrcomnt">
									<span class="com-icon"
										ng-click="showEchoCardioCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
										class="fa fa-commenting" aria-hidden="true"></i></span>
								</procedure:component>
							</procedure:procedure-layout> --%>
							<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
							<!-- <span class="his-icon"
								ng-click="showHistoryClicked($event,'${expr3}')"><i
								class="fa fa-history" aria-hidden="true"></i></span> -->
						
							<input class="in-field" type="number" name="meang" step="0.001"
								min="0" max="200"
								ng-model="$parent.sectionData[sectionIndex].${key}"
								ng-disabled="$parent.patientdata.freeze"> 
						</procedure:component>
						<procedure:procedure-layout
						id="3232ba76-9151-49c8-bab4-b9007ce85f3d"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_mngrcomnt">
							<span class="com-icon"
								ng-click="showEchoCardioCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
					<span
								class="err-span-v2"
								ng-show="echoForm.meang.$error.step || echoForm.meang.$error.number">Not
								a valid number!</span>
								
								<span
								class="err-span-v2"
								ng-show="echoForm.meang.$error.min || echoForm.meang.$error.max">Range is between 0 and 200</span>
						</div>
					
					


					
						<div class="col-xs-12 col-md-4" style="padding: 10px;">
						<procedure:component id="_ptpgrad">
							Peak-to-Peak Gradient 
							<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
							<!-- <span class="his-icon"
								ng-click="showHistoryClicked($event,'${expr3}')"><i
								class="fa fa-history" aria-hidden="true"></i></span> -->
						

							<input class="in-field" type="number" name="ptpgrad" step="0.001"
								min="0" max="200"
								ng-model="$parent.sectionData[sectionIndex].${key}"
								ng-disabled="$parent.patientdata.freeze"> 
							</procedure:component>
					<procedure:procedure-layout
						id="3232ba76-9151-49c8-bab4-b9007ce85f3d"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_ptopgcomnt">
							<span class="com-icon"
								ng-click="showEchoCardioCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
					<span
								class="err-span-v2"
								ng-show="echoForm.ptpgrad.$error.step || echoForm.ptpgrad.$error.number">Not
								a valid number!</span>
								
								<span
								class="err-span-v2"
								ng-show="echoForm.ptpgrad.$error.min || echoForm.ptpgrad.$error.max"> Range is between 0 and 200</span>
						</div>
					

					
						<div class="col-xs-12 col-md-4" style="padding: 10px;">
						<procedure:component id="_aovalve">
							AO Valve Area (cm<sup>2</sup>) 
							<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
							<!-- <span class="his-icon"
								ng-click="showHistoryClicked($event,'${expr3}')"><i
								class="fa fa-history" aria-hidden="true"></i></span> -->
						
							<input class="in-field" type="number" name="aovalve" step="0.001"
								min="0" max="200"
								ng-model="$parent.sectionData[sectionIndex].${key}"
								ng-disabled="$parent.patientdata.freeze"> 
							</procedure:component>
					<procedure:procedure-layout
						id="3232ba76-9151-49c8-bab4-b9007ce85f3d"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_aovareacomnt">
							<span class="com-icon"
								ng-click="showEchoCardioCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
					<span
								class="err-span-v2"
								ng-show=" echoForm.aovalve.$error.step || echoForm.aovalve.$error.number">Not
								a valid number!</span>
								
								<span
								class="err-span-v2"
								ng-show="echoForm.aovalve.$error.min || echoForm.aovalve.$error.max">Range is between 0 and 200</span>
						</div>
					
						</div>
					
						
					

				</div>

			</div>
			<div class="col-xs-12" style="padding: 5px 0px 5px 0px;">
				<div class="col-md-12 col-xs-12" style="padding: 0; width: 130px;">LEFT
					VENTRICULAR</div>
				<div class="col-md-12 col-xs-12" style="padding: 0;">

					
						<div class="col-xs-12 col-md-4" style="padding: 10px;">
						<procedure:component id="_lvefper">
							LVEF (%)
							<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
							<!--  <span class="his-icon"
								ng-click="showHistoryClicked($event,'${expr3}')"><i
								class="fa fa-history" aria-hidden="true"></i></span> -->
						

							<input class="in-field" type="number" name="lvefper" min="0"
								max="100" ng-model="$parent.sectionData[sectionIndex].${key}"
								ng-disabled="$parent.patientdata.freeze"> 
							</procedure:component>
					<procedure:procedure-layout
						id="3232ba76-9151-49c8-bab4-b9007ce85f3d"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_lvefcomnt">
							<span class="com-icon"
								ng-click="showEchoCardioCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
					<span
								class="err-span-v2"
								ng-show="echoForm.lvefper.$error.step || echoForm.lvefper.$error.number">Not
								a valid number!</span>
								
								<span
								class="err-span-v2"
								ng-show="echoForm.lvefper.$error.min || echoForm.lvefper.$error.max ">Range is between 0 and 100</span>
								
						</div>
					


					
						<div class="col-xs-12 col-md-4" style="padding: 10px;">
						<procedure:component id="_sigmoid">
							Sigmoid Septum 
							<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
							<!-- <span class="his-icon"
								ng-click="showHistoryClicked($event,'${expr3}')"><i
								class="fa fa-history" aria-hidden="true"></i></span> -->
						
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
						id="3232ba76-9151-49c8-bab4-b9007ce85f3d"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_sigseptumcomnt">
							<span class="com-icon"
								ng-click="showEchoCardioCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
						</div>
					

					
						<div class="col-xs-12 col-md-4" style="padding: 10px;">
						<procedure:component id="_lvvalue">
							LV Wall Thickness (cm) 
							<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
							<!-- <span class="his-icon"
								ng-click="showHistoryClicked($event,'${expr3}')"><i
								class="fa fa-history" aria-hidden="true"></i></span> -->
						
							<select class="in-field"
								ng-model="$parent.sectionData[sectionIndex].${key}"
								ng-init="$parent.sectionData[sectionIndex].${key} = '0'"
								ng-disabled="$parent.patientdata.freeze">
								<option value="0">Select</option>
								<procedure:component-options>
									<option value="${uuid}">${label}</option>
								</procedure:component-options>
							</select>
							<%-- <input class="in-field" type="number" name="aovalve" ng-model="$parent.sectionData[sectionIndex].${key}" ng-disabled="$parent.patientdata.freeze"> --%>
							<!-- <span class="err-span-v2" ng-show="echoForm.aovalve.$error.min || echoForm.aovalve.$error.step || echoForm.aovalve.$error.number">Not a valid number!</span> -->
						</procedure:component>
					<procedure:procedure-layout
						id="3232ba76-9151-49c8-bab4-b9007ce85f3d"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_lvwallcomnt">
							<span class="com-icon"
								ng-click="showEchoCardioCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
						</div>
					



				</div>

			</div>

			<div class="col-xs-12 col-md-6" style="padding: 10px 0px 15px 10px;">
						<procedure:component id="_aigradeec">
							AR Grade
							<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
							 <!-- <span class="his-icon"
								ng-click="showHistoryClicked($event,'${expr3}')"><i
								class="fa fa-history" aria-hidden="true"></i></span> -->
						
							<div class="in-field-ckbox">
								<procedure:component-options>
									<span class="marg-left10"> <input type="radio"
										name="aigradeec"
										ng-model="$parent.sectionData[sectionIndex].${key}"
										value="${uuid}" ng-disabled="$parent.patientdata.freeze">
										${label} (${hiPointsInteger})
									</span>
								</procedure:component-options>
								<!-- <span class="marg-left10">
	                <input type="checkbox">
	                = 2
	            </span>
	            <span class="marg-left10">
	                <input type="checkbox">
	                > 2+
	            </span> -->
							</div>
							</procedure:component>

					<procedure:procedure-layout
						id="3232ba76-9151-49c8-bab4-b9007ce85f3d"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_argradecomnt">
							<span class="com-icon"
								ng-click="showEchoCardioCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
						</div>

			<div class="col-xs-12" style="padding: 5px 0px 5px 0px;">
				<div class="col-xs-12 col-md-12" style="padding: 0; width: 130px;">MITRAL
					VALVE</div>
				<div class="col-xs-12 col-md-12" style="padding: 0;">

					
						<div class="col-xs-12 col-md-6" style="padding: 15px 0px 15px 10px;">
						<procedure:component id="_mrgrade">
							MR grade 
							<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
							<!-- <span class="his-icon"
								ng-click="showHistoryClicked($event,'${expr3}')"><i
								class="fa fa-history" aria-hidden="true"></i></span> -->
						

							<div class="in-field-ckbox">
								<procedure:component-options>
									<span class="marg-left10"> <input type="radio"
										name="mrgrade"
										ng-model="$parent.sectionData[sectionIndex].${key}"
										value="${uuid}" ng-disabled="$parent.patientdata.freeze">
										${label} (${hiPointsInteger})
									</span>
								</procedure:component-options>
								<!-- <span class="marg-left10">
	                <input type="checkbox">
	                = 2
	            </span>
	            <span class="marg-left10">
	                <input type="checkbox">
	                > 2+
	            </span> -->
							</div>
							</procedure:component>
					<procedure:procedure-layout
						id="3232ba76-9151-49c8-bab4-b9007ce85f3d"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_mrgradecomnt">
							<span class="com-icon"
								ng-click="showEchoCardioCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
						</div>
					<div class="col-xs-12 col-sm-6 col-md-12 col-lg-12 pad5 mi-hgt-err"
					style="">
					<procedure:component id="_echocardiographycomment"> ${label}
        <textarea class="txtarea-new-des-demo"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-disabled="$parent.patientdata.freeze"></textarea>
					</procedure:component>
				</div>
				</div>


			</div>
		</div>
</procedure:procedure-layout>