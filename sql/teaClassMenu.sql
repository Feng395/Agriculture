-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('班级模块', '4', '5', '/test/teaClass', 'C', '0', 'test:teaClass:view', '#', 'admin', sysdate(), '', null, '班级模块菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('班级模块查询', @parentId, '1',  '#',  'F', '0', 'test:teaClass:list',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('班级模块新增', @parentId, '2',  '#',  'F', '0', 'test:teaClass:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('班级模块修改', @parentId, '3',  '#',  'F', '0', 'test:teaClass:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('班级模块删除', @parentId, '4',  '#',  'F', '0', 'test:teaClass:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('班级模块导出', @parentId, '5',  '#',  'F', '0', 'test:teaClass:export',       '#', 'admin', sysdate(), '', null, '');
