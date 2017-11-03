/**
 * 
 */
package edersongs.cprint.model;

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
@Table(name = "tb_users_del")
public class HistoricoAlteracao {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "cod_usr")
	private Long codigo;
	
	@Column(name = "nom_usr")
	private String nomeUsuario;
	
	@Column(name = "qut_def")
	private Long quantidadeDefinida;
	
	@Column(name = "qut_atu")
	private Long quantidadeAtual;
	
	@Column(name = "dth_del")
	private Date dataAtualizacao;
	
	@Column(name = "grp_usr")
	private String grupo;

	public Long getCodigo() {
		return codigo;
	}

	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}

	public String getNomeUsuario() {
		return nomeUsuario;
	}

	public void setNomeUsuario(String nomeUsuario) {
		this.nomeUsuario = nomeUsuario;
	}

	public Long getQuantidadeDefinida() {
		return quantidadeDefinida;
	}

	public void setQuantidadeDefinida(Long quantidadeDefinida) {
		this.quantidadeDefinida = quantidadeDefinida;
	}

	public Long getQuantidadeAtual() {
		return quantidadeAtual;
	}

	public void setQuantidadeAtual(Long quantidadeAtual) {
		this.quantidadeAtual = quantidadeAtual;
	}

	public Date getDataAtualizacao() {
		return dataAtualizacao;
	}

	public void setDataAtualizacao(Date dataAtualizacao) {
		this.dataAtualizacao = dataAtualizacao;
	}

	public String getGrupo() {
		return grupo;
	}

	public void setGrupo(String grupo) {
		this.grupo = grupo;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((codigo == null) ? 0 : codigo.hashCode());
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
		HistoricoAlteracao other = (HistoricoAlteracao) obj;
		if (codigo == null) {
			if (other.codigo != null)
				return false;
		} else if (!codigo.equals(other.codigo))
			return false;
		return true;
	}
}
