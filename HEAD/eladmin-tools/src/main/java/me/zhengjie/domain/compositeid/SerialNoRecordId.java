package me.zhengjie.domain.compositeid;

import java.io.Serializable;
import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode
public class SerialNoRecordId implements Serializable {

	private static final long serialVersionUID = -1497726815125397245L;
	
	private String type;
	private String label;

}
