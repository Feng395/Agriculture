package com.ruoyi.project.test.teaDepartment.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.test.teaDepartment.mapper.TeacherDepartmentMapper;
import com.ruoyi.project.test.teaDepartment.domain.TeacherDepartment;
import com.ruoyi.project.test.teaDepartment.service.ITeacherDepartmentService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 教师部门模块Service业务层处理
 * 
 * @author Chen
 * @date 2023-03-02
 */
@Service
public class TeacherDepartmentServiceImpl implements ITeacherDepartmentService 
{
    @Autowired
    private TeacherDepartmentMapper teacherDepartmentMapper;

    /**
     * 查询教师部门模块
     * 
     * @param id 教师部门模块主键
     * @return 教师部门模块
     */
    @Override
    public TeacherDepartment selectTeacherDepartmentById(Long id)
    {
        return teacherDepartmentMapper.selectTeacherDepartmentById(id);
    }

    /**
     * 查询教师部门模块列表
     * 
     * @param teacherDepartment 教师部门模块
     * @return 教师部门模块
     */
    @Override
    public List<TeacherDepartment> selectTeacherDepartmentList(TeacherDepartment teacherDepartment)
    {
        return teacherDepartmentMapper.selectTeacherDepartmentList(teacherDepartment);
    }

    /**
     * 新增教师部门模块
     * 
     * @param teacherDepartment 教师部门模块
     * @return 结果
     */
    @Override
    public int insertTeacherDepartment(TeacherDepartment teacherDepartment)
    {
        return teacherDepartmentMapper.insertTeacherDepartment(teacherDepartment);
    }

    /**
     * 修改教师部门模块
     * 
     * @param teacherDepartment 教师部门模块
     * @return 结果
     */
    @Override
    public int updateTeacherDepartment(TeacherDepartment teacherDepartment)
    {
        return teacherDepartmentMapper.updateTeacherDepartment(teacherDepartment);
    }

    /**
     * 批量删除教师部门模块
     * 
     * @param ids 需要删除的教师部门模块主键
     * @return 结果
     */
    @Override
    public int deleteTeacherDepartmentByIds(String ids)
    {
        return teacherDepartmentMapper.deleteTeacherDepartmentByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除教师部门模块信息
     * 
     * @param id 教师部门模块主键
     * @return 结果
     */
    @Override
    public int deleteTeacherDepartmentById(Long id)
    {
        return teacherDepartmentMapper.deleteTeacherDepartmentById(id);
    }
}
