package com.ruoyi.project.agriculture.income_contrast.mapper;

import java.util.List;
import com.ruoyi.project.agriculture.income_contrast.domain.AgrIncomeContrast;

/**
 * 年度人均收入对比Mapper接口
 * 
 * @author Chen
 * @date 2023-03-02
 */
public interface AgrIncomeContrastMapper 
{
    /**
     * 查询年度人均收入对比
     * 
     * @param id 年度人均收入对比主键
     * @return 年度人均收入对比
     */
    public AgrIncomeContrast selectAgrIncomeContrastById(Long id);

    /**
     * 查询年度人均收入对比列表
     * 
     * @param agrIncomeContrast 年度人均收入对比
     * @return 年度人均收入对比集合
     */
    public List<AgrIncomeContrast> selectAgrIncomeContrastList(AgrIncomeContrast agrIncomeContrast);

    /**
     * 新增年度人均收入对比
     * 
     * @param agrIncomeContrast 年度人均收入对比
     * @return 结果
     */
    public int insertAgrIncomeContrast(AgrIncomeContrast agrIncomeContrast);

    /**
     * 修改年度人均收入对比
     * 
     * @param agrIncomeContrast 年度人均收入对比
     * @return 结果
     */
    public int updateAgrIncomeContrast(AgrIncomeContrast agrIncomeContrast);

    /**
     * 删除年度人均收入对比
     * 
     * @param id 年度人均收入对比主键
     * @return 结果
     */
    public int deleteAgrIncomeContrastById(Long id);

    /**
     * 批量删除年度人均收入对比
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAgrIncomeContrastByIds(String[] ids);
}
