package com.cdac;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@SessionAttributes({ "name", "fnumber", "date" })
@Controller
public class HomeController {

	@Autowired
	LoginModel lm;

	@Autowired
	FlightInfoModel fm;

	@Autowired
	PaymentModel pm;

	@Autowired
	AdminModel am;

	@Autowired
	BookFlightModel bfm;

	@RequestMapping("/")
	public String showHome(@ModelAttribute("flightinfoattribute") FlightInfo obj, 
			ModelMap model) {
		model.addAttribute("flightattribute", new FlightInfo());
		return "home";
	}
	
	@RequestMapping("contactus")
	public String contactusForm() {
		return "contactus";
	}
	
	@RequestMapping("flights")
	public String flightDetails(@ModelAttribute("flightinfoattribute") FlightInfo obj,
			ModelMap model) {
		List<FlightInfo> flights = fm.getFlights(obj);
		model.addAttribute("flightlist", flights);
		if (flights.size() > 0) {
			return "flightdetails";
		} else

			return "sorry";
	}
	
	@RequestMapping("bookdetails")
	public String navigateloginform(@RequestParam String flight, @RequestParam String bookdate, 
			ModelMap model, Model m) {
		model.addAttribute("fnumber", flight);
		model.addAttribute("date", bookdate);
		m.addAttribute("loginattribute", new Login());
		return "login";
	}
	
	@RequestMapping("register")
	public String registerform(Model m) {
		m.addAttribute("loginattribute", new Login());
		return "register";
	}
	
	@RequestMapping("registrationsuccess")
	public String registerValues(@ModelAttribute("loginattribute") Login obj) {
		lm.registerValues(obj);
		return "login";
	}

	@RequestMapping("login")
	public String loginnavform(@ModelAttribute("loginattribute") Login obj) {
		return "login";
	}


	@RequestMapping("logindetails")
	public String loginform(@ModelAttribute("loginattribute") Login obj, FlightInfo finfo,
			ModelMap model) {
		if (lm.login(obj)) {
			model.addAttribute("name", obj.username);

			if ((obj.username).equals("admin")) {

				List<FlightInfo> flights = am.getFlights();
				model.addAttribute("flightlist", flights);
				return "admin";
				
			} else {
				String fno,fdate,uname;
				if(model.getAttribute("fnumber") != null){
					 fno = model.getAttribute("fnumber").toString();
					 fdate = model.getAttribute("date").toString();
					 uname = model.getAttribute("name").toString();
					 
					 BookFlight bf = new BookFlight();
					 bf.setFnumber(fno);
					 bf.setDate(fdate);
					 bf.setUsername(uname);
					 bfm.bookingValues(bf);
					 
					 FlightInfo fi = new FlightInfo();
					 fi.setF_no(fno);
					 fi.setDate(fdate);
					 List<FlightInfo> selectedFlight = fm.selectedFlightInfo(fi);
					 model.addAttribute("selectedFlight", selectedFlight.get(0));
					 
					 Login li = new Login();
					 li.setUsername(uname);
					 List<Login> selectedUser = lm.selectedUserInfo(li);
					 model.addAttribute("user", selectedUser.get(0));
					 
					 model.addAttribute("passengersattribute", new BookFlight());
		
				}				
				return "bookdetails";
			}

		} else
			return "nouserfound";
	}
	
	@RequestMapping("payment")
	public String paymentform(@ModelAttribute("passengersattribute") BookFlight obj,
			Model pm, ModelMap model) {
		
		if(obj.noofpassenger >= 0) {
			String uname = model.getAttribute("name").toString();
			obj.setUsername(uname);
			/* System.out.println("Totall Amount " +obj.totalamount); */
			bfm.updateAdditionalPassengers(obj);
		}
		
		pm.addAttribute("paymentattribute", new Payment());
		return "payment";

	}

	@RequestMapping("paymentsuccess")
	public String insertValues(@ModelAttribute("paymentsuccessattribute") Payment obj, 
			ModelMap model) {
		pm.saveValues(obj);
		
		String fno,fdate,uname;
		if(model.getAttribute("fnumber") != null){
			fno = model.getAttribute("fnumber").toString();
			fdate = model.getAttribute("date").toString();
			uname = model.getAttribute("name").toString();
			 
		 	BookFlight bf = new BookFlight();
			bf.setFnumber(fno);
			bf.setDate(fdate);
			bf.setUsername(uname);
			
			FlightInfo fi = new FlightInfo();
			fi.setF_no(fno);
			fi.setDate(fdate);
			List<FlightInfo> selectedFlight = fm.selectedFlightInfo(fi);
			model.addAttribute("selectedFlight", selectedFlight.get(0));
			
			Login li = new Login();
			li.setUsername(uname);
			List<Login> selectedUser = lm.selectedUserInfo(li);
			model.addAttribute("user", selectedUser.get(0));
			
			List<BookFlight> additionalpassengers = bfm.getBookingDetails(bf);
			model.addAttribute("additionalinfo", additionalpassengers.get(0));
		}				
		return "paymentsuccess";
	}

	

	
	

