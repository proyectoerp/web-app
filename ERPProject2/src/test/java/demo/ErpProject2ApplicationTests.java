package demo;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.web.WebAppConfiguration;

import com.company.erp.ErpProject2Application;

import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = ErpProject2Application.class)
@WebAppConfiguration
public class ErpProject2ApplicationTests {

	@Test
	public void contextLoads() {
	}

}
