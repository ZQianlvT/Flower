CREATE DATABASE flower;
USE flower;
CREATE TABLE IF NOT EXISTS f_user(
	u_id VARCHAR(40) PRIMARY KEY,
	u_email VARCHAR(40) UNIQUE,
	u_pwd VARCHAR(40),
	u_name VARCHAR(20),
	u_img VARCHAR(60),
	u_tel VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS f_team(
	t_id VARCHAR(40) PRIMARY KEY,
	t_name VARCHAR(40),
	t_create_time DATETIME,
	t_total_members INT,
	t_invite_link VARCHAR(60),
	t_u_id VARCHAR(40)
);

CREATE TABLE if NOT EXISTS f_userandteam(
	uat_id VARCHAR(40) PRIMARY KEY,
	uat_u_id VARCHAR(40),
	uat_t_id VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS f_project(
	p_id VARCHAR(40) PRIMARY KEY,
	p_name VARCHAR(20),
	p_remark VARCHAR(120),
	p_status INT,				-- 0未归档 1归档
	p_t_id VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS f_discussion(
	d_id VARCHAR(40) PRIMARY KEY,
	d_name VARCHAR(40),
	d_remark VARCHAR(120),
	d_start_time DATETIME,
	d_status INT,				-- 0 进行中 1结束
	d_p_id VARCHAR(40),
	d_u_id VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS f_reply(
	r_id VARCHAR(40) PRIMARY KEY,
	r_remark VARCHAR(260),
	r_reply_time DATETIME,
	r_u_id VARCHAR(40),
	r_d_id VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS f_schedule(
	s_id VARCHAR(40) PRIMARY KEY,
	s_name VARCHAR(40),
	s_status INT,			-- 0 全天类型 1普通类型
	s_start_time DATETIME,
	s_end_time DATETIME,
	s_p_id VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS f_userAndSchedule(
	uas_id VARCHAR(40) PRIMARY KEY,
	uas_s_id VARCHAR(40),
	uas_u_id VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS f_board(
	b_id VARCHAR(40) PRIMARY KEY,
	b_name VARCHAR(40),
	b_unfinished INT,
	b_p_id VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS f_task(
	t_id VARCHAR(40) PRIMARY KEY,
	t_name VARCHAR(40),
	t_end_time DATETIME,
	t_u_id VARCHAR(40),
	t_b_id VARCHAR(40)
);

/*
DROP DATABASE flower;
*/