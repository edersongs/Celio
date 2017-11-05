/**
 * 
 */
package com.cprint.system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cprint.system.repository.AlertaRepository;

/**
 * @author Éderson Gervásio
		   edersongervasiosilva@gmail.com
		   github.com/edersongs	
 *
 */
@Controller
@RequestMapping("/alertas")
public class AlertaController {
	
	@Autowired private AlertaRepository alertaRepository;
	
	@GetMapping
	public ModelAndView principal() {
		
		ModelAndView model = new ModelAndView("page/alerta/listaAlertas");
		model.addObject("alertas", alertaRepository.findAll());
		
		return model;
	}

}
