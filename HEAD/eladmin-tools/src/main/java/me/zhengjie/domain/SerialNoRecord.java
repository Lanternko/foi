package me.zhengjie.domain;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import me.zhengjie.domain.compositeid.SerialNoRecordId;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@IdClass(SerialNoRecordId.class)
@Table(name = "SERIAL_NO_RECORD")
public class SerialNoRecord implements Serializable {

	private static final long serialVersionUID = -1690805134214952209L;

	@Id
	@NotNull
	@ApiModelProperty(value = "取號種類")
	private String type;
	
	@Id
	@NotNull
	@ApiModelProperty(value = "取號依據")
	private String label;

	@NotNull
	@ApiModelProperty(value = "當前可用編號")
	private Integer nextNo;

}
