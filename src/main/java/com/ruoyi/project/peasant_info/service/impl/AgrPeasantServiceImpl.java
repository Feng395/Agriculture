package com.ruoyi.project.peasant_info.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.peasant_info.mapper.AgrPeasantMapper;
import com.ruoyi.project.peasant_info.domain.AgrPeasant;
import com.ruoyi.project.peasant_info.service.IAgrPeasantService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 农户个人信息Service业务层处理
 * 
 * @author Chen
 * @date 2023-03-01
 */
@Service
public class AgrPeasantServiceImpl implements IAgrPeasantService 
{
    @Autowired
    private AgrPeasantMapper agrPeasantMapper;

    /**
     * 查询农户个人信息
     * 
     * @param id 农户个人信息主键
     * @return 农户个人信息
     */
    @Override
    public AgrPeasant selectAgrPeasantById(Long id)
    {
        return agrPeasantMapper.selectAgrPeasantById(id);
    }

    /**
     * 查询农户个人信息列表
     * 
     * @param agrPeasant 农户个人信息
     * @return 农户个人信息
     */
    @Override
    public List<AgrPeasant> selectAgrPeasantList(AgrPeasant agrPeasant)
    {
        return agrPeasantMapper.selectAgrPeasantList(agrPeasant);
    }

    /**
     * 新增农户个人信息
     * 
     * @param agrPeasant 农户个人信息
     * @return 结果
     */
    @Override
    public int insertAgrPeasant(AgrPeasant agrPeasant)
    {
        return agrPeasantMapper.insertAgrPeasant(agrPeasant);
    }

    /**
     * 修改农户个人信息
     * 
     * @param agrPeasant 农户个人信息
     * @return 结果
     */
    @Override
    public int updateAgrPeasant(AgrPeasant agrPeasant)
    {
        return agrPeasantMapper.updateAgrPeasant(agrPeasant);
    }

    /**
     * 批量删除农户个人信息
     * 
     * @param ids 需要删除的农户个人信息主键
     * @return 结果
     */
    @Override
    public int deleteAgrPeasantByIds(String ids)
    {
        return agrPeasantMapper.deleteAgrPeasantByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除农户个人信息信息
     * 
     * @param id 农户个人信息主键
     * @return 结果
     */
    @Override
    public int deleteAgrPeasantById(Long id)
    {
        return agrPeasantMapper.deleteAgrPeasantById(id);
    }
}
