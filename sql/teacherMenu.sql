-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('教师模块', '4', '3', '/test/teacher', 'C', '0', 'test:teacher:view', '#', 'admin', sysdate(), '', null, '教师模块菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('教师模块查询', @parentId, '1',  '#',  'F', '0', 'test:teacher:list',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('教师模块新增', @parentId, '2',  '#',  'F', '0', 'test:teacher:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('教师模块修改', @parentId, '3',  '#',  'F', '0', 'test:teacher:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('教师模块删除', @parentId, '4',  '#',  'F', '0', 'test:teacher:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('教师模块导出', @parentId, '5',  '#',  'F', '0', 'test:teacher:export',       '#', 'admin', sysdate(), '', null, '');
