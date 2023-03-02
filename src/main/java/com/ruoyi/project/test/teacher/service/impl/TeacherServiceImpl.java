package com.ruoyi.project.test.teacher.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import com.ruoyi.common.utils.StringUtils;
import org.springframework.transaction.annotation.Transactional;
import com.ruoyi.project.test.teacher.domain.TeaDepartment;
import com.ruoyi.project.test.teacher.mapper.TeacherMapper;
import com.ruoyi.project.test.teacher.domain.Teacher;
import com.ruoyi.project.test.teacher.service.ITeacherService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 教师模块Service业务层处理
 * 
 * @author Chen
 * @date 2023-03-02
 */
@Service
public class TeacherServiceImpl implements ITeacherService 
{
    @Autowired
    private TeacherMapper teacherMapper;

    /**
     * 查询教师模块
     * 
     * @param id 教师模块主键
     * @return 教师模块
     */
    @Override
    public Teacher selectTeacherById(Long id)
    {
        return teacherMapper.selectTeacherById(id);
    }

    /**
     * 查询教师模块列表
     * 
     * @param teacher 教师模块
     * @return 教师模块
     */
    @Override
    public List<Teacher> selectTeacherList(Teacher teacher)
    {
        return teacherMapper.selectTeacherList(teacher);
    }

    /**
     * 新增教师模块
     * 
     * @param teacher 教师模块
     * @return 结果
     */
    @Transactional
    @Override
    public int insertTeacher(Teacher teacher)
    {
        int rows = teacherMapper.insertTeacher(teacher);
        insertTeaDepartment(teacher);
        return rows;
    }

    /**
     * 修改教师模块
     * 
     * @param teacher 教师模块
     * @return 结果
     */
    @Transactional
    @Override
    public int updateTeacher(Teacher teacher)
    {
        teacherMapper.deleteTeaDepartmentByDepId(teacher.getId());
        insertTeaDepartment(teacher);
        return teacherMapper.updateTeacher(teacher);
    }

    /**
     * 批量删除教师模块
     * 
     * @param ids 需要删除的教师模块主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteTeacherByIds(String ids)
    {
        teacherMapper.deleteTeaDepartmentByDepIds(Convert.toStrArray(ids));
        return teacherMapper.deleteTeacherByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除教师模块信息
     * 
     * @param id 教师模块主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteTeacherById(Long id)
    {
        teacherMapper.deleteTeaDepartmentByDepId(id);
        return teacherMapper.deleteTeacherById(id);
    }

    /**
     * 新增教师部门模块信息
     * 
     * @param teacher 教师模块对象
     */
    public void insertTeaDepartment(Teacher teacher)
    {
        List<TeaDepartment> teaDepartmentList = teacher.getTeaDepartmentList();
        Long id = teacher.getId();
        if (StringUtils.isNotNull(teaDepartmentList))
        {
            List<TeaDepartment> list = new ArrayList<TeaDepartment>();
            for (TeaDepartment teaDepartment : teaDepartmentList)
            {
                teaDepartment.setDepId(id);
                list.add(teaDepartment);
            }
            if (list.size() > 0)
            {
                teacherMapper.batchTeaDepartment(list);
            }
        }
    }
}
