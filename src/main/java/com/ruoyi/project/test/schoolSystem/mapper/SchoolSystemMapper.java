package com.ruoyi.project.test.schoolSystem.mapper;

import java.util.List;
import com.ruoyi.project.test.schoolSystem.domain.SchoolSystem;

/**
 * 学校系统Mapper接口
 * 
 * @author Chen
 * @date 2023-03-03
 */
public interface SchoolSystemMapper 
{
    /**
     * 查询学校系统
     * 
     * @param id 学校系统主键
     * @return 学校系统
     */
    public SchoolSystem selectSchoolSystemById(Long id);

    /**
     * 查询学校系统列表
     * 
     * @param schoolSystem 学校系统
     * @return 学校系统集合
     */
    public List<SchoolSystem> selectSchoolSystemList(SchoolSystem schoolSystem);

    /**
     * 新增学校系统
     * 
     * @param schoolSystem 学校系统
     * @return 结果
     */
    public int insertSchoolSystem(SchoolSystem schoolSystem);

    /**
     * 修改学校系统
     * 
     * @param schoolSystem 学校系统
     * @return 结果
     */
    public int updateSchoolSystem(SchoolSystem schoolSystem);

    /**
     * 删除学校系统
     * 
     * @param id 学校系统主键
     * @return 结果
     */
    public int deleteSchoolSystemById(Long id);

    /**
     * 批量删除学校系统
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSchoolSystemByIds(String[] ids);
}
