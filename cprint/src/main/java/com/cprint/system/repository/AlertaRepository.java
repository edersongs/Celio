/**
 * 
 */
package com.cprint.system.repository;

import java.util.Collection;
import java.util.Date;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cprint.system.model.Alerta;
import com.cprint.system.model.Historico;

/**
 * @author Éderson Gervásio
		   edersongervasiosilva@gmail.com
		   github.com/edersongs	
 *
 */
@Repository
public interface AlertaRepository extends JpaRepository<Alerta, Long> {
	
}
