package com.ruoyi.project.student.mapper;

import java.util.List;
import com.ruoyi.project.student.domain.StuInfo;

/**
 * 学生（测试代码生成功能）Mapper接口
 * 
 * @author Chen
 * @date 2023-02-24
 */
public interface StuInfoMapper 
{
    /**
     * 查询学生（测试代码生成功能）
     * 
     * @param id 学生（测试代码生成功能）主键
     * @return 学生（测试代码生成功能）
     */
    public StuInfo selectStuInfoById(Long id);

    /**
     * 查询学生（测试代码生成功能）列表
     * 
     * @param stuInfo 学生（测试代码生成功能）
     * @return 学生（测试代码生成功能）集合
     */
    public List<StuInfo> selectStuInfoList(StuInfo stuInfo);

    /**
     * 新增学生（测试代码生成功能）
     * 
     * @param stuInfo 学生（测试代码生成功能）
     * @return 结果
     */
    public int insertStuInfo(StuInfo stuInfo);

    /**
     * 修改学生（测试代码生成功能）
     * 
     * @param stuInfo 学生（测试代码生成功能）
     * @return 结果
     */
    public int updateStuInfo(StuInfo stuInfo);

    /**
     * 删除学生（测试代码生成功能）
     * 
     * @param id 学生（测试代码生成功能）主键
     * @return 结果
     */
    public int deleteStuInfoById(Long id);

    /**
     * 批量删除学生（测试代码生成功能）
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteStuInfoByIds(String[] ids);
}
