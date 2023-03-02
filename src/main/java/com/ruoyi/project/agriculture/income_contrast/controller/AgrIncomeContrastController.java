package com.ruoyi.project.agriculture.income_contrast.controller;

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
import com.ruoyi.project.agriculture.income_contrast.domain.AgrIncomeContrast;
import com.ruoyi.project.agriculture.income_contrast.service.IAgrIncomeContrastService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 年度人均收入对比Controller
 * 
 * @author Chen
 * @date 2023-03-02
 */
@Controller
@RequestMapping("/agriculture/income_contrast")
public class AgrIncomeContrastController extends BaseController
{
    private String prefix = "agriculture/income_contrast";

    @Autowired
    private IAgrIncomeContrastService agrIncomeContrastService;

    @RequiresPermissions("agriculture:income_contrast:view")
    @GetMapping()
    public String income_contrast()
    {
        return prefix + "/income_contrast";
    }

    /**
     * 查询年度人均收入对比列表
     */
    @RequiresPermissions("agriculture:income_contrast:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(AgrIncomeContrast agrIncomeContrast)
    {
        startPage();
        List<AgrIncomeContrast> list = agrIncomeContrastService.selectAgrIncomeContrastList(agrIncomeContrast);
        return getDataTable(list);
    }

    /**
     * 导出年度人均收入对比列表
     */
    @RequiresPermissions("agriculture:income_contrast:export")
    @Log(title = "年度人均收入对比", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(AgrIncomeContrast agrIncomeContrast)
    {
        List<AgrIncomeContrast> list = agrIncomeContrastService.selectAgrIncomeContrastList(agrIncomeContrast);
        ExcelUtil<AgrIncomeContrast> util = new ExcelUtil<AgrIncomeContrast>(AgrIncomeContrast.class);
        return util.exportExcel(list, "年度人均收入对比数据");
    }

    /**
     * 新增年度人均收入对比
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存年度人均收入对比
     */
    @RequiresPermissions("agriculture:income_contrast:add")
    @Log(title = "年度人均收入对比", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(AgrIncomeContrast agrIncomeContrast)
    {
        return toAjax(agrIncomeContrastService.insertAgrIncomeContrast(agrIncomeContrast));
    }

    /**
     * 修改年度人均收入对比
     */
    @RequiresPermissions("agriculture:income_contrast:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        AgrIncomeContrast agrIncomeContrast = agrIncomeContrastService.selectAgrIncomeContrastById(id);
        mmap.put("agrIncomeContrast", agrIncomeContrast);
        return prefix + "/edit";
    }

    /**
     * 修改保存年度人均收入对比
     */
    @RequiresPermissions("agriculture:income_contrast:edit")
    @Log(title = "年度人均收入对比", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(AgrIncomeContrast agrIncomeContrast)
    {
        return toAjax(agrIncomeContrastService.updateAgrIncomeContrast(agrIncomeContrast));
    }

    /**
     * 删除年度人均收入对比
     */
    @RequiresPermissions("agriculture:income_contrast:remove")
    @Log(title = "年度人均收入对比", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(agrIncomeContrastService.deleteAgrIncomeContrastByIds(ids));
    }
}
