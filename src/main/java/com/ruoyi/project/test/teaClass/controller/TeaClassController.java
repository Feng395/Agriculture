package com.ruoyi.project.test.teaClass.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.project.test.teaClass.domain.TeaClass;
import com.ruoyi.project.test.teaClass.service.ITeaClassService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.web.domain.Ztree;

/**
 * 班级模块Controller
 * 
 * @author Chen
 * @date 2023-03-02
 */
@Controller
@RequestMapping("/test/teaClass")
public class TeaClassController extends BaseController
{
    private String prefix = "test/teaClass";

    @Autowired
    private ITeaClassService teaClassService;

    @RequiresPermissions("test:teaClass:view")
    @GetMapping()
    public String teaClass()
    {
        return prefix + "/teaClass";
    }

    /**
     * 查询班级模块树列表
     */
    @RequiresPermissions("test:teaClass:list")
    @PostMapping("/list")
    @ResponseBody
    public List<TeaClass> list(TeaClass teaClass)
    {
        List<TeaClass> list = teaClassService.selectTeaClassList(teaClass);
        return list;
    }

    /**
     * 导出班级模块列表
     */
    @RequiresPermissions("test:teaClass:export")
    @Log(title = "班级模块", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TeaClass teaClass)
    {
        List<TeaClass> list = teaClassService.selectTeaClassList(teaClass);
        ExcelUtil<TeaClass> util = new ExcelUtil<TeaClass>(TeaClass.class);
        return util.exportExcel(list, "班级模块数据");
    }

    /**
     * 新增班级模块
     */
    @GetMapping(value = { "/add/{id}", "/add/" })
    public String add(@PathVariable(value = "id", required = false) Long id, ModelMap mmap)
    {
        if (StringUtils.isNotNull(id))
        {
            mmap.put("teaClass", teaClassService.selectTeaClassById(id));
        }
        return prefix + "/add";
    }

    /**
     * 新增保存班级模块
     */
    @RequiresPermissions("test:teaClass:add")
    @Log(title = "班级模块", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TeaClass teaClass)
    {
        return toAjax(teaClassService.insertTeaClass(teaClass));
    }

    /**
     * 修改班级模块
     */
    @RequiresPermissions("test:teaClass:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        TeaClass teaClass = teaClassService.selectTeaClassById(id);
        mmap.put("teaClass", teaClass);
        return prefix + "/edit";
    }

    /**
     * 修改保存班级模块
     */
    @RequiresPermissions("test:teaClass:edit")
    @Log(title = "班级模块", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TeaClass teaClass)
    {
        return toAjax(teaClassService.updateTeaClass(teaClass));
    }

    /**
     * 删除
     */
    @RequiresPermissions("test:teaClass:remove")
    @Log(title = "班级模块", businessType = BusinessType.DELETE)
    @GetMapping("/remove/{id}")
    @ResponseBody
    public AjaxResult remove(@PathVariable("id") Long id)
    {
        return toAjax(teaClassService.deleteTeaClassById(id));
    }

    /**
     * 选择班级模块树
     */
    @GetMapping(value = { "/selectTeaClassTree/{id}", "/selectTeaClassTree/" })
    public String selectTeaClassTree(@PathVariable(value = "id", required = false) Long id, ModelMap mmap)
    {
        if (StringUtils.isNotNull(id))
        {
            mmap.put("teaClass", teaClassService.selectTeaClassById(id));
        }
        return prefix + "/tree";
    }

    /**
     * 加载班级模块树列表
     */
    @GetMapping("/treeData")
    @ResponseBody
    public List<Ztree> treeData()
    {
        List<Ztree> ztrees = teaClassService.selectTeaClassTree();
        return ztrees;
    }
}
