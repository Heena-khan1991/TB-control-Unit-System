package com.TB.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
//import org.apache.log4j.Logger;
import org.springframework.web.bind.annotation.RequestMethod;
import com.TB.model.PrintInspectorModel;
import com.TB.model.PrintModel;
import com.TB.util.JasperReportService;

@RestController
public class ReportController {
	private static final Logger logger = LoggerFactory.getLogger(ReportController.class);

	@PostMapping("/printSlipReportLab")
	public String printSlipReportLab(@RequestBody PrintModel dataLab, HttpServletResponse response,
			HttpServletRequest request, HttpSession session) {
		JSONObject json = new JSONObject(dataLab);
		session.setAttribute("dataLab", json.toString());
		return "Success";
	}

	@GetMapping(value = "/printReportLab")
	public void printReportLab(HttpServletResponse response, HttpServletRequest request, HttpSession session)
			throws Exception {
		try {
			String dataLab = (String) session.getAttribute("dataLab");
			JasperReportService jr = new JasperReportService();
			jr.JasperLabReport(response, dataLab);
			logger.info(dataLab);
		} catch (Exception e) {
			logger.error("catch of printReport" + e.getMessage());
			if (e.getMessage().toLowerCase().contains("http response code: 401")) {
				logger.info("error in getreport");
			} else {
				logger.info("error in getreport in else");
			}
		}
	}
	
	
	/*
	 * @PostMapping("/printSlipReportLabUser") public String
	 * printSlipReportLabUser(@RequestBody PrintModel dataLab, HttpServletResponse
	 * response, HttpServletRequest request, HttpSession session) { JSONObject json
	 * = new JSONObject(dataLab); session.setAttribute("dataLab", json.toString());
	 * return "Success"; }
	 * 
	 * @RequestMapping(value = "/printReportLabUser", method = RequestMethod.GET)
	 * public void printReportLabUser(HttpServletResponse response,
	 * HttpServletRequest request, HttpSession session) throws Exception { try {
	 * String dataLab = (String) session.getAttribute("dataLab");
	 * JasperReportService jr = new JasperReportService();
	 * jr.JasperLabReport(response, dataLab); logger.info(dataLab); } catch
	 * (Exception e) { logger.error("catch of printReport" + e.getMessage()); if
	 * (e.getMessage().toLowerCase().contains("http response code: 401")) {
	 * logger.info("error in getreport"); } else {
	 * logger.info("error in getreport in else"); } } }
	 */

	@PostMapping("/printSlipReportRad")
	public String printSlipReportRad(@RequestBody PrintModel dataRad, HttpServletResponse response,
			HttpServletRequest request, HttpSession session) {
		JSONObject json = new JSONObject(dataRad);
		session.setAttribute("dataRad", json.toString());
		return "Success";
	}

	@RequestMapping(value = "/printReportRad", method = RequestMethod.GET)
	public void printReportRad(HttpServletResponse response, HttpServletRequest request, HttpSession session)
			throws Exception {
		try {
			String dataRad = (String) session.getAttribute("dataRad");
			JasperReportService jr = new JasperReportService();
			jr.JasperRecepReport(response, dataRad);
		} catch (Exception e) {
			logger.error("catch of printReport" + e.getMessage());
			if (e.getMessage().toLowerCase().contains("http response code: 401")) {
				logger.info("error in getreport");
			} else {
				logger.info("error in getreport in else");
			}
		}
	}

	@PostMapping("/printSlipReportPPD")
	public String printSlipReportPPD(@RequestBody PrintModel dataPPD, HttpServletResponse response,
			HttpServletRequest request, HttpSession session) {
		JSONObject json = new JSONObject(dataPPD);
		session.setAttribute("dataPPD", json.toString());
		return "Success";
	}

	@RequestMapping(value = "/printReportPPD", method = RequestMethod.GET)
	public void printReportPPD(HttpServletResponse response, HttpServletRequest request, HttpSession session)
			throws Exception {
		try {
			String dataPPD = (String) session.getAttribute("dataPPD");
			JasperReportService jr = new JasperReportService();
			jr.JasperPPDReport(response, dataPPD);
			System.out.println(dataPPD);
			logger.info(dataPPD);
		} catch (Exception e) {
			logger.error("catch of printReport" + e.getMessage());
			if (e.getMessage().toLowerCase().contains("http response code: 401")) {
				logger.info("error in getreport");
			} else {
				logger.info("error in getreport in else");
			}
		}
	}

