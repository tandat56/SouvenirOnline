use souvenir;

insert into Role(code,name) values('ADMIN','Quản trị');
insert into Role(code,name) values('USER','Người dùng');

insert into User(username,password,fullname,status)
values('dat','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','Le Tan Dat',1);
insert into User(username,password,fullname,status)
values('nguoidung1','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','Nguoi Dung 1',1);
insert into User(username,password,fullname,status)
values('nguoidung2','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','Nguoi Dung 2',1);

INSERT INTO User_Role(userid,roleid) VALUES (1,1);
INSERT INTO User_Role(userid,roleid) VALUES (2,2);
INSERT INTO User_Role(userid,roleid) VALUES (3,2);

insert into Category_Product(code,level,name) values ('linh-tinh',0,'Linh Tinh'), ('ao',0, 'Áo');
insert into Category_Product(code,level,name) values ('balo',0,'Balo'), ('qua-tang',0,'Quà Tặng');