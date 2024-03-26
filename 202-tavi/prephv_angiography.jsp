<%@page language="java" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="procedure"
	uri="/WEB-INF/view/module/procedure-tracking-core-module/resources/procedure_tracking.tld"%>
<procedure:procedure-layout id="88b49f2a-24f9-41a8-9220-0e55fa3bee46"
	section="TAVI_PREPHV_ANGIOGRAPHY">
	<div class="col-xs-12" ng-controller="TaviPrePHVAngiographyController"
		ng-init="init('88b49f2a-24f9-41a8-9220-0e55fa3bee46', '${today}')"
		style="padding: 20px 10px;">
		<div class="col-xs-12" style="padding: 20px 0;" ng-form="angioForm">
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
				<procedure:component id="_dtex">
	       	Date of examination
	       		<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
	       			<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
					<div class='input-group date date-picker-bg'
						id='_adateofexamination'>
						<input class="in-field" id='_adateofexamination'
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
					<input type="hidden" id="___adateofexamination" value="${key}" />
				</procedure:component>
					<procedure:procedure-layout
						id="06fa0b44-4719-491b-8850-fad32f255517"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_doexamcomnt">
							<span class="com-icon"
								ng-click="showAngiographyCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
			</div>
			
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
				<procedure:component id="_coronaryartdis">
	        		Coronary Art Disease
	        			<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
	        		<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
	        	
					<input class="in-field" type="text"
						name="coronaryartdis" ng-model="$parent.sectionData[sectionIndex].${key}"
						ng-disabled="$parent.patientdata.freeze">

					
				</procedure:component>
			</div>
			
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
				<procedure:component id="_meang">
	        Mean Gradient
	        	<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
	        		<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
	        	
					<input class="in-field" type="number" min="0" max="200"
						name="meang" ng-model="$parent.sectionData[sectionIndex].${key}"
						ng-disabled="$parent.patientdata.freeze">

					
				</procedure:component>
				<procedure:procedure-layout
						id="06fa0b44-4719-491b-8850-fad32f255517"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_mngrcomnt">
							<span class="com-icon"
								ng-click="showAngiographyCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
					<span class="err-span-v2"
						ng-show="angioForm.meang.$error.step || angioForm.meang.$error.number">Not
						a valid number!</span>
						
						<span class="err-span-v2"
						ng-show="angioForm.meang.$error.min ||  angioForm.meang.$error.max">Range is between 0 and 200</span>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
				<procedure:component id="_ptpgrad">
	        Peak-to-Peak Gradient
	        	<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
	        		<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
					<input class="in-field" type="number" name="ptpgrad" min="0"
						max="200" ng-model="$parent.sectionData[sectionIndex].${key}"
						ng-disabled="$parent.patientdata.freeze">

					
				</procedure:component>
				<procedure:procedure-layout
						id="06fa0b44-4719-491b-8850-fad32f255517"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_ptopgcomnt">
							<span class="com-icon"
								ng-click="showAngiographyCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
					<span class="err-span-v2"
						ng-show="angioForm.ptpgrad.$error.step || angioForm.ptpgrad.$error.number">Not
						a valid number!</span>
						
						<span class="err-span-v2"
						ng-show="angioForm.ptpgrad.$error.min || angioForm.ptpgrad.$error.max">Range is between 0 and 200</span>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
				<procedure:component id="_aovalve">
	        AO Valve Area (cm<sup>2</sup>)
	        	<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
	        		<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
					<input class="in-field" type="number" name="aovalve" min="0.01" step="0.01" 
						max="200" ng-model="$parent.sectionData[sectionIndex].${key}"
						ng-disabled="$parent.patientdata.freeze">

					
				</procedure:component>
				<procedure:procedure-layout
						id="06fa0b44-4719-491b-8850-fad32f255517"
						section="TAVI_PROCEDURE_COMMENTS_GROUP">
						<procedure:component id="_aovareacomnt">
							<span class="com-icon"
								ng-click="showAngiographyCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
								class="fa fa-commenting" aria-hidden="true"></i></span>
						</procedure:component>
					</procedure:procedure-layout>
					<span class="err-span-v2"
						ng-show="angioForm.aovalve.$error.step || angioForm.aovalve.$error.number">Not
						a valid number!</span>
						
						<span class="err-span-v2"
						ng-show="angioForm.aovalve.$error.min || angioForm.aovalve.$error.max">Range is between 0.01 and 200</span>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
				<procedure:component id="_aigradean">
					<div>
						AI Grade
							<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
						<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
						
					</div>
					<div class="in-field-ckbox">
						<procedure:component-options>
							<span class="marg-left10"> <input type="radio"
								name="aigradean"
								ng-model="$parent.sectionData[sectionIndex].${key}"
								value="${uuid}" ng-disabled="$parent.patientdata.freeze">
								${label}
							</span>
						</procedure:component-options>
					</div>
				</procedure:component>
				<procedure:procedure-layout
							id="06fa0b44-4719-491b-8850-fad32f255517"
							section="TAVI_PROCEDURE_COMMENTS_GROUP">
							<procedure:component id="_aigradecomnt">
								<span class="com-icon"
									ng-click="showAngiographyCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
									class="fa fa-commenting" aria-hidden="true"></i></span>
							</procedure:component>
						</procedure:procedure-layout>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-12 col-lg-12 pad5 mi-hgt-err"
					style="">
					<procedure:component id="_angiographycomment"> ${label}
        <textarea class="txtarea-new-des"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-disabled="$parent.patientdata.freeze"></textarea>
					</procedure:component>
				</div>
		</div>
	</div>
</procedure:procedure-layout>