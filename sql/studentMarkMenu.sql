-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('学生成绩', '4', '2', '/test/studentMark', 'C', '0', 'test:studentMark:view', '#', 'admin', sysdate(), '', null, '学生成绩菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('学生成绩查询', @parentId, '1',  '#',  'F', '0', 'test:studentMark:list',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('学生成绩新增', @parentId, '2',  '#',  'F', '0', 'test:studentMark:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('学生成绩修改', @parentId, '3',  '#',  'F', '0', 'test:studentMark:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('学生成绩删除', @parentId, '4',  '#',  'F', '0', 'test:studentMark:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('学生成绩导出', @parentId, '5',  '#',  'F', '0', 'test:studentMark:export',       '#', 'admin', sysdate(), '', null, '');
