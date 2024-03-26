<%@page import="org.openmrs.module.ahimsa.procedure.core.web.CoreProcedureWebConstants"%>
<%@page language="java"%>
<%@ include file="/WEB-INF/view/module/ahimsa-core/template/taglib.jsp"%>
<%@ taglib prefix="procedure" uri="/WEB-INF/view/module/procedure-tracking-core-module/resources/procedure_tracking.tld"%>

<div class="bg-valve white-back">
	<div class="row">
		<div ng-form="$ctrl.valveForm">
			<table class="table table-condensed valve-table">
				<tr>
					<th>Valve Name</th>
					<th>Valve Size</th>
					<th>#</th>
					<th>
						<button type="button" ng-show = "$ctrl.valveForm.$valid" ng-click="$ctrl.selectNewValve()"
							class="btn btn-warning valve-add-btn1">+</button>
					</th>
				</tr>
				<tr ng-repeat="valveInfo in $ctrl.valvesSelectedArray track by $index">
					<td class = "col-xs-4">
						<div class="form-group ">
							<select ng-disabled="valveInfo.uuid != '0'" class="in-field" ng-class =  "{'valve-delete':valveInfo.isRetired}"
								ng-model="valveInfo.selectedValveUuid"
								ng-change="$ctrl.resetSelectedOptionToDefault($index);">
								<option ng-repeat="v in valveInfo.valves" ng-value="v.valveUuid"
									ng-disabled="v.valveUuid == '0' || v.disable ">
									{{v.valveName}}</option>
							</select>
							<input type="hidden" ng-model="$ctrl.tempHolderForHiddenInputs[$index]"
								name="_hidden_valve_name_{{$index}}" ng-required="valveInfo.selectedValveUuid == '0'" />
							<span class="error"
								ng-show="$ctrl.valveForm['_hidden_valve_name_'+$index].$error.required">Mandatory
								field</span>
						</div>
					</td>
					<td class = "col-xs-4">
						<div class="form-group">
							<select class="in-field" ng-model="valveInfo.selectedOptionUuid" ng-class =  "{'valve-delete':valveInfo.isRetired}">
								<option
									ng-repeat="option in $ctrl.getOptionsOfSelectdValve(valveInfo.selectedValveUuid)"
									ng-value="option.uuid" ng-disabled="option.uuid == '0'">{{option.name}}</option>
							</select>
							<input type="hidden" ng-model="$ctrl.tempHolderForHiddenInputs[$index+'_size']"
								name="_hidden_valve_size_{{$index}}" ng-required="valveInfo.selectedOptionUuid == '0'" />
							<span class="error"
								ng-show="$ctrl.valveForm['_hidden_valve_size_'+$index].$error.required">Mandatory
								field</span>
						</div>

					</td>
					<td class = "col-xs-2">
							<ahimsa-archive class="valve-archive" expression = "{{valveInfo.uuid}},1" callback = "loadArchive" ></ahimsa-archive>
					</td>
					<td class = "col-xs-2">
						<div class="valve-edit"><i class="fa fa-trash"  ng-show = "valveInfo.isRetired == false" ng-click="$ctrl.markAsDelete($index)"></i></div>
					</td>
				</tr>
			</table>
		</div>

		<!-- enable this foronly hospital super admin -->
		<procedure:isUserType type="normaladmin,superadmin"> 
			<div class="col-md-12 p-0">
				<button type="button" class="valve_add create-valve-btn"
					ng-click="$ctrl.onCreateValveButtonClickEvent()">Create New Valve</button>
			</div>
		</procedure:isUserType>
		
	</div>


	<!--############################ CREATE VALVE ##################-->
	<div ng-if="$ctrl.showCreateValvePopUp">
		<tavi-create-valve register-handler="$ctrl.createValveOptionHandler"
			template-url="${pageContext.request.contextPath}/ahimsa/procedure/cardiology/tavi/valve/createnewvalve.htm">
		</tavi-create-valve>
	</div>

	<!--############################ CREATE VALVE ##################-->


</div>