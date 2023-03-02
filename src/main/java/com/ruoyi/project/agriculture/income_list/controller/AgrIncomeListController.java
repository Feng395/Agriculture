package com.ruoyi.project.agriculture.income_list.controller;

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
import com.ruoyi.project.agriculture.income_list.domain.AgrIncomeList;
import com.ruoyi.project.agriculture.income_list.service.IAgrIncomeListService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 家庭年度收入一览Controller
 * 
 * @author Chen
 * @date 2023-03-02
 */
@Controller
@RequestMapping("/agriculture/income_list")
public class AgrIncomeListController extends BaseController
{
    private String prefix = "agriculture/income_list";

    @Autowired
    private IAgrIncomeListService agrIncomeListService;

    @RequiresPermissions("agriculture:income_list:view")
    @GetMapping()
    public String income_list()
    {
        return prefix + "/income_list";
    }

    /**
     * 查询家庭年度收入一览列表
     */
    @RequiresPermissions("agriculture:income_list:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(AgrIncomeList agrIncomeList)
    {
        startPage();
        List<AgrIncomeList> list = agrIncomeListService.selectAgrIncomeListList(agrIncomeList);
        return getDataTable(list);
    }

    /**
     * 导出家庭年度收入一览列表
     */
    @RequiresPermissions("agriculture:income_list:export")
    @Log(title = "家庭年度收入一览", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(AgrIncomeList agrIncomeList)
    {
        List<AgrIncomeList> list = agrIncomeListService.selectAgrIncomeListList(agrIncomeList);
        ExcelUtil<AgrIncomeList> util = new ExcelUtil<AgrIncomeList>(AgrIncomeList.class);
        return util.exportExcel(list, "家庭年度收入一览数据");
    }

    /**
     * 新增家庭年度收入一览
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存家庭年度收入一览
     */
    @RequiresPermissions("agriculture:income_list:add")
    @Log(title = "家庭年度收入一览", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(AgrIncomeList agrIncomeList)
    {
        return toAjax(agrIncomeListService.insertAgrIncomeList(agrIncomeList));
    }

    /**
     * 修改家庭年度收入一览
     */
    @RequiresPermissions("agriculture:income_list:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        AgrIncomeList agrIncomeList = agrIncomeListService.selectAgrIncomeListById(id);
        mmap.put("agrIncomeList", agrIncomeList);
        return prefix + "/edit";
    }

    /**
     * 修改保存家庭年度收入一览
     */
    @RequiresPermissions("agriculture:income_list:edit")
    @Log(title = "家庭年度收入一览", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(AgrIncomeList agrIncomeList)
    {
        return toAjax(agrIncomeListService.updateAgrIncomeList(agrIncomeList));
    }

    /**
     * 删除家庭年度收入一览
     */
    @RequiresPermissions("agriculture:income_list:remove")
    @Log(title = "家庭年度收入一览", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(agrIncomeListService.deleteAgrIncomeListByIds(ids));
    }
}
