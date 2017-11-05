/**
 * 
 */
package com.cprint.system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cprint.system.repository.UsuarioRepository;

/**
 * @author Éderson Gervásio
		   edersongervasiosilva@gmail.com
		   github.com/edersongs	
 *
 */
@Controller
@RequestMapping("/usuarios")
public class UsuarioController {
	
	@Autowired private UsuarioRepository usuarioRepository;
	
	@GetMapping
	public ModelAndView principal() {
		
		ModelAndView model = new ModelAndView("page/usuario/listaUsuarios");
		model.addObject("quotas", usuarioRepository.findAllByOrderByNomeAsc());
		
		return model;
	}
}
