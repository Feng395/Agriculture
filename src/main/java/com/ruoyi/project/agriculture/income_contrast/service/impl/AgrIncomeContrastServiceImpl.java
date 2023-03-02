package com.ruoyi.project.agriculture.income_contrast.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.agriculture.income_contrast.mapper.AgrIncomeContrastMapper;
import com.ruoyi.project.agriculture.income_contrast.domain.AgrIncomeContrast;
import com.ruoyi.project.agriculture.income_contrast.service.IAgrIncomeContrastService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 年度人均收入对比Service业务层处理
 * 
 * @author Chen
 * @date 2023-03-02
 */
@Service
public class AgrIncomeContrastServiceImpl implements IAgrIncomeContrastService 
{
    @Autowired
    private AgrIncomeContrastMapper agrIncomeContrastMapper;

    /**
     * 查询年度人均收入对比
     * 
     * @param id 年度人均收入对比主键
     * @return 年度人均收入对比
     */
    @Override
    public AgrIncomeContrast selectAgrIncomeContrastById(Long id)
    {
        return agrIncomeContrastMapper.selectAgrIncomeContrastById(id);
    }

    /**
     * 查询年度人均收入对比列表
     * 
     * @param agrIncomeContrast 年度人均收入对比
     * @return 年度人均收入对比
     */
    @Override
    public List<AgrIncomeContrast> selectAgrIncomeContrastList(AgrIncomeContrast agrIncomeContrast)
    {
        return agrIncomeContrastMapper.selectAgrIncomeContrastList(agrIncomeContrast);
    }

    /**
     * 新增年度人均收入对比
     * 
     * @param agrIncomeContrast 年度人均收入对比
     * @return 结果
     */
    @Override
    public int insertAgrIncomeContrast(AgrIncomeContrast agrIncomeContrast)
    {
        return agrIncomeContrastMapper.insertAgrIncomeContrast(agrIncomeContrast);
    }

    /**
     * 修改年度人均收入对比
     * 
     * @param agrIncomeContrast 年度人均收入对比
     * @return 结果
     */
    @Override
    public int updateAgrIncomeContrast(AgrIncomeContrast agrIncomeContrast)
    {
        return agrIncomeContrastMapper.updateAgrIncomeContrast(agrIncomeContrast);
    }

    /**
     * 批量删除年度人均收入对比
     * 
     * @param ids 需要删除的年度人均收入对比主键
     * @return 结果
     */
    @Override
    public int deleteAgrIncomeContrastByIds(String ids)
    {
        return agrIncomeContrastMapper.deleteAgrIncomeContrastByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除年度人均收入对比信息
     * 
     * @param id 年度人均收入对比主键
     * @return 结果
     */
    @Override
    public int deleteAgrIncomeContrastById(Long id)
    {
        return agrIncomeContrastMapper.deleteAgrIncomeContrastById(id);
    }
}
