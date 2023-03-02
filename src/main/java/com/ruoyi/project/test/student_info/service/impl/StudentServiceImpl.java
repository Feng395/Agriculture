package com.ruoyi.project.test.student_info.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import com.ruoyi.common.utils.StringUtils;
import org.springframework.transaction.annotation.Transactional;
import com.ruoyi.project.test.student_info.domain.StuMark;
import com.ruoyi.project.test.student_info.mapper.StudentMapper;
import com.ruoyi.project.test.student_info.domain.Student;
import com.ruoyi.project.test.student_info.service.IStudentService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 学生个人信息Service业务层处理
 * 
 * @author Chen
 * @date 2023-03-02
 */
@Service
public class StudentServiceImpl implements IStudentService 
{
    @Autowired
    private StudentMapper studentMapper;

    /**
     * 查询学生个人信息
     * 
     * @param id 学生个人信息主键
     * @return 学生个人信息
     */
    @Override
    public Student selectStudentById(Long id)
    {
        return studentMapper.selectStudentById(id);
    }

    /**
     * 查询学生个人信息列表
     * 
     * @param student 学生个人信息
     * @return 学生个人信息
     */
    @Override
    public List<Student> selectStudentList(Student student)
    {
        return studentMapper.selectStudentList(student);
    }

    /**
     * 新增学生个人信息
     * 
     * @param student 学生个人信息
     * @return 结果
     */
    @Transactional
    @Override
    public int insertStudent(Student student)
    {
        int rows = studentMapper.insertStudent(student);
        insertStuMark(student);
        return rows;
    }

    /**
     * 修改学生个人信息
     * 
     * @param student 学生个人信息
     * @return 结果
     */
    @Transactional
    @Override
    public int updateStudent(Student student)
    {
        studentMapper.deleteStuMarkByStuId(student.getId());
        insertStuMark(student);
        return studentMapper.updateStudent(student);
    }

    /**
     * 批量删除学生个人信息
     * 
     * @param ids 需要删除的学生个人信息主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteStudentByIds(String ids)
    {
        studentMapper.deleteStuMarkByStuIds(Convert.toStrArray(ids));
        return studentMapper.deleteStudentByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除学生个人信息信息
     * 
     * @param id 学生个人信息主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteStudentById(Long id)
    {
        studentMapper.deleteStuMarkByStuId(id);
        return studentMapper.deleteStudentById(id);
    }

    /**
     * 新增学生成绩信息
     * 
     * @param student 学生个人信息对象
     */
    public void insertStuMark(Student student)
    {
        List<StuMark> stuMarkList = student.getStuMarkList();
        Long id = student.getId();
        if (StringUtils.isNotNull(stuMarkList))
        {
            List<StuMark> list = new ArrayList<StuMark>();
            for (StuMark stuMark : stuMarkList)
            {
                stuMark.setStuId(id);
                list.add(stuMark);
            }
            if (list.size() > 0)
            {
                studentMapper.batchStuMark(list);
            }
        }
    }
}
