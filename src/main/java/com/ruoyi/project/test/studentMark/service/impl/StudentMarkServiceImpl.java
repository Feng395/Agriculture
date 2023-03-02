package com.ruoyi.project.test.studentMark.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.test.studentMark.mapper.StudentMarkMapper;
import com.ruoyi.project.test.studentMark.domain.StudentMark;
import com.ruoyi.project.test.studentMark.service.IStudentMarkService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 学生成绩Service业务层处理
 * 
 * @author Chen
 * @date 2023-03-02
 */
@Service
public class StudentMarkServiceImpl implements IStudentMarkService 
{
    @Autowired
    private StudentMarkMapper studentMarkMapper;

    /**
     * 查询学生成绩
     * 
     * @param id 学生成绩主键
     * @return 学生成绩
     */
    @Override
    public StudentMark selectStudentMarkById(Long id)
    {
        return studentMarkMapper.selectStudentMarkById(id);
    }

    /**
     * 查询学生成绩列表
     * 
     * @param studentMark 学生成绩
     * @return 学生成绩
     */
    @Override
    public List<StudentMark> selectStudentMarkList(StudentMark studentMark)
    {
        return studentMarkMapper.selectStudentMarkList(studentMark);
    }

    /**
     * 新增学生成绩
     * 
     * @param studentMark 学生成绩
     * @return 结果
     */
    @Override
    public int insertStudentMark(StudentMark studentMark)
    {
        return studentMarkMapper.insertStudentMark(studentMark);
    }

    /**
     * 修改学生成绩
     * 
     * @param studentMark 学生成绩
     * @return 结果
     */
    @Override
    public int updateStudentMark(StudentMark studentMark)
    {
        return studentMarkMapper.updateStudentMark(studentMark);
    }

    /**
     * 批量删除学生成绩
     * 
     * @param ids 需要删除的学生成绩主键
     * @return 结果
     */
    @Override
    public int deleteStudentMarkByIds(String ids)
    {
        return studentMarkMapper.deleteStudentMarkByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除学生成绩信息
     * 
     * @param id 学生成绩主键
     * @return 结果
     */
    @Override
    public int deleteStudentMarkById(Long id)
    {
        return studentMarkMapper.deleteStudentMarkById(id);
    }
}
