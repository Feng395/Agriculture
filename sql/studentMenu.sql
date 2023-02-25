-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('学生（测试代码生成功能）', '1062', '1', '/student123/student', 'C', '0', 'student123:student:view', '#', 'admin', sysdate(), '', null, '学生（测试代码生成功能）菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('学生（测试代码生成功能）查询', @parentId, '1',  '#',  'F', '0', 'student123:student:list',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('学生（测试代码生成功能）新增', @parentId, '2',  '#',  'F', '0', 'student123:student:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('学生（测试代码生成功能）修改', @parentId, '3',  '#',  'F', '0', 'student123:student:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('学生（测试代码生成功能）删除', @parentId, '4',  '#',  'F', '0', 'student123:student:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('学生（测试代码生成功能）导出', @parentId, '5',  '#',  'F', '0', 'student123:student:export',       '#', 'admin', sysdate(), '', null, '');
