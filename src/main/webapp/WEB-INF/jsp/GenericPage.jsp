<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="lang" value="${pageContext.response.locale.language}" />
<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="modal fade" id="errorModal" role="dialog"
		aria-labelledby="tit" aria-hidden="true" data-backdrop="static"
		data-keyboard="false">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header bg-gradient-info text-white">
					<h5 class="modal-title" id="exampleModalLongTitle1">
						<fmt:message key="label.error" />
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
								<div class="card-body" style="color: red;">
									<fmt:message key="label.errorMsg" />
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
	<div class="modal fade" id="updateLabData" role="dialog"
		aria-labelledby="tit" aria-hidden="true" data-backdrop="static"
		data-keyboard="false">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header bg-gradient-info text-white">
					<h5 class="modal-title" id="exampleModalLongTitle1">
						<fmt:message key="label.updateLabData" />
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
									<fmt:message key="label.labUpdatesuccess" />
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

	<div class="modal fade" id="errorLabData" role="dialog"
		aria-labelledby="tit" aria-hidden="true" data-backdrop="static"
		data-keyboard="false">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header bg-gradient-info text-white">
					<h5 class="modal-title" id="exampleModalLongTitle1">
						<fmt:message key="label.updateLabData" />
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
								<div class="card-body" style="color: red;">
									<fmt:message key="label.laberror" />
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
	<div class="modal fade" id="deleteLabData" tabindex="-1" role="dialog"
		aria-labelledby="tit" aria-hidden="true" data-backdrop="static"
		data-keyboard="false">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header bg-gradient-info text-white">
					<h5 class="modal-title" id="exampleModalLongTitle">
						<fmt:message key="label.deleteLabTest" />
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						onclick="clearmesgLab()" aria-label="Close" title="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-12">
							<div class="card shadow mb-4">
								<div class="card-body">
									<input type="hidden" id="labIDNew"> <input
										type="hidden" id="labRowNo">
