<div class="create-modal-valve-popup">
<div class="create-modal-valve">
	<div class="col-xs-12 srch-pat-hd-new-des">
		<span class="heading">Create New Valve</span><span ng-click = "$ctrl.cancelOrClickEvent()" class="create-valve-close"><i
				class="fa fa-close pat-cls"></i></span>
	</div>
	<div class="col-xs-12 create-pop-border">
		<div class="row" ng-show="$ctrl.pageView == 'ADD'">
			<div class="col-md-12">
				<label>Archive Valve</label>
				<button type="button" class="create-valve-plus btn btn-warning"
					ng-click="$ctrl.addValvesToBeInserted()">+</button>
			</div>
			<div class="archive-valve-list-border col-xs-12">
				<div class="archive-valve-list col-md-4"
					ng-repeat="existingValve in $ctrl.existingValves track by $index">
					<div class="archive-valve-name">{{existingValve.valveName}}</div>
					<div class="flipswitch">
						<input type="checkbox" ng-model="existingValve.isRetired" ng-true-value="false"
							ng-false-value="true" name="flipswitch" class="flipswitch-cb" id="ina_act_{{$index}}">
						<label class="flipswitch-label" for="ina_act_{{$index}}">
							<div class="flipswitch-inner"></div>
							<div class="flipswitch-switch"></div>
						</label>
					</div>
					<div class="archive-valve-options col-md-12">
						<span>Size:&nbsp;{{existingValve.optionsAsString}}</span></div>
				</div>
			</div>
			<div ng-if="$ctrl.valvesToBeInserted.length > 0">
				<div class="col-md-6">
					<div class="form-group">
						<label>Valve Name</label>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Available valve sizes in mm seperated by comma (eg:23,22,25)</label>
					</div>
				</div>
			</div>

			<div ng-form="$ctrl.createValveForm">
				<div ng-repeat="valvesToAdd in $ctrl.valvesToBeInserted track by $index">
					<div class="col-md-6">
						<div class="form-group">
							<input type="text" ng-model="valvesToAdd.valveName" name="valve_name_{{$index}}"
								class="form-control" placeholder="Enter valve name" ng-required="true">
							<span class="error"
								ng-show="$ctrl.createValveForm['valve_name_'+$index].$error.required">Option name is
								mandatory</span>

						</div>
					</div>
					<div class="col-md-5">
						<div class="form-group">
							<input type="text" ng-model="valvesToAdd.valveSizes"
								ng-change="$ctrl.validateSizes(valvesToAdd)" name="valve_options_{{$index}}"
								class="form-control" placeholder="Eneter valve sizes" ng-required="true">
							<span class="error"
								ng-show="$ctrl.createValveForm['valve_options_'+$index].$error.required">Size is
								mandatory</span>
							<span class="error"
								ng-show="valvesToAdd.parseError.error">{{valvesToAdd.parseError.message}}</span>
						</div>

					</div>
					<div class="col-md-1">
						<div class="valve-edit"><i class="fa fa-trash" ng-click="$ctrl.markAsDelete($index)"></i></div>
					</div>


				</div>
			</div>

			<div class="col-md-12">
				<button type="button" class="valve-cntrl-btn btn btn-primary"
					ng-click = "$ctrl.saveClickEvent()"
					ng-show="$ctrl.createValveForm.$valid && !$ctrl.isParseErrorExists()">Save</button>&nbsp;
				<button type="button" ng-click = "$ctrl.cancelOrClickEvent()" class="valve-cntrl-btn create-valve-close btn btn-primary">Cancel</button>
			</div>
		</div>


		<!-- /////////////////////////////////////////////////// confirm box //////////////////////////// -->
		<div class="row confirm-valve-block" ng-if="$ctrl.pageView == 'CONFIRM' ">
			<div class="col-md-12" style="margin-bottom:10px;">
				<label class="confirm-valve"> <i class="fa fa-exclamation-triangle" aria-hidden="true"></i> Confirm the
					valves before submission.</label>
				<!-- <button type="button" class="create-valve-plus btn btn-warning back-valve"><i
						class="fa fa-long-arrow-left" aria-hidden="true"></i> Back to Valve</button> -->
			</div>
			<div class="col-md-6" >
				<div class="form-group">
					<label>Valve Name</label>
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					<label>Valve Size</label>
				</div>
			</div>
			<div ng-repeat="valvesToAdd in $ctrl.valvesToBeInserted">
				<div class="col-md-6" >
					<div class="form-group">
						<input type="text" disabled class="form-control" ng-model="valvesToAdd.valveName" >
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<input type="text" disabled class="form-control" ng-model="valvesToAdd.valveSizes" >
					</div>
				</div>
			</div>
			<div class="col-md-12">
				<button type="button" ng-click = "$ctrl.confirmAndSubmit()" class="valve-cntrl-btn btn btn-primary">Confirm</button>&nbsp;
				<button type="button" ng-click = "$ctrl.pageView = 'ADD'" class="valve-cntrl-btn create-valve-close btn btn-primary">Back</button>
			</div>
		</div>
		<!-- /////////////////////////////////////////////////// confirm box end //////////////////////// -->
	</div>
</div>
</div>