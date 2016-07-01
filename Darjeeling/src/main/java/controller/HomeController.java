package controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.CustDaoImpl;
import dao.DataAccessObject;
import dao.OrderDaoImpl;
import dao.PartsDaoImpl;
import dao.ProdDaoImpl;
import dao.RcvDaoImpl;
import data.CustomerData;
import data.OrderData;
import data.PartsData;
import data.ProductData;
import data.ReceiverData;

@Controller
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {

		return "home";
	}

	@RequestMapping(value = "/CustomerAdd", method = RequestMethod.GET)
    public String CustomerAdd(Model model) {
		CustomerData cd = new CustomerData();
		model.addAttribute("customerData", cd);
        return "CustomerAdd";
    }

	@RequestMapping(value = "/CustomerAdd", method = RequestMethod.POST)
	public String PostCustomerAdd(@ModelAttribute CustomerData cd, Model model) {
		DataAccessObject<CustomerData> dao = new CustDaoImpl();
		dao.add(cd);

		return "redirect:/CustomerList";
	}

	@RequestMapping(value = "/CustomerUpdate", method = RequestMethod.GET)
    public String CustomerUpdate(Model model) {
	    CustomerData cd = new CustomerData();
        model.addAttribute("customerData", cd);
        return "CustomerUpdate";
    }

	@RequestMapping(value = "/CustomerUpdate", method = RequestMethod.POST)
	    public String PostCustomerUpdate(@ModelAttribute CustomerData cd, Model model) {
	        DataAccessObject<CustomerData> dao = new CustDaoImpl();
	        dao.update(cd);

	        return "redirect:/CustomerList";
	    }


	@RequestMapping(value = "/CustomerList", method = RequestMethod.GET)
    public String CustomerList(Model model) {
		DataAccessObject<CustomerData> dao = new CustDaoImpl();
		List<CustomerData> list = dao.getAll();
		model.addAttribute("custmerData", list);
        return "CustomerList";
    }

	   @RequestMapping(value = "/OrderAdd", method = RequestMethod.GET)
	    public String OrderAdd(Model model) {
	        OrderData ordd = new OrderData();
		model.addAttribute("orderData", ordd);

	        return "OrderAdd";
	    }

	@RequestMapping(value = "/OrderAdd", method = RequestMethod.POST)
	public String PostOrderAdd(@ModelAttribute OrderData od, Model model) {
		DataAccessObject<OrderData> dao = new OrderDaoImpl();
		dao.add(od);

		return "redirect:/OrderList";
	}

	    @RequestMapping(value = "/OrderUpdate", method = RequestMethod.GET)
	    public String OrderUpdate(Model model) {
	        OrderData ordd = new OrderData();
	        model.addAttribute("orderData", ordd);

	        return "OrderUpdate";
	    }

	    @RequestMapping(value = "/OrderUpdate", method = RequestMethod.POST)
	    public String PostOrderUpdate(@ModelAttribute OrderData od, Model model) {
	        DataAccessObject<OrderData> dao = new OrderDaoImpl();
	        dao.update(od);

	        return "redirect:/OrderList";
	    }



	@RequestMapping(value = "/OrderList", method = RequestMethod.GET)
    public String OrderList(Model model) {
		DataAccessObject<OrderData> dao = new OrderDaoImpl();
		List<OrderData> list = dao.getAll();
		model.addAttribute("orderList", list);

		return "OrdersList";
    }

	@RequestMapping(value = "/PartsAdd", method = RequestMethod.GET)
    public String PartsAdd(Model model) {
	    PartsData partsData = new PartsData();
        model.addAttribute("partsData", partsData);

        return "PartsAdd";
    }

	@RequestMapping(value = "/PartsAdd", method = RequestMethod.POST)
    public String PostPartsAdd(@ModelAttribute PartsData partsd, Model model) {
        DataAccessObject<PartsData> dao = new PartsDaoImpl();
        dao.add(partsd);

        return "redirect:/PartsList";
    }

	@RequestMapping(value = "/PartsUpdate", method = RequestMethod.GET)
    public String PartsUpdate(Model model) {
	    PartsData pard = new PartsData();
        model.addAttribute("partsData", pard);


        return "PartsUpdate";
    }

	@RequestMapping(value = "/PartsUpdate", method = RequestMethod.POST)
    public String PostPartsUpdate(@ModelAttribute PartsData partsd, Model model) {
        DataAccessObject<PartsData> dao = new PartsDaoImpl();
        dao.update(partsd);

        return "redirect:/PartsList";
    }

	@RequestMapping(value = "/PartsList", method = RequestMethod.GET)
    public String PartsList(Model model) {
	    DataAccessObject<PartsData> dao = new PartsDaoImpl();
        List<PartsData> list = dao.getAll();
        model.addAttribute("partsData", list);
        return "PartsList";
    }

	@RequestMapping(value = "/ProductAdd", method = RequestMethod.GET)
    public String ProductAdd(Model model) {
	    ProductData prod = new ProductData();
        model.addAttribute("productData", prod);

        return "ProductAdd";
    }

	@RequestMapping(value = "/ProductAdd", method = RequestMethod.POST)
    public String PostProductAdd(@ModelAttribute ProductData productd, Model model) {
        DataAccessObject<ProductData> dao = new ProdDaoImpl();
        dao.add(productd);

        return "redirect:/ProductList";
    }

	@RequestMapping(value = "/ProductUpdate", method = RequestMethod.GET)
    public String ProductUpdate(Model model) {
	    ProductData prod = new ProductData();
        model.addAttribute("productData", prod);


        return "ProductUpdate";
    }

	   @RequestMapping(value = "/ProductUpdate", method = RequestMethod.POST)
	    public String PostProductUpdate(@ModelAttribute ProductData productd, Model model) {
	        DataAccessObject<ProductData> dao = new ProdDaoImpl();
	        dao.add(productd);

	        return "redirect:/ProductList";
	    }

	@RequestMapping(value = "/ProductList", method = RequestMethod.GET)
    public String ProductList(Model model) {

        return "ProductList";
    }

	@RequestMapping(value = "/ProgressUpdate", method = RequestMethod.GET)
    public String ProgressUpdate(Model model) {
        OrderData ordd = new OrderData();
        model.addAttribute("orderData", ordd);


        return "ProgressUpdate";
    }

	   @RequestMapping(value = "/ProgressUpdate", method = RequestMethod.POST)
	    public String PostProgressUpdate(@ModelAttribute OrderData orderd, Model model) {
	        DataAccessObject<OrderData> dao = new OrderDaoImpl();
	        dao.update(orderd);

	        return "redirect:/ProgressList";
	    }

	@RequestMapping(value = "/ProgressList", method = RequestMethod.GET)
    public String ProgressList(Model model) {

        return "ProgressList";
    }

	@RequestMapping(value = "/Receiver", method = RequestMethod.GET)
    public String Receiver(Model model) {

        return "Receiver";
    }

	@RequestMapping(value = "/ReceiverAdd", method = RequestMethod.GET)
    public String ReceiverAdd(Model model) {
	    ReceiverData rcvd = new ReceiverData();
        model.addAttribute("receiverData", rcvd);

        return "ReceiverAdd";
    }

	   @RequestMapping(value = "/ReceiverAdd", method = RequestMethod.POST)
	    public String PostReceiverAdd(@ModelAttribute ReceiverData rcvd, Model model) {
            DataAccessObject<ReceiverData> dao = new RcvDaoImpl();
            dao.add(rcvd);

            return "redirect:/ReceiverList";
	    }

	@RequestMapping(value = "/ReceiverUpdate", method = RequestMethod.GET)
    public String ReceiverUpdate(Model model) {
	    ReceiverData rcvd = new ReceiverData();
        model.addAttribute("receiverData", rcvd);

        return "ReceiverUpdate";
    }

    @RequestMapping(value = "/ReceiverUpdate", method = RequestMethod.POST)
    public String PostReceiverUpdate(@ModelAttribute ReceiverData rcvd, Model model) {
        DataAccessObject<ReceiverData> dao = new RcvDaoImpl();
        dao.update(rcvd);

        return "redirect:/ReceiverList";
    }


	@RequestMapping(value = "/ReceiverComplete", method = RequestMethod.GET)
    public String ReceiverComplete(Model model) {

        return "ReceiverComplete";
    }

	@RequestMapping(value = "/ReceiverList", method = RequestMethod.GET)
    public String ReceiverList(Model model) {

        return "ReceiverList";
    }


	@RequestMapping(value = "/Top", method = RequestMethod.GET)
    public String Top(Model model) {

        return "Top";
    }


}
