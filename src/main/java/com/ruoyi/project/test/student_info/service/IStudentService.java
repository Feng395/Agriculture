package com.ruoyi.project.test.student_info.service;

import java.util.List;
import com.ruoyi.project.test.student_info.domain.Student;

/**
 * 学生个人信息Service接口
 * 
 * @author Chen
 * @date 2023-03-02
 */
public interface IStudentService 
{
    /**
     * 查询学生个人信息
     * 
     * @param id 学生个人信息主键
     * @return 学生个人信息
     */
    public Student selectStudentById(Long id);

    /**
     * 查询学生个人信息列表
     * 
     * @param student 学生个人信息
     * @return 学生个人信息集合
     */
    public List<Student> selectStudentList(Student student);

    /**
     * 新增学生个人信息
     * 
     * @param student 学生个人信息
     * @return 结果
     */
    public int insertStudent(Student student);

    /**
     * 修改学生个人信息
     * 
     * @param student 学生个人信息
     * @return 结果
     */
    public int updateStudent(Student student);

    /**
     * 批量删除学生个人信息
     * 
     * @param ids 需要删除的学生个人信息主键集合
     * @return 结果
     */
    public int deleteStudentByIds(String ids);

    /**
     * 删除学生个人信息信息
     * 
     * @param id 学生个人信息主键
     * @return 结果
     */
    public int deleteStudentById(Long id);
}
