package com.ruoyi.project.agriculture.income.mapper;

import java.util.List;
import com.ruoyi.project.agriculture.income.domain.AgrIncome;

/**
 * 农户个人收入信息Mapper接口
 * 
 * @author Chen
 * @date 2023-03-02
 */
public interface AgrIncomeMapper 
{
    /**
     * 查询农户个人收入信息
     * 
     * @param id 农户个人收入信息主键
     * @return 农户个人收入信息
     */
    public AgrIncome selectAgrIncomeById(Long id);

    /**
     * 查询农户个人收入信息列表
     * 
     * @param agrIncome 农户个人收入信息
     * @return 农户个人收入信息集合
     */
    public List<AgrIncome> selectAgrIncomeList(AgrIncome agrIncome);

    /**
     * 新增农户个人收入信息
     * 
     * @param agrIncome 农户个人收入信息
     * @return 结果
     */
    public int insertAgrIncome(AgrIncome agrIncome);

    /**
     * 修改农户个人收入信息
     * 
     * @param agrIncome 农户个人收入信息
     * @return 结果
     */
    public int updateAgrIncome(AgrIncome agrIncome);

    /**
     * 删除农户个人收入信息
     * 
     * @param id 农户个人收入信息主键
     * @return 结果
     */
    public int deleteAgrIncomeById(Long id);

    /**
     * 批量删除农户个人收入信息
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAgrIncomeByIds(String[] ids);
}
