-- 菜单 SQL
-- *****sys_menu表中menu_id字段属性是5的将url属性改为/agriculture/income*****

-- *****下面代码进行查询*****
-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('农户收入信息查询', '5', '1',  '#',  'F', '0', 'agriculture:income:list',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('农户收入信息新增', '5', '2',  '#',  'F', '0', 'agriculture:income:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('农户收入信息修改', '5', '3',  '#',  'F', '0', 'agriculture:income:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('农户收入信息删除', '5', '4',  '#',  'F', '0', 'agriculture:income:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('农户收入信息导出', '5', '5',  '#',  'F', '0', 'agriculture:income:export',       '#', 'admin', sysdate(), '', null, '');
