/**
 * 
 */
package edersongs.cprint.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Éderson Gervásio
		   edersongervasiosilva@gmail.com
		   github.com/edersongs	
 *
 */
@Entity
@Table(name = "tb_alertas")
public class Alerta implements Serializable {

	private static final long serialVersionUID = -7197011390643062385L;
	
	@Column(name = "dsc_alr")
	private String descricao;
	
	@Column(name = "dth_alr")
	private Date dataAlerta;
	
	@Id
	@Column(name = "job_alr")
	private Date registroAlerta;

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Date getDataAlerta() {
		return dataAlerta;
	}

	public void setDataAlerta(Date dataAlerta) {
		this.dataAlerta = dataAlerta;
	}

	public Date getRegistroAlerta() {
		return registroAlerta;
	}

	public void setRegistroAlerta(Date registroAlerta) {
		this.registroAlerta = registroAlerta;
	}

}
