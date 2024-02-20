package com.example.Zero.entity.post;

import java.sql.Clob;
import java.sql.Date;

import com.example.Zero.entity.member.Member;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Getter
public class Post {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "post_id")
    private Long postId;

    @ManyToOne(targetEntity = Member.class)
    @JoinColumn(name="member_id", referencedColumnName = "member_id")
    private Long memberId;

    @Column(name = "post_title")
    private String postTitle;

    @Column(name = "post_content")
    private Clob postContent;

    @Column(name = "created_at")
    private Date createdAt;

    @Column(name = "updated_at")
    private Date updatedAt;

    @Column(name = "is_deleted")
    private char isDeleted;
}