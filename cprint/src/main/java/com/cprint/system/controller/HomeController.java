/**
 * 
 */
package com.cprint.system.controller;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cprint.system.model.dto.TotalImpressaoUsuarioPorDiaDTO;
import com.cprint.system.model.dto.TotalQuotaPorGrupoDTO;
import com.cprint.system.repository.AlertaRepository;
import com.cprint.system.repository.HistoricoRepository;
import com.cprint.system.repository.UsuarioRepository;

/**
 * @author Éderson Gervásio
		   edersongervasiosilva@gmail.com
		   github.com/edersongs	
 *
 */
@Controller
@RequestMapping("/")
public class HomeController {
	
	@Autowired private UsuarioRepository usuarioRepository;
	@Autowired private HistoricoRepository historicoRepository;
	@Autowired private AlertaRepository alertaRepository;
	
	@GetMapping
	public ModelAndView principal() {
		
		ModelAndView model = new ModelAndView("page/home");
		model.addObject("totalTrabalhoImpressaoDia", historicoRepository.findTotalTrabalhoImpessaoPorDia());
		model.addObject("totalPaginasImpressaoDia", historicoRepository.findTotalPaginasImpessaoPorDia());
		model.addObject("totalAlertas", alertaRepository.count());
		
		return model;
	}
	
	@GetMapping(path = "/graficoTotalQuotaGrupo")
	public @ResponseBody Collection<TotalQuotaPorGrupoDTO> popularGraficoTotalQuotaPorGrupo() {
		
		return usuarioRepository.findTotalQuotaPorGrupoDTO();
	}
	
	@GetMapping(path = "/graficoTotalImpressaoPorDia")
	public @ResponseBody Collection<TotalImpressaoUsuarioPorDiaDTO> popularGraficoTotalImpressaoPorDia() {
		
		return usuarioRepository.findTotalImpressaoUsuarioPorDiaDTO();
	}
}
