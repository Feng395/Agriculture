package com.ruoyi.project.agriculture.income_list.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.agriculture.income_list.mapper.AgrIncomeListMapper;
import com.ruoyi.project.agriculture.income_list.domain.AgrIncomeList;
import com.ruoyi.project.agriculture.income_list.service.IAgrIncomeListService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 家庭年度收入一览Service业务层处理
 * 
 * @author Chen
 * @date 2023-03-02
 */
@Service
public class AgrIncomeListServiceImpl implements IAgrIncomeListService 
{
    @Autowired
    private AgrIncomeListMapper agrIncomeListMapper;

    /**
     * 查询家庭年度收入一览
     * 
     * @param id 家庭年度收入一览主键
     * @return 家庭年度收入一览
     */
    @Override
    public AgrIncomeList selectAgrIncomeListById(Long id)
    {
        return agrIncomeListMapper.selectAgrIncomeListById(id);
    }

    /**
     * 查询家庭年度收入一览列表
     * 
     * @param agrIncomeList 家庭年度收入一览
     * @return 家庭年度收入一览
     */
    @Override
    public List<AgrIncomeList> selectAgrIncomeListList(AgrIncomeList agrIncomeList)
    {
        return agrIncomeListMapper.selectAgrIncomeListList(agrIncomeList);
    }

    /**
     * 新增家庭年度收入一览
     * 
     * @param agrIncomeList 家庭年度收入一览
     * @return 结果
     */
    @Override
    public int insertAgrIncomeList(AgrIncomeList agrIncomeList)
    {
        return agrIncomeListMapper.insertAgrIncomeList(agrIncomeList);
    }

    /**
     * 修改家庭年度收入一览
     * 
     * @param agrIncomeList 家庭年度收入一览
     * @return 结果
     */
    @Override
    public int updateAgrIncomeList(AgrIncomeList agrIncomeList)
    {
        return agrIncomeListMapper.updateAgrIncomeList(agrIncomeList);
    }

    /**
     * 批量删除家庭年度收入一览
     * 
     * @param ids 需要删除的家庭年度收入一览主键
     * @return 结果
     */
    @Override
    public int deleteAgrIncomeListByIds(String ids)
    {
        return agrIncomeListMapper.deleteAgrIncomeListByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除家庭年度收入一览信息
     * 
     * @param id 家庭年度收入一览主键
     * @return 结果
     */
    @Override
    public int deleteAgrIncomeListById(Long id)
    {
        return agrIncomeListMapper.deleteAgrIncomeListById(id);
    }
}
