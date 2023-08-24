package me.zhengjie.domain;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.CreationTimestamp;

import com.alibaba.fastjson.annotation.JSONField;

import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import me.zhengjie.base.BaseEntity;

@Entity
@Getter
@Setter
@Table(name="sys_email")
public class Email extends BaseEntity implements Serializable {
	
	@Id
    @Column(name = "email_id")
    @NotNull(groups = Update.class)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
	@JSONField(serialize = false)
	private Long child;
	
	private String subject;
	
	@CreationTimestamp
    private Timestamp createTime;
	
	private Timestamp sendedTime;
	
	private Timestamp failedReportTime;

	private String status;
	
	private String fromApi;
	
	private String content;
	
//	@ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
//	@JoinColumn(name = "sender", referencedColumnName = "contacts_id")
//	private Contacts sender;
	
	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinTable(name = "sys_email_contacts_to", 
				joinColumns = @JoinColumn(name = "email_id"), 
				inverseJoinColumns = @JoinColumn(name = "contacts_id"))
	private Set<Contacts> to;
	
	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinTable(name = "sys_email_contacts_cc", 
				joinColumns = @JoinColumn(name = "email_id"), 
				inverseJoinColumns = @JoinColumn(name = "contacts_id"))
	private Set<Contacts> cc;
	
	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinTable(name = "sys_email_contacts_bcc", 
				joinColumns = @JoinColumn(name = "email_id"), 
				inverseJoinColumns = @JoinColumn(name = "contacts_id"))
	private Set<Contacts> bcc;

	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinTable(name = "sys_email_attachment", 
				joinColumns = @JoinColumn(name = "email_id"), 
				inverseJoinColumns = @JoinColumn(name = "attachment_id"))
	private Set<Attatchment> attachments;

	public Email() {
	}

}
