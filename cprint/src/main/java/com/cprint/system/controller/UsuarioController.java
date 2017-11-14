/**
 * 
 */
package com.cprint.system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cprint.system.model.Usuario;
import com.cprint.system.repository.UsuarioRepository;
import com.cprint.system.service.UsuarioService;

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
	@Autowired private UsuarioService usuarioService;
	
	@GetMapping
	public ModelAndView principal() {
		
		ModelAndView model = new ModelAndView("page/usuario/listaUsuarios");
		model.addObject("quotas", usuarioRepository.findAllByOrderByNomeAsc());
		
		return model;
	}
	
	@PostMapping("{codigoUsuario}")
	public ModelAndView realizarPagamento(@PathVariable("codigoUsuario") Long codigoUsuario, @RequestParam("valorQuota") Integer valor) {
		
		Usuario usuarioCadastrado = usuarioRepository.findOne(codigoUsuario);
		usuarioCadastrado.setQuantidadeAtual(valor);
		
		usuarioService.salvarUsuario(usuarioCadastrado);
		
		return principal();
	}
}
