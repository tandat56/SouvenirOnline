use souvenir;

insert into Role(code,name) values('ADMIN','Quản trị');
insert into Role(code,name) values('USER','Người dùng');

insert into User(username,password,fullname,status)
values('dat','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','lê tấn đạt',1);
insert into User(username,password,fullname,status)
values('nguoidung1','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','người dùng 1',1);
insert into User(username,password,fullname,status)
values('nguoidung2','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','người dùng 2',1);

INSERT INTO User_Role(userid,roleid) VALUES (1,1);
INSERT INTO User_Role(userid,roleid) VALUES (2,2);
INSERT INTO User_Role(userid,roleid) VALUES (3,2);