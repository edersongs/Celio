/**
 * 
 */
package edersongs.cprint.controller;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import edersongs.cprint.model.dto.TotalQuotaPorGrupoDTO;
import edersongs.cprint.repository.UsuarioRepository;

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
	
	@GetMapping
	public ModelAndView principal() {
		
		ModelAndView model = new ModelAndView("page/home");
		//model.addObject("listaCotasPorGrupo", usuarioRepository.findTotalQuantidadeDefinida());
		
		return model;
	}
	
	@GetMapping(path = "/graficoTotalQuotaGrupo")
	public @ResponseBody Collection<TotalQuotaPorGrupoDTO> popularGraficoTotalQuotaPorGrupo() {
		
		return usuarioRepository.findTotalQuotaPorGrupoDTO();
	}
}
