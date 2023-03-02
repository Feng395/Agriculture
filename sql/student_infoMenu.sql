-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('学生个人信息', '4', '1', '/test/student_info', 'C', '0', 'test:student_info:view', '#', 'admin', sysdate(), '', null, '学生个人信息菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('学生个人信息查询', @parentId, '1',  '#',  'F', '0', 'test:student_info:list',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('学生个人信息新增', @parentId, '2',  '#',  'F', '0', 'test:student_info:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('学生个人信息修改', @parentId, '3',  '#',  'F', '0', 'test:student_info:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('学生个人信息删除', @parentId, '4',  '#',  'F', '0', 'test:student_info:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('学生个人信息导出', @parentId, '5',  '#',  'F', '0', 'test:student_info:export',       '#', 'admin', sysdate(), '', null, '');
