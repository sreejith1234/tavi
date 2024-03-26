<%@page language="java" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="procedure"
	uri="/WEB-INF/view/module/procedure-tracking-core-module/resources/procedure_tracking.tld"%>

	<script>

		$('.prp-surtvi-his-r').after($('.prp-surtvi-com-r'));

		$('.prp-trafem-his-r').after($('.prp-trafem-com-r'));

		$('.prp-traax-his-r').after($('.prp-traax-com-r'));

		$('.prp-tracvl-his-r').after($('.prp-tracvl-com-r'));

		$('.prp-carart-his-r').after($('.prp-carart-com-r'));

	</script>

<procedure:procedure-layout id="f5134c20-c7d7-44e9-bf72-d1d5188c3fd0"
	section="TAVI_PREPHV_PROCEDUREPLAN">
	<div class="col-xs-12"
		ng-controller="TaviPrePHVProcedurePlanController"
		ng-init="init('f5134c20-c7d7-44e9-bf72-d1d5188c3fd0', '${today}')"
		style="padding: 20px 10px;">
		<div class="col-xs-12" ng-form="ppForm" style="padding: 0;">
			<div class="col-xs-12" style="padding: 0;">
				<div class="col-xs-12" style="padding: 0;">
					<div class="col-xs-12 col-md-4" style="padding: 0;">
					<procedure:component id="_surtype"></procedure:component>
					<procedure:component-option id="_surtype1" cid="_surtype">
						<span class="marg-left10"> <input type="radio"
							name="${key}" ng-model="$parent.sectionData[sectionIndex].${key}"
							value="${uuid}" ng-disabled="$parent.patientdata.freeze">
							${label} 
							
						</span>
					</procedure:component-option>
					<procedure:component id="_surtavi">
					<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
									<!-- <span  class="prp-surtvi-his-r cursor" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
					</procedure:component>
					<procedure:procedure-layout
								id="7c03dfab-d050-41dd-9533-fcf67b5843ed"
								section="TAVI_PROCEDURE_COMMENTS_GROUP">
								<procedure:component id="_surgtavicomnt">
									<span class="prp-surtvi-com-r cursor"
										ng-click="showProcedurePlanCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
										class="fa fa-commenting" aria-hidden="true"></i></span>
								</procedure:component>
							</procedure:procedure-layout>
				</div>
			</div>
				<procedure:component id="_surtavi"></procedure:component>

				<div class="col-xs-12" style="margin-top: 20px;">
					<div class="col-xs-6 col-md-4">
						<procedure:component-option id="_surtavi1" cid="_surtavi">

							<span class="marg-left10"> <input type="radio"
								name="${key}"
								ng-required="$parent.sectionData[sectionIndex].surtype == '08f7eaa0-6fa1-446e-a3ac-32b7109a8d63'"
								ng-model="$parent.sectionData[sectionIndex].${key}"
								value="${uuid}"
								ng-disabled="$parent.patientdata.freeze || $parent.sectionData[sectionIndex].surtype != '08f7eaa0-6fa1-446e-a3ac-32b7109a8d63'">
								Trans apical
							</span>
						</procedure:component-option>
					</div>
					<div class="col-xs-6 col-md-4">
						<procedure:component-option id="_surtavi2" cid="_surtavi">
							<span class="marg-left10"> <input type="radio"
								name="${key}"
								ng-required="$parent.sectionData[sectionIndex].surtype == '08f7eaa0-6fa1-446e-a3ac-32b7109a8d63'"
								ng-model="$parent.sectionData[sectionIndex].${key}"
								value="${uuid}"
								ng-disabled="$parent.patientdata.freeze || $parent.sectionData[sectionIndex].surtype != '08f7eaa0-6fa1-446e-a3ac-32b7109a8d63'">
								Trans aortic
							</span>
						</procedure:component-option>
						<span class="err-span-v2" ng-show="ppForm.surtavi.$error.required">Please
							choose Surgical TAVI option.</span>
					</div>
				</div>
			</div>
			<div class="col-xs-12" style="padding: 0; margin-top: 20px;">
				<div class="col-xs-12" style="padding: 0;">
					<procedure:component-option id="_surtype2" cid="_surtype">
						<span class="marg-left10"> <input type="radio"
							name="${key}" ng-model="$parent.sectionData[sectionIndex].${key}"
							value="${uuid}" ng-disabled="$parent.patientdata.freeze">
							${label}
						</span>
					</procedure:component-option>
				</div>
				<div class="col-xs-12" style="margin-top: 20px;">

					<div class="col-xs-12" style="padding: 0">
						<div class="col-xs-6 col-md-3">
							<div>
								Trans femoral
								<procedure:component id="_transfem">
								<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
									<!-- <span  class="prp-trafem-his-r cursor" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
								</procedure:component>
								<procedure:procedure-layout
									id="7c03dfab-d050-41dd-9533-fcf67b5843ed"
									section="TAVI_PROCEDURE_COMMENTS_GROUP">
									<procedure:component id="_trnsfemcomnt">
										<span class="prp-trafem-com-r cursor"
											ng-click="showProcedurePlanCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
											class="fa fa-commenting" aria-hidden="true"></i></span>
									</procedure:component>
								</procedure:procedure-layout>
							</div>
							<procedure:component id="_transfem">
								<div>
									<procedure:component-options>
										<span class="marg-left10"> <input type="radio"
											name="transfem"
											ng-required="$parent.sectionData[sectionIndex].surtype == '81b3611d-be3b-4a9d-a047-66efb9c624d3_'"
											ng-model="$parent.sectionData[sectionIndex].${key}"
											value="${uuid}"
											ng-disabled="$parent.patientdata.freeze || $parent.sectionData[sectionIndex].surtype != '81b3611d-be3b-4a9d-a047-66efb9c624d3'">
											${label}
										</span>
									</procedure:component-options>
									<span class="err-span-v2"
										ng-show="ppForm.transfem.$error.required">Please choose
										transfemoral option.</span>
								</div>
								
							</procedure:component>
						</div>
						<div class="col-xs-6 col-md-3">
							<div>
								Trans axillary
								<procedure:component id="_transax">
								<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
									<!-- <span  class="prp-traax-his-r cursor" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
								</procedure:component>
								<procedure:procedure-layout
									id="7c03dfab-d050-41dd-9533-fcf67b5843ed"
									section="TAVI_PROCEDURE_COMMENTS_GROUP">
									<procedure:component id="_trnsauxcomnt">
										<span class="prp-traax-com-r cursor"
											ng-click="showProcedurePlanCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
											class="fa fa-commenting" aria-hidden="true"></i></span>
									</procedure:component>
								</procedure:procedure-layout>
							</div>
							<procedure:component id="_transax">
								<div>
									<procedure:component-options>
										<span class="marg-left10"> <input type="radio"
											name="transax"
											ng-required="$parent.sectionData[sectionIndex].surtype == '81b3611d-be3b-4a9d-a047-66efb9c624d3_'"
											ng-model="$parent.sectionData[sectionIndex].${key}"
											value="${uuid}"
											ng-disabled="$parent.patientdata.freeze || $parent.sectionData[sectionIndex].surtype != '81b3611d-be3b-4a9d-a047-66efb9c624d3'">
											${label}
										</span>
									</procedure:component-options>
									<span class="err-span-v2"
										ng-show="ppForm.transax.$error.required">Please choose
										transaxillary option.</span>
								</div>
								
							</procedure:component>
						</div>
						<div class="col-xs-6 col-md-3">
							<div>
								Trans caval
								<procedure:component id="_trancaval">
								<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
									<!-- <span  class="prp-tracvl-his-r cursor" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
								</procedure:component>
								<procedure:procedure-layout
									id="7c03dfab-d050-41dd-9533-fcf67b5843ed"
									section="TAVI_PROCEDURE_COMMENTS_GROUP">
									<procedure:component id="_trnscavcomnt">
										<span class="prp-tracvl-com-r cursor"
											ng-click="showProcedurePlanCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
											class="fa fa-commenting" aria-hidden="true"></i></span>
									</procedure:component>
								</procedure:procedure-layout>
							</div>
							<procedure:component id="_trancaval">
								<div>
									<procedure:component-options>
										<span class="marg-left10"> <input type="radio"
											name="trancaval"
											ng-required="$parent.sectionData[sectionIndex].surtype == '81b3611d-be3b-4a9d-a047-66efb9c624d3_'"
											ng-model="$parent.sectionData[sectionIndex].${key}"
											value="${uuid}"
											ng-disabled="$parent.patientdata.freeze || $parent.sectionData[sectionIndex].surtype != '81b3611d-be3b-4a9d-a047-66efb9c624d3'">
											${label}
										</span>
									</procedure:component-options>
									<span class="err-span-v2"
										ng-show="ppForm.transax.$error.required">Please choose
										trans caval option.</span>
								</div>
								
							</procedure:component>
						</div>
						<div class="col-xs-6 col-md-3">
							<div>
								Carotid artery
								<procedure:component id="_carotid">
								<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
									<!-- <span  class="prp-carart-his-r cursor" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
								</procedure:component>
								<procedure:procedure-layout
									id="7c03dfab-d050-41dd-9533-fcf67b5843ed"
									section="TAVI_PROCEDURE_COMMENTS_GROUP">
									<procedure:component id="_cararterycomnt">
										<span class="prp-carart-com-r cursor"
											ng-click="showProcedurePlanCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
											class="fa fa-commenting" aria-hidden="true"></i></span>
									</procedure:component>
								</procedure:procedure-layout>
							</div>
							<procedure:component id="_carotid">
								<div>
									<procedure:component-options>
										<span class="marg-left10"> <input type="radio"
											name="carotid"
											ng-required="$parent.sectionData[sectionIndex].surtype == '81b3611d-be3b-4a9d-a047-66efb9c624d3_'"
											ng-model="$parent.sectionData[sectionIndex].${key}"
											value="${uuid}"
											ng-disabled="$parent.patientdata.freeze || $parent.sectionData[sectionIndex].surtype != '81b3611d-be3b-4a9d-a047-66efb9c624d3'">
											${label}
										</span>
									</procedure:component-options>
									<span class="err-span-v2"
										ng-show="ppForm.transax.$error.required">Please choose
										carotid artery option.</span>
								</div>

							</procedure:component>
						</div>
					</div>
				</div>
			</div>
			<%-- <div class="col-xs-12" style="padding:0;">
				<div class="col-xs-6" style="padding: 20px 0;">
					<div class="col-xs-12 pad5">
						<procedure:component id="_surtype">
						</procedure:component>
						<procedure:component-option id="_surtype1" cid="_surtype">
							<span class="marg-left10"> <input type="radio"
								name="${key}"
								ng-model="$parent.sectionData[sectionIndex].${key}"
								value="${uuid}" ng-disabled="$parent.patientdata.freeze">
								${label}
							</span>
						</procedure:component-option>
					</div>
					<div class="col-xs-12" style="padding-left:0;">
						<div class="col-xs-12"
							style="padding: 10px; border: 1px solid #CCC; min-height: 70px;">
							<div class="col-xs-12 col-sm-6 pad5">
								<procedure:component id="_surtavi">
								</procedure:component>
								<div>
									<procedure:component-option id="_surtavi1" cid="_surtavi">
										<span class="marg-left10"> <input type="radio"
											name="${key}"
											ng-required="$parent.sectionData[sectionIndex].surtype == '08f7eaa0-6fa1-446e-a3ac-32b7109a8d63'"
											ng-model="$parent.sectionData[sectionIndex].${key}"
											value="${uuid}" ng-disabled="$parent.patientdata.freeze || $parent.sectionData[sectionIndex].surtype != '08f7eaa0-6fa1-446e-a3ac-32b7109a8d63'">
											${label}
										</span>
									</procedure:component-option>
									<procedure:component-option id="_surtavi2" cid="_surtavi">
										<span class="marg-left10"> <input type="radio"
											name="${key}"
											ng-required="$parent.sectionData[sectionIndex].surtype == '08f7eaa0-6fa1-446e-a3ac-32b7109a8d63'"
											ng-model="$parent.sectionData[sectionIndex].${key}"
											value="${uuid}" ng-disabled="$parent.patientdata.freeze || $parent.sectionData[sectionIndex].surtype != '08f7eaa0-6fa1-446e-a3ac-32b7109a8d63'">
											${label}
										</span>
									</procedure:component-option>
									<span class="err-span-v2" ng-show="ppForm.surtavi.$error.required">Please choose Surgical TAVI option.</span>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 pad5 ">
								<procedure:component id="_transfem">
									<div>${label}
										<procedure:component-options>
											<span class="marg-left10"> <input type="radio"
												name="transfem"
												ng-required="$parent.sectionData[sectionIndex].surtype == '08f7eaa0-6fa1-446e-a3ac-32b7109a8d63'"
												ng-model="$parent.sectionData[sectionIndex].${key}"
												value="${uuid}" ng-disabled="$parent.patientdata.freeze || $parent.sectionData[sectionIndex].surtype != '08f7eaa0-6fa1-446e-a3ac-32b7109a8d63'">
												${label}
											</span>
										</procedure:component-options>
										<span class="err-span-v2" ng-show="ppForm.transfem.$error.required">Please choose transfemoral option.</span>
									</div>
								</procedure:component>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-6" style="padding: 20px 0;">
					<div class="col-xs-12 pad5">
						<procedure:component id="_surtype">
						</procedure:component>
						<procedure:component-option id="_surtype2" cid="_surtype">
							<span class="marg-left10"> <input type="radio"
								name="${key}"
								ng-model="$parent.sectionData[sectionIndex].${key}"
								value="${uuid}" ng-disabled="$parent.patientdata.freeze">
								${label}
							</span>
						</procedure:component-option>
					</div>
					<div class="col-xs-12" style="padding-right:0;">
						<div class="col-xs-12"
							style="padding: 10px; border: 1px solid #CCC; min-height: 60px;">
							<div class="col-xs-12 col-sm-8 pad5">
								<procedure:component id="_transarttavi">
									
								</procedure:component>
								<div>
									<procedure:component-option id="_transarttavi1"
										cid="_transarttavi">
										<span class="marg-left10"> <input type="radio"
											name="${key}"
											ng-required="$parent.sectionData[sectionIndex].surtype == '81b3611d-be3b-4a9d-a047-66efb9c624d3'"
											ng-model="$parent.sectionData[sectionIndex].${key}"
											value="${uuid}" ng-disabled="$parent.patientdata.freeze || $parent.sectionData[sectionIndex].surtype != '81b3611d-be3b-4a9d-a047-66efb9c624d3'">
											${label}
										</span>
									</procedure:component-option>
									<procedure:component-option id="_transarttavi2"
										cid="_transarttavi">
										<span class="marg-left10"> <input type="radio"
											name="${key}"
											ng-required="$parent.sectionData[sectionIndex].surtype == '81b3611d-be3b-4a9d-a047-66efb9c624d3'"
											ng-model="$parent.sectionData[sectionIndex].${key}"
											value="${uuid}" ng-disabled="$parent.patientdata.freeze || $parent.sectionData[sectionIndex].surtype != '81b3611d-be3b-4a9d-a047-66efb9c624d3'">
											${label}
										</span>
									</procedure:component-option>
									<span class="err-span-v2" ng-show="ppForm.transarttavi.$error.required">Please choose Trans arterial TAVI option.</span>
								</div>
							</div>
							<div class="col-xs-12 col-sm-4 pad5 ">
								<procedure:component id="_transax">
									<div>${label}</div>
									<div>
										<procedure:component-options>
											<span class="marg-left10"> <input type="radio"
												name="transax"
												ng-required="$parent.sectionData[sectionIndex].surtype == '81b3611d-be3b-4a9d-a047-66efb9c624d3'"
												ng-model="$parent.sectionData[sectionIndex].${key}"
												value="${uuid}" ng-disabled="$parent.patientdata.freeze || $parent.sectionData[sectionIndex].surtype != '81b3611d-be3b-4a9d-a047-66efb9c624d3'">
												${label}
											</span>
										</procedure:component-options>
										<span class="err-span-v2" ng-show="ppForm.transax.$error.required">Please choose transaxillary option.</span>
									</div>
								</procedure:component>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
			<procedure:component id="_diraor">
				<div class="in-field" style="margin-top: 20px;">
					<input type="radio" name="diraor"
						ng-model="$parent.sectionData[sectionIndex].${key}" ng-value="1"
						ng-disabled="$parent.patientdata.freeze" /> ${label}
			</procedure:component>
			<procedure:component id="_transap">
				<input type="radio" name="diraor"
					ng-model="$parent.sectionData[sectionIndex].${key}" ng-value="2"
					ng-disabled="$parent.patientdata.freeze" />
            ${label} </procedure:component>
		</div>
			</div> --%>
			<div class="col-xs-12" style="margin-top: 30px;">
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_medevolr">
						<div>${label}
							<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
							<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
								
							
						</div>
						<div class="in-field-ckbox">
							<procedure:component-options>
								<span class="marg-left10"> <input type="radio"
									name="medevolr"
									ng-model="$parent.sectionData[sectionIndex].${key}"
									value="${uuid}" ng-disabled="$parent.patientdata.freeze">
									${label}
								</span>
							</procedure:component-options>
						</div>
					</procedure:component>
					<procedure:procedure-layout
								id="7c03dfab-d050-41dd-9533-fcf67b5843ed"
								section="TAVI_PROCEDURE_COMMENTS_GROUP">
								<procedure:component id="_medevolutcomnt">
									<span class="com-icon"
										ng-click="showProcedurePlanCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
										class="fa fa-commenting" aria-hidden="true"></i></span>
								</procedure:component>
							</procedure:procedure-layout>
				</div>

				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err">
					<procedure:component id="_edws3">
						<div>
							Edwards Sapien 3
							<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
							<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
						</div>
						<div class="in-field-ckbox">
							<procedure:component-options>
								<span class="marg-left10"> <input type="radio"
									name="edws3"
									ng-model="$parent.sectionData[sectionIndex].${key}"
									value="${uuid}" ng-disabled="$parent.patientdata.freeze">
									${label}
								</span>
							</procedure:component-options>
						</div>
					</procedure:component>
					<procedure:procedure-layout
								id="7c03dfab-d050-41dd-9533-fcf67b5843ed"
								section="TAVI_PROCEDURE_COMMENTS_GROUP">
								<procedure:component id="_edwardscomnt">
									<span class="com-icon"
										ng-click="showProcedurePlanCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
										class="fa fa-commenting" aria-hidden="true"></i></span>
								</procedure:component>
							</procedure:procedure-layout>
				</div>

				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err"
					style="min-height: 80px;">
					<procedure:component id="_lotus">
						<div>${label}
							<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
							<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
						</div>
						<div class="in-field-ckbox">
							<procedure:component-options>
								<span class="marg-left10"> <input type="radio"
									name="lotus"
									ng-model="$parent.sectionData[sectionIndex].${key}"
									value="${uuid}" ng-disabled="$parent.patientdata.freeze">
									${label}
								</span>
							</procedure:component-options>
						</div>
					</procedure:component>
					<procedure:procedure-layout
								id="7c03dfab-d050-41dd-9533-fcf67b5843ed"
								section="TAVI_PROCEDURE_COMMENTS_GROUP">
								<procedure:component id="_lotuscomnt">
									<span class="com-icon"
										ng-click="showProcedurePlanCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
										class="fa fa-commenting" aria-hidden="true"></i></span>
								</procedure:component>
							</procedure:procedure-layout>
				</div>

				

				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 "
					style="min-height: 85px;">
					<procedure:component id="_jena">
						<div>${label}
							<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
							<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
						</div>
						<div class="in-field-ckbox">
							<procedure:component-options>
								<span class="marg-left10"> <input type="radio"
									name="jena" ng-model="$parent.sectionData[sectionIndex].${key}"
									value="${uuid}" ng-disabled="$parent.patientdata.freeze">
									${label}
								</span>
							</procedure:component-options>
						</div>
					</procedure:component>
					<procedure:procedure-layout
								id="7c03dfab-d050-41dd-9533-fcf67b5843ed"
								section="TAVI_PROCEDURE_COMMENTS_GROUP">
								<procedure:component id="_jenacomnt">
									<span class="com-icon"
										ng-click="showProcedurePlanCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
										class="fa fa-commenting" aria-hidden="true"></i></span>
								</procedure:component>
							</procedure:procedure-layout>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 pad5 mi-hgt-err"
					style="">
					<procedure:component id="_hydra">
						<div>${label}
							<ahimsa-archive expression = "${expr3}" callback = "loadArchive" ></ahimsa-archive>
							<!-- <span  class="his-icon" ng-click="showHistoryClicked($event,'${expr3}')"><i class="fa fa-history" aria-hidden="true"></i></span> -->
						</div>
						<div class="in-field-ckbox">
							<procedure:component-options>
								<span class="marg-left10"> <input type="radio"
									name="hydra"
									ng-model="$parent.sectionData[sectionIndex].${key}"
									value="${uuid}" ng-disabled="$parent.patientdata.freeze">
									${label}
								</span>
							</procedure:component-options>
						</div>
					</procedure:component>
					<procedure:procedure-layout
								id="7c03dfab-d050-41dd-9533-fcf67b5843ed"
								section="TAVI_PROCEDURE_COMMENTS_GROUP">
								<procedure:component id="_hydracomnt">
									<span class="com-icon"
										ng-click="showProcedurePlanCommentBox($event, '$parent.commentsData[sectionIndex].${key}')"><i
										class="fa fa-commenting" aria-hidden="true"></i></span>
								</procedure:component>
							</procedure:procedure-layout>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-12 col-lg-12 pad5 mi-hgt-err"
					style="">
					<procedure:component id="_other"> ${label}
        <textarea class="txtarea-new-des-demo"
							ng-model="$parent.sectionData[sectionIndex].${key}"
							ng-disabled="$parent.patientdata.freeze"></textarea>
					</procedure:component>
				</div>
			</div>
		</div>
	</div>
</procedure:procedure-layout>