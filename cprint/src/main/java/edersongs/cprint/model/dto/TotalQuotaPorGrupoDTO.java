/**
 * 
 */
package edersongs.cprint.model.dto;

import java.math.BigDecimal;

/**
* @author Éderson Gervásio
		   edersongervasiosilva@gmail.com
		   github.com/edersongs	
 *
 */
public class TotalQuotaPorGrupoDTO {

	private String label;
	private Long value;
	
	public TotalQuotaPorGrupoDTO(String label, Long value) {

		this.label = label;
		this.value = value;
	}
	
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public Long getValue() {
		return value;
	}
	public void setValue(Long value) {
		this.value = value;
	}
}
