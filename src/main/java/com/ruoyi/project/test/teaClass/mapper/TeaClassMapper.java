package com.ruoyi.project.test.teaClass.mapper;

import java.util.List;
import com.ruoyi.project.test.teaClass.domain.TeaClass;

/**
 * 班级模块Mapper接口
 * 
 * @author Chen
 * @date 2023-03-02
 */
public interface TeaClassMapper 
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
     * 删除班级模块
     * 
     * @param id 班级模块主键
     * @return 结果
     */
    public int deleteTeaClassById(Long id);

    /**
     * 批量删除班级模块
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTeaClassByIds(String[] ids);
}
