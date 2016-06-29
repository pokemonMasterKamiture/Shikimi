package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import data.CustomerData;
import data.ProductData;

@Controller
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {

		return "home";
	}

	@RequestMapping(value = "/CustomerAdd", method = RequestMethod.GET)
    public String CustomerAdd(Model model) {
	    CustomerData cd = new CustomerData();
	    model.addAttribute("cd", cd);

        return "CustomerAdd";
    }

	@RequestMapping(value = "/CustomerUpdate", method = RequestMethod.GET)
    public String CustomerUpdate(Model model) {
	    CustomerData cd = new CustomerData();
        model.addAttribute("cd", cd);
        return "CustomerUpdate";
    }

	@RequestMapping(value = "/OrdersList", method = RequestMethod.GET)
    public String OrderList(Model model) {

        return "OrdersList";
    }

	@RequestMapping(value = "/PartsAdd", method = RequestMethod.GET)
    public String PartAdd(Model model) {
	    //PartsData pard = new PartsData();
        //model.addAttribute("pard", pard);

        return "PartsAdd";
    }

	@RequestMapping(value = "/PartsUpdate", method = RequestMethod.GET)
    public String PartsUpdate(Model model) {
	    //PartsData pard = new PartsData();
        //model.addAttribute("pard", pard);


        return "PartsUpdate";
    }

	@RequestMapping(value = "/ProductAdd", method = RequestMethod.GET)
    public String ProductAdd(Model model) {
	    ProductData prod = new ProductData();
        model.addAttribute("prod", prod);

        return "ProductAdd";
    }

	@RequestMapping(value = "/ProductUpdate", method = RequestMethod.GET)
    public String ProductUpdate(Model model,ProductData prod) {
        model.addAttribute("prod", prod);

        return "CustomerAdd";
    }

	@RequestMapping(value = "/ProgressList", method = RequestMethod.GET)
    public String ProgressList(Model model) {

        return "ProgressList";
    }

	@RequestMapping(value = "/Receiver", method = RequestMethod.GET)
    public String Shipment(Model model) {

        return "Receiver";
    }

	@RequestMapping(value = "/ReceiverAdd", method = RequestMethod.GET)
    public String ShipmentAdd(Model model,ShipmentData sd) {
        model.addAttribute("sd", sd);

        return "ReceiverAdd";
    }

	@RequestMapping(value = "/ReceiverUpdate", method = RequestMethod.GET)
    public String ShipmentUpdate(Model model,ShipmentData sd) {
        model.addAttribute("sd", sd);

        return "ReceiverUpdate";
    }

	@RequestMapping(value = "/ReceiverComplete", method = RequestMethod.GET)
    public String ShipmentComplete(Model model) {

        return "ReceiverComplete";
    }

	@RequestMapping(value = "/Top", method = RequestMethod.GET)
    public String Top(Model model) {

        return "Top";
    }

	@RequestMapping(value = "/OrderAdd", method = RequestMethod.GET)
    public String OrderAdd(Model model,ShipmentData sd) {
        model.addAttribute("sd", sd);

        return "OrderAdd";
    }

	@RequestMapping(value = "/OrderUpdate", method = RequestMethod.GET)
    public String OrderUpdate(Model model,ShipmentData sd) {
        model.addAttribute("sd", sd);

        return "OrderUpdate";
    }



}