<!-- 										<input type="hidden" id="labObject">
 -->									<fmt:message key="label.deleteLabConfirm" />
								</div>
							</div>

						</div>
					</div>
				</div>
				<div class="modal-footer">
					<div class="col-sm-12 text-center">
						<span id="labdeletesuccess"><font color="green"><fmt:message
									key="label.labdeletesuccess" /></font></span>
					</div>
					<input type="button" value="Yes" class="btn btn-green"
						id="deleteLabBtn" onclick="deleteLab()">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal" onclick="clearmesgLab()">
						<fmt:message key="label.cancel" />
					</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="updateRadData" tabindex="-1" role="dialog"
		aria-labelledby="tit" aria-hidden="true" data-backdrop="static"
		data-keyboard="false">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header bg-gradient-info text-white">
					<h5 class="modal-title" id="exampleModalLongTitle2">
						<fmt:message key="label.updateRadData" />
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
									<fmt:message key="label.RadUpdatesuccess" />
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
	<div class="modal fade" id="deleteRadData" tabindex="-1" role="dialog"
		aria-labelledby="tit" aria-hidden="true" data-backdrop="static"
		data-keyboard="false">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header bg-gradient-info text-white">
					<h5 class="modal-title" id="exampleModalLongTitle">
						<fmt:message key="label.deleteRadTest" />
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						onclick="clearmesgRad()" aria-label="Close" title="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-12">
							<div class="card shadow mb-4">
								<div class="card-body">
									<input type="hidden" id="radID"> <input type="hidden"
										id="radRowNo">
									<fmt:message key="label.deleteradConfirm" />
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<div class="col-sm-12 text-center">
						<span id="raddeletesuccess"><font color="green"><fmt:message
									key="label.raddeletesuccess" /></font></span>
					</div>
					<input value="Yes" type="button" class="btn btn-green"
						onclick="deleteRad()" id="deleteRadBtn">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal" onclick="clearmesgRad()">
						<fmt:message key="label.cancel" />
					</button>

				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="update_ppdtest" tabindex="-1" role="dialog"
		aria-labelledby="tit" aria-hidden="true" data-backdrop="static"
		data-keyboard="false">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header bg-gradient-info text-white">
					<h5 class="modal-title" id="exampleModalLongTitleUpdate">
						<fmt:message key="label.updatePpdData" />
					</h5>
					<h5 class="modal-title" id="exampleModalLongTitleAdd">
						<fmt:message key="label.addPpdData" />
					</h5>
					<button type="button" class="close" onclick="clearppd()" data-dismiss="modal"
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
												<label for="updatetypeoftest"
													class="col-sm-5 col-form-label"><fmt:message
														key="label.typeOfTest" /><span  class="red"
													style="color: red;">*</span> </label>
												<div class="col-sm-7">
													<select id="updatetypeoftest" class="form-control">
														<option selected="selected" value=""><fmt:message
																key="label.select" /></option>
													</select>
												</div>
												<div class="col-sm-12 text-center">
													<span id="updatetypeoftestError" style="display: none;"><b><font
															color="red"><fmt:message
																	key="label.typeoftestError" /></font></b></span>
												</div>
											</div>
										</div>

										<div class="col-sm-6">
											<div class="form-group row">
												<label for="updatereasonoftest"
													class="col-sm-5 col-form-label"><fmt:message
														key="label.ReasonofTest" /> :<span  class="red"
													style="color: red;">*</span> </label>
												<div class="col-sm-7">
													<select id="updatereasonoftest" class="form-control">
														<option selected="selected" value=""><fmt:message
																key="label.select" /></option>
													</select>
												</div>
												<%--  <span id="updatereasonoftestError"  style="display:none;"><b><font color="red"><fmt:message key="label.updatereasonoftestError" /></font></b></span> --%>
											</div>
										</div>
									</div>
									<div id="hideppd1">
										<div class="one newdiv1 text-center">
											<h5>PPD1</h5>
										</div>
										<div class="row">
											<div class="col-sm-6">
												<div class="form-group row">
													<label for="updatePPDTestDate1"
														class="col-sm-5 col-form-label"><fmt:message
															key="label.DateofTest" /> : </label>
													<div class="col-sm-7">
														<input type="text" class="form-control"
															id="updatePPDTestDate1" readonly="readonly"
															style="background: white;">
													</div>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group row">
													<label for="updatePPDReadingDate1"
														class="col-sm-5 col-form-label"><fmt:message
															key="label.DateofReading" /> : </label>
													<div class="col-sm-7">
														<input type="text" class="form-control"
															id="updatePPDReadingDate1" readonly="readonly"
															style="background: white;">
													</div>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group row">
													<label for="updateppdreading1"
														class="col-sm-5 col-form-label"><fmt:message
															key="label.reading" /></label>
													<div class="col-sm-7">
														<input type="text" class="form-control "
															id="updateppdreading1">
													</div>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group row">
													<label for="updateppdresult1"
														class="col-sm-5 col-form-label"><fmt:message
															key="label.result" /> :</label>
													<div class="col-sm-7">
														<!-- <input type="text" class="form-control "
															id="updateppdresult1"> -->
														<input type="number" style="float: left; width: 80%;"
															class="form-control numberonly" min ="0" max="99" maxlength ="2" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
															id="updateppdresult1" name="last_name"
															onkeydown="javascript: return ['Backspace','Delete','ArrowLeft','ArrowRight'].includes(event.code) ? true : !isNaN(Number(event.key)) &amp;&amp; event.code!=='Space'">
														<span class="red"
															style="color: red; float: right; width: 17%; margin: 3px auto; padding: 2px;">MM</span>
													</div>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group row">
													<label for="ppd1docinterpret"
														class="col-sm-5 col-form-label"><fmt:message
															key="label.docinterpret" /> :</label>
													<div class="col-sm-7">
														<select id="ppd1docinterpret" class="form-control">
															<option selected="selected" value=""><fmt:message
																	key="label.select" /></option>
														</select>
													</div>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group row">
													<label for="updateppdnotes1"
														class="col-sm-5 col-form-label"><fmt:message
															key="label.notes" /> :</label>
													<div class="col-sm-7">
														<textarea class="form-control" id="updateppdnotes1"
															rows="2" cols="50" maxlength="300"></textarea>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div id="hideppd2">
										<div class="one newdiv1 text-center">
											<h5>PPD2</h5>
										</div>
										<div class="row">
											<div class="col-sm-6">
												<div class="form-group row">
													<label for="updatePPDTestDate2"
														class="col-sm-5 col-form-label"> <fmt:message
															key="label.DateofTest" />:
													</label>
													<div class="col-sm-7">
														<input type="text" class="form-control"
															id="updatePPDTestDate2" readonly="readonly"
															style="background: white;">
													</div>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group row">
													<label for="updatePPDReadingDate2"
														class="col-sm-5 col-form-label"> <fmt:message
															key="label.DateofReading" />:
													</label>
													<div class="col-sm-7">
														<input type="text" class="form-control"
															id="updatePPDReadingDate2" readonly="readonly"
															style="background: white;">
													</div>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group row">
													<label for="updateppdreading2"
														class="col-sm-5 col-form-label"><fmt:message
															key="label.reading" /> :</label>
													<div class="col-sm-7">
														<input type="text" class="form-control "
															id="updateppdreading2">
													</div>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group row">
													<label for="updateppdresult2"
														class="col-sm-5 col-form-label"><fmt:message
															key="label.result" /> :</label>
													<div class="col-sm-7">
														<!-- <input type="text" class="form-control "
															id="updateppdresult1"> -->
														<input type="number" style="float: left; width: 80%;"
															class="form-control numberonly" min ="0" max="99" maxlength ="2" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
															id="updateppdresult2" name="last_name"
															onkeydown="javascript: return ['Backspace','Delete','ArrowLeft','ArrowRight'].includes(event.code) ? true : !isNaN(Number(event.key)) &amp;&amp; event.code!=='Space'">
														<span class="red"
															style="color: red; float: right; width: 17%; margin: 3px auto; padding: 2px;">MM</span>
													</div>
												</div>
											</div>

											<div class="col-sm-6">
												<div class="form-group row">
													<label for="ppd2docinterpret"
														class="col-sm-5 col-form-label"><fmt:message
															key="label.docinterpret" /> :</label>
													<div class="col-sm-7">
														<select id="ppd2docinterpret" class="form-control">
															<option selected="selected" value=""><fmt:message
																	key="label.select" /></option>
														</select>
													</div>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group row">
													<label for="updateppdnotes2"
														class="col-sm-5 col-form-label"><fmt:message
															key="label.notes" /> :</label>
													<div class="col-sm-7">
														<textarea class="form-control" id="updateppdnotes2"
															rows="2" cols="50" maxlength="300"></textarea>
													</div>
												</div>
											</div>
										</div>
										<input type="hidden" class="form-control " id="ppdid"><input
											type="hidden" class="form-control " id="rowppdid">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<div class="col-sm-12 text-center">
						<span id="ppdupdate" style="display: none;"><b><font
								color="green"><fmt:message key="label.ppdupdate" /></font></b></span>
					</div>
					<input type="button" class="btn btn-blue" id="addppd" value="Add">
					<input type="button" id="updateppdbutton" class="btn btn-blue"
						value="Update">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal" onclick="clearppd()">
						<fmt:message key="label.close" />
					</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="deletePpdData" tabindex="-1" role="dialog"
		aria-labelledby="tit" aria-hidden="true" data-backdrop="static"
		data-keyboard="false">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header bg-gradient-info text-white">
					<h5 class="modal-title" id="exampleModalLongTitle">
						<fmt:message key="label.deletePpdTest" />
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						onclick="clearmesgPPD()" aria-label="Close" title="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-12">
							<div class="card shadow mb-4">
								<div class="card-body">
									<input type="hidden" id="ppdID"> <input type="hidden"
										id="ppdRowNo">
									<fmt:message key="label.deleteppdConfirm" />
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<div class="col-sm-12 text-center">
						<span id="ppddeletesuccess"><font color="green"><fmt:message
									key="label.ppddeletesuccess" /></font></span>
					</div>
					<input type="button" value="Yes" id="deletePpdBtn"
						class="btn btn-green" onclick="deletePpd()">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal" onclick="clearmesgPPD()">
						<fmt:message key="label.cancel" />
					</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="updatePpdData" tabindex="-1" role="dialog"
		aria-labelledby="tit" aria-hidden="true" data-backdrop="static"
		data-keyboard="false">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header bg-gradient-info text-white">
					<h5 class="modal-title" id="exampleModalLongTitle3">
						<fmt:message key="label.updatePpdData" />
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
									<fmt:message key="label.PpdUpdatesuccess" />
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
	<div class="modal fade" id="igraTestModel" tabindex="-1"
		aria-labelledby="tit" style="display: none;" aria-hidden="true"
		data-backdrop="static" data-keyboard="false">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header bg-gradient-info text-white">
					<h5 class="modal-title" id="exampleModalLongTitle">
						<fmt:message key="addIgraTest" />
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
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
												<label class="col-sm-5 col-form-label">Type of Test:<span
													class="red" style="color: red;">*</span>
												</label>


												<div class="col-sm-7">
													<select id="igraTypeOfTest" class="form-control">
														<option selected="selected" value="">Select</option>
													</select>
												</div>
											</div>
											<div class="col-sm-12 text-left">
												<span id="resultErr1"><b><font color="red"><fmt:message
																key="label.resultErr1" /></font></b></span>
											</div>

											<div class="col-sm-12 text-left">
												<span id="resultErr4"><b><font color="red"><fmt:message
																key="label.resultErr4" /></font></b></span>
											</div>


										</div>

										<div class="col-sm-6">
											<div class="form-group row">
												<label class="col-sm-5 col-form-label">Result: </label>


												<div class="col-sm-7">
													<select id="igraResult" class="form-control">
														<option selected="selected" value="">Select</option>
													</select>
												</div>
											</div>
										</div>
										<%-- <div class="col-sm-12 text-left">
											<span id="resultErr2"><b><font color="red"><fmt:message
															key="label.resultErr2" /></font></b></span>
										</div> --%>

										<div class="col-sm-6">
											<div class="form-group row">
												<label for="igraExamDt" class="col-sm-5 col-form-label ">Test
													Date: <!-- <span  class="red" style="color: red;">*</span -->
												</label>
												<div class="col-sm-7">
													<input type="text" class="form-control" id="igraExamDt"
														readonly="readonly" style="background: white;">
												</div>
											</div>
										</div>
										<%-- <div class="col-sm-12 text-left">
											<span id="resultErr3"><b><font color="red"><fmt:message
															key="label.resultErr3" /></font></b></span>
										</div> --%>
										<div class="col-sm-6">
											<div class="form-group row">
												<label for="igraNote" class="col-sm-5 col-form-label">Note:</label>
												<div class="col-sm-7">
													<!-- <input type="text" class="form-control " id="igraNote"> -->
													<textarea class="form-control" id="igraNote" rows="2"
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
					<input type="button" class="btn btn-blue" onclick="addNewIgraRow()"
						value="Add"/ >
					<button type="button" class="btn btn-secondary"
						onclick="clearIgra()" data-dismiss="modal">
						<fmt:message key="label.close" />
					</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="updateIgraData" tabindex="-1" role="dialog"
		aria-labelledby="tit" aria-hidden="true" data-backdrop="static"
		data-keyboard="false">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header bg-gradient-info text-white">
					<h5 class="modal-title" id="exampleModalLongTitle2">
						<fmt:message key="label.updateIgraData" />
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
									<fmt:message key="label.IgraUpdateSuccess" />
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
	<div class="modal fade" id="deleteIgraData" tabindex="-1" role="dialog"
		aria-labelledby="tit" aria-hidden="true" data-backdrop="static"
		data-keyboard="false">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header bg-gradient-info text-white">
					<h5 class="modal-title" id="exampleModalLongTitle">
						<fmt:message key="label.deleteIgraTest" />
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						onclick="clearMsgIgra()" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-12">
							<div class="card shadow mb-4">
								<div class="card-body">
									<input type="hidden" id="igraId"> <input type="hidden"
										id="igraRowNo">
									<fmt:message key="label.igraConfirm" />
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<div class="col-sm-12 text-center">
						<span id="igradeletesuccess"><font color="green"><fmt:message
									key="label.igraDeleteSuccess" /></font></span>
					</div>
					<input value="Yes" type="button" id="deleteIgraBtn"
						class="btn btn-green" onclick="deleteIgra()">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal" onclick="clearMsgIgra()">
						<fmt:message key="label.cancel" />
					</button>

				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="radTestModel" tabindex="-1"
		aria-labelledby="tit" style="display: none;" aria-hidden="true"
		data-backdrop="static" data-keyboard="false">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header bg-gradient-info text-white">
					<h5 class="modal-title" id="exampleModalLongTitle">
						<fmt:message key="addRadTest" />
					</h5>
					<button type="button" class="close" onclick="clearcheckrad()"
						data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-12">
							<div class="card shadow mb-4">
								<div class="card-body">
									<table width="100%" border="0" cellspacing="0" cellpadding="0"
										id="radTestlist"
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
					<input type="button" class="btn btn-blue"
						onclick="multipleCheckRad()" value="Add"/ >
					<button type="button" class="btn btn-secondary"
						onclick="clearcheckrad()" data-dismiss="modal">
						<fmt:message key="label.close" />
					</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="adddrug_m" tabindex="-1" role="dialog"
		aria-labelledby="tit" aria-hidden="true" data-backdrop="static"
		data-keyboard="false">
		<div class="modal-dialog modal-dialog-centered modal-xl"
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
	</div>
	<div class="modal fade" id="validateUser" tabindex="-1" role="dialog"
		aria-labelledby="tit" aria-hidden="true" data-backdrop="static"
		data-keyboard="false">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header bg-gradient-info text-white">
					<h5 class="modal-title" id="exampleModalLabel">Validate User</h5>
					<button type="button" class="close" data-dismiss="modal"
						onclick="clearUser()" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group row">
									<label for="validateusername" class="col-sm-5 col-form-label">UserName:<span
										class="red" style="color: red;">*</span>
									</label>
									<div class="col-sm-7">
										<input type="text" class="form-control" id="validateusername"
											name="validateusername">
									</div>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group row">
									<label for="validatepassword" class="col-sm-5 col-form-label ">Password:<span
										class="red" style="color: red;">*</span></label>
									<div class="col-sm-7">
										<input type="password" class="form-control"
											id="validatepassword" name="validatepassword">
									</div>
								</div>
							</div>
							<input type="hidden" id="updateCount"> 
							<input type="hidden" id="updateExid"> 
							<input type="hidden" id="updateCode"> 
							<input type="hidden" id="updateTest">
							<input type="hidden" id="updateReqId"> 
							<input type="hidden" id="updatePatient"> 
							<input type="hidden" id="updatePatCd"> 
							<input type="hidden" id="updateNotifId"> 
							<input type="hidden" id="updateContId">
							
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<span id="credentialError" style="display: none;"> <font
						color="red"> <b><fmt:message key="label.userAuth" /></b></font></span>
					<button type="button" class="btn btn-primary"
						onclick="validateUser()">Submit</button>
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal" onclick="clearUser()">Close</button>
				</div>
			</div>
		</div>
	</div>
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
												type="hidden" id="procType" type="text" /> <input
												type="hidden" id="reqId" type="text" /> <input
												type="hidden" id="regId" type="text" />
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
	</div>

	<script>
	function viewDocument(protypeNotif){
		if(protypeNotif!= ""){
			viewfiles("0",protypeNotif);
		}else {
			viewfiles("0",proctype);
		}
	}
	
	function viewfiles(dataArray){
		let examObj = JSON.parse(dataArray.getAttribute('examData'));
		let proctype = examObj[0].procType;
		//alert(examObj[0].reqId);
		  var myJSONObj =JSON.stringify({"reqid": examObj[0].reqId,"regid": examObj[0].patCd,"procid":examObj[0].exId,"proctype":examObj[0].procType});
		  viewFileApiCall(myJSONObj,proctype);
		}
	function viewFileApiCall(myJSONObj,proctype){
		if(proctype != ""){
	 		   $.ajax({
	 			  	 type: "POST",
	  			     url:context+"/apiResponse?method=getpatientdocs",
	  			  	 headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
	  			  	 contentType : "application/json",
	  			  	 crossDomain : true,
					 data : myJSONObj,	
					 dataType : "json",
	  				 success: function (data) {
		  				if(data.code == "1"){
		  				var byteCharacters = atob(data.details);
			  			var byteNumbers = new Array(byteCharacters.length);
			  			for (var i = 0; i < byteCharacters.length; i++) {
			  			  byteNumbers[i] = byteCharacters.charCodeAt(i);
			  			}
			  			var byteArray = new Uint8Array(byteNumbers);
			  			var blob = new Blob([byteArray], { type: 'application/pdf' });
			  			var dataUrl = URL.createObjectURL(blob);
			  			window.open(dataUrl, '_blank');
		  				}
		  				if(data.code == "-3"){}
		  			},
	      	        error: function(request,status,errorThrown) {
	      	        }
	  			});
			  }
	}	
	
	function uploadfiles(examDataObj){
	    let p_examObj = JSON.parse(examDataObj.getAttribute('examData'));
	    let proctype = p_examObj[0].procType;
		$("#procID").val(p_examObj[0].exId);
		$("#procType").val(p_examObj[0].procType);
		$("#regId").val(p_examObj[0].patCd);
		$("#reqId").val(p_examObj[0].reqId);
		$('#uploadDoc').modal('show');
		
		if(proctype == "lab"){
			$("#docFor").text('<fmt:message key="label.uploadLab"/>');
		}
		if(proctype == "rad"){
			$("#docFor").text('<fmt:message key="label.uploadRad"/>');
		}
		if(proctype == "ppd"){
			$("#docFor").text('<fmt:message key="label.uploadPpd"/>');
		}
		if(proctype == "igra"){
			$("#docFor").text('<fmt:message key="label.uploadIgra"/>');
		}
	}
	function uploadDoc(){
		let reqId = $("#reqId").val();
		let regId = $("#regId").val();
			if($("#procType").val() == "lab" || $("#procType").val() == "rad" || $("#procType").val() == "ppd" || $("#procType").val() == "igra"){
				procid = $("#procID").val();
				proctype= $("#procType").val();
			}
			else{
				procid = "0";
			}
			
			const fileInput_Pat = [];
		    $('.fileUpload_n').each(function() {
		      const input = $(this)[0];
		      if (input.files.length > 0) {
		        $.each(input.files, function(i, file) {
		        	fileInput_Pat.push(file);
		        });
		      }
		    });
			const fileInput_Notif = [];
		    $('.fileUpload_notif').each(function() {
		      const input = $(this)[0];
		      if (input.files.length > 0) {
		        $.each(input.files, function(i, file) {
		        	fileInput_Notif.push(file);
		        });
		      }
		    });
			if (fileInput_Pat.length > 0){
				uploadApiCall(fileInput_Pat,proctype,reqId,regId);
			}
			if(fileInput_Notif.length > 0){
				uploadApiCall(fileInput_Notif,proctype1,reqId,regId);
			}
		}
		var fileType = ""; validImageTypes = ['gif', 'jpeg', 'png', 'pdf']; idTypeForUpload = "";
		
		function uploadApiCall(fileInput,proctype,reqId, regId) {
			if(fileInput!= null && validImageTypes.includes(fileType)){
				//const selectedFiles = fileInput.files;
				 const formData = new FormData();
			  	if(fileInput.length > 0){
			  	    $.each(fileInput, function(i, file) {
			  	      formData.append('files', file);
			  	    });
		          }
			   	  formData.append('reqid',reqId);
			   	  formData.append('regid',regId);
			   	  formData.append('procid',procid);
			   	  formData.append('proctype',proctype);
			   	  if(procid != "" && proctype != ""){
			   	  $.ajax({
			   		 url:context+"/getBackendResposeInspFile1?method=uploadpatientdocs",
			         type: 'POST',
			         data: formData,
			         enctype:'multipart/form-data',
			         headers: {"Authorization": "Bearer " +sessionStorage.getItem('tbcid')},
			         timeout : 180000,
					 processData: false,
					 contentType: false,
					 cache:false,
			         success: function(response) {
		  					  var uploadfile = JSON.parse(response);
			            	  if(uploadfile.code == "1"){
			            		  if(uploadfile.details > 0){
			            			  $('#fileUploadSuccessImageName_n').show();
			            			  $('#fileUploadSuccessImageName_n').text('<fmt:message key="label.successDoc"/>');
			            			  $("#procID").val("");
			          				  $("#procType").val("");
			            		  }
			            		  else {
			            			  $('#fileUploadSuccessImageName_n').show();
			                		  $('#fileUploadSuccessImageName_n').text('<fmt:message key="label.failDoc"/>');
				                  }
			                  }		              
			            	},
			              error: function(error) {	                    	
			              }
			          });
			   	  }
			   	}
		}
		
	function delete_labrow(dataObj){
			let examObj = JSON.parse(dataObj.getAttribute('examData'));
			let exId = examObj[0].exId; 
			let lrow = examObj[0].rowNum;
			$('#labRowNo').val(examObj[0].rowNum);
			$('#labIDNew').val(examObj[0].exId);
			//$('#labOject').val(dataObj);
			labtestName = examObj[0].testName;
			if(exId==''){
				$('#labrow'+lrow).remove();
				labtest= $.grep(labtest, function(dt) {
				return dt.value != labtestName;
			});
			}
		   if(exId!=''){
		    $('#deleteLabData').modal('show');	
		    $( "#deleteLabBtn" ).attr( "disabled", false ); 
		    }
		}
	
	function addLabNewRow(self){
		   let labtest = {};
		   labtest.code = self.find("td:eq(0)").text().trim();
		   labtest.result = self.find("td:eq(8)").find("select").val();
		   labtest.requester = self.find("td:eq(10)").find("select").val();
		   labtest.locationtype='E';
		   labtest.location = sessionStorage.getItem('loccode');
		   let rowcount = self.find("td:eq(1)").text().trim();
		   labtest.exdate = $('#labDate'+rowcount).val();
           labtest.inoculationdate =  $('#lInoculationDate'+rowcount).val();
		   labtest.exno =  $('#lLabNo'+rowcount).val();
		   labtest.specimen = self.find("td:eq(4)").find("select").val();
		   labtest.drugsensitive = self.find("td:eq(9)").find("select").val();
           labtest.doctorname=''; 
           
		   return labtest;
	}
	/* function validateDate(date){
		let formatDate = ''
		if(date != null && date !='null' && date != ''){
	     	formatDate=$.datepicker.formatDate('dd/mm/yy', date); 
		}
		return formatDate;
	} */	
       
        
        
	</script>
</body>
</html>