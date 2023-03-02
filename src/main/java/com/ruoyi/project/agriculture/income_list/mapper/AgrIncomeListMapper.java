package com.ruoyi.project.agriculture.income_list.mapper;

import java.util.List;
import com.ruoyi.project.agriculture.income_list.domain.AgrIncomeList;

/**
 * 家庭年度收入一览Mapper接口
 * 
 * @author Chen
 * @date 2023-03-02
 */
public interface AgrIncomeListMapper 
{
    /**
     * 查询家庭年度收入一览
     * 
     * @param id 家庭年度收入一览主键
     * @return 家庭年度收入一览
     */
    public AgrIncomeList selectAgrIncomeListById(Long id);

    /**
     * 查询家庭年度收入一览列表
     * 
     * @param agrIncomeList 家庭年度收入一览
     * @return 家庭年度收入一览集合
     */
    public List<AgrIncomeList> selectAgrIncomeListList(AgrIncomeList agrIncomeList);

    /**
     * 新增家庭年度收入一览
     * 
     * @param agrIncomeList 家庭年度收入一览
     * @return 结果
     */
    public int insertAgrIncomeList(AgrIncomeList agrIncomeList);

    /**
     * 修改家庭年度收入一览
     * 
     * @param agrIncomeList 家庭年度收入一览
     * @return 结果
     */
    public int updateAgrIncomeList(AgrIncomeList agrIncomeList);

    /**
     * 删除家庭年度收入一览
     * 
     * @param id 家庭年度收入一览主键
     * @return 结果
     */
    public int deleteAgrIncomeListById(Long id);

    /**
     * 批量删除家庭年度收入一览
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAgrIncomeListByIds(String[] ids);
}
