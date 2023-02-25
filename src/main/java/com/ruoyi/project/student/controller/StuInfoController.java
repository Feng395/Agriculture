package com.ruoyi.project.student.controller;

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
import com.ruoyi.project.student.domain.StuInfo;
import com.ruoyi.project.student.service.IStuInfoService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 学生（测试代码生成功能）Controller
 * 
 * @author Chen
 * @date 2023-02-24
 */
@Controller
@RequestMapping("/student123/student")
public class StuInfoController extends BaseController
{
    private String prefix = "student123/student";

    @Autowired
    private IStuInfoService stuInfoService;

    @RequiresPermissions("student123:student:view")
    @GetMapping()
    public String student()
    {
        return prefix + "/student";
    }

    /**
     * 查询学生（测试代码生成功能）列表
     */
    @RequiresPermissions("student123:student:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(StuInfo stuInfo)
    {
        startPage();
        List<StuInfo> list = stuInfoService.selectStuInfoList(stuInfo);
        return getDataTable(list);
    }

    /**
     * 导出学生（测试代码生成功能）列表
     */
    @RequiresPermissions("student123:student:export")
    @Log(title = "学生（测试代码生成功能）", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(StuInfo stuInfo)
    {
        List<StuInfo> list = stuInfoService.selectStuInfoList(stuInfo);
        ExcelUtil<StuInfo> util = new ExcelUtil<StuInfo>(StuInfo.class);
        return util.exportExcel(list, "学生（测试代码生成功能）数据");
    }

    /**
     * 新增学生（测试代码生成功能）
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存学生（测试代码生成功能）
     */
    @RequiresPermissions("student123:student:add")
    @Log(title = "学生（测试代码生成功能）", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(StuInfo stuInfo)
    {
        return toAjax(stuInfoService.insertStuInfo(stuInfo));
    }

    /**
     * 修改学生（测试代码生成功能）
     */
    @RequiresPermissions("student123:student:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        StuInfo stuInfo = stuInfoService.selectStuInfoById(id);
        mmap.put("stuInfo", stuInfo);
        return prefix + "/edit";
    }

    /**
     * 修改保存学生（测试代码生成功能）
     */
    @RequiresPermissions("student123:student:edit")
    @Log(title = "学生（测试代码生成功能）", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(StuInfo stuInfo)
    {
        return toAjax(stuInfoService.updateStuInfo(stuInfo));
    }

    /**
     * 删除学生（测试代码生成功能）
     */
    @RequiresPermissions("student123:student:remove")
    @Log(title = "学生（测试代码生成功能）", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(stuInfoService.deleteStuInfoByIds(ids));
    }
}
