package com.ruoyi.project.student.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.student.mapper.StuInfoMapper;
import com.ruoyi.project.student.domain.StuInfo;
import com.ruoyi.project.student.service.IStuInfoService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 学生（测试代码生成功能）Service业务层处理
 * 
 * @author Chen
 * @date 2023-02-24
 */
@Service
public class StuInfoServiceImpl implements IStuInfoService 
{
    @Autowired
    private StuInfoMapper stuInfoMapper;

    /**
     * 查询学生（测试代码生成功能）
     * 
     * @param id 学生（测试代码生成功能）主键
     * @return 学生（测试代码生成功能）
     */
    @Override
    public StuInfo selectStuInfoById(Long id)
    {
        return stuInfoMapper.selectStuInfoById(id);
    }

    /**
     * 查询学生（测试代码生成功能）列表
     * 
     * @param stuInfo 学生（测试代码生成功能）
     * @return 学生（测试代码生成功能）
     */
    @Override
    public List<StuInfo> selectStuInfoList(StuInfo stuInfo)
    {
        return stuInfoMapper.selectStuInfoList(stuInfo);
    }

    /**
     * 新增学生（测试代码生成功能）
     * 
     * @param stuInfo 学生（测试代码生成功能）
     * @return 结果
     */
    @Override
    public int insertStuInfo(StuInfo stuInfo)
    {
        return stuInfoMapper.insertStuInfo(stuInfo);
    }

    /**
     * 修改学生（测试代码生成功能）
     * 
     * @param stuInfo 学生（测试代码生成功能）
     * @return 结果
     */
    @Override
    public int updateStuInfo(StuInfo stuInfo)
    {
        return stuInfoMapper.updateStuInfo(stuInfo);
    }

    /**
     * 批量删除学生（测试代码生成功能）
     * 
     * @param ids 需要删除的学生（测试代码生成功能）主键
     * @return 结果
     */
    @Override
    public int deleteStuInfoByIds(String ids)
    {
        return stuInfoMapper.deleteStuInfoByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除学生（测试代码生成功能）信息
     * 
     * @param id 学生（测试代码生成功能）主键
     * @return 结果
     */
    @Override
    public int deleteStuInfoById(Long id)
    {
        return stuInfoMapper.deleteStuInfoById(id);
    }
}
