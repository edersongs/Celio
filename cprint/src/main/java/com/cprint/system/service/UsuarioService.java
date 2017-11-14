/**
 * 
 */
package com.cprint.system.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cprint.system.model.Usuario;
import com.cprint.system.repository.UsuarioRepository;

/**
 * @author Éderson Gervásio
		   edersongervasiosilva@gmail.com
		   github.com/edersongs	
 *
 */
@Service
public class UsuarioService {
	
	@Autowired private UsuarioRepository usuarioRepository;
	
	public void salvarUsuario(Usuario usuario) {
		
		usuarioRepository.save(usuario);
	}

}
