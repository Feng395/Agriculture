-- 菜单 SQL
-- *****  sys_menu表中menu_id字段属性是8的将url属性改为/agriculture/income_list  *****

-- *****下面代码进行查询*****
-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('家庭年度收入一览查询', '8', '1',  '#',  'F', '0', 'agriculture:income_list:list',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('家庭年度收入一览新增', '8', '2',  '#',  'F', '0', 'agriculture:income_list:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('家庭年度收入一览修改', '8', '3',  '#',  'F', '0', 'agriculture:income_list:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('家庭年度收入一览删除', '8', '4',  '#',  'F', '0', 'agriculture:income_list:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('家庭年度收入一览导出', '8', '5',  '#',  'F', '0', 'agriculture:income_list:export',       '#', 'admin', sysdate(), '', null, '');
