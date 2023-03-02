-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('教师部门模块', '4', '4', '/test/teaDepartment', 'C', '0', 'test:teaDepartment:view', '#', 'admin', sysdate(), '', null, '教师部门模块菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('教师部门模块查询', @parentId, '1',  '#',  'F', '0', 'test:teaDepartment:list',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('教师部门模块新增', @parentId, '2',  '#',  'F', '0', 'test:teaDepartment:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('教师部门模块修改', @parentId, '3',  '#',  'F', '0', 'test:teaDepartment:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('教师部门模块删除', @parentId, '4',  '#',  'F', '0', 'test:teaDepartment:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('教师部门模块导出', @parentId, '5',  '#',  'F', '0', 'test:teaDepartment:export',       '#', 'admin', sysdate(), '', null, '');
