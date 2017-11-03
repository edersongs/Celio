/**
 * 
 */
package edersongs.cprint.repository;

import java.util.Collection;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import edersongs.cprint.model.Usuario;
import edersongs.cprint.model.dto.TotalQuotaPorGrupoDTO;

/**
 * @author Éderson Gervásio
		   edersongervasiosilva@gmail.com
		   github.com/edersongs	
 *
 */
@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, Long> {
	
	@Query("SELECT new edersongs.cprint.model.dto.TotalQuotaPorGrupoDTO(u.grupo, sum(u.quantidadeDefinida)) "
			+ "FROM Usuario u "
			+ "GROUP BY grp_usr ")
	Collection<TotalQuotaPorGrupoDTO> findTotalQuotaPorGrupoDTO();
	
	/*SELECT nom_usr, SUM(qtd_pag) FROM tb_history 
	WHERE dth_imp>=DATE(SYSDATE()) 
	GROUP BY nom_usr ORDER BY SUM(qtd_pag) DESC LIMIT 10"
*/
	
	//Collection<TotalQuotaPorGrupoDTO> findTotalQuotaPorGrupoDTO();
}
