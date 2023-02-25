package com.ruoyi.project.student.service;

import java.util.List;
import com.ruoyi.project.student.domain.StuInfo;

/**
 * 学生（测试代码生成功能）Service接口
 * 
 * @author Chen
 * @date 2023-02-24
 */
public interface IStuInfoService 
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
     * 批量删除学生（测试代码生成功能）
     * 
     * @param ids 需要删除的学生（测试代码生成功能）主键集合
     * @return 结果
     */
    public int deleteStuInfoByIds(String ids);

    /**
     * 删除学生（测试代码生成功能）信息
     * 
     * @param id 学生（测试代码生成功能）主键
     * @return 结果
     */
    public int deleteStuInfoById(Long id);
}
