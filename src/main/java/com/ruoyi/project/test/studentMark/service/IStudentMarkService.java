package com.ruoyi.project.test.studentMark.service;

import java.util.List;
import com.ruoyi.project.test.studentMark.domain.StudentMark;

/**
 * 学生成绩Service接口
 * 
 * @author Chen
 * @date 2023-03-02
 */
public interface IStudentMarkService 
{
    /**
     * 查询学生成绩
     * 
     * @param id 学生成绩主键
     * @return 学生成绩
     */
    public StudentMark selectStudentMarkById(Long id);

    /**
     * 查询学生成绩列表
     * 
     * @param studentMark 学生成绩
     * @return 学生成绩集合
     */
    public List<StudentMark> selectStudentMarkList(StudentMark studentMark);

    /**
     * 新增学生成绩
     * 
     * @param studentMark 学生成绩
     * @return 结果
     */
    public int insertStudentMark(StudentMark studentMark);

    /**
     * 修改学生成绩
     * 
     * @param studentMark 学生成绩
     * @return 结果
     */
    public int updateStudentMark(StudentMark studentMark);

    /**
     * 批量删除学生成绩
     * 
     * @param ids 需要删除的学生成绩主键集合
     * @return 结果
     */
    public int deleteStudentMarkByIds(String ids);

    /**
     * 删除学生成绩信息
     * 
     * @param id 学生成绩主键
     * @return 结果
     */
    public int deleteStudentMarkById(Long id);
}
