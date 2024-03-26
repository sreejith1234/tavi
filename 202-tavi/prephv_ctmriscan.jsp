<%@page language="java" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="procedure"
	uri="/WEB-INF/view/module/procedure-tracking-core-module/resources/procedure_tracking.tld"%>
<procedure:procedure-layout id="6e1f83e3-d25a-45f8-8ee7-370350b0d9c0"
	section="TAVI_PREPHV_CT_MRI_SCAN_V1">
	<div class="col-xs-12" ng-controller="TaviPrePHVCtMriScanController"
		ng-init="init('6e1f83e3-d25a-45f8-8ee7-370350b0d9c0', '${today}')"
		style="padding: 20px 20px 80px;">
		<div class="col-xs-12" style="padding: 20px 0;" ng-form="ctmriForm">
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
				<procedure:component id="_ctormri">
					<div>${label}
						<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
						<!-- <span class="his-icon"
							ng-click="showHistoryClicked($event,'${expr3}')"><i
							class="fa fa-history" aria-hidden="true"></i></span> -->
					</div>
					<div class="in-field-ckbox">
						<procedure:component-options>
							<span class="marg-left10"> <input type="radio"
								name="ctormri"
								ng-model="$parent.sectionData[sectionIndex].${key}"
								value="${uuid}" ng-disabled="$parent.patientdata.freeze"> ${label}
							</span>
						</procedure:component-options>
						
					</div>
				</procedure:component>
				<procedure:procedure-layout
					id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
					section="TAVI_PROCEDURE_COMMENTS_GROUP">
					<procedure:component id="_ctmricomment">
						<span class="com-icon"
							ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
							class="fa fa-commenting" aria-hidden="true"></i></span>
					</procedure:component>
				</procedure:procedure-layout>
				<span class="err-span-v2"
							ng-show="ctmriForm.ctormri.$error.required">Please choose
							CT or MRI?</span>
			</div>
			<div
				class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err ngClass: {'disabled': !$parent.sectionData[sectionIndex].ctormri}">
				<procedure:component id="_doexam">
				Date of examination
				<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
				 <!-- <span class="his-icon"
						ng-click="showHistoryClicked($event,'${expr3}')"><i
						class="fa fa-history" aria-hidden="true"></i></span> -->
					<div class='input-group date date-picker-bg' id='_pmfiujgslc'>
						<input class="in-field" id='_pmfiujgslc' name='pmfiujgslc'
							ng-model="$parent.sectionData[sectionIndex].${key}"
							placeholder="yyyy-mm-dd" type='text'
							ng-disabled="$parent.patientdata.freeze" />
						<div class="close-date"
							ng-click="$parent.sectionData[sectionIndex].${key} = undefined"
							ng-if="$parent.sectionData[sectionIndex].${key} && !$parent.patientdata.freeze"></div>
						<span style="border: 1px solid #CCCCCC;" class="input-group-addon">
							<span class="glyphicon" ng-disabled="$parent.patientdata.freeze">
								<img
								src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/clndr.png" />
						</span>
						</span>
					</div>
					<input type="hidden" id="___pmfiujgslc" value="${key}" />
				</procedure:component>
				<procedure:procedure-layout
					id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
					section="TAVI_PROCEDURE_COMMENTS_GROUP">
					<procedure:component id="_ctmridatecomment">
						<span class="com-icon"
							ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
							class="fa fa-commenting" aria-hidden="true"></i></span>
					</procedure:component>
				</procedure:procedure-layout>
			</div>
			<div
				class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err ngClass: {'disabled': !$parent.sectionData[sectionIndex].ctormri}">
				<procedure:component id="_nataorval">
				${label}
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
					id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
					section="TAVI_PROCEDURE_COMMENTS_GROUP">
					<procedure:component id="_nativeavcomment">
						<span class="com-icon"
							ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
							class="fa fa-commenting" aria-hidden="true"></i></span>
					</procedure:component>
				</procedure:procedure-layout>
			</div>
			<div
				class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err ngClass: {'disabled': !$parent.sectionData[sectionIndex].ctormri}">
				<procedure:component id="_bioprostheticaovalue">
				${label}
				<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
					<!--  <span class="his-icon"
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
					id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
					section="TAVI_PROCEDURE_COMMENTS_GROUP">
					<procedure:component id="_bioprostheticaocomment">
						<span class="com-icon"
							ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
							class="fa fa-commenting" aria-hidden="true"></i></span>
					</procedure:component>
				</procedure:procedure-layout>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-12 col-lg-12 pad5 mi-hgt-err"
					style="">
					<procedure:component id="_bioprosthetiscomment"> ${label}
        <textarea class="txtarea-new-des-demo"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-disabled="$parent.patientdata.freeze"></textarea>
					</procedure:component>
				</div>
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err ngClass: {'disabled': !$parent.sectionData[sectionIndex].ctormri}">
								<procedure:component id="_septalbuldge">
									Septal Buldge
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
								id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
								section="TAVI_PROCEDURE_COMMENTS_GROUP">
								<procedure:component id="_septalbuldgecomment">
									<span class="com-icon"
										ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
										class="fa fa-commenting" aria-hidden="true"></i></span>
								</procedure:component>
							</procedure:procedure-layout>
							<span class="err-span-v2"
										ng-show=" ctmriForm.septalbuldge.$error.step  || ctmriForm.septalbuldge.$error.number">Not
										a valid number!</span>
										
										<span class="err-span-v2"
										ng-show="ctmriForm.septalbuldge.$error.min  || ctmriForm.septalbuldge.$error.max ">Range is between 0 and 1000</span> 
										 
								</div>

					<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_cuspaffected">
					Cusp affected
					<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
					 <!--  <span class="his-icon"
							ng-click="showHistoryClicked($event,'${expr3}')"><i
							class="fa fa-history" aria-hidden="true"></i></span> -->
						<input type="text" id="_cuspaffected" name="cuspaffected" class="in-field"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-model-options="{ updateOn: 'default' }"
							ng-disabled="$parent.patientdata.freeze"/>
						
					</procedure:component>
					<procedure:procedure-layout
						id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_cuspaffectedcomment">
							<span class="com-icon"
								ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
				</div>			
			<div
				class="col-xs-12 ngClass: {'disabled': !$parent.sectionData[sectionIndex].ctormri}"
				style="padding: 10px 0 0 0; background: #f4f6f7; border: 1px solid #CCC">
				<div class="col-xs-12">
					<b>Aortic annulus</b>
				</div>

				<div class="col-xs-12">
					<div class="col-xs-12" style="padding: 0px;">
						<div class="col-xs-12 col-md-4 pad5 " style="min-height: 80px;">
							
								<div class="col-xs-12" style="padding: 0">
								<procedure:component id="_areamin">
									Area (mm)<sup>2</sup> 
									<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
									<!-- <span class="his-icon"
										ng-click="showHistoryClicked($event,'${expr3}')"><i
										class="fa fa-history" aria-hidden="true"></i></span> -->
								
									<input type="number" id="_areamin" name="areamin"
										class="in-field"
										ng-model="$parent.sectionData[sectionIndex].${key}"
										ng-model-options="{ updateOn: 'default' }"
										ng-required="$parent.sectionData[sectionIndex].ctormri"
										ng-disabled="$parent.patientdata.freeze" min="0" step="0.001"
										max="1000" ng-change="changeinarea($parent.sectionData[sectionIndex].${key})"/> 
										</procedure:component>
							<procedure:procedure-layout
								id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
								section="TAVI_PROCEDURE_COMMENTS_GROUP">
								<procedure:component id="_annulusareacomment">
									<span class="com-icon"
										ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
										class="fa fa-commenting" aria-hidden="true"></i></span>
								</procedure:component>
							</procedure:procedure-layout>
							<span class="err-span-v2"
										ng-show=" ctmriForm.areamin.$error.step  || ctmriForm.areamin.$error.number">Not
										a valid number!</span>
										
										<span class="err-span-v2"
										ng-show="ctmriForm.areamin.$error.min  || ctmriForm.areamin.$error.max ">Range is between 0 and 1000</span> 
										 
										<span class="err-span-v2"
										ng-show="ctmriForm.areamin.$error.required">Please
										enter the area.</span>
								</div>
							
						</div>
						<div class="col-xs-12 col-md-4 pad5" style="min-height: 80px;">
							
								<div class="col-xs-12" style="padding: 0">
								<procedure:component id="_permin">
									Perimeter (mm) 
									<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
									<!-- <span class="his-icon"
										ng-click="showHistoryClicked($event,'${expr3}')"><i
										class="fa fa-history" aria-hidden="true"></i></span> -->
								

									<input type="number" id="_permin" name="permin"
										class="in-field"
										ng-model="$parent.sectionData[sectionIndex].${key}"
										ng-model-options="{ updateOn: 'default' }"
										ng-required="$parent.sectionData[sectionIndex].ctormri"
										ng-disabled="$parent.patientdata.freeze" min="0" step="0.001"
										max="1000" ng-change="changeinperimeter($parent.sectionData[sectionIndex].${key})"/> 
										</procedure:component>
							<procedure:procedure-layout
								id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
								section="TAVI_PROCEDURE_COMMENTS_GROUP">
								<procedure:component id="_annuluspmcomment">
									<span class="com-icon"
										ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
										class="fa fa-commenting" aria-hidden="true"></i></span>
								</procedure:component>
							</procedure:procedure-layout>
							<span class="err-span-v2"
										ng-show="ctmriForm.permin.$error.step || ctmriForm.permin.$error.number">Not
										a valid number!</span>
										
										<span class="err-span-v2"
										ng-show="ctmriForm.permin.$error.min || ctmriForm.permin.$error.max">Range is between 0 and 1000</span>
										
										 <span class="err-span-v2"
										ng-show="ctmriForm.permin.$error.required">Please enter
										the perimeter.</span>
								</div>
							
						</div>
					</div>
					<div class="col-xs-12" style="padding: 5px;">
						<div class="col-xs-12 col-md-4 pad5 " style="min-height: 80px;">
							
								<div class="col-xs-12" style="padding: 0">
								<procedure:component id="_areamax">
									Area based annulus diameter 
									<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
									<!-- <span class="his-icon"
										ng-click="showHistoryClicked($event,'${expr3}')"><i
										class="fa fa-history" aria-hidden="true"></i></span> -->
								

									<input type="number" id="_areamax" name="areamax"
										class="in-field"
										ng-model="$parent.sectionData[sectionIndex].${key}"
										ng-model-options="{ updateOn: 'default' }"
										ng-disabled="$parent.patientdata.freeze|| true" min="0"
										step="0.001" /> 
									</procedure:component>
									<span class="err-span-v2"
										ng-show="ctmriForm.areamax.$error.min || ctmriForm.areamax.$error.step || ctmriForm.areamax.$error.number">Not
										a valid number!</span>
								</div>
							
						</div>
						<div class="col-xs-12 col-md-4 pad5" style="min-height: 80px;">
							
								<div class="col-xs-12" style="padding: 0">
								<procedure:component id="_permax">
									Perimeter based annulus diameter 
									<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
									<!-- <span class="his-icon"
										ng-click="showHistoryClicked($event,'${expr3}')"><i
										class="fa fa-history" aria-hidden="true"></i></span> -->
								

									<input type="number" id="_permax" name="permax"
										class="in-field"
										ng-model="$parent.sectionData[sectionIndex].${key}"
										ng-model-options="{ updateOn: 'default' }"
										ng-disabled="$parent.patientdata.freeze || true" min="0"
										step="0.001" /> 
								</procedure:component>
								<span class="err-span-v2"
										ng-show="ctmriForm.permax.$error.min || ctmriForm.permax.$error.step || ctmriForm.permax.$error.number">Not
										a valid number!</span>
								</div>
							
						</div>
					</div>
					<div class="col-xs-12" style="padding: 5px;">
						<div class="col-xs-12 col-md-4 pad5" style="min-height: 80px;">
							
								<div class="col-xs-12" style="padding: 0">
								<procedure:component id="_diamin">
									Min Diameter (mm) 
									<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
									<!-- <span class="his-icon"
										ng-click="showHistoryClicked($event,'${expr3}')"><i
										class="fa fa-history" aria-hidden="true"></i></span> -->
								

									<input type="number" id="_diamin" name="diamin"
										class="in-field"
										ng-model="$parent.sectionData[sectionIndex].${key}"
										ng-model-options="{ updateOn: 'default' }"
										ng-required="$parent.sectionData[sectionIndex].ctormri"
										ng-disabled="$parent.patientdata.freeze" min="0" step="0.001"
										max="1000" /> 
									</procedure:component>

							<procedure:procedure-layout
								id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
								section="TAVI_PROCEDURE_COMMENTS_GROUP">
								<procedure:component id="_mindiacomment">
									<span class="com-icon"
										ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
										class="fa fa-commenting" aria-hidden="true"></i></span>
								</procedure:component>
							</procedure:procedure-layout>
							<span class="err-span-v2"
										ng-show=" ctmriForm.diamin.$error.step || ctmriForm.diamin.$error.number">Not
										a valid number!</span>
										
										<span class="err-span-v2"
										ng-show="ctmriForm.diamin.$error.min || ctmriForm.diamin.$error.max ">Range is from 0 and 1000</span>
										
										 <span class="err-span-v2"
										ng-show="ctmriForm.diamin.$error.required">Please enter
										minimum diameter.</span>
								</div>
							

						</div>
						<div class="col-xs-12 col-md-4 pad5" style="min-height: 80px;">

							
								<div class="col-xs-12" style="padding: 0">
								<procedure:component id="_diamax">
									Max Diameter (mm) 
									<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
									<!-- <span class="his-icon"
										ng-click="showHistoryClicked($event,'${expr3}')"><i
										class="fa fa-history" aria-hidden="true"></i></span> -->
								
									<input type="number" id="_ctmridiamax" name="diamax"
										class="in-field"
										ng-model="$parent.sectionData[sectionIndex].${key}"
										ng-model-options="{ updateOn: 'default' }"
										ng-required="$parent.sectionData[sectionIndex].ctormri"
										ng-disabled="$parent.patientdata.freeze" min="0" 
										 step="0.001"/>
									
									</procedure:component>
							<procedure:procedure-layout
								id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
								section="TAVI_PROCEDURE_COMMENTS_GROUP">
								<procedure:component id="_maxdiacomment">
									<span class="com-icon"
										ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
										class="fa fa-commenting" aria-hidden="true"></i></span>
								</procedure:component>
							</procedure:procedure-layout>
							<span class="err-span-v2"
										ng-show="ctmriForm.diamax.$error.step || ctmriForm.diamax.$error.number">Not
										a valid number!</span> <span class="err-span-v2"
										ng-show="ctmriForm.diamax.$error.required">Please enter
										maximum diameter.</span> <span class="err-span-v2"
										ng-show="ctmriForm.diamax.$error.min">Value should be
										greater than {{$parent.sectionData[sectionIndex].diamin}}</span>
								</div>
							
						</div>
					</div>
				</div>
			</div>
			<div
				class="col-xs-12 ngClass: {'disabled': !$parent.sectionData[sectionIndex].ctormri}"
				style="padding: 10px 0 0 0;">
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_lvotmindia">
                    ${label}
                    <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
						<input type="text" id="_lvotmindia" name="lvotmindia" class="in-field"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-model-options="{ updateOn: 'default' }"
							ng-disabled="$parent.patientdata.freeze" min="0" step="0.001" />
						
					</procedure:component>
					<procedure:procedure-layout
						id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_lvotdiacomment">
							<span class="com-icon"
								ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
					<span class="err-span-v2"
							ng-show="ctmriForm.lvotmindia.$error.min || ctmriForm.lvotmindia.$error.step || ctmriForm.lvotmindia.$error.number">Not
							a valid number!</span>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_lvotmaxdia">
                    ${label}
                    <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
						<input type="text" id="_lvotmaxdia" name="lvotmaxdia" class="in-field"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-model-options="{ updateOn: 'default' }"
							ng-disabled="$parent.patientdata.freeze" min="0" step="0.001" />
						
					</procedure:component>
					<!-- <procedure:procedure-layout
						id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_lvotdiacomment">
							<span class="com-icon"
								ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout> -->
					<span class="err-span-v2"
							ng-show="ctmriForm.lvotmaxdia.$error.min || ctmriForm.lvotmaxdia.$error.step || ctmriForm.lvotmaxdia.$error.number">Not
							a valid number!</span>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_lvotcalcium">
                    ${label}
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
						id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_lvotcalcomment">
							<span class="com-icon"
								ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_lvotcmnt">
                    ${label}
                    <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                    <!-- <span class="his-icon"
							ng-click="showHistoryClicked($event,'${expr3}')"><i
							class="fa fa-history" aria-hidden="true"></i></span> -->
						<input type="text" id="_lvotcmnt" name="lvotcmnt" class="in-field"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-model-options="{ updateOn: 'default' }"
							ng-disabled="$parent.patientdata.freeze"/>
						
					</procedure:component>
					<procedure:procedure-layout
						id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_lvotcmntcomment">
							<span class="com-icon"
								ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_anncalcium">
                    ${label}
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
						id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_annuluscalcomment">
							<span class="com-icon"
								ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_leafletca">
                    ${label}
                    <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                    <!-- <span class="his-icon"
							ng-click="showHistoryClicked($event,'${expr3}')"><i
							class="fa fa-history" aria-hidden="true"></i></span> -->
						<input type="text" id="_leafletca" name="leafletca" class="in-field"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-model-options="{ updateOn: 'default' }"
							ng-disabled="$parent.patientdata.freeze"/>
						
					</procedure:component>
					<procedure:procedure-layout
						id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_leafletcacomment">
							<span class="com-icon"
								ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
				</div>
			</div>


			<div
				class="col-xs-12 ngClass: {'disabled': !$parent.sectionData[sectionIndex].ctormri}"
				style="padding: 20px 30px 10px 30px; background: #f4f6f7; border: 1px solid #CCC">
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_sovdia1">
                    ${label}
                    <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                    <!-- <span class="his-icon"
							ng-click="showHistoryClicked($event,'${expr3}')"><i
							class="fa fa-history" aria-hidden="true"></i></span> -->
						<input type="number" id="_sovdia1" name="sovdia1" class="in-field"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-model-options="{ updateOn: 'default' }"
							ng-change="calculateMeanSinusOfValsalva()"
							ng-disabled="$parent.patientdata.freeze || $parent.sectionData[sectionIndex].nataorval == '0'"
							min="0" step="0.001"
							ng-required="$parent.sectionData[sectionIndex].nataorval != '0'" />
						
					</procedure:component>
					<procedure:procedure-layout
						id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_sod1comment">
							<span class="com-icon"
								ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
					<span class="err-span-v2"
							ng-show="ctmriForm.sovdia1.$error.min || ctmriForm.sovdia1.$error.step || ctmriForm.sovdia1.$error.number">Not
							a valid number!</span>
						<span class="err-span-v2"
							ng-show="ctmriForm.sovdia1.$error.required">Please enter
							the diameter value</span>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_sovdia2">
                    Sinus of Valsalva Diameters
                    <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                    <!-- <span class="his-icon"
							ng-click="showHistoryClicked($event,'${expr3}')"><i
							class="fa fa-history" aria-hidden="true"></i></span> -->
						<input type="number" id="_sovdia2" name="sovdia2" class="in-field"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-model-options="{ updateOn: 'default' }"
							ng-change="calculateMeanSinusOfValsalva()"
							ng-disabled="$parent.patientdata.freeze || $parent.sectionData[sectionIndex].nataorval == '0'"
							min="0" step="0.001"
							ng-required="$parent.sectionData[sectionIndex].nataorval != '0'" />
						
					</procedure:component>
					<procedure:procedure-layout
						id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_sod2comment">
							<span class="com-icon"
								ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
					<span class="err-span-v2"
							ng-show="ctmriForm.sovdia2.$error.min || ctmriForm.sovdia2.$error.step || ctmriForm.sovdia2.$error.number">Not
							a valid number!</span>
						<span class="err-span-v2"
							ng-show="ctmriForm.sovdia2.$error.required">Please enter
							the diameter value</span>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_sovdia3">
                   Sinus of Valsalva Diameters
                   <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                    <!-- <span class="his-icon"
							ng-click="showHistoryClicked($event,'${expr3}')"><i
							class="fa fa-history" aria-hidden="true"></i></span> -->
						<input type="number" id="_sovdia3" name="sovdia3" class="in-field"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-model-options="{ updateOn: 'default' }"
							ng-change="calculateMeanSinusOfValsalva()"
							ng-required="$parent.sectionData[sectionIndex].nataorval != '0'"
							ng-disabled="$parent.patientdata.freeze || $parent.sectionData[sectionIndex].nataorval == '0'"
							min="0" step="0.001" />
						
					</procedure:component>
					<procedure:procedure-layout
						id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_sod3comment">
							<span class="com-icon"
								ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
					<span class="err-span-v2"
							ng-show="ctmriForm.sovdia3.$error.min || ctmriForm.sovdia3.$error.step || ctmriForm.sovdia3.$error.number">Not
							a valid number!</span>
						<span class="err-span-v2"
							ng-show="ctmriForm.sovdia3.$error.required">Please enter
							the diameter value</span>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_msovdia1">
                    ${label}
                    <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                    <!-- <span class="his-icon"
							ng-click="showHistoryClicked($event,'${expr3}')"><i
							class="fa fa-history" aria-hidden="true"></i></span> -->
						<input type="number" id="_msovdia1" name="msovdia1"
							class="in-field"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-model-options="{ updateOn: 'default' }"
							ng-disabled="$parent.patientdata.freeze || true" min="0"
							step="0.001" />
						
					</procedure:component>
					<span class="err-span-v2"
							ng-show="ctmriForm.msovdia1.$error.min || ctmriForm.msovdia1.$error.step || ctmriForm.msovdia1.$error.number">Not
							a valid number!</span>
				</div>
				<!--<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
                    <procedure:component id="_msovdia2">
                    ${label}
                        <input type="number" id="_msovdia2" name="msovdia2" class="in-field" ng-model="$parent.sectionData[sectionIndex].${key}" 
                            ng-model-options="{ updateOn: 'default' }"
                            ng-disabled="$parent.patientdata.freeze" min="0" step="0.001"/>
                        <span class="err-span-v2" ng-show="ctmriForm.msovdia2.$error.min || ctmriForm.msovdia2.$error.step || ctmriForm.msovdia2.$error.number">Not a valid number!</span>
                    </procedure:component>
                </div>-->
			</div>
			<div
				class="col-xs-12 ngClass: {'disabled': !$parent.sectionData[sectionIndex].ctormri}"
				style="padding: 10px 0 20px 0; background: #f4f6f7; margin-top: 20px; border: 1px solid #CCC">
				<div class="col-xs-12 pad5 mi-hgt-err">
					<%-- <div class="col-xs-12" style="padding:0;">
                        <procedure:component id="_oapoption"></procedure:component>
                        <procedure:component-option id="_oapoption1" cid="_oapoption">
                            <span class="marg-left10">
                            	<!-- radio button OPTION - 1 -->
                                <input type="radio" name="oapoption" ng-model="$parent.sectionData[sectionIndex].${key}" value="${uuid}" ng-disabled="$parent.patientdata.freeze">
                                ${label}
                            </span>
                        </procedure:component-option>
                    </div>  --%>
					<div class="col-xs-12 pad5 mi-hgt-err">
						<div class="col-xs-12">OPTIMAL ANGLE</div>
						<div class="col-xs-12 col-md-6">
							<!-- ****************************************************Start of OPTION - 1 ===== RAO -->
							<div class="col-xs-6 col-md-6">
								<procedure:component id="_oaptopt11">
								</procedure:component>
								<procedure:component-option id="_oaptopt111" cid="_oaptopt11">
									<span class="marg-left10"> <input type="radio"
										name="${key}"
										ng-model="$parent.sectionData[sectionIndex].${key}"
										value="${uuid}" ng-disabled="$parent.patientdata.freeze">
										${label}
									</span>
								</procedure:component-option>
								<procedure:component id="_oaptoptv111">
								<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
									<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
									<input type="number" id="_oaptoptv111" name="oaptoptv111"
										class="in-field"
										ng-model="$parent.sectionData[sectionIndex].${key}"
										ng-model-options="{ updateOn: 'default' }"
										ng-required="!disableOption1RaoText"
										ng-disabled="$parent.patientdata.freeze || disableOption1RaoText"
										min="0" step="0.001" />
									
									<!-- <span class="err-span-v2" ng-show="ctmriForm.oaptopt11.$error.required">Please choose any one of the options</span> -->
								</procedure:component>
								<procedure:procedure-layout
									id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
									section="TAVI_PROCEDURE_COMMENTS_GROUP">
									<procedure:component id="_oa1raocomment">
										<span class="com-icon"
											ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
											class="fa fa-commenting" aria-hidden="true"></i></span>
									</procedure:component>
								</procedure:procedure-layout>
								<span class="err-span-v2"
										ng-show="ctmriForm.oaptoptv111.$error.min || ctmriForm.oaptoptv111.$error.step || ctmriForm.oaptoptv111.$error.number">Not
										a valid number!</span>
									<span class="err-span-v2"
										ng-show="ctmriForm.oaptoptv111.$error.required">Please
										fill the angle</span>
							</div>
							<!-- ****************************************************End of OPTION - 1 ===== RAO -->
							<!-- ****************************************************Start of OPTION - 1 ===== LAO -->
							<div class="col-xs-6 col-md-6">
								<procedure:component-option id="_oaptopt112" cid="_oaptopt11">
									<span class="marg-left10"> <input type="radio"
										name="${key}"
										ng-model="$parent.sectionData[sectionIndex].${key}"
										value="${uuid}" ng-disabled="$parent.patientdata.freeze">
										${label}
									</span>
								</procedure:component-option>
								<procedure:component id="_oaptoptv121">
								<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
									<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
									<input type="number" id="_oaptoptv121" name="oaptoptv121"
										class="in-field"
										ng-model="$parent.sectionData[sectionIndex].${key}"
										ng-model-options="{ updateOn: 'default' }"
										ng-required="!disableOption1LaoText"
										ng-disabled="$parent.patientdata.freeze || disableOption1LaoText"
										min="0" step="0.001" />
									
								</procedure:component>
								<procedure:procedure-layout
									id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
									section="TAVI_PROCEDURE_COMMENTS_GROUP">
									<procedure:component id="_oa1laocomment">
										<span class="com-icon"
											ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
											class="fa fa-commenting" aria-hidden="true"></i></span>
									</procedure:component>
								</procedure:procedure-layout>
								<span class="err-span-v2"
										ng-show="ctmriForm.oaptoptv121.$error.min || ctmriForm.oaptoptv121.$error.step || ctmriForm.oaptoptv121.$error.number">Not
										a valid number!</span>
									<span class="err-span-v2"
										ng-show="ctmriForm.oaptoptv121.$error.required">Please
										fill the angle</span>
							</div>
							<!-- ****************************************************End of OPTION - 1 ===== LAO -->
						</div>
						<div class="col-xs-12 col-md-6">
							<!-- ****************************************************Start of OPTION - 1 ===== CAU -->
							<div class="col-xs-6 col-md-6">
								<procedure:component id="_oaptopt21"></procedure:component>
								<procedure:component-option id="_oaptopt211" cid="_oaptopt21">
									<span class="marg-left10"> <input type="radio"
										name="${key}"
										ng-model="$parent.sectionData[sectionIndex].${key}"
										value="${uuid}" ng-disabled="$parent.patientdata.freeze">
										${label}
									</span>
								</procedure:component-option>
								<procedure:component id="_oaptoptv112">
								<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
									<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
									<input type="number" id="_oaptoptv112" name="oaptoptv112"
										class="in-field"
										ng-model="$parent.sectionData[sectionIndex].${key}"
										ng-model-options="{ updateOn: 'default' }"
										ng-required="!disableOption1CauText"
										ng-disabled="$parent.patientdata.freeze || disableOption1CauText"
										min="0" step="0.001" />
									
								</procedure:component>
								<procedure:procedure-layout
									id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
									section="TAVI_PROCEDURE_COMMENTS_GROUP">
									<procedure:component id="_oa1caucomment">
										<span class="com-icon"
											ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
											class="fa fa-commenting" aria-hidden="true"></i></span>
									</procedure:component>
								</procedure:procedure-layout>
								<span class="err-span-v2"
										ng-show="ctmriForm.oaptoptv112.$error.min || ctmriForm.oaptoptv112.$error.step || ctmriForm.oaptoptv112.$error.number">Not
										a valid number!</span>
									<span class="err-span-v2"
										ng-show="ctmriForm.oaptoptv112.$error.required">Please
										fill the angle</span>
									<span class="err-span-v2"
										ng-show="ctmriForm.oaptopt21.$error.required">Please
										choose any one of the options</span>
							</div>
							<!-- ****************************************************End of OPTION - 1 ===== CAU -->
							<!-- ****************************************************Start of OPTION - 1 ===== CRA -->
							<div class="col-xs-6 col-md-6">
								<procedure:component-option id="_oaptopt212" cid="_oaptopt21">
									<span class="marg-left10"> <input type="radio"
										name="${key}"
										ng-model="$parent.sectionData[sectionIndex].${key}"
										value="${uuid}" ng-disabled="$parent.patientdata.freeze"">
										${label}
									</span>
								</procedure:component-option>
								<procedure:component id="_oaptoptv122">
								<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
									<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
									<input type="number" id="_oaptoptv122" name="oaptoptv122"
										class="in-field"
										ng-model="$parent.sectionData[sectionIndex].${key}"
										ng-model-options="{ updateOn: 'default' }"
										ng-required="!disableOption1CraText"
										ng-disabled="$parent.patientdata.freeze || disableOption1CraText"
										min="0" step="0.001" />
									
								</procedure:component>
								<procedure:procedure-layout
									id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
									section="TAVI_PROCEDURE_COMMENTS_GROUP">
									<procedure:component id="_oa1cracomment">
										<span class="com-icon"
											ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
											class="fa fa-commenting" aria-hidden="true"></i></span>
									</procedure:component>
								</procedure:procedure-layout>
								<span class="err-span-v2"
										ng-show="ctmriForm.oaptoptv122.$error.min || ctmriForm.oaptoptv122.$error.step || ctmriForm.oaptoptv122.$error.number">Not
										a valid number!</span>
									<span class="err-span-v2"
										ng-show="ctmriForm.oaptoptv122.$error.required">Please
										fill the angle</span>
							</div>
							<!-- ****************************************************End of OPTION - 1 ===== LAO -->
						</div>
						<!-- ****************************************************Start of OPTION - 2 ===== RADIOBUTTON -->
						<%-- <div class="col-xs-12" style="padding:0;">
                			<procedure:component-option id="_oapoption2" cid="_oapoption">
                                <span class="marg-left10">
                                	<!-- Radio button OPTION - 2 -->
                                    <input type="radio" name="oapoption" ng-model="$parent.sectionData[sectionIndex].${key}" value="${uuid}" ng-disabled="$parent.patientdata.freeze">
                                    ${label}
                                </span>
                            </procedure:component-option>
                		</div> --%>
						<div style="padding: 0px;" class="col-xs-12 mi-hgt-err">
							<div class="col-xs-12 col-md-6">
								<!-- ****************************************************Start of OPTION - 2 ===== RAO -->
								<div class="col-xs-6 col-md-6">
									<procedure:component id="_oaptopt12">
									</procedure:component>
									<procedure:component-option id="_oaptopt121" cid="_oaptopt12">
										<span class="marg-left10"> <input type="radio"
											name="${key}"
											ng-model="$parent.sectionData[sectionIndex].${key}"
											value="${uuid}" ng-disabled="$parent.patientdata.freeze">
											${label}
										</span>
									</procedure:component-option>
									<procedure:component id="_oaptoptv211">
									<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
										<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
										<input type="number" id="_oaptoptv211" name="oaptoptv211"
											class="in-field"
											ng-model="$parent.sectionData[sectionIndex].${key}"
											ng-model-options="{ updateOn: 'default' }"
											ng-required="!disableOption2RaoText"
											ng-disabled="$parent.patientdata.freeze || disableOption2RaoText"
											min="0" step="0.001" />
										
									</procedure:component>
									<procedure:procedure-layout
										id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
										section="TAVI_PROCEDURE_COMMENTS_GROUP">
										<procedure:component id="_oa2raocomment">
											<span class="com-icon"
												ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
												class="fa fa-commenting" aria-hidden="true"></i></span>
										</procedure:component>
									</procedure:procedure-layout>
									<span class="err-span-v2"
											ng-show="ctmriForm.oaptoptv211.$error.min || ctmriForm.oaptoptv211.$error.step || ctmriForm.oaptoptv211.$error.number">Not
											a valid number!</span>
										<span class="err-span-v2"
											ng-show="ctmriForm.oaptoptv211.$error.required">Please
											fill the angle</span>
										<span class="err-span-v2"
											ng-show="ctmriForm.oaptopt12.$error.required">Please
											choose any one of the options</span>
								</div>
								<!-- ****************************************************End of OPTION - 2 ===== RAO -->
								<!-- ****************************************************Start of OPTION - 2 ===== LAO -->
								<div class="col-xs-6 col-md-6">
									<procedure:component-option id="_oaptopt122" cid="_oaptopt12">
										<span class="marg-left10"> <input type="radio"
											name="${key}"
											ng-model="$parent.sectionData[sectionIndex].${key}"
											value="${uuid}" ng-disabled="$parent.patientdata.freeze">
											${label}
										</span>
									</procedure:component-option>
									<procedure:component id="_oaptoptv221">
									<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
										<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
										<input type="number" id="_oaptoptv221" name="oaptoptv221"
											class="in-field"
											ng-model="$parent.sectionData[sectionIndex].${key}"
											ng-model-options="{ updateOn: 'default' }"
											ng-required="!disableOption2LaoText"
											ng-disabled="$parent.patientdata.freeze || disableOption2LaoText"
											min="0" step="0.001" />
										
									</procedure:component>
									<procedure:procedure-layout
										id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
										section="TAVI_PROCEDURE_COMMENTS_GROUP">
										<procedure:component id="_oa2laocomment">
											<span class="com-icon"
												ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
												class="fa fa-commenting" aria-hidden="true"></i></span>
										</procedure:component>
									</procedure:procedure-layout>
									<span class="err-span-v2"
											ng-show="ctmriForm.oaptoptv221.$error.min || ctmriForm.oaptoptv221.$error.step || ctmriForm.oaptoptv221.$error.number">Not
											a valid number!</span>
										<span class="err-span-v2"
											ng-show="ctmriForm.oaptoptv221.$error.required">Please
											fill the angle</span>
								</div>
								<!-- ****************************************************End of OPTION - 2 ===== LAO -->
							</div>
							<div class="col-xs-12 col-md-6">
								<!-- ****************************************************Start of OPTION - 2 ===== CAU -->
								<div class="col-xs-6 col-md-6">
									<procedure:component id="_oaptopt22"></procedure:component>
									<procedure:component-option id="_oaptopt221" cid="_oaptopt22">
										<span class="marg-left10"> <input type="radio"
											name="${key}"
											ng-model="$parent.sectionData[sectionIndex].${key}"
											value="${uuid}" ng-disabled="$parent.patientdata.freeze">
											${label}
										</span>
									</procedure:component-option>
									<procedure:component id="_oaptoptv212">
									<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
									<!-- 	<span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
										<input type="number" id="_oaptoptv212" name="oaptoptv212"
											class="in-field"
											ng-model="$parent.sectionData[sectionIndex].${key}"
											ng-model-options="{ updateOn: 'default' }"
											ng-required="!disableOption2CauText"
											ng-disabled="$parent.patientdata.freeze || disableOption2CauText"
											min="0" step="0.001" />
										
									</procedure:component>
									<procedure:procedure-layout
										id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
										section="TAVI_PROCEDURE_COMMENTS_GROUP">
										<procedure:component id="_oa2caucomment">
											<span class="com-icon"
												ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
												class="fa fa-commenting" aria-hidden="true"></i></span>
										</procedure:component>
									</procedure:procedure-layout>
									<span class="err-span-v2"
											ng-show="ctmriForm.oaptoptv212.$error.min || ctmriForm.oaptoptv212.$error.step || ctmriForm.oaptoptv212.$error.number">Not
											a valid number!</span>
										<span class="err-span-v2"
											ng-show="ctmriForm.oaptoptv212.$error.required">Please
											fill the angle</span>
										<span class="err-span-v2"
											ng-show="ctmriForm.oaptopt22.$error.required">Please
											choose any one of the options</span>
								</div>
								<!-- ****************************************************End of OPTION - 2 ===== CAU -->
								<!-- ****************************************************Start of OPTION - 2 ===== CRA -->
								<div class="col-xs-6 col-md-6">
									<procedure:component-option id="_oaptopt222" cid="_oaptopt22">
										<span class="marg-left10"> <input type="radio"
											name="oaptopt22"
											ng-model="$parent.sectionData[sectionIndex].${key}"
											value="${uuid}" ng-disabled="$parent.patientdata.freeze">
											${label}
										</span>
									</procedure:component-option>
									<procedure:component id="_oaptoptv222">
									<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
										<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
										<input type="number" id="_oaptoptv222" name="oaptoptv222"
											class="in-field"
											ng-model="$parent.sectionData[sectionIndex].${key}"
											ng-model-options="{ updateOn: 'default' }"
											ng-required="!disableOption2CraText"
											ng-disabled="$parent.patientdata.freeze || disableOption2CraText"
											min="0" step="0.001" />
										
									</procedure:component>
									<procedure:procedure-layout
										id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
										section="TAVI_PROCEDURE_COMMENTS_GROUP">
										<procedure:component id="_oa2cracomment">
											<span class="com-icon"
												ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
												class="fa fa-commenting" aria-hidden="true"></i></span>
										</procedure:component>
									</procedure:procedure-layout>
									<span class="err-span-v2"
											ng-show="ctmriForm.oaptoptv222.$error.min || ctmriForm.oaptoptv222.$error.step || ctmriForm.oaptoptv222.$error.number">Not
											a valid number!</span>
										<span class="err-span-v2"
											ng-show="ctmriForm.oaptoptv222.$error.required">Please
											fill the angle</span>
								</div>
								<!-- ****************************************************End of OPTION - 2 ===== CRA -->
							</div>
						</div>

					</div>
				</div>
			</div>
			<div
				class="col-xs-12 ngClass: {'disabled': !$parent.sectionData[sectionIndex].ctormri}"
				style="padding: 0; margin-top: 10px;">
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_stjdia">
				${label}
				<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
					 <!--  <span class="his-icon"
							ng-click="showHistoryClicked($event,'${expr3}')"><i
							class="fa fa-history" aria-hidden="true"></i></span> -->
						<input type="number" id="_stjdia" name="stjdia" class="in-field"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-model-options="{ updateOn: 'default' }"
							ng-disabled="$parent.patientdata.freeze" min="0" step="0.001" />
						
					</procedure:component>
					<procedure:procedure-layout
						id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_stjdcomment">
							<span class="com-icon"
								ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
					<span class="err-span-v2"
							ng-show="ctmriForm.stjdia.$error.min || ctmriForm.stjdia.$error.step || ctmriForm.stjdia.$error.number">Not
							a valid number!</span>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_stjcalcium">
				${label}
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
						id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_stjccomment">
							<span class="com-icon"
								ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
				</div>
				<!-- <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_ardia">
				${label}
					  <span class="his-icon"
							ng-click="showHistoryClicked($event,'${expr3}')"><i
							class="fa fa-history" aria-hidden="true"></i></span>
						<input type="number" id="_ardia" name="ardia" class="in-field"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-model-options="{ updateOn: 'default' }"
							ng-disabled="$parent.patientdata.freeze" min="0" step="0.001" />
						
					</procedure:component>
					<procedure:procedure-layout
						id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_aorticrdcomment">
							<span class="com-icon"
								ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
					<span class="err-span-v2"
							ng-show="ctmriForm.ardia.$error.min || ctmriForm.ardia.$error.step || ctmriForm.ardia.$error.number">Not
							a valid number!</span>
				</div> -->
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_uaorta">
				${label}
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
						id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_uaortacomment">
							<span class="com-icon"
								ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_paorta">
				${label}
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
						id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_paortacomment">
							<span class="com-icon"
								ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_ardia">
					Ascending AO
					<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
					  <!-- <span class="his-icon"
							ng-click="showHistoryClicked($event,'${expr3}')"><i
							class="fa fa-history" aria-hidden="true"></i></span> -->
						<input type="number" id="_ardia" name="ardia" class="in-field"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-model-options="{ updateOn: 'default' }"
							ng-disabled="$parent.patientdata.freeze" min="0" step="0.001" />
						
					</procedure:component>
					<procedure:procedure-layout
						id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_aorticrdcomment">
							<span class="com-icon"
								ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
					<span class="err-span-v2"
							ng-show="ctmriForm.ardia.$error.min || ctmriForm.ardia.$error.step || ctmriForm.ardia.$error.number">Not
							a valid number!</span>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_annularangulation">
					Annular angulation
					<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
					<!--   <span class="his-icon"
							ng-click="showHistoryClicked($event,'${expr3}')"><i
							class="fa fa-history" aria-hidden="true"></i></span> -->
						<input type="text" id="_annularangulation" name="annularangulation" class="in-field"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-model-options="{ updateOn: 'default' }"
							ng-disabled="$parent.patientdata.freeze"/>
						
					</procedure:component>
					<procedure:procedure-layout
						id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_annularangulationcomment">
							<span class="com-icon"
								ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
				</div>
				<div class="col-xs-12"
					style="padding: 10px 30px 10px 30px; background: #f4f6f7; border: 1px solid #CCC">
					<div class="col-xs-12 col-sm-6 pad5 mi-hgt-err">
						<procedure:component id="_rcheight">
                    ${label}
                    <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                    	<!--   <span class="his-icon"
								ng-click="showHistoryClicked($event,'${expr3}')"><i
								class="fa fa-history" aria-hidden="true"></i></span> -->
							<input type="number" id="_rcheight" name="rcheight"
								class="in-field"
								ng-model="$parent.sectionData[sectionIndex].${key}"
								ng-model-options="{ updateOn: 'default' }"
								ng-disabled="$parent.patientdata.freeze" min="0" step="0.001" />
							
						</procedure:component>
						<procedure:procedure-layout
							id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
							section="TAVI_PROCEDURE_COMMENTS_GROUP">
							<procedure:component id="_rcheightcomment">
								<span class="com-icon"
									ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
									class="fa fa-commenting" aria-hidden="true"></i></span>
							</procedure:component>
						</procedure:procedure-layout>
						<span class="err-span-v2"
								ng-show="ctmriForm.rcheight.$error.min || ctmriForm.rcheight.$error.step || ctmriForm.rcheight.$error.number">Not
								a valid number!</span>
					</div>
					<div class="col-xs-12 col-sm-6 pad5 mi-hgt-err">
						<procedure:component id="_lcheight">
                    ${label}
                    <ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
                    	 <!--  <span class="his-icon"
								ng-click="showHistoryClicked($event,'${expr3}')"><i
								class="fa fa-history" aria-hidden="true"></i></span> -->
							<input type="number" id="_lcheight" name="lcheight"
								class="in-field"
								ng-model="$parent.sectionData[sectionIndex].${key}"
								ng-model-options="{ updateOn: 'default' }"
								ng-disabled="$parent.patientdata.freeze" min="0" step="0.001" />
							
						</procedure:component>
						<procedure:procedure-layout
							id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
							section="TAVI_PROCEDURE_COMMENTS_GROUP">
							<procedure:component id="_lcheightcomment">
								<span class="com-icon"
									ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
									class="fa fa-commenting" aria-hidden="true"></i></span>
							</procedure:component>
						</procedure:procedure-layout>
						<span class="err-span-v2"
								ng-show="ctmriForm.lcheight.$error.min || ctmriForm.lcheight.$error.step || ctmriForm.lcheight.$error.number">Not
								a valid number!</span>
					</div>

					<div class="col-xs-12 col-sm-6 pad5 mi-hgt-err">
						<procedure:component id="_rsartery">
				${label}
				<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
					 <!--  <span class="his-icon"
								ng-click="showHistoryClicked($event,'${expr3}')"><i
								class="fa fa-history" aria-hidden="true"></i></span> -->
							<input type="number" id="_rsartery" name="rsartery"
								class="in-field"
								ng-model="$parent.sectionData[sectionIndex].${key}"
								ng-model-options="{ updateOn: 'default' }"
								ng-disabled="$parent.patientdata.freeze" min="0" step="0.001" />
							
						</procedure:component>
						<procedure:procedure-layout
							id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
							section="TAVI_PROCEDURE_COMMENTS_GROUP">
							<procedure:component id="_rsarterycomment">
								<span class="com-icon"
									ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
									class="fa fa-commenting" aria-hidden="true"></i></span>
							</procedure:component>
						</procedure:procedure-layout>
						<span class="err-span-v2"
								ng-show="ctmriForm.rsartery.$error.min || ctmriForm.rsartery.$error.step || ctmriForm.rsartery.$error.number">Not
								a valid number!</span>
					</div>
					<div class="col-xs-12 col-sm-6 pad5 mi-hgt-err">
						<procedure:component id="_lsartery">
				${label}
				<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
					 <!--  <span class="his-icon"
								ng-click="showHistoryClicked($event,'${expr3}')"><i
								class="fa fa-history" aria-hidden="true"></i></span> -->
							<input type="number" id="_lsartery" name="lsartery"
								class="in-field"
								ng-model="$parent.sectionData[sectionIndex].${key}"
								ng-model-options="{ updateOn: 'default' }"
								ng-disabled="$parent.patientdata.freeze" min="0" step="0.001" />
							
						</procedure:component>
						<procedure:procedure-layout
							id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
							section="TAVI_PROCEDURE_COMMENTS_GROUP">
							<procedure:component id="_lsarterycomment">
								<span class="com-icon"
									ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
									class="fa fa-commenting" aria-hidden="true"></i></span>
							</procedure:component>
						</procedure:procedure-layout>
						<span class="err-span-v2"
								ng-show="ctmriForm.lsartery.$error.min || ctmriForm.lsartery.$error.step || ctmriForm.lsartery.$error.number">Not
								a valid number!</span>
					</div>
					<div class="col-xs-12 col-sm-6 pad5 mi-hgt-err">
						<procedure:component id="_rciliacartery">
				${label}
				<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
					 <!--  <span class="his-icon"
								ng-click="showHistoryClicked($event,'${expr3}')"><i
								class="fa fa-history" aria-hidden="true"></i></span> -->
							<input type="number" id="_rciliacartery" name="rciliacartery"
								class="in-field"
								ng-model="$parent.sectionData[sectionIndex].${key}"
								ng-model-options="{ updateOn: 'default' }"
								ng-disabled="$parent.patientdata.freeze" min="0" step="0.001" />
							
						</procedure:component>
						<procedure:procedure-layout
							id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
							section="TAVI_PROCEDURE_COMMENTS_GROUP">
							<procedure:component id="_rclarterycomment">
								<span class="com-icon"
									ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
									class="fa fa-commenting" aria-hidden="true"></i></span>
							</procedure:component>
						</procedure:procedure-layout>
						<span class="err-span-v2"
								ng-show="ctmriForm.rciliacartery.$error.min || ctmriForm.rciliacartery.$error.step || ctmriForm.rciliacartery.$error.number">Not
								a valid number!</span>
					</div>
					<div class="col-xs-12 col-sm-6 pad5 mi-hgt-err">
						<procedure:component id="_lciliacartery">
				${label}<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
					  <!-- <span class="his-icon"
								ng-click="showHistoryClicked($event,'${expr3}')"><i
								class="fa fa-history" aria-hidden="true"></i></span> -->
							<input type="number" id="_lciliacartery" name="lciliacartery"
								class="in-field"
								ng-model="$parent.sectionData[sectionIndex].${key}"
								ng-model-options="{ updateOn: 'default' }"
								ng-disabled="$parent.patientdata.freeze" min="0" step="0.001" />
							
						</procedure:component>
						<procedure:procedure-layout
							id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
							section="TAVI_PROCEDURE_COMMENTS_GROUP">
							<procedure:component id="_lclarterycomment">
								<span class="com-icon"
									ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
									class="fa fa-commenting" aria-hidden="true"></i></span>
							</procedure:component>
						</procedure:procedure-layout>
						<span class="err-span-v2"
								ng-show="ctmriForm.lciliacartery.$error.min || ctmriForm.lciliacartery.$error.step || ctmriForm.lciliacartery.$error.number">Not
								a valid number!</span>
					</div>
					<div class="col-xs-12 col-sm-6 pad5 mi-hgt-err">
						<procedure:component id="_reiliacartery">
				${label}
				<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
					 <!--  <span class="his-icon"
								ng-click="showHistoryClicked($event,'${expr3}')"><i
								class="fa fa-history" aria-hidden="true"></i></span> -->
							<input type="number" id="_reiliacartery" name="reiliacartery"
								class="in-field"
								ng-model="$parent.sectionData[sectionIndex].${key}"
								ng-model-options="{ updateOn: 'default' }"
								ng-disabled="$parent.patientdata.freeze" min="0" step="0.001" />
							
						</procedure:component>
						<procedure:procedure-layout
							id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
							section="TAVI_PROCEDURE_COMMENTS_GROUP">
							<procedure:component id="_relarterycomment">
								<span class="com-icon"
									ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
									class="fa fa-commenting" aria-hidden="true"></i></span>
							</procedure:component>
						</procedure:procedure-layout>
						<span class="err-span-v2"
								ng-show="ctmriForm.reiliacartery.$error.min || ctmriForm.reiliacartery.$error.step || ctmriForm.reiliacartery.$error.number">Not
								a valid number!</span>
					</div>
					<div class="col-xs-12 col-sm-6 pad5 mi-hgt-err">
						<procedure:component id="_leiliacartery">
				${label}
				<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
					 <!--  <span class="his-icon"
								ng-click="showHistoryClicked($event,'${expr3}')"><i
								class="fa fa-history" aria-hidden="true"></i></span> -->
							<input type="number" id="_leiliacartery" name="leiliacartery"
								class="in-field"
								ng-model="$parent.sectionData[sectionIndex].${key}"
								ng-model-options="{ updateOn: 'default' }"
								ng-disabled="$parent.patientdata.freeze" min="0" step="0.001" />
							
						</procedure:component>
						<procedure:procedure-layout
							id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
							section="TAVI_PROCEDURE_COMMENTS_GROUP">
							<procedure:component id="_lelarterycomment">
								<span class="com-icon"
									ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
									class="fa fa-commenting" aria-hidden="true"></i></span>
							</procedure:component>
						</procedure:procedure-layout>
						<span class="err-span-v2"
								ng-show="ctmriForm.leiliacartery.$error.min || ctmriForm.leiliacartery.$error.step || ctmriForm.leiliacartery.$error.number">Not
								a valid number!</span>
					</div>
					<div class="col-xs-12 col-sm-6 pad5 mi-hgt-err">
						<procedure:component id="_rcfemoralartery">
				${label}
				<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
					  <!-- <span class="his-icon"
								ng-click="showHistoryClicked($event,'${expr3}')"><i
								class="fa fa-history" aria-hidden="true"></i></span> -->
							<input type="number" id="_rcfemoralartery" name="rcfemoralartery"
								class="in-field"
								ng-model="$parent.sectionData[sectionIndex].${key}"
								ng-model-options="{ updateOn: 'default' }"
								ng-disabled="$parent.patientdata.freeze" min="0" step="0.001" />
							
						</procedure:component>
						<procedure:procedure-layout
							id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
							section="TAVI_PROCEDURE_COMMENTS_GROUP">
							<procedure:component id="_rcfarterycomment">
								<span class="com-icon"
									ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
									class="fa fa-commenting" aria-hidden="true"></i></span>
							</procedure:component>
						</procedure:procedure-layout>
						<span class="err-span-v2"
								ng-show="ctmriForm.rcfemoralartery.$error.min || ctmriForm.rcfemoralartery.$error.step || ctmriForm.rcfemoralartery.$error.number">Not
								a valid number!</span>
					</div>
					<div class="col-xs-12 col-sm-6 pad5 mi-hgt-err">
						<procedure:component id="_lcfemoralartery">
				${label}
				<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
					  <!-- <span class="his-icon"
								ng-click="showHistoryClicked($event,'${expr3}')"><i
								class="fa fa-history" aria-hidden="true"></i></span> -->
							<input type="number" id="_lcfemoralartery" name="lcfemoralartery"
								class="in-field"
								ng-model="$parent.sectionData[sectionIndex].${key}"
								ng-model-options="{ updateOn: 'default' }"
								ng-disabled="$parent.patientdata.freeze" min="0" step="0.001" />
							
						</procedure:component>
						<procedure:procedure-layout
							id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
							section="TAVI_PROCEDURE_COMMENTS_GROUP">
							<procedure:component id="_lcfarterycomment">
								<span class="com-icon"
									ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
									class="fa fa-commenting" aria-hidden="true"></i></span>
							</procedure:component>
						</procedure:procedure-layout>
						<span class="err-span-v2"
								ng-show="ctmriForm.lcfemoralartery.$error.min || ctmriForm.lcfemoralartery.$error.step || ctmriForm.lcfemoralartery.$error.number">Not
								a valid number!</span>
					</div>
				</div>
				<div class="col-xs-12" style="padding: 10px 0;">
					<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
						<procedure:component id="_carfemoralvessels">
                    ${label}
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
							id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
							section="TAVI_PROCEDURE_COMMENTS_GROUP">
							<procedure:component id="_calciumrfvcomment">
								<span class="com-icon"
									ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
									class="fa fa-commenting" aria-hidden="true"></i></span>
							</procedure:component>
						</procedure:procedure-layout>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
						<procedure:component id="_calfemoralvessels">
                    ${label}
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
							id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
							section="TAVI_PROCEDURE_COMMENTS_GROUP">
							<procedure:component id="_calciumlfvcomment">
								<span class="com-icon"
									ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
									class="fa fa-commenting" aria-hidden="true"></i></span>
							</procedure:component>
						</procedure:procedure-layout>
					</div>
					<div class="col-xs-12"></div>
					<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
						<procedure:component id="_tarfemoralvessels">
                    ${label}
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
							id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
							section="TAVI_PROCEDURE_COMMENTS_GROUP">
							<procedure:component id="_tortuosityrfvcomment">
								<span class="com-icon"
									ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
									class="fa fa-commenting" aria-hidden="true"></i></span>
							</procedure:component>
						</procedure:procedure-layout>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
						<procedure:component id="_talfemoralvessels">
                    ${label}
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
							id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
							section="TAVI_PROCEDURE_COMMENTS_GROUP">
							<procedure:component id="_tortuositylfvcomment">
								<span class="com-icon"
									ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
									class="fa fa-commenting" aria-hidden="true"></i></span>
							</procedure:component>
						</procedure:procedure-layout>
					</div>
					<div class="col-xs-12"></div>
					<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
						<procedure:component id="_abdaortaneurysm">
                    ${label}
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
							id="cc33217d-8ed9-439f-b81f-1d2cbf5491b1"
							section="TAVI_PROCEDURE_COMMENTS_GROUP">
							<procedure:component id="_aneurysmcomment">
								<span class="com-icon"
									ng-click="showCtmriCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
									class="fa fa-commenting" aria-hidden="true"></i></span>
							</procedure:component>
						</procedure:procedure-layout>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-12 col-lg-12 pad5 mi-hgt-err"
					style="">
					<procedure:component id="_ctmricomment"> ${label}
        <textarea class="txtarea-new-des-demo"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-disabled="$parent.patientdata.freeze"></textarea>
					</procedure:component>
				</div>
				</div>
			</div>
		</div>
	</div>
</procedure:procedure-layout>
