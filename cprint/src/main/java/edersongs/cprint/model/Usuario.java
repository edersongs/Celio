/**
 * 
 */
package edersongs.cprint.model;

import java.io.Serializable;

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
@Table(name = "tb_users")
public class Usuario implements Serializable {

	private static final long serialVersionUID = 6249241547219411748L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "cod_usr")
	private Long codigo;
	
	@Column(name = "nom_usr")
	private String nome;
	
	@Column(name = "qut_def")
	private Long quantidadeDefinida;
	
	@Column(name = "qut_atu")
	private Long quantidadeAtual;

	@Column(name = "qut_ant")
	private Long quantidadeAnterior;
	
	@Column(name = "grp_usr")
	private String grupo;
	
	
	public Usuario() {}


	public Long getCodigo() {
		return codigo;
	}


	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}


	public String getNome() {
		return nome;
	}


	public void setNome(String nome) {
		this.nome = nome;
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


	public Long getQuantidadeAnterior() {
		return quantidadeAnterior;
	}


	public void setQuantidadeAnterior(Long quantidadeAnterior) {
		this.quantidadeAnterior = quantidadeAnterior;
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
		Usuario other = (Usuario) obj;
		if (codigo == null) {
			if (other.codigo != null)
				return false;
		} else if (!codigo.equals(other.codigo))
			return false;
		return true;
	}
}
