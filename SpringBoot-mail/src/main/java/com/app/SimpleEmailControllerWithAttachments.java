package com.app;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SimpleEmailControllerWithAttachments {
	@Autowired
	private JavaMailSender sender;

	@RequestMapping("/mailAttach")
	@ResponseBody
	String home() {
		try {
			sendEmail();
			return "Email Sent!";
		} catch (Exception ex) {
			return "Error in sending email: " + ex;
		}
	}

	private void sendEmail() throws Exception {
		MimeMessage message = sender.createMimeMessage();

		// Enable the multipart flag!
		MimeMessageHelper helper = new MimeMessageHelper(message, true);

		helper.setTo("omkarraut7777@gmail.com");
		helper.setText("Always thing positive");
		helper.setSubject("Thinking power");

		ClassPathResource file = new ClassPathResource("positive-think.jpg");
		helper.addAttachment("positive-think.jpg", file);

		sender.send(message);
	}

}
