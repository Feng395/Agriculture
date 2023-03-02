package com.ruoyi.project.test.teacher.service;

import java.util.List;
import com.ruoyi.project.test.teacher.domain.Teacher;

/**
 * 教师模块Service接口
 * 
 * @author Chen
 * @date 2023-03-02
 */
public interface ITeacherService 
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
     * 批量删除教师模块
     * 
     * @param ids 需要删除的教师模块主键集合
     * @return 结果
     */
    public int deleteTeacherByIds(String ids);

    /**
     * 删除教师模块信息
     * 
     * @param id 教师模块主键
     * @return 结果
     */
    public int deleteTeacherById(Long id);
}
