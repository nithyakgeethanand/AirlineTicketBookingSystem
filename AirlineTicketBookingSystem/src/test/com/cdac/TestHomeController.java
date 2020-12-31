package test.com.cdac;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;
import org.springframework.ui.ExtendedModelMap;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;

import com.cdac.FlightInfo;
import com.cdac.FlightInfoModel;
import com.cdac.HomeController;
import com.cdac.Login;
import com.cdac.LoginModel;

import java.util.ArrayList;
import java.util.List;

import org.junit.Assert;
import org.junit.Before;

import static org.mockito.Mockito.*;

@RunWith(MockitoJUnitRunner.class)
public class TestHomeController {
	@Mock
	FlightInfoModel fm;
	
	@Mock
	LoginModel lm;
	
	
	@InjectMocks
	HomeController homeController;
	
	@Test
	public void testShowHome() {
		FlightInfo flightInfo = new FlightInfo();
		ModelMap modelMap = new ModelMap();
		Assert.assertEquals("home", homeController.showHome(flightInfo, modelMap));
	}
	
	@Test
	public void testContactusForm() {
		String actualResult = homeController.contactusForm();
		Assert.assertEquals("contactus", actualResult);
	}
	
	@Test
	public void testflightDetails() {
		FlightInfo flightInfo = new FlightInfo();
		flightInfo.setF_source("trivandrum"); 
		flightInfo.setF_destination("mumbai");
		flightInfo.setDate("10/11/2020");
		
		ModelMap modelMap = new ModelMap();
		List<FlightInfo> list = new ArrayList<FlightInfo>();
		list.add(flightInfo);
		
		doReturn(list).when(fm).getFlights(any());

		String actualResult = homeController.flightDetails(flightInfo, modelMap);
		Assert.assertEquals("flightdetails", actualResult);
	}
	
	 @Test 
	 public void testflightDetailsWithSorryPage() {
		 FlightInfo flightInfo = new FlightInfo();
		 ModelMap modelMap = new ModelMap();
		 List<FlightInfo> list = new ArrayList<FlightInfo>();
		  
		 when(fm.getFlights(any(FlightInfo.class))).thenReturn(list);
		 
		 String actualResult = homeController.flightDetails(flightInfo, modelMap);
		 Assert.assertEquals("sorry", actualResult); 
	}
	 
	 @Test
	 public void testRegisterForm() {
		 Model m = new ExtendedModelMap();
		 
		 String actualResult = homeController.registerform(m);
		 Assert.assertEquals("register", actualResult);
	 }
	 
	 @Test
	 public void testregisterValues() {
		 Login login = new Login();
		 
		 String actualResult = homeController.registerValues(login);
		 Assert.assertEquals("login", actualResult);
	 }
	 
	 @Test
	 public void testLoginNavForm() {
		 Login login = new Login();
		 
		 String actualResult = homeController.loginnavform(login);
		 Assert.assertEquals("login", actualResult);
	 }
	 
	 @Test
	 public void testAdminAddValues() {
		 FlightInfo flightinfo = new FlightInfo();
		 
		 String actualResult = homeController.adminAddValues(flightinfo);
		 Assert.assertEquals("adminadddetails", actualResult);
	 }	
}
