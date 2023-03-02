package com.ruoyi.project.test.student_info.mapper;

import java.util.List;
import com.ruoyi.project.test.student_info.domain.Student;
import com.ruoyi.project.test.student_info.domain.StuMark;

/**
 * 学生个人信息Mapper接口
 * 
 * @author Chen
 * @date 2023-03-02
 */
public interface StudentMapper 
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
     * 删除学生个人信息
     * 
     * @param id 学生个人信息主键
     * @return 结果
     */
    public int deleteStudentById(Long id);

    /**
     * 批量删除学生个人信息
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteStudentByIds(String[] ids);

    /**
     * 批量删除学生成绩
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteStuMarkByStuIds(String[] ids);
    
    /**
     * 批量新增学生成绩
     * 
     * @param stuMarkList 学生成绩列表
     * @return 结果
     */
    public int batchStuMark(List<StuMark> stuMarkList);
    

    /**
     * 通过学生个人信息主键删除学生成绩信息
     * 
     * @param id 学生个人信息ID
     * @return 结果
     */
    public int deleteStuMarkByStuId(Long id);
}
