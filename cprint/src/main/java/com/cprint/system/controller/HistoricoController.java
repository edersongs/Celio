/**
 * 
 */
package com.cprint.system.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cprint.system.repository.HistoricoRepository;
import com.cprint.system.util.DateHelper;

/**
 * @author Éderson Gervásio
		   edersongervasiosilva@gmail.com
		   github.com/edersongs	
 *
 */
@Controller
@RequestMapping("/historicos")
public class HistoricoController {
	
	@Autowired private HistoricoRepository historicoRepository;
	
	@GetMapping
	public ModelAndView principal() {
		
		ModelAndView model = new ModelAndView("page/historico/listaHistoricos");
		
		model.addObject("historicos", historicoRepository.
				findByDataImpressaoGreaterThanEqual(DateHelper.
						truncaData(DateHelper.adicionaDiaParaData(DateHelper.mesSeguinte(new Date(), -1), 9))));
		
		pesquisar(null, null);
		
		return model;
	}
	
	@GetMapping("/pesquisar")
	public ModelAndView pesquisar(
			@RequestParam("dataInicial") 
			@DateTimeFormat(pattern="dd/MM/yyyy") Date dataInicial, 
			@RequestParam("dataFinal") 
			@DateTimeFormat(pattern="dd/MM/yyyy") Date dataFinal) {
		
		ModelAndView model = new ModelAndView("page/historico/listaHistoricos");
		
		if (dataInicial == null && dataFinal == null) {
			
			dataInicial = new Date();
			dataFinal = DateHelper.adicionaDiaParaData(new Date(), 1);
		}
		
		model.addObject("historicos", historicoRepository.
				findByDataImpressaoBetween(dataInicial, dataFinal)); 
		
		return model;
	}
}
