package com.ruoyi.project.test.teaClass.service;

import java.util.List;
import com.ruoyi.project.test.teaClass.domain.TeaClass;
import com.ruoyi.framework.web.domain.Ztree;

/**
 * 班级模块Service接口
 * 
 * @author Chen
 * @date 2023-03-02
 */
public interface ITeaClassService 
{
    /**
     * 查询班级模块
     * 
     * @param id 班级模块主键
     * @return 班级模块
     */
    public TeaClass selectTeaClassById(Long id);

    /**
     * 查询班级模块列表
     * 
     * @param teaClass 班级模块
     * @return 班级模块集合
     */
    public List<TeaClass> selectTeaClassList(TeaClass teaClass);

    /**
     * 新增班级模块
     * 
     * @param teaClass 班级模块
     * @return 结果
     */
    public int insertTeaClass(TeaClass teaClass);

    /**
     * 修改班级模块
     * 
     * @param teaClass 班级模块
     * @return 结果
     */
    public int updateTeaClass(TeaClass teaClass);

    /**
     * 批量删除班级模块
     * 
     * @param ids 需要删除的班级模块主键集合
     * @return 结果
     */
    public int deleteTeaClassByIds(String ids);

    /**
     * 删除班级模块信息
     * 
     * @param id 班级模块主键
     * @return 结果
     */
    public int deleteTeaClassById(Long id);

    /**
     * 查询班级模块树列表
     * 
     * @return 所有班级模块信息
     */
    public List<Ztree> selectTeaClassTree();
}
