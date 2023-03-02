package com.ruoyi.project.agriculture.income.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.agriculture.income.mapper.AgrIncomeMapper;
import com.ruoyi.project.agriculture.income.domain.AgrIncome;
import com.ruoyi.project.agriculture.income.service.IAgrIncomeService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 农户个人收入信息Service业务层处理
 * 
 * @author Chen
 * @date 2023-03-02
 */
@Service
public class AgrIncomeServiceImpl implements IAgrIncomeService 
{
    @Autowired
    private AgrIncomeMapper agrIncomeMapper;

    /**
     * 查询农户个人收入信息
     * 
     * @param id 农户个人收入信息主键
     * @return 农户个人收入信息
     */
    @Override
    public AgrIncome selectAgrIncomeById(Long id)
    {
        return agrIncomeMapper.selectAgrIncomeById(id);
    }

    /**
     * 查询农户个人收入信息列表
     * 
     * @param agrIncome 农户个人收入信息
     * @return 农户个人收入信息
     */
    @Override
    public List<AgrIncome> selectAgrIncomeList(AgrIncome agrIncome)
    {
        return agrIncomeMapper.selectAgrIncomeList(agrIncome);
    }

    /**
     * 新增农户个人收入信息
     * 
     * @param agrIncome 农户个人收入信息
     * @return 结果
     */
    @Override
    public int insertAgrIncome(AgrIncome agrIncome)
    {
        return agrIncomeMapper.insertAgrIncome(agrIncome);
    }

    /**
     * 修改农户个人收入信息
     * 
     * @param agrIncome 农户个人收入信息
     * @return 结果
     */
    @Override
    public int updateAgrIncome(AgrIncome agrIncome)
    {
        return agrIncomeMapper.updateAgrIncome(agrIncome);
    }

    /**
     * 批量删除农户个人收入信息
     * 
     * @param ids 需要删除的农户个人收入信息主键
     * @return 结果
     */
    @Override
    public int deleteAgrIncomeByIds(String ids)
    {
        return agrIncomeMapper.deleteAgrIncomeByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除农户个人收入信息信息
     * 
     * @param id 农户个人收入信息主键
     * @return 结果
     */
    @Override
    public int deleteAgrIncomeById(Long id)
    {
        return agrIncomeMapper.deleteAgrIncomeById(id);
    }
}
