-- 菜单 SQL

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('农户个人信息查询', '5', '1',  '#',  'F', '0', 'agriculture:peasant_info:list',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('农户个人信息新增', '5', '2',  '#',  'F', '0', 'agriculture:peasant_info:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('农户个人信息修改', '5', '3',  '#',  'F', '0', 'agriculture:peasant_info:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('农户个人信息删除', '5', '4',  '#',  'F', '0', 'agriculture:peasant_info:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('农户个人信息导出', '5', '5',  '#',  'F', '0', 'agriculture:peasant_info:export',       '#', 'admin', sysdate(), '', null, '');
