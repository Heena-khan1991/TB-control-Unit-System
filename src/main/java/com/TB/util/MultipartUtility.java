package com.TB.util;

import java.io.BufferedReader;

import java.io.FileInputStream;

import java.io.IOException;

import java.io.InputStream;

import java.io.InputStreamReader;

import java.io.OutputStream;

import java.io.OutputStreamWriter;

import java.io.PrintWriter;

import java.net.HttpURLConnection;

import java.net.URL;

import java.net.URLConnection;

import java.util.ArrayList;

import java.util.List;
 
import org.apache.logging.log4j.LogManager;

import org.apache.logging.log4j.Logger;

import org.springframework.web.multipart.MultipartFile;
 
public class MultipartUtility {

 
	
 
	/**

	 * This utility class provides an abstraction layer for sending multipart HTTP

	 * POST requests to a web server.

	 *

	 */


		private final static Logger LOGGER = LogManager.getLogger(MultipartUtility.class);

		private final String boundary;

		private static final String LINE_FEED = "\r\n";

		private HttpURLConnection httpConn;

		private String charset;

		private OutputStream outputStream;

		private PrintWriter writer;

		/**

		 * This constructor initializes a new HTTP POST request with content type is set

		 * to multipart/form-data

		 * 

		 * @param requestURL

		 * @param charset

		 * @throws IOException

		 */

		public MultipartUtility(String requestURL, String charset, String authTokenHeader) throws IOException {

			this.charset = charset;
 
			// creates a unique boundary based on time stamp

			boundary = "===" + System.currentTimeMillis() + "===";

			URL url = new URL(requestURL);

			httpConn = (HttpURLConnection) url.openConnection();
 
			try {

				httpConn.setRequestMethod("POST");

				httpConn.setUseCaches(false);

				httpConn.setDoOutput(true); // indicates POST method

				httpConn.setDoInput(true);

				httpConn.setRequestProperty("Content-Type", "multipart/form-data; boundary=" + boundary);

				httpConn.setRequestProperty("User-Agent", "MOHIT");

				httpConn.setRequestProperty("Access-Control-Allow-Origin", "*");

				httpConn.setRequestProperty("Accept", "application/json");

				httpConn.setRequestProperty("Authorization", authTokenHeader);

				outputStream = httpConn.getOutputStream();

				writer = new PrintWriter(new OutputStreamWriter(outputStream, charset), true);

			} catch (Exception e) {

				httpConn.disconnect();

			}finally {

				if (httpConn != null)  httpConn.disconnect();

			}

		}
 
		/**

		 * Adds a form field to the request

		 * 

		 * @param name  field name

		 * @param value field value

		 */

		public void addFormField(String name, String value) {

			writer.append("--" + boundary).append(LINE_FEED);

			writer.append("Content-Disposition: form-data; name=\"" + name + "\"").append(LINE_FEED);

			writer.append("Content-Type: text/plain; charset=" + charset).append(LINE_FEED);

			writer.append(LINE_FEED);

			writer.append(value).append(LINE_FEED);

			writer.flush();

		}
 
		/**

		 * Adds a upload file section to the request

		 * 

		 * @param fieldName  name attribute in <input type="file" name="..." />

		 * @param uploadFile a File to be uploaded

		 * @throws IOException

		 */

		public void addFilePart(String fieldName, MultipartFile uploadFile) throws IOException {

			String fileName = uploadFile.getOriginalFilename();

			writer.append("--" + boundary).append(LINE_FEED);

			writer.append("Content-Disposition: form-data; name=\"" + fieldName + "\"; filename=\"" + fileName + "\"")

					.append(LINE_FEED);

			writer.append("Content-Type: " + URLConnection.guessContentTypeFromName(fileName)).append(LINE_FEED);

			writer.append("Content-Transfer-Encoding: binary").append(LINE_FEED);

			writer.append(LINE_FEED);

			writer.flush();
 
			try (InputStream inputStream = uploadFile.getInputStream()) {

				byte[] buffer = new byte[4096];

				int bytesRead = -1;

				while ((bytesRead = inputStream.read(buffer)) != -1) {

					outputStream.write(buffer, 0, bytesRead);

				}

				outputStream.flush();

			}catch(Exception e) {e.printStackTrace();}		
 
			writer.append(LINE_FEED);

			writer.flush();

		}


		public void addFilePartCSV(String fieldName, MultipartFile uploadFile) throws IOException {

			String fileName = uploadFile.getOriginalFilename();

			writer.append("--" + boundary).append(LINE_FEED);

			writer.append("Content-Disposition: form-data; name=\"" + fieldName + "\"; filename=\"" + fileName + "\"")

					.append(LINE_FEED);

			writer.append("Content-Type: " + URLConnection.guessContentTypeFromName(fileName)).append(LINE_FEED);

			writer.append("Content-Transfer-Encoding: binary").append(LINE_FEED);

			writer.append(LINE_FEED);

			writer.flush();
 
			try (InputStream inputStream = uploadFile.getInputStream()) {

				byte[] buffer = new byte[4096];

				int bytesRead = -1;

				while ((bytesRead = inputStream.read(buffer)) != -1) {

					outputStream.write(buffer, 0, bytesRead);

				}

				outputStream.flush();

			}catch(Exception e) {e.printStackTrace();}		
 
			writer.append(LINE_FEED);

			writer.flush();

		}
 
 
		/**

		 * Adds a header field to the request.

		 * 

		 * @param name  - name of the header field

		 * @param value - value of the header field

		 */

		public void addHeaderField(String name, String value) {

			writer.append(name + ": " + value).append(LINE_FEED);

			writer.flush();

		}
 
		/**

		 * Completes the request and receives response from the server.

		 * 

		 * @return a list of Strings as response in case the server returned status OK,

		 *         otherwise an exception is thrown.

		 * @throws IOException

		 */

		public List<String> finish() throws IOException {

			List<String> response = new ArrayList<String>();
 
			try {

				writer.append(LINE_FEED).flush();

				writer.append("--" + boundary + "--").append(LINE_FEED);

				writer.flush();

			} catch (Exception e) {

				LOGGER.error("MultipartUtility - Error getting response", e);

			}

			try {

				// checks server's status code first

				int status = httpConn.getResponseCode();

				if (status == HttpURLConnection.HTTP_OK) {

					try (BufferedReader reader = new BufferedReader(new InputStreamReader(httpConn.getInputStream()))) {

						String line = null;

						while (reader.ready() && (line = reader.readLine()) != null) {

							response.add(line);

						}

					}catch(Exception e){e.printStackTrace();}

					writer.close();				

					outputStream.close();

					httpConn.disconnect();

				} else {

					writer.close();				

					outputStream.close();

					httpConn.disconnect();

					throw new IOException("Server returned non-OK status: " + status);

				}

			} catch (Exception e) {

				LOGGER.error("MultipartUtility - Error getting response", e);

			} finally {

				if (writer != null) writer.close();

				if(outputStream != null) outputStream.close();

				if (httpConn != null) httpConn.disconnect();

			}

			return response;

		}

	}
 