/**
 * 
 */
package com.cprint.system.repository;

import java.util.Collection;
import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cprint.system.model.Historico;

/**
 * @author Éderson Gervásio
		   edersongervasiosilva@gmail.com
		   github.com/edersongs	
 *
 */
@Repository
public interface HistoricoRepository extends JpaRepository<Historico, Long> {
	
	@Query("SELECT COUNT(h.codigoHistorico) FROM Historico h WHERE h.dataImpressao >= CURRENT_DATE() -5")
	Integer findTotalTrabalhoImpessaoPorDia();
	
	@Query("SELECT SUM(h.quantidadePaga) FROM Historico h WHERE h.dataImpressao >= CURRENT_DATE() -5")
	Integer findTotalPaginasImpessaoPorDia();
	
	Collection<Historico> findByDataImpressaoGreaterThanEqual(Date data);
	
	List<Historico> findByDataImpressaoBetween(Date dataInicial, Date dataFinal);
}
