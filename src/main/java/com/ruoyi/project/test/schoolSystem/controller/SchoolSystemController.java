package com.ruoyi.project.test.schoolSystem.controller;

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
import com.ruoyi.project.test.schoolSystem.domain.SchoolSystem;
import com.ruoyi.project.test.schoolSystem.service.ISchoolSystemService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.web.domain.Ztree;

/**
 * 学校系统Controller
 * 
 * @author Chen
 * @date 2023-03-03
 */
@Controller
@RequestMapping("/test/schoolSystem")
public class SchoolSystemController extends BaseController
{
    private String prefix = "test/schoolSystem";

    @Autowired
    private ISchoolSystemService schoolSystemService;

    @RequiresPermissions("test:schoolSystem:view")
    @GetMapping()
    public String schoolSystem()
    {
        return prefix + "/schoolSystem";
    }

    /**
     * 查询学校系统树列表
     */
    @RequiresPermissions("test:schoolSystem:list")
    @PostMapping("/list")
    @ResponseBody
    public List<SchoolSystem> list(SchoolSystem schoolSystem)
    {
        List<SchoolSystem> list = schoolSystemService.selectSchoolSystemList(schoolSystem);
        return list;
    }

    /**
     * 导出学校系统列表
     */
    @RequiresPermissions("test:schoolSystem:export")
    @Log(title = "学校系统", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SchoolSystem schoolSystem)
    {
        List<SchoolSystem> list = schoolSystemService.selectSchoolSystemList(schoolSystem);
        ExcelUtil<SchoolSystem> util = new ExcelUtil<SchoolSystem>(SchoolSystem.class);
        return util.exportExcel(list, "学校系统数据");
    }

    /**
     * 新增学校系统
     */
    @GetMapping(value = { "/add/{id}", "/add/" })
    public String add(@PathVariable(value = "id", required = false) Long id, ModelMap mmap)
    {
        if (StringUtils.isNotNull(id))
        {
            mmap.put("schoolSystem", schoolSystemService.selectSchoolSystemById(id));
        }
        return prefix + "/add";
    }

    /**
     * 新增保存学校系统
     */
    @RequiresPermissions("test:schoolSystem:add")
    @Log(title = "学校系统", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SchoolSystem schoolSystem)
    {
        return toAjax(schoolSystemService.insertSchoolSystem(schoolSystem));
    }

    /**
     * 修改学校系统
     */
    @RequiresPermissions("test:schoolSystem:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        SchoolSystem schoolSystem = schoolSystemService.selectSchoolSystemById(id);
        mmap.put("schoolSystem", schoolSystem);
        return prefix + "/edit";
    }

    /**
     * 修改保存学校系统
     */
    @RequiresPermissions("test:schoolSystem:edit")
    @Log(title = "学校系统", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SchoolSystem schoolSystem)
    {
        return toAjax(schoolSystemService.updateSchoolSystem(schoolSystem));
    }

    /**
     * 删除
     */
    @RequiresPermissions("test:schoolSystem:remove")
    @Log(title = "学校系统", businessType = BusinessType.DELETE)
    @GetMapping("/remove/{id}")
    @ResponseBody
    public AjaxResult remove(@PathVariable("id") Long id)
    {
        return toAjax(schoolSystemService.deleteSchoolSystemById(id));
    }

    /**
     * 选择学校系统树
     */
    @GetMapping(value = { "/selectSchoolSystemTree/{id}", "/selectSchoolSystemTree/" })
    public String selectSchoolSystemTree(@PathVariable(value = "id", required = false) Long id, ModelMap mmap)
    {
        if (StringUtils.isNotNull(id))
        {
            mmap.put("schoolSystem", schoolSystemService.selectSchoolSystemById(id));
        }
        return prefix + "/tree";
    }

    /**
     * 加载学校系统树列表
     */
    @GetMapping("/treeData")
    @ResponseBody
    public List<Ztree> treeData()
    {
        List<Ztree> ztrees = schoolSystemService.selectSchoolSystemTree();
        return ztrees;
    }
}
