-- 菜单 SQL
-- *****  sys_menu表中menu_id字段属性是7的将url属性改为/agriculture/income_contrast  *****

-- *****下面代码进行查询*****
-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('年度人均收入对比查询', '7', '1',  '#',  'F', '0', 'agriculture:income_contrast:list',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('年度人均收入对比新增', '7', '2',  '#',  'F', '0', 'agriculture:income_contrast:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('年度人均收入对比修改', '7', '3',  '#',  'F', '0', 'agriculture:income_contrast:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('年度人均收入对比删除', '7', '4',  '#',  'F', '0', 'agriculture:income_contrast:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('年度人均收入对比导出', '7', '5',  '#',  'F', '0', 'agriculture:income_contrast:export',       '#', 'admin', sysdate(), '', null, '');
