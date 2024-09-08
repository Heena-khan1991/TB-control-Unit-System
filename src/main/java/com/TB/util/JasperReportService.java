package com.TB.util;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRPrintElement;
import net.sf.jasperreports.engine.JRPrintFrame;
import net.sf.jasperreports.engine.JRPrintPage;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperPrintManager;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JsonDataSource;
import net.sf.jasperreports.engine.export.JRPdfExporter;
import net.sf.jasperreports.engine.export.JRPrintServiceExporter;
import net.sf.jasperreports.export.SimpleExporterInput;
import net.sf.jasperreports.export.SimpleOutputStreamExporterOutput;
import net.sf.jasperreports.export.SimplePdfExporterConfiguration;
import net.sf.jasperreports.export.SimplePrintServiceExporterConfiguration;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestParam;

//import com.pcis.online.frontend.controller.CORSControllerLocal;

import jakarta.servlet.http.HttpServletResponse;

import java.awt.print.PrinterJob;
import java.io.ByteArrayInputStream;
import java.io.InputStream;

import javax.print.DocFlavor;
import javax.print.PrintService;
import javax.print.PrintServiceLookup;
import javax.print.attribute.HashPrintRequestAttributeSet;
import javax.print.attribute.PrintRequestAttributeSet;
import javax.print.attribute.standard.Copies;

public class JasperReportService {
	private static final Logger logger = LoggerFactory.getLogger(JasperReportService.class);

	public OutputStream JasperLabReport(HttpServletResponse response, String dataLab) throws Exception {
		PrintRequestAttributeSet printRequestAttributeSet = new HashPrintRequestAttributeSet();
		printRequestAttributeSet.add(new Copies(2));
		InputStream stream = null;
		ByteArrayInputStream jsonDataStream = new ByteArrayInputStream(dataLab.getBytes("UTF-8"));
		JsonDataSource ds = new JsonDataSource(jsonDataStream);
		stream = this.getClass().getResourceAsStream("/LabReport.jrxml");
		logger.debug("stream--" + stream);
		final JasperReport report = JasperCompileManager.compileReport(stream);
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/pdf");
		// Adding the additional parameters to the pdf.
		final Map<String, Object> parameters = new HashMap<>();
		logger.debug("print parameters------------" + parameters);
		final JasperPrint print = JasperFillManager.fillReport(report, parameters, ds);
		System.out.println("print slip------------" + print);
		logger.debug("print slip------------" + print);
		response.setHeader("Content-Disposition", "inline; filename=printSlip.pdf");
		OutputStream out = response.getOutputStream();
		JasperExportManager.exportReportToPdfStream(print, out);
		out.flush();
		out.close();
		return out;

	}

	public OutputStream JasperRecepReport(HttpServletResponse response, String dataRad) throws Exception {
		PrintRequestAttributeSet printRequestAttributeSet = new HashPrintRequestAttributeSet();
		printRequestAttributeSet.add(new Copies(2));
		InputStream streamRadiology = null;
		InputStream streamRadiologyReport = null;
		InputStream streamChest = null;
		JasperReport report = null;
		JasperPrint jasperprint = null;
		ByteArrayInputStream jsonDataStream = new ByteArrayInputStream(dataRad.getBytes("UTF-8"));
		JsonDataSource ds = new JsonDataSource(jsonDataStream);
		ByteArrayInputStream jsonDataStream1 = new ByteArrayInputStream(dataRad.getBytes("UTF-8"));
		JsonDataSource ds1 = new JsonDataSource(jsonDataStream1);
		ByteArrayInputStream jsonDataStream2 = new ByteArrayInputStream(dataRad.getBytes("UTF-8"));
		JsonDataSource ds2 = new JsonDataSource(jsonDataStream2);
		streamRadiologyReport = this.getClass().getResourceAsStream("/radiology2.jrxml");
		streamRadiology = this.getClass().getResourceAsStream("/RadiologyReport.jrxml");
		streamChest = this.getClass().getResourceAsStream("/ChestX-RAYReport.jrxml");
		List<JasperPrint> jasperPrintList = new ArrayList<JasperPrint>();
		final Map<String, Object> parameters = new HashMap<>();
		report = JasperCompileManager.compileReport(streamRadiologyReport);
		jasperprint = JasperFillManager.fillReport(report, parameters, ds);
		jasperPrintList.add(jasperprint);
		report = JasperCompileManager.compileReport(streamRadiology);
		jasperprint = JasperFillManager.fillReport(report, parameters, ds1);
		jasperPrintList.add(jasperprint);
		report = JasperCompileManager.compileReport(streamChest);
		jasperprint = JasperFillManager.fillReport(report, parameters, ds2);
		jasperPrintList.add(jasperprint);
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/pdf");
		response.setHeader("Content-Disposition", "inline; filename=printSlip.pdf");
		OutputStream out = response.getOutputStream();
		JRPdfExporter exporter = new JRPdfExporter();
		exporter.setExporterOutput(new SimpleOutputStreamExporterOutput(out)); // Set output stream
		SimplePdfExporterConfiguration configuration = new SimplePdfExporterConfiguration();
		exporter.setConfiguration(configuration);
		exporter.setExporterInput(SimpleExporterInput.getInstance(jasperPrintList)); // Set as export input
		exporter.exportReport();
		out.flush();
		out.close();
		return out;
	}

