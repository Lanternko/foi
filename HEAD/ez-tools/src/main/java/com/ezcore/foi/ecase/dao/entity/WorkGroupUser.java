package com.ezcore.foi.ecase.dao.entity;

import javax.persistence.*;

import lombok.Data;

@Entity
@Table(name = "work_group")
@Data
public class WorkGroupUser {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id")
    private int userId;

    @Column(name = "account")
    private String account;

    @Column(name = "username")
    private String username;

    @Column(name = "nick_name")
    private String nickName;
}
