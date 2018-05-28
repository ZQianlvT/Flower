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
	b_index int,
	b_name VARCHAR(40),
	b_unfinished INT,
	b_p_id VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS f_task(
	t_id VARCHAR(40) PRIMARY KEY,
	t_name VARCHAR(40),
	t_status INT,			-- 0未完成 1已完成
	t_end_time DATETIME,
	t_u_id VARCHAR(40),
	t_b_id VARCHAR(40)
);

/*
DROP DATABASE flower;

SELECT p_id,p_name,p_remark,p_status,p_t_id,b_id,b_index,b_name,b_unfinished,b_p_id,t_id,t_name,t_status,t_end_time,t_u_id,t_b_id
FROM f_project p,f_board b,f_task t
WHERE p.p_id = b.b_p_id AND b.b_id = t.t_b_id AND p_id ='1446286a4691437b941293cd01d910d5'
ORDER BY b_index ASC;

select t_id,t_name,t_create_time,t_total_members,t_invite_link,t_u_id FROM f_team
where t_u_id = 'b89a87b923294beca4fc105cf2f092d1'

SELECT u_id,u_email,u_pwd,u_name,u_img,u_tel
FROM  f_userandteam uat ,f_team t ,f_user u
WHERE uat.uat_u_id = u.u_id and t.t_id=uat.uat_t_id and t_id = '8c7000f128644d6bb2b1282e2d3d4c45';

DELETE FROM f_userandteam WHERE uat_u_id = '6fd2de767a72499e96ffcdc24885e50d' and uat_t_id = '8c7000f128644d6bb2b1282e2d3d4c45';
*/