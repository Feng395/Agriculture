package com.ruoyi.project.agriculture.peasant_info.controller;

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
import com.ruoyi.project.agriculture.peasant_info.domain.AgrPeasant;
import com.ruoyi.project.agriculture.peasant_info.service.IAgrPeasantService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 农户个人信息Controller
 * 
 * @author Chen
 * @date 2023-03-01
 */
@Controller
@RequestMapping("/agriculture/peasant_info")
public class AgrPeasantController extends BaseController
{
    private String prefix = "agriculture/peasant_info";

    @Autowired
    private IAgrPeasantService agrPeasantService;

    @RequiresPermissions("agriculture:peasant_info:view")
    @GetMapping()
    public String peasant_info()
    {
        return prefix + "/peasant_info";
    }

    /**
     * 查询农户个人信息列表
     */
    @RequiresPermissions("agriculture:peasant_info:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(AgrPeasant agrPeasant)
    {
        startPage();
        List<AgrPeasant> list = agrPeasantService.selectAgrPeasantList(agrPeasant);
        return getDataTable(list);
    }

    /**
     * 导出农户个人信息列表
     */
    @RequiresPermissions("agriculture:peasant_info:export")
    @Log(title = "农户个人信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(AgrPeasant agrPeasant)
    {
        List<AgrPeasant> list = agrPeasantService.selectAgrPeasantList(agrPeasant);
        ExcelUtil<AgrPeasant> util = new ExcelUtil<AgrPeasant>(AgrPeasant.class);
        return util.exportExcel(list, "农户个人信息数据");
    }

    /**
     * 新增农户个人信息
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存农户个人信息
     */
    @RequiresPermissions("agriculture:peasant_info:add")
    @Log(title = "农户个人信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(AgrPeasant agrPeasant)
    {
        return toAjax(agrPeasantService.insertAgrPeasant(agrPeasant));
    }

    /**
     * 修改农户个人信息
     */
    @RequiresPermissions("agriculture:peasant_info:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        AgrPeasant agrPeasant = agrPeasantService.selectAgrPeasantById(id);
        mmap.put("agrPeasant", agrPeasant);
        return prefix + "/edit";
    }

    /**
     * 修改保存农户个人信息
     */
    @RequiresPermissions("agriculture:peasant_info:edit")
    @Log(title = "农户个人信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(AgrPeasant agrPeasant)
    {
        return toAjax(agrPeasantService.updateAgrPeasant(agrPeasant));
    }

    /**
     * 删除农户个人信息
     */
    @RequiresPermissions("agriculture:peasant_info:remove")
    @Log(title = "农户个人信息", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(agrPeasantService.deleteAgrPeasantByIds(ids));
    }
}