	public OutputStream JasperPPDReport(HttpServletResponse response, String dataPPD) throws Exception {
		PrintRequestAttributeSet printRequestAttributeSet = new HashPrintRequestAttributeSet();
		printRequestAttributeSet.add(new Copies(2));
		InputStream stream = null;
		ByteArrayInputStream jsonDataStream = new ByteArrayInputStream(dataPPD.getBytes("UTF-8"));
		JsonDataSource ds = new JsonDataSource(jsonDataStream);
		stream = this.getClass().getResourceAsStream("/PPDReport.jrxml");
		logger.debug("stream--" + stream);
		final JasperReport report = JasperCompileManager.compileReport(stream);
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/pdf");
		// Adding the additional parameters to the pdf.
		final Map<String, Object> parameters = new HashMap<>();
		logger.debug("print parameters------------" + parameters);
		final JasperPrint print = JasperFillManager.fillReport(report, parameters, ds);
		System.out.println("print slip------------" + print);
		logger.debug("print slip------------" + print);
		response.setHeader("Content-Disposition", "inline; filename=printSlip.pdf");
		OutputStream out = response.getOutputStream();
		JasperExportManager.exportReportToPdfStream(print, out);
		out.flush();
		out.close();
		return out;

	}

	public OutputStream JasperContactReferralReport(HttpServletResponse response, String dataContactReferral)
			throws Exception {
		PrintRequestAttributeSet printRequestAttributeSet = new HashPrintRequestAttributeSet();
		printRequestAttributeSet.add(new Copies(2));
		InputStream stream = null;
		ByteArrayInputStream jsonDataStream = new ByteArrayInputStream(dataContactReferral.getBytes("UTF-8"));
		System.out.println("dataContactReferral n jasper------------" + dataContactReferral);
		JsonDataSource ds = new JsonDataSource(jsonDataStream);
		stream = this.getClass().getResourceAsStream("/contactReferralForm.jrxml");
		logger.debug("stream--" + stream);
		final JasperReport report = JasperCompileManager.compileReport(stream);
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/pdf");
		// Adding the additional parameters to the pdf.
		final Map<String, Object> parameters = new HashMap<>();
		logger.debug("print parameters------------" + parameters);
		final JasperPrint print = JasperFillManager.fillReport(report, parameters, ds);
		System.out.println("print slip------------" + print);
		logger.debug("print slip------------" + print);
		response.setHeader("Content-Disposition", "inline; filename=printSlip.pdf");
		OutputStream out = response.getOutputStream();
		JasperExportManager.exportReportToPdfStream(print, out);
		out.flush();
		out.close();
		return out;

	}

	public OutputStream JasperIgraReport(HttpServletResponse response, String dataLab) throws Exception {
		PrintRequestAttributeSet printRequestAttributeSet = new HashPrintRequestAttributeSet();
		printRequestAttributeSet.add(new Copies(2));
		InputStream stream = null;
		ByteArrayInputStream jsonDataStream = new ByteArrayInputStream(dataLab.getBytes("UTF-8"));
		JsonDataSource ds = new JsonDataSource(jsonDataStream);
		stream = this.getClass().getResourceAsStream("/IgraReport.jrxml");
		logger.debug("stream--" + stream);
		final JasperReport report = JasperCompileManager.compileReport(stream);
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/pdf");
		// Adding the additional parameters to the pdf.
		final Map<String, Object> parameters = new HashMap<>();
		logger.debug("print parameters------------" + parameters);
		final JasperPrint print = JasperFillManager.fillReport(report, parameters, ds);
		System.out.println("print slip------------" + print);
		logger.debug("print slip------------" + print);
		response.setHeader("Content-Disposition", "inline; filename=printSlip.pdf");
		OutputStream out = response.getOutputStream();
		JasperExportManager.exportReportToPdfStream(print, out);
		out.flush();
		out.close();
		return out;

	}

}
