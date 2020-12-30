package test.com.cdac;

import org.junit.Test;
import org.mockito.Mock;
import org.springframework.ui.ModelMap;

import com.cdac.FlightInfo;
import com.cdac.FlightInfoModel;
import com.cdac.HomeController;

import java.util.ArrayList;
import java.util.List;

import org.junit.Assert;
import org.junit.Before;

import static org.mockito.Mockito.*;

public class TestHomeController {
	@Mock
	FlightInfoModel fm;
	
	@Test
	public void testShowHome() {
		HomeController homeController = new HomeController();
		FlightInfo flightInfo = new FlightInfo();
		ModelMap modelMap = new ModelMap();
		Assert.assertEquals("home", homeController.showHome(flightInfo, modelMap));
	}
	
	@Test
	public void testContactusForm() {
		HomeController homeController = new HomeController();
		String actualResult = homeController.contactusForm();
		Assert.assertEquals("contactus", actualResult);
	}
	
	@Test
	public void testflightDetails() {
		
		HomeController homeController = new HomeController();
		FlightInfo flightInfo = new FlightInfo();
		flightInfo.setF_source("trivandrum"); 
		flightInfo.setF_destination("mumbai");
		flightInfo.setDate("10/11/2020");
		
		ModelMap modelMap = new ModelMap();
		List<FlightInfo> list = new ArrayList();
		list.add(flightInfo);
		
		doReturn(list).when(fm).getFlights(any(FlightInfo.class));
		
		String actualResult = homeController.flightDetails(flightInfo, modelMap);
		Assert.assertEquals("flightdetails", actualResult);
	}
	
	 @Test 
	 public void testflightDetailsWithSorryPage() {
		 
		 HomeController homeController = new HomeController(); 
		 FlightInfo flightInfo = new FlightInfo();
		 ModelMap modelMap = new ModelMap();
		 List<FlightInfo> list = new ArrayList();
		  
		 when(fm.getFlights(any(FlightInfo.class))).thenReturn(list);
			
		 String actualResult = homeController.flightDetails(flightInfo, modelMap);
		 Assert.assertEquals("sorry", actualResult); 
	}
	 
	
}