	@PostMapping("/printSlipReportContactReferral")
	public String printSlipReportContactReferral(@RequestBody PrintInspectorModel dataContactReferral,
			HttpServletResponse response, HttpServletRequest request, HttpSession session) {
		JSONObject json = new JSONObject(dataContactReferral);
		session.setAttribute("dataContactReferral", json.toString());
		return "Success";
	}

	@RequestMapping(value = "/printReportContactReferral", method = RequestMethod.GET)
	public void printReportContactReferral(HttpServletResponse response, HttpServletRequest request,
			HttpSession session) throws Exception {
		try {
			String dataContactReferral = (String) session.getAttribute("dataContactReferral");
			JasperReportService jr = new JasperReportService();
			jr.JasperContactReferralReport(response, dataContactReferral);
			logger.info(dataContactReferral);
		} catch (Exception e) {
			logger.error("catch of printReport" + e.getMessage());
			if (e.getMessage().toLowerCase().contains("http response code: 401")) {
				logger.info("error in getreport");
			} else {
				logger.info("error in getreport in else");
			}
		}
	}

	@PostMapping("/printSlipReportIGRA")
	public String printSlipReportIGRA(@RequestBody PrintModel dataLab, HttpServletResponse response,
			HttpServletRequest request, HttpSession session) {
		JSONObject json = new JSONObject(dataLab);
		session.setAttribute("dataLab", json.toString());
		return "Success";
	}

	@GetMapping(value = "/printReportIGRA")
	public void printReportIGRA(HttpServletResponse response, HttpServletRequest request, HttpSession session)
			throws Exception {
		try {
			String dataLab = (String) session.getAttribute("dataLab");
			JasperReportService jr = new JasperReportService();
			jr.JasperIgraReport(response, dataLab);
			System.out.println(dataLab);
			logger.info(dataLab);
		} catch (Exception e) {
			logger.error("catch of printReport" + e.getMessage());
			if (e.getMessage().toLowerCase().contains("http response code: 401")) {
				logger.info("error in getreport");
			} else {
				logger.info("error in getreport in else");
			}
		}
	}

	@PostMapping("/printSlipReportContPPD")
	public String printSlipReportContPPD(@RequestBody PrintModel dataLab, HttpServletResponse response,
			HttpServletRequest request, HttpSession session) {
		JSONObject json = new JSONObject(dataLab);
		session.setAttribute("dataLab", json.toString());
		return "Success";
	}

	@RequestMapping(value = "/printReportContPPD", method = RequestMethod.GET)
	public void printReportContPPD(HttpServletResponse response, HttpServletRequest request, HttpSession session)
			throws Exception {
		try {
			String dataLab = (String) session.getAttribute("dataLab");
			JasperReportService jr = new JasperReportService();
			jr.JasperPPDReport(response, dataLab);
			// System.out.println(dataLab);
			logger.info(dataLab);
		} catch (Exception e) {
			logger.error("catch of printReport" + e.getMessage());
			if (e.getMessage().toLowerCase().contains("http response code: 401")) {
				logger.info("error in getreport");
			} else {
				logger.info("error in getreport in else");
			}
		}
	}

	@PostMapping("/printSlipReportContRad")
	public String printSlipReportContRad(@RequestBody PrintModel dataRad, HttpServletResponse response,
			HttpServletRequest request, HttpSession session) {
		JSONObject json = new JSONObject(dataRad);
		session.setAttribute("dataRad", json.toString());
		return "Success";
	}

	@RequestMapping(value = "/printReportContRad", method = RequestMethod.GET)
	public void printReportContRad(HttpServletResponse response, HttpServletRequest request, HttpSession session)
			throws Exception {
		try {
			String dataRad = (String) session.getAttribute("dataRad");
			JasperReportService jr = new JasperReportService();
			jr.JasperRecepReport(response, dataRad);
		} catch (Exception e) {
			logger.error("catch of printReport" + e.getMessage());
			if (e.getMessage().toLowerCase().contains("http response code: 401")) {
				logger.info("error in getreport");
			} else {
				logger.info("error in getreport in else");
			}
		}
	}

}
