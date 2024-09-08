<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="lang" value="${pageContext.response.locale.language}" />
<%@page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<body>
	<div class="modal fade" id="waiting_list_1" tabindex="-1" role="dialog"
		aria-labelledby="tit" aria-hidden="true" data-backdrop="static"
		data-keyboard="false">
		<div class="modal-dialog  modal-xl" role="document">
			<!--modal-dialog-centered-->
			<div class="modal-content">
				<div class="modal-header bg-gradient-info text-white">
					<h5 class="modal-title" id="exampleModalLongTitle">
						<fmt:message key="label.edit" />
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="card shadow border-bottom-info">
						<div class="card-header  d-flex bg-gradient-light ">
							<h6 class="m-0 font-weight-bold text-info  hdd">
								<fmt:message key="label.personalInfo" />
							</h6>
						</div>
						<div class="card-body pt-2 pb-1">
							<div class="container">
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group row">
											<label for="civilIDReg" class="col-sm-5 col-form-label"><fmt:message
													key="label.IDNum" />: </label>
											<div class="col-sm-7">
												<input type="text" class="form-control" id="civilIDReg"
													disabled="disabled">
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group row">
											<label class="col-sm-5 col-form-label"> </label>
											<div class="col-sm-7"></div>
										</div>

									</div>

									<div class="col-sm-6">
										<div class="form-group row">
											<label for="nameRegEn" class="col-sm-5 col-form-label"><fmt:message
													key="label.nameEn" /> :<span class="red"
												style="color: red;">*</span></label>
											<div class="col-sm-7">
												<input type="text" class="form-control" id="nameRegEn">
											</div>
										</div>

									</div>
									<div class="col-sm-6">
										<div class="form-group row">
											<label for="nameRegAr" class="col-sm-5 col-form-label"><fmt:message
													key="label.nameAr" /> :<span class="red"
												style="color: red;">*</span></label>
											<div class="col-sm-7">
												<input type="text" class="form-control" id="nameRegAr">
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group row">
											<label for="genderReg" class="col-sm-5 col-form-label"><fmt:message
													key="label.gender" />:<span class="red"
												style="color: red;">*</span></label>
											<div class="col-sm-7">
												<select class="form-control" id="genderReg">
													<option value=""><fmt:message key="label.select" />
													<option value="M"><fmt:message key="label.male" />
													<option value="F"><fmt:message key="label.female" />
												</select>
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group row">
											<label for="nationalityReg" class="col-sm-5 col-form-label"><fmt:message
													key="label.nationality" /> :<span class="red"
												style="color: red;">*</span></label>
											<div class="col-sm-7">
												<select class="form-control" id="nationalityReg">
													<option value=""><fmt:message key="label.select" />
												</select>
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group row">
											<label for="dobReg" class="col-sm-5 col-form-label"><fmt:message
													key="label.dob" /> :<span class="red" style="color: red;">*</span></label>
											<div class="col-sm-7">
												<input type="text" class="form-control datepicker"
													id="dobReg">
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group row">
											<label for="maritalReg" class="col-sm-5 col-form-label"><fmt:message
													key="label.marital" /> :</label>
											<div class="col-sm-7">
												<select class="form-control" id="maritalReg">
													<option value=""><fmt:message key="label.select" />
												</select>
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group row">
											<label for="governorateReg" class="col-sm-5 col-form-label"><fmt:message
													key="label.governorate" /> :</label>
											<div class="col-sm-7">
												<select class="form-control" id="governorateReg">
													<option value=""><fmt:message key="label.select" />
												</select>
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group row">
											<label for="districtReg" class="col-sm-5 col-form-label"><fmt:message
													key="label.district" /> :</label>
											<div class="col-sm-7">
												<select class="form-control" id="districtReg">
													<option selected="selected" value=""><fmt:message
															key="label.select" /></option>
												</select>
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group row">
											<label for="addressReg" class="col-sm-5 col-form-label"><fmt:message
													key="label.address" /> :</label>
											<div class="col-sm-7">
												<input type="text" class="form-control" id="addressReg">
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group row">
											<label for="bloodgroupReg" class="col-sm-5 col-form-label"><fmt:message
													key="label.bloodgroup" /> :<span class="red"
												style="color: red;">*</span></label>
											<div class="col-sm-7">
												<input type="text" class="form-control" id="bloodgroupReg">
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group row">
											<label for="sponsorReg" class="col-sm-5 col-form-label"><fmt:message
													key="label.sponsor" /> :</label>
											<div class="col-sm-7">
												<input type="number" class="form-control" id="sponsorReg">
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group row">
											<label for="worplaceReg" class="col-sm-5 col-form-label"><fmt:message
													key="label.worplace" />:</label>
											<div class="col-sm-7">
												<input type="text" class="form-control" id="worplaceReg">
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group row">
											<label for="occupationReg" class="col-sm-5 col-form-label"><fmt:message
													key="label.occupation" /> :</label>
											<div class="col-sm-7">
												<select class="form-control" id="occupationReg">
													<option value=""><fmt:message key="label.select" />
												</select>
											</div>
										</div>
									</div>
									<div class="col-sm-6" id="occupationRegOther">
										<div class="form-group row">
											<label for="occupationRegOther1"
												class="col-sm-5 col-form-label"><fmt:message
													key="label.otheroccupation" /></label>
											<div class="col-sm-7">
												<input type="text" class="form-control"
													id="occupationRegOther1">
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-6">

										<div class="form-group row">
											<label for="recidencyReg" class="col-sm-5 col-form-label"><fmt:message
													key="label.recidency" /> :</label>
											<div class="col-sm-7">
												<select class="form-control" id="recidencyReg">
													<option value=""><fmt:message key="label.select" />
												</select>
											</div>
										</div>
									</div>

									<div class="col-sm-6" id="recidencyRegOther">

										<div class="form-group row">
											<label for="recidencyRegOther1"
												class="col-sm-5 col-form-label"><fmt:message
													key="label.otherresidency" /></label>
											<div class="col-sm-7">
												<input type="text" class="form-control"
													id="recidencyRegOther1">
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-6">

										<div class="form-group row">
											<label for="entryDateReg" class="col-sm-5 col-form-label"><fmt:message
													key="label.entryDate" /> :</label>
											<div class="col-sm-7">
												<input type="text" class="form-control" id="entryDateReg">
											</div>
										</div>
									</div>
									<div class="col-sm-6" id="edit_field_wrapper">
										<div class="form-group row">
											<label for="mobileReg0" class="col-sm-5 col-form-label"><fmt:message
													key="label.mobile" /> :</label>
											<div class="col-sm-7">
												<div class="input-group" id="mobilePass">
													<input type="tel" maxlength="14"
														class="form-control phone_namereg" name="phoneReg"
														id="mobileReg0" onchange="validateMobileReg(0)">
													<div class="input-group-append">
														<button class="btn btn-info add_buttonedit"
															name="add_buttonedit" type="button" title="Add">
															<i class="fas fa-plus"></i>
														</button>
													</div>
												</div>
												<div style="color: red;" id="mobileRegValidationMsg0"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<div class="text-center col-sm-12">
						<span id="patEditManField"> <b><font color="red"><fmt:message
										key="label.manField" /> </font></b></span> <span id="patUpdateCivilId"><b><font
								color="green"><fmt:message key="label.DetailsUpdated" /></font></b></span>
					</div>
					<button type="button" class="btn btn-blue"
						onclick="regPatientCiviledit()" title="Edit Patient Details">
						<fmt:message key="label.save" />
					</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="waiting_list" tabindex="-1" role="dialog"
		aria-labelledby="tit" aria-hidden="true" data-backdrop="static"
		data-keyboard="false">
		<div class="modal-dialog  modal-xl" role="document">
			<!--modal-dialog-centered-->
			<div class="modal-content">
				<div class="modal-header bg-gradient-info text-white">
					<h5 class="modal-title" id="exampleModalLongTitle">
						<fmt:message key="label.otherIDType" />
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						onclick="clearcheckother()" title="Close" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="col-lg-12 text-center mt-2">
					<span id="passcivilOpenNotif" style="display: none;"><b><font
							color="red"><fmt:message key="label.opennotifyAvailable" /></font></b>
					</span> <span id="notifyPass"></span>
				</div>
				<div class="modal-body">
					<div class="card shadow border-bottom-info">
						<div class="card-header  d-flex bg-gradient-light ">
							<h6 class="m-0 font-weight-bold text-info  hdd">
								<fmt:message key="label.patientInfo" />
							</h6>
						</div>
						<div class="card-body pt-2 pb-1">
							<div class="container">
								<div class="row">
									<div class="col-lg-12">
										<label for="idTypeP" class="text-navy pt-0 col-form-label"><b><fmt:message
													key="label.idType" />: </b><span class="red"
											style="color: red;">*</span></label>
										<div class="form-check form-check-inline pl-5">
											<input class="form-check-input" type="radio" id="idTypeP"
												name="idType" value="P">&nbsp; <label
												class="form-check-label" for="idTypeP"><fmt:message
													key="passport" /></label>
										</div>

										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" id="idTypeU"
												name="idType" value="U" value="option2"> <label
												class="form-check-label" for="idTypeU"><fmt:message
													key="unknown" /></label>
										</div>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" id="idTypeG"
												name="idType" value="G" value="option2"> <label
												class="form-check-label" for="idTypeG"><fmt:message
													key="gcc" /></label>
										</div>
									</div>
								</div>
								<div class="row mt-4">
									<div class="col-sm-6" id="pass">
										<div class="form-group row">
											<label for="passportId" class="col-sm-3 col-form-label"
												id="changeIDName"><fmt:message key="passportId" />:<span
												class="red" style="color: red;">*</span></label>
											<div class="col-sm-9">
												<input type="text" class="form-control" id="passportId"
													onchange="getinfoOther()">
											</div>
										</div>
									</div>
									<div class="col-sm-6" id="nationalityPass">
										<div class="form-group row">
											<label for="nationalityOther" class="col-sm-3 col-form-label"><fmt:message
													key="label.nationality" /> :<span class="red"
												style="color: red;">*</span></label>
											<div class="col-sm-9">
												<select name="sel" id="nationalityOther"
													class="form-control">
													<option selected="selected" value=""><fmt:message
															key="label.select" /></option>
												</select>
											</div>
											<%-- <span id="manField"
														style="display: none;"> <b><font
														color="red"><fmt:message
														key="label.manField" /> </font></b></span> --%>
										</div>
									</div>

									<div class="col-sm-6" id="pass1">
										<div class="form-group row">
											<label class="col-sm-3 col-form-label" id=""> </label>
											<div class="col-sm-9">
												<button class="btn btn-primary btn-block" type="button"
													onClick="validatepassAPI()">
													<fmt:message key="label.submit" />
												</button>
												<div class="text-center col-sm-12">
													<span id="manField" style="display: none;"> <b><font
															color="red"><fmt:message key="label.manField" />
														</font></b></span> <span id="passNotFound" style="display: none;"> <b><font
															color="red"><fmt:message key="label.passNotFound" />
														</font></b></span>
												</div>


											</div>
										</div>
									</div>
									<div id="hrPass">
										<hr />
									</div>
									<div class="col-sm-6" id="nameenPass">
										<div class="form-group row">
											<label for="nameOtherEn" class="col-sm-3 col-form-label"><fmt:message
													key="label.nameEn" /> : <span class="red"
												style="color: red;">*</span></label>
											<div class="col-sm-9">
												<input type="text" class="form-control" id="nameOtherEn">
											</div>
										</div>
									</div>
									<div class="col-sm-6" id="namearPass">
										<div class="form-group row">
											<label for="nameOtherAr" class="col-sm-3 col-form-label"><fmt:message
													key="label.nameAr" />: <span class="red"
												style="color: red;">*</span> </label>
											<div class="col-sm-9">
												<input type="text" class="form-control" id="nameOtherAr">
											</div>
										</div>
									</div>
									<div class="col-sm-6" id="genderPass">
										<div class="form-group row">
											<label for="genderOther" class="col-sm-3 col-form-label"><fmt:message
													key="label.gender" /> :<span class="red"
												style="color: red;">*</span></label>
											<div class="col-sm-9">
												<select name="sel" id="genderOther" class="form-control">
													<option selected="selected" value=""><fmt:message
															key="label.select" /></option>
													<option value="M"><fmt:message key="label.male" />
													<option value="F"><fmt:message key="label.female" />
												</select>
											</div>
										</div>
									</div>
									<div class="col-sm-6" id="dobPass">
										<div class="form-group row">
											<label for="dobOther" class="col-sm-3 col-form-label"><fmt:message
													key="label.dob" /> :<span class="red" style="color: red;">*</span></label>
											<div class="col-sm-9">
												<input type="text" class="form-control  datepicker"
													id="dobOther">
											</div>
										</div>
									</div>

									<div class="col-sm-6" id="govPass">

										<div class="form-group row">
											<label for="governorateOther" class="col-sm-3 col-form-label"><fmt:message
													key="label.governorate" /> : <span class="red"
												style="color: red;">*</span></label>
											<div class="col-sm-9">
												<select name="sel" id="governorateOther"
													class="form-control">
													<option selected="selected" value=""><fmt:message
															key="label.select" /></option>
												</select>
											</div>
										</div>
									</div>
									<div class="col-sm-6" id="districtPass">
										<div class="form-group row">
											<label for="districtOther" class="col-sm-3 col-form-label"><fmt:message
													key="label.district" /> : <span class="red"
												style="color: red;">*</span></label>
											<div class="col-sm-9">
												<select name="sel" id="districtOther" class="form-control">
													<option selected="selected" value=""><fmt:message
															key="label.select" /></option>
												</select>
											</div>
										</div>
									</div>
									<div class="col-sm-6" id="bloodgrpPass">

										<div class="form-group row">
											<label for="bloodgroupOther" class="col-sm-3 col-form-label"><fmt:message
													key="label.bloodgroup" /> :</label>
											<div class="col-sm-9">
												<input type="text" class="form-control" id="bloodgroupOther">
											</div>
										</div>
									</div>
									<div class="col-sm-6" id="addressPass">
										<div class="form-group row">
											<label for="addressOther" class="col-sm-3 col-form-label"><fmt:message
													key="label.address" /> :<span class="red"
												style="color: red;">*</span></label>
											<div class="col-sm-9">
												<input type="text" class="form-control" id="addressOther">
											</div>
										</div>
									</div>


									<div class="col-sm-6" id="maritalPass">
										<div class="form-group row">
											<label for="maritalOther" class="col-sm-3 col-form-label"><fmt:message
													key="label.marital" /> :<span class="red"
												style="color: red;">*</span></label>
											<div class="col-sm-9">
												<select class="form-control" id="maritalOther">
													<option value=""><fmt:message key="label.select" /></option>
												</select>
											</div>
										</div>
									</div>
									<div class="col-sm-6" id="worplacePass">
										<div class="form-group row">
											<label for="worplaceOther" class="col-sm-3 col-form-label"><fmt:message
													key="label.worplace" /> :</label>
											<div class="col-sm-9">
												<input type="text" class="form-control" id="worplaceOther">
											</div>
										</div>
									</div>
									<div class="col-sm-6" id="sponsorPass">
										<div class="form-group row">
											<label for="sponsorOther" class="col-sm-3 col-form-label"><fmt:message
													key="label.sponsor" /> :</label>
											<div class="col-sm-9">
												<input type="number" class="form-control" id="sponsorOther">
											</div>
										</div>
									</div>
									<div class="col-sm-6" id="entryPass">

										<div class="form-group row">
											<label for="entryDateOther" class="col-sm-3 col-form-label"><fmt:message
													key="label.entryDate" /> :</label>
											<div class="col-sm-9">
												<input type="text" class="form-control" id="entryDateOther">
											</div>
										</div>
									</div>
								</div>
								<!--  -->
								<div class="row">
									<div class="col-sm-6" id="occupationPass">
										<div class="form-group row">
											<label for="occupationOther" class="col-sm-3 col-form-label"><fmt:message
													key="label.occupation" /> :<span class="red"
												style="color: red;">*</span></label>
											<div class="col-sm-9">
												<!--  <input type="text" class="form-control" id="occupationOther">	 -->
												<select class="form-control" id="occupationOther">
													<option selected="selected" value=""><fmt:message
															key="label.select" /></option>
												</select>
											</div>
										</div>
									</div>
									<div class="col-sm-6" id="occupationOtherPass">
										<div class="form-group row">
											<label for="occupationOther1" class="col-sm-3 col-form-label"><fmt:message
													key="label.otheroccupation" /></label>
											<div class="col-sm-9">
												<input type="text" class="form-control"
													id="occupationOther1">
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-6" id="recidencyPass">
										<div class="form-group row">
											<label for="recidencyOther" class="col-sm-3 col-form-label"><fmt:message
													key="label.recidency" /> :</label>
											<div class="col-sm-9">
												<select class="form-control" id="recidencyOther">
													<option selected="selected" value=""><fmt:message
															key="label.select" /></option>
												</select>
											</div>
										</div>
									</div>
									<div class="col-sm-6" id="residencyOtherPass">
										<div class="form-group row">
											<label for="residencyOther1" class="col-sm-3 col-form-label"><fmt:message
													key="label.otherresidency" /></label>
											<div class="col-sm-9">
												<input type="text" class="form-control" id="residencyOther1">
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-6" id="field_wrapper1">
										<div class="form-group row" id="mobileId0">
											<label for="patMobile0" class="col-sm-3 col-form-label"><fmt:message
													key="label.mobile" />:</label>
											<div class="col-sm-9">
												<div class="input-group">
													<input type="tel" class="form-control patMobile"
														maxlength="14" name="patMobile" id="patMobile0"
														onchange="validateMobile(0)">
													<div class="input-group-append">
														<button class="btn btn-info add_button1" type="button"
															title="Add">
															<i class="fas fa-plus"></i>
														</button>
													</div>

												</div>
												<div style="color: red;" id="patMobileValidationMsg0"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<div class="text-center col-sm-12">
						<span id="saveDetailsSuccess"><font color="green"><fmt:message
									key="label.DetailsSuccess" /></font></span> <span id="passcivilAvailable"
							style="display: none;"><b><font color="red"> <fmt:message
										key="label.passcivil" /></font></b></span> <span id="civilpassno"></span> <span
							id="patManField" style="display: none;"> <b><font
								color="red"><fmt:message key="label.manField" /> </font></b></span> <span
							id="patAlreadyRegCivilId" style="display: none;"> <b><font
								color="red"><fmt:message key="label.patAlreadyRegCivilId" />
							</font></b></span>

					</div>
					<button type="button" class="btn btn-blue" id="registerOther"
						onclick="registerOther()" title="Register Patient">
						<fmt:message key="label.save" />
					</button>

				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="waiting_list_2" tabindex="-1" role="dialog"
		aria-labelledby="tit" aria-hidden="true" data-backdrop="static"
		data-keyboard="false">
		<div class="modal-dialog  modal-lg" role="document">
			<!--modal-dialog-centered-->
			<div class="modal-content">
				<div class="modal-header bg-gradient-info text-white">
					<h5 class="modal-title" id="exampleModalLongTitle">
						<fmt:message key="label.disease" />
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close" title="Close" onclick="clearcheck()">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<div class="row">
						<div class="col-lg-12">
							<div class="card shadow mb-4">

								<div class="card-body">
									<table width="100%" border="0" cellspacing="0" cellpadding="0"
										id="diseaselist"
										class="table  table-striped table-bordered bdrr1">
										<tbody>

										</tbody>
									</table>
								</div>
							</div>

						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-blue" id="hosdisease">
						Add</button>
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal" onclick="clearcheck()">
						<fmt:message key="label.close" />
					</button>

				</div>

			</div>
		</div>
	</div>

	<%-- <div class="modal fade" id="adddrug_m" tabindex="-1" role="dialog"
		aria-labelledby="tit" aria-hidden="true" data-backdrop="static"
		data-keyboard="false">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header bg-gradient-info text-white">
					<h5 class="modal-title" id="exampleModalLongTitle">
						<fmt:message key="label.addLabTest" />
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						onclick="clearcheck()" aria-label="Close" title="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-12">
							<div class="card shadow mb-4">
								<div class="card-body">
									<table width="100%" border="0" cellspacing="0" cellpadding="0"
										id="labTestlist"
										class="table  table-striped table-bordered bdrr1">
										<tbody></tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-blue" onclick="multipleCheck()"
						value="Add" />
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal" onclick="clearcheck()">
						<fmt:message key="label.close" />
					</button>
				</div>
			</div>
		</div>
	</div> --%>



	<div class="modal fade" id="add_medicaltreatment" tabindex="-1"
		role="dialog" aria-labelledby="tit" aria-hidden="true"
		data-backdrop="static" data-keyboard="false">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header bg-gradient-info text-white">
					<h5 class="modal-title" id="exampleModalLongTitle">
						<fmt:message key="label.addMedical" />
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close" title="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-12">
							<div class="card shadow mb-4">
								<div class="card-body">
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group row">
												<label for="medicalExaminationType"
													class="col-sm-5 col-form-label"><fmt:message
														key="label.treatmentType" />:<span  class="red"
													style="color: red;">*</span> </label>
												<div class="col-sm-7">
													<select name="medicalExaminationType"
														id="medicalExaminationType" class="form-control">
														<option value=""><fmt:message key="label.select" />
													</select>
												</div>
												<span id="medicalExaminationTypeError"
													style="display: none;"><b><font color="red"><fmt:message
																key="label.medicalExaminationTypeError" /></font></b></span>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group row">
												<label for="medicalResultName"
													class="col-sm-5 col-form-label"><fmt:message
														key="label.treatmentName" />:<span  class="red"
													style="color: red;">*</span> </label>
												<div class="col-sm-7">
													<input type="text" class="form-control "
														id="medicalResultName">
												</div>
												<%-- 							<span id="medicalResultNameError"  style="display:none;"><b><font color="red"><fmt:message key="label.medicalResultNameError" /></font></b></span>
 --%>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group row">
												<label for="medicalResult" class="col-sm-5 col-form-label"><fmt:message
														key="label.result" />:</label>
												<div class="col-sm-7">
													<input type="text" class="form-control " id="medicalResult">
												</div>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group row">
												<label for="medicalExaminationDate"
													class="col-sm-5 col-form-label "><fmt:message
														key="label.treatmentDate" />:</label>
												<div class="col-sm-7">
													<input type="text" class="form-control"
														id="medicalExaminationDate" name="last_name"
														readonly="readonly" style="background: white;">
												</div>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group row">
												<label for="medicalDoctor" class="col-sm-5 col-form-label"><fmt:message
														key="label.doctorName" />:</label>
												<div class="col-sm-7">
													<input type="text" class="form-control " id="medicalDoctor">
												</div>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group row">
												<label for="medicalNote" class="col-sm-5 col-form-label"><fmt:message
														key="label.notes" />:</label>
												<div class="col-sm-7">
													<textarea class="form-control" id="medicalNote" rows="2"
														cols="50" maxlength="300"></textarea>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-blue" onclick="addMedical()">
						<fmt:message key="add" />
					</button>
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal" onclick="clearMedical()">
						<fmt:message key="label.close" />
					</button>

				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="updateMedicalData" tabindex="-1"
		role="dialog" aria-labelledby="tit" aria-hidden="true"
		data-backdrop="static" data-keyboard="false">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header bg-gradient-info text-white">
					<h5 class="modal-title" id="exampleModalLongTitle3">
						<fmt:message key="label.updateMedicalData" />
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close" title="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-12">
							<div class="card shadow mb-4">
								<div class="card-body" style="color: green;">
									<fmt:message key="label.MedicalUpdatesuccess" />
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">
						<fmt:message key="label.close" />
					</button>
				</div>
			</div>
		</div>
	</div>



	<div class="modal fade" id="deleteMedicalData" tabindex="-1"
		role="dialog" aria-labelledby="tit" aria-hidden="true"
		data-backdrop="static" data-keyboard="false">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header bg-gradient-info text-white">
					<h5 class="modal-title" id="exampleModalLongTitle">
						<fmt:message key="label.deleteMedicalTest" />
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						onclick="clearmesgRad()" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-12">
							<div class="card shadow mb-4">
								<div class="card-body">
									<input type="hidden" id="medicalID"> <input
										type="hidden" id="medicalRowNo">
									<fmt:message key="label.deletemedicalConfirm" />
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<div class="col-sm-12 text-center">
						<span id="medicaldeletesuccess"><font color="green"><fmt:message
									key="label.medicaldeletesuccess" /></font></span>
					</div>
					<input value="Yes" type="button" id="deleteMedicalBtn"
						class="btn btn-green" onclick="deleteMedical()">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal" onclick="clearmesgMedical()">
						<fmt:message key="label.cancel" />
					</button>

				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="deleteDiseasehos" tabindex="-1"
		role="dialog" aria-labelledby="tit" aria-hidden="true"
		data-backdrop="static" data-keyboard="false">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header bg-gradient-info text-white">
					<h5 class="modal-title" id="exampleModalLongTitle">
						<fmt:message key="label.deleteDiseaseTest" />
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						onclick="clearmesgDisease()" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-12">
							<div class="card shadow mb-4">

								<div class="card-body">

									<input type="hidden" id="diseaseIDNew"> <input
										type="hidden" id="diseaseRowNo">

									<fmt:message key="label.deleteDiseaseConfirm" />


								</div>
							</div>

						</div>
					</div>


				</div>
				<div class="modal-footer">
					<div class="col-sm-12 text-center">
						<span id="diseasedeletesuccess"><font color="green"><fmt:message
									key="label.diseasedeletesuccess" /></font></span>
					</div>
					<input type="button" value="Yes" id="deleteDiseasebtn"
						class="btn btn-green" onclick="deletediseasehos()">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal" onclick="clearmesgDisease()">
						<fmt:message key="label.cancel" />
					</button>
				</div>
			</div>
		</div>
	</div>


