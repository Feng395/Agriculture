package com.ruoyi.project.agriculture.peasant_info.service;

import java.util.List;
import com.ruoyi.project.agriculture.peasant_info.domain.AgrPeasant;

/**
 * 农户个人信息Service接口
 * 
 * @author Chen
 * @date 2023-03-01
 */
public interface IAgrPeasantService 
{
    /**
     * 查询农户个人信息
     * 
     * @param id 农户个人信息主键
     * @return 农户个人信息
     */
    public AgrPeasant selectAgrPeasantById(Long id);

    /**
     * 查询农户个人信息列表
     * 
     * @param agrPeasant 农户个人信息
     * @return 农户个人信息集合
     */
    public List<AgrPeasant> selectAgrPeasantList(AgrPeasant agrPeasant);

    /**
     * 新增农户个人信息
     * 
     * @param agrPeasant 农户个人信息
     * @return 结果
     */
    public int insertAgrPeasant(AgrPeasant agrPeasant);

    /**
     * 修改农户个人信息
     * 
     * @param agrPeasant 农户个人信息
     * @return 结果
     */
    public int updateAgrPeasant(AgrPeasant agrPeasant);

    /**
     * 批量删除农户个人信息
     * 
     * @param ids 需要删除的农户个人信息主键集合
     * @return 结果
     */
    public int deleteAgrPeasantByIds(String ids);

    /**
     * 删除农户个人信息信息
     * 
     * @param id 农户个人信息主键
     * @return 结果
     */
    public int deleteAgrPeasantById(Long id);
}
