package com.ruoyi.project.test.teaDepartment.mapper;

import java.util.List;
import com.ruoyi.project.test.teaDepartment.domain.TeacherDepartment;

/**
 * 教师部门模块Mapper接口
 * 
 * @author Chen
 * @date 2023-03-02
 */
public interface TeacherDepartmentMapper 
{
    /**
     * 查询教师部门模块
     * 
     * @param id 教师部门模块主键
     * @return 教师部门模块
     */
    public TeacherDepartment selectTeacherDepartmentById(Long id);

    /**
     * 查询教师部门模块列表
     * 
     * @param teacherDepartment 教师部门模块
     * @return 教师部门模块集合
     */
    public List<TeacherDepartment> selectTeacherDepartmentList(TeacherDepartment teacherDepartment);

    /**
     * 新增教师部门模块
     * 
     * @param teacherDepartment 教师部门模块
     * @return 结果
     */
    public int insertTeacherDepartment(TeacherDepartment teacherDepartment);

    /**
     * 修改教师部门模块
     * 
     * @param teacherDepartment 教师部门模块
     * @return 结果
     */
    public int updateTeacherDepartment(TeacherDepartment teacherDepartment);

    /**
     * 删除教师部门模块
     * 
     * @param id 教师部门模块主键
     * @return 结果
     */
    public int deleteTeacherDepartmentById(Long id);

    /**
     * 批量删除教师部门模块
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTeacherDepartmentByIds(String[] ids);
}
