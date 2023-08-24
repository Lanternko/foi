package me.zhengjie.modules.system.domain;

import java.sql.Timestamp;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotNull;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import me.zhengjie.base.BaseEntity.Update;

@Entity
@Getter
@Setter
public class Substitute {

    @Id
    @NotNull(groups = Update.class)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @ApiModelProperty(value = "ID", hidden = true)
    private Long id;
	
    @OneToOne
    @JoinColumn(name = "main_id")
    @ApiModelProperty(value = "代理人")
    private User main;
    
    @OneToOne
    @JoinColumn(name = "subs_id")
    @ApiModelProperty(value = "代理對象")
    private User subs;
    
    @ApiModelProperty(value = "起始時間")
    private Timestamp begins;
    
    @ApiModelProperty(value = "結束時間")
    private Timestamp ends;
    
    @ApiModelProperty(value = "代理中註記")
    private Boolean active;
    
}
