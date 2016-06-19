package com.lesaas.slardar.demo.contorller;

import org.junit.ClassRule;
import org.junit.runner.RunWith;
import org.springframework.boot.test.OutputCapture;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.lesaas.slardar.SlardarApplication;


@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes=SlardarApplication.class)
//@WebIntegrationTest(randomPort = true)
public class DemoControllerTest {
	
	@ClassRule
	public static OutputCapture out = new OutputCapture();
}
