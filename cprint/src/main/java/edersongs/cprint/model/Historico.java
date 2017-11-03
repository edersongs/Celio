/**
 * 
 */
package edersongs.cprint.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Éderson Gervásio
		   edersongervasiosilva@gmail.com
		   github.com/edersongs	
 *
 */
@Entity
@Table(name = "tb_history")
public class Historico implements Serializable {

	private static final long serialVersionUID = -6744877175026908415L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "cod_hst")
	private Long codigoHistorico;
	
	@Column(name = "nom_usr")
	private String nomeUsuario;
	
	@Column(name = "nom_arq")
	private String nomeArquivo;
	
	@Column(name = "qtd_pag")
	private Long quantidadePaga;
	
	@Column(name = "maq_cli")
	private String maquinaCliente;
	
	@Column(name = "nom_imp")
	private String nomeImpressora;
	
	@Column(name = "dth_imp")
	private Date dataImpressao;

	public Long getCodigoHistorico() {
		return codigoHistorico;
	}

	public void setCodigoHistorico(Long codigoHistorico) {
		this.codigoHistorico = codigoHistorico;
	}

	public String getNomeUsuario() {
		return nomeUsuario;
	}

	public void setNomeUsuario(String nomeUsuario) {
		this.nomeUsuario = nomeUsuario;
	}

	public String getNomeArquivo() {
		return nomeArquivo;
	}

	public void setNomeArquivo(String nomeArquivo) {
		this.nomeArquivo = nomeArquivo;
	}

	public Long getQuantidadePaga() {
		return quantidadePaga;
	}

	public void setQuantidadePaga(Long quantidadePaga) {
		this.quantidadePaga = quantidadePaga;
	}

	public String getMaquinaCliente() {
		return maquinaCliente;
	}

	public void setMaquinaCliente(String maquinaCliente) {
		this.maquinaCliente = maquinaCliente;
	}

	public String getNomeImpressora() {
		return nomeImpressora;
	}

	public void setNomeImpressora(String nomeImpressora) {
		this.nomeImpressora = nomeImpressora;
	}

	public Date getDataImpressao() {
		return dataImpressao;
	}

	public void setDataImpressao(Date dataImpressao) {
		this.dataImpressao = dataImpressao;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((codigoHistorico == null) ? 0 : codigoHistorico.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Historico other = (Historico) obj;
		if (codigoHistorico == null) {
			if (other.codigoHistorico != null)
				return false;
		} else if (!codigoHistorico.equals(other.codigoHistorico))
			return false;
		return true;
	}
	
}
