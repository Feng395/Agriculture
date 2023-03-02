package com.ruoyi.project.agriculture.income.controller;

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
import com.ruoyi.project.agriculture.income.domain.AgrIncome;
import com.ruoyi.project.agriculture.income.service.IAgrIncomeService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 农户个人收入信息Controller
 * 
 * @author Chen
 * @date 2023-03-02
 */
@Controller
@RequestMapping("/agriculture/income")
public class AgrIncomeController extends BaseController
{
    private String prefix = "agriculture/income";

    @Autowired
    private IAgrIncomeService agrIncomeService;

    @RequiresPermissions("agriculture:income:view")
    @GetMapping()
    public String income()
    {
        return prefix + "/income";
    }

    /**
     * 查询农户个人收入信息列表
     */
    @RequiresPermissions("agriculture:income:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(AgrIncome agrIncome)
    {
        startPage();
        List<AgrIncome> list = agrIncomeService.selectAgrIncomeList(agrIncome);
        return getDataTable(list);
    }

    /**
     * 导出农户个人收入信息列表
     */
    @RequiresPermissions("agriculture:income:export")
    @Log(title = "农户个人收入信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(AgrIncome agrIncome)
    {
        List<AgrIncome> list = agrIncomeService.selectAgrIncomeList(agrIncome);
        ExcelUtil<AgrIncome> util = new ExcelUtil<AgrIncome>(AgrIncome.class);
        return util.exportExcel(list, "农户个人收入信息数据");
    }

    /**
     * 新增农户个人收入信息
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存农户个人收入信息
     */
    @RequiresPermissions("agriculture:income:add")
    @Log(title = "农户个人收入信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(AgrIncome agrIncome)
    {
        return toAjax(agrIncomeService.insertAgrIncome(agrIncome));
    }

    /**
     * 修改农户个人收入信息
     */
    @RequiresPermissions("agriculture:income:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        AgrIncome agrIncome = agrIncomeService.selectAgrIncomeById(id);
        mmap.put("agrIncome", agrIncome);
        return prefix + "/edit";
    }

    /**
     * 修改保存农户个人收入信息
     */
    @RequiresPermissions("agriculture:income:edit")
    @Log(title = "农户个人收入信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(AgrIncome agrIncome)
    {
        return toAjax(agrIncomeService.updateAgrIncome(agrIncome));
    }

    /**
     * 删除农户个人收入信息
     */
    @RequiresPermissions("agriculture:income:remove")
    @Log(title = "农户个人收入信息", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(agrIncomeService.deleteAgrIncomeByIds(ids));
    }
}
