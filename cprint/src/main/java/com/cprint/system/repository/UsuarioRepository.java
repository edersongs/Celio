/**
 * 
 */
package com.cprint.system.repository;

import java.util.Collection;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cprint.system.model.Usuario;
import com.cprint.system.model.dto.TotalImpressaoUsuarioPorDiaDTO;
import com.cprint.system.model.dto.TotalQuotaPorGrupoDTO;

/**
 * @author Éderson Gervásio
		   edersongervasiosilva@gmail.com
		   github.com/edersongs	
 *
 */
@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, Long> {
	
	@Query("SELECT new com.cprint.system.model.dto.TotalQuotaPorGrupoDTO(u.grupo, sum(u.quantidadeDefinida)) "
			+ "FROM Usuario u "
			+ "GROUP BY grp_usr ")
	Collection<TotalQuotaPorGrupoDTO> findTotalQuotaPorGrupoDTO();
	
	@Query("SELECT new com.cprint.system.model.dto.TotalImpressaoUsuarioPorDiaDTO(h.nomeUsuario, sum(h.quantidadePaga)) "
			+ "FROM Historico h "
			+ "WHERE dataImpressao >= CURRENT_DATE() - 5"
			+ "GROUP BY h.nomeUsuario "
			+ "ORDER BY SUM(h.quantidadePaga) ")
	Collection<TotalImpressaoUsuarioPorDiaDTO> findTotalImpressaoUsuarioPorDiaDTO();
	
	Collection<Usuario> findAllByOrderByNomeAsc();
}
