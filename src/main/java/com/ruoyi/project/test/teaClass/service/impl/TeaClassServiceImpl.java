package com.ruoyi.project.test.teaClass.service.impl;

import java.util.List;
import java.util.ArrayList;
import com.ruoyi.framework.web.domain.Ztree;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.test.teaClass.mapper.TeaClassMapper;
import com.ruoyi.project.test.teaClass.domain.TeaClass;
import com.ruoyi.project.test.teaClass.service.ITeaClassService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 班级模块Service业务层处理
 * 
 * @author Chen
 * @date 2023-03-02
 */
@Service
public class TeaClassServiceImpl implements ITeaClassService 
{
    @Autowired
    private TeaClassMapper teaClassMapper;

    /**
     * 查询班级模块
     * 
     * @param id 班级模块主键
     * @return 班级模块
     */
    @Override
    public TeaClass selectTeaClassById(Long id)
    {
        return teaClassMapper.selectTeaClassById(id);
    }

    /**
     * 查询班级模块列表
     * 
     * @param teaClass 班级模块
     * @return 班级模块
     */
    @Override
    public List<TeaClass> selectTeaClassList(TeaClass teaClass)
    {
        return teaClassMapper.selectTeaClassList(teaClass);
    }

    /**
     * 新增班级模块
     * 
     * @param teaClass 班级模块
     * @return 结果
     */
    @Override
    public int insertTeaClass(TeaClass teaClass)
    {
        return teaClassMapper.insertTeaClass(teaClass);
    }

    /**
     * 修改班级模块
     * 
     * @param teaClass 班级模块
     * @return 结果
     */
    @Override
    public int updateTeaClass(TeaClass teaClass)
    {
        return teaClassMapper.updateTeaClass(teaClass);
    }

    /**
     * 批量删除班级模块
     * 
     * @param ids 需要删除的班级模块主键
     * @return 结果
     */
    @Override
    public int deleteTeaClassByIds(String ids)
    {
        return teaClassMapper.deleteTeaClassByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除班级模块信息
     * 
     * @param id 班级模块主键
     * @return 结果
     */
    @Override
    public int deleteTeaClassById(Long id)
    {
        return teaClassMapper.deleteTeaClassById(id);
    }

    /**
     * 查询班级模块树列表
     * 
     * @return 所有班级模块信息
     */
    @Override
    public List<Ztree> selectTeaClassTree()
    {
        List<TeaClass> teaClassList = teaClassMapper.selectTeaClassList(new TeaClass());
        List<Ztree> ztrees = new ArrayList<Ztree>();
        for (TeaClass teaClass : teaClassList)
        {
            Ztree ztree = new Ztree();
            ztree.setId(teaClass.getClaId());
            ztree.setpId(teaClass.getClaTeaId());
            ztree.setName(teaClass.getClaName());
            ztree.setTitle(teaClass.getClaName());
            ztrees.add(ztree);
        }
        return ztrees;
    }
}
