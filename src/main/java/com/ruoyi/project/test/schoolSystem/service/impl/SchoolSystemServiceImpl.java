package com.ruoyi.project.test.schoolSystem.service.impl;

import java.util.List;
import java.util.ArrayList;
import com.ruoyi.framework.web.domain.Ztree;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.test.schoolSystem.mapper.SchoolSystemMapper;
import com.ruoyi.project.test.schoolSystem.domain.SchoolSystem;
import com.ruoyi.project.test.schoolSystem.service.ISchoolSystemService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 学校系统Service业务层处理
 * 
 * @author Chen
 * @date 2023-03-03
 */
@Service
public class SchoolSystemServiceImpl implements ISchoolSystemService 
{
    @Autowired
    private SchoolSystemMapper schoolSystemMapper;

    /**
     * 查询学校系统
     * 
     * @param id 学校系统主键
     * @return 学校系统
     */
    @Override
    public SchoolSystem selectSchoolSystemById(Long id)
    {
        return schoolSystemMapper.selectSchoolSystemById(id);
    }

    /**
     * 查询学校系统列表
     * 
     * @param schoolSystem 学校系统
     * @return 学校系统
     */
    @Override
    public List<SchoolSystem> selectSchoolSystemList(SchoolSystem schoolSystem)
    {
        return schoolSystemMapper.selectSchoolSystemList(schoolSystem);
    }

    /**
     * 新增学校系统
     * 
     * @param schoolSystem 学校系统
     * @return 结果
     */
    @Override
    public int insertSchoolSystem(SchoolSystem schoolSystem)
    {
        return schoolSystemMapper.insertSchoolSystem(schoolSystem);
    }

    /**
     * 修改学校系统
     * 
     * @param schoolSystem 学校系统
     * @return 结果
     */
    @Override
    public int updateSchoolSystem(SchoolSystem schoolSystem)
    {
        return schoolSystemMapper.updateSchoolSystem(schoolSystem);
    }

    /**
     * 批量删除学校系统
     * 
     * @param ids 需要删除的学校系统主键
     * @return 结果
     */
    @Override
    public int deleteSchoolSystemByIds(String ids)
    {
        return schoolSystemMapper.deleteSchoolSystemByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除学校系统信息
     * 
     * @param id 学校系统主键
     * @return 结果
     */
    @Override
    public int deleteSchoolSystemById(Long id)
    {
        return schoolSystemMapper.deleteSchoolSystemById(id);
    }

    /**
     * 查询学校系统树列表
     * 
     * @return 所有学校系统信息
     */
    @Override
    public List<Ztree> selectSchoolSystemTree()
    {
        List<SchoolSystem> schoolSystemList = schoolSystemMapper.selectSchoolSystemList(new SchoolSystem());
        List<Ztree> ztrees = new ArrayList<Ztree>();
        for (SchoolSystem schoolSystem : schoolSystemList)
        {
            Ztree ztree = new Ztree();
            ztree.setId(schoolSystem.getSchoolId());
            ztree.setpId(schoolSystem.getParentId());
            ztree.setName(schoolSystem.getSchoolName());
            ztree.setTitle(schoolSystem.getSchoolName());
            ztrees.add(ztree);
        }
        return ztrees;
    }
}