<div class="modal fade" id="clearNotificationModal" tabindex="-1"
		role="dialog" aria-labelledby="tit" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
			 	<div class="modal-header bg-gradient-info text-white">
					<h5 class="modal-title" id="exampleModalLongTitle">
						<fmt:message key="label.clearMessageHeader" />
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						onclick="clearmesgLab()" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div> 
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-12">
							<div class="card shadow mb-4">
								<div class="card-body">
									<fmt:message key="label.clearMessageNotif" />
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-green"
						onclick="clearPageData()" data-dismiss="modal">
						<fmt:message key="label.yes" />
					</button>
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">
						<fmt:message key="label.cancel" />
					</button>

				</div>
			</div>
		</div>
</div>


<%-- 
	<div class="modal fade" id="uploadDoc" tabindex="-1" role="dialog"
		aria-labelledby="tit" aria-hidden="true" data-backdrop="static"
		data-keyboard="false">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header bg-gradient-info text-white">
					<h5 class="modal-title" id="exampleModalLongTitle">
						<fmt:message key="label.addfile" />
						<span id="docFor"></span>
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						onclick="clearUpload()" aria-label="Close" title="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-12" id="field_wrapper12">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label"><b
									class="text-info"><fmt:message key="label.uploadfile" /></b></label>
								<div class="col-sm-9">
									<div class="input-group">
										<!-- <input name="fileupload" type="file" class="form-control fileUpload" id="fileCivilId0"> -->
										<div class="input-group-append">
											<div class="input-group-append" style="display: block">
												<button class="btn btn-info add_button12" type="button"
													title="Add File">
													<i class="fas fa-plus"></i>
												</button>
												<span id="fileError" style="color: #2196f3;"><fmt:message
														key="label.fileError" /></span>
											</div>
											<input type="hidden" id="procID" type="text" /> <input
												type="hidden" id="procType" type="text" />

										</div>
									</div>
								</div>
							</div>
							<div class="form-group row" id="uploadDoc_n">
								<label for="fileCivilId_n0" class="col-sm-3 col-form-label"></label>
								<div class="col-sm-9">
									<div class="input-group">
										<input name="fileUpload_n" type="file"
											class="form-control fileUpload_n" id="fileCivilId_n0">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<span id="fileUploadSuccessImageName_n" style="color: green;"></span>
					<input type="button" class="btn btn-blue" onclick="uploadDoc()"
						value="Upload" />
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal" onclick="clearUpload()">
						<fmt:message key="label.close" />
					</button>
				</div>
			</div>
		</div>
	</div> --%>


	<!--Patient info modal-->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel1" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-xl"
			role="document">
			<!--modal-xl-->
			<div class="modal-content">
				<div class="modal-header n_head ">
					<h5 class="modal-title" id="exampleModalLabel1">
						<b><fmt:message key="notifInfo" /></b>
					</h5>
					<button class="close " type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">

					<div class="col-sm-12">
						<div id="divColapseBarHistoryold"></div>

					</div>
					<div class="modal-footer">
						<button class="btn btn-info" type="button" data-dismiss="modal">
							<fmt:message key="label.close" />
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--Diagonsis modal-->
	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel1" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-xl"
			role="document">
			<!--modal-xl-->
			<div class="modal-content">
				<div class="modal-header n_head ">
					<h5 class="modal-title" id="exampleModalLabel1">
						<b><fmt:message key="label.diagnosisInfo" /></b>
					</h5>
					<button class="close " type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">

					<div class="col-sm-12">
						<div id="divColapseBarHistoryDiagonsis"></div>

					</div>
					<div class="modal-footer">
						<button class="btn btn-info" type="button" data-dismiss="modal">
							<fmt:message key="label.close" />
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!--Lab modal-->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel1" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-xl"
			role="document">
			<!--modal-xl-->
			<div class="modal-content">
				<div class="modal-header n_head ">
					<h5 class="modal-title" id="exampleModalLabel1">
						<b><fmt:message key="label.labInfo" /></b>
					</h5>
					<button class="close " type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">

					<div class="col-sm-12">
						<div id="divColapseBarHistoryLab"></div>

					</div>
					<div class="modal-footer">
						<button class="btn btn-info" type="button" data-dismiss="modal">
							<fmt:message key="label.close" />
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="myModal3" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel1" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-xl"
			role="document">
			<!--modal-xl-->
			<div class="modal-content">
				<div class="modal-header n_head ">
					<h5 class="modal-title" id="exampleModalLabel1">
						<b><fmt:message key="label.radiologyInfo" /></b>
					</h5>
					<button class="close " type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">

					<div class="col-sm-12">
						<div id="divColapseBarHistoryRadiology"></div>

					</div>
					<div class="modal-footer">
						<button class="btn btn-info" type="button" data-dismiss="modal">
							<fmt:message key="label.close" />
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="ppdHistoryModal" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel1" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-xl"
			role="document">
			<!--modal-xl-->
			<div class="modal-content">
				<div class="modal-header n_head ">
					<h5 class="modal-title" id="exampleModalLabel1">
						<b><fmt:message key="label.ppdInfo" /></b>
					</h5>
					<button class="close " type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">

					<div class="col-sm-12">
						<div id="divColapseBarHistoryPPD"></div>

					</div>
					<div class="modal-footer">
						<button class="btn btn-info" type="button" data-dismiss="modal">
							<fmt:message key="label.close" />
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="notifSuccessModal" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel1" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header bg-gradient-info text-white">
					<h5 class="modal-title" id="exampleModalLongTitle">
						<span id="successlabel"></span>
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close" title="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-12">
							<div class="card shadow mb-4">
								<div class="card-body">
									<span id="successlabelMsg"></span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<div class="col-sm-12 text-center">
						<span id="notifyCreateSuccess" style="display: none;"><b><font
								color="green"><fmt:message key="label.notifyCreated" /></font></b></span>
						<%-- <span id="notifyVerifyOpenRequestError" style="display: none;"><b><fmt:message key="label.opennotifyAvailable" />
										<span id="notifyVerifyOpenRequestNo" style="color: red;"></span></b></span> --%>
						<span id="notifyCreateError" style="display: none; color: red;"><b><fmt:message
									key="label.opennotifyCreateAvailable" /> <span
								id="notifyCreatedNo" style="color: black;"></span></b></span>
					</div>
					<input value="Save" type="button" id="saveNotification"
						class="btn btn-green" onclick="saveNotification()">
					<!-- id="saveNotification"  createRequestNotification-->
					<!-- <input
						value="Update" type="button" class="btn btn-green"
						id="updateNotification" onclick="updateNotification()"> -->
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">
						<fmt:message key="label.cancel" />
					</button>

				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="viewUnknowPatientModal" tabindex="-1"
		role="dialog" aria-labelledby="tit" aria-hidden="true">
		<div class="modal-dialog  modal-lg" role="document">
			<div class="modal-content">
				<%-- <div class="modal-header bg-gradient-info text-white">
					<h5 class="modal-title" id="exampleModalLongTitle">
						<fmt:message key="label.unkownList" />
					</h5>
					<button type="button" class="close"
						data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div> --%>
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-12">
							<div class="card shadow border-bottom-info">
								<div class="card-header  d-flex bg-gradient-info">
									<h6 class="m-0 font-weight-bold text-white  hdd">
										<fmt:message key="unkownList" />
									</h6>
									<div class=" text-green  font-weight-bold text-center col-sm-6"></div>
								</div>
								<div class="card-body pt-3 pb-1">
									<table width="100%" border="0" cellspacing="0" cellpadding="5"
										class="text-dark table table-striped table-bordered"
										id="tableListUnkown">
										<!--id="dataTable1"-->
										<thead>
											<tr>
												<th class="bg-table"><fmt:message key="sl.No" /></th>
												<th class="bg-table"><fmt:message key="label.id" /></th>
												<th class="bg-table"><fmt:message key="label.loc" /></th>
												<th class="bg-table"><fmt:message
														key="label.notificationId" /></th>
											</tr>
										</thead>
										<tbody></tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">
						<fmt:message key="label.close" />
					</button>
				</div>

			</div>
		</div>
	</div>
	<script src="admin/jquery/jquery.min.js"></script>

</body>
</html>