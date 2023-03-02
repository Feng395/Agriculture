package com.ruoyi.project.test.teacher.mapper;

import java.util.List;
import com.ruoyi.project.test.teacher.domain.Teacher;
import com.ruoyi.project.test.teacher.domain.TeaDepartment;

/**
 * 教师模块Mapper接口
 * 
 * @author Chen
 * @date 2023-03-02
 */
public interface TeacherMapper 
{
    /**
     * 查询教师模块
     * 
     * @param id 教师模块主键
     * @return 教师模块
     */
    public Teacher selectTeacherById(Long id);

    /**
     * 查询教师模块列表
     * 
     * @param teacher 教师模块
     * @return 教师模块集合
     */
    public List<Teacher> selectTeacherList(Teacher teacher);

    /**
     * 新增教师模块
     * 
     * @param teacher 教师模块
     * @return 结果
     */
    public int insertTeacher(Teacher teacher);

    /**
     * 修改教师模块
     * 
     * @param teacher 教师模块
     * @return 结果
     */
    public int updateTeacher(Teacher teacher);

    /**
     * 删除教师模块
     * 
     * @param id 教师模块主键
     * @return 结果
     */
    public int deleteTeacherById(Long id);

    /**
     * 批量删除教师模块
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTeacherByIds(String[] ids);

    /**
     * 批量删除教师部门模块
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTeaDepartmentByDepIds(String[] ids);
    
    /**
     * 批量新增教师部门模块
     * 
     * @param teaDepartmentList 教师部门模块列表
     * @return 结果
     */
    public int batchTeaDepartment(List<TeaDepartment> teaDepartmentList);
    

    /**
     * 通过教师模块主键删除教师部门模块信息
     * 
     * @param id 教师模块ID
     * @return 结果
     */
    public int deleteTeaDepartmentByDepId(Long id);
}