	@RequestMapping("adminadddetails")
	public String adminAddValues(@ModelAttribute("adminaddattribute") FlightInfo obj) {
		return "adminadddetails";
	}

	@RequestMapping("admin")
	public String adminValues(@ModelAttribute("adminaddattribute") FlightInfo obj,
			ModelMap model, @ModelAttribute("adminupdateattribute") FlightInfo update) {
		
		if(update.date != null) {
			String flight = model.getAttribute("fnumber").toString();
			update.setF_no(flight);
			am.updateValue(update);
		}
		
		if (obj.f_no != null) {
			am.saveValues(obj);
		}
		
		List<FlightInfo> flights = am.getFlights();
		model.addAttribute("flightlist", flights);
		return "admin";
	}
	
	  @RequestMapping("flightdelete")
	  public String adminDeleteValues(@RequestParam String flight,@RequestParam String bookdate,
			  ModelMap model, Model m) {
		  FlightInfo fi = new FlightInfo();
		  fi.setF_no(flight); 
		  fi.setDate(bookdate);
		  am.deleteValues(fi); 
		  
		  List<FlightInfo> flights = am.getFlights();
		  model.addAttribute("flightlist",flights); 
		  return "admin"; 
	  }
	 
	  
	  @RequestMapping("flightupdate")
	  public String adminUpdateValues(@RequestParam String flight,@RequestParam String bookdate,
			  ModelMap model, Model m) {
		  FlightInfo fi = new FlightInfo();
		  fi.setF_no(flight); 
		  fi.setDate(bookdate);
		  model.addAttribute("fnumber", flight);
		  List<FlightInfo> flights = fm.selectedFlightInfo(fi);
		  model.addAttribute("selectflight",flights.get(0)); 
		 
		  m.addAttribute("adminupdateattribute", new FlightInfo());
		  return "adminupdatedetails"; 
	  }
	  
	  @RequestMapping("flightchart")
	  public String adminChartValues(@RequestParam String flight,@RequestParam String bookdate,
			  ModelMap model, Model m) { 
		  BookFlight bf = new BookFlight();
		  bf.setFnumber(flight); 
		  bf.setDate(bookdate);
		  model.addAttribute("fnumber", flight);
		  List<BookFlight> flights = bfm.getAllBookingDetails(bf);
		  
		  model.addAttribute("flights",flights); 
		  model.addAttribute("chartfnumber", flight);
		  model.addAttribute("chartfdate", bookdate);
		  return "chart"; 
	  }
	  
	
	  @RequestMapping("chart")
	  public String adminUpdatedChart(@ModelAttribute("seatnumberupdateattribute") BookFlight obj, 
			  ModelMap model, Model m) { 
		  String name = model.getAttribute("name").toString();
		  obj.setUsername(name);
		  bfm.updateSeatNumber(obj);
		  
		  String flight = model.getAttribute("fnumber").toString();
		  String bookdate = model.getAttribute("date").toString();
		 
		  BookFlight bf = new BookFlight();
		  bf.setFnumber(flight);
		  bf.setDate(bookdate);
		  List<BookFlight> flights = bfm.getAllBookingDetails(bf);
		  
		  model.addAttribute("flights",flights);
		  model.addAttribute("chartfnumber", flight);
		  model.addAttribute("chartfdate", bookdate);
		  return "chart"; 
	  }
	  
	  @RequestMapping("updateseatnumber")
	  public String adminUpdateSeatNo(@RequestParam String flight,@RequestParam String bookdate,
			  @RequestParam String user,@RequestParam String addno, ModelMap model, Model m) {
		  model.addAttribute("fnumber", flight);
		  model.addAttribute("name", user);
		  model.addAttribute("date", bookdate);
		  
		  model.addAttribute("chartfnumber", flight);
		  model.addAttribute("chartfdate", bookdate);
		  model.addAttribute("chartfusername", user);
		  model.addAttribute("chatfaddno", addno);
		  
		  m.addAttribute("seatnumberupdateattribute", new BookFlight());
		  return "seatnumberupdate"; 
	  }
	  
	  
	  
	  
	  
	  

}
