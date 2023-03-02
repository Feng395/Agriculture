package com.ruoyi.project.test.teaDepartment.controller;

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
import com.ruoyi.project.test.teaDepartment.domain.TeacherDepartment;
import com.ruoyi.project.test.teaDepartment.service.ITeacherDepartmentService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 教师部门模块Controller
 * 
 * @author Chen
 * @date 2023-03-02
 */
@Controller
@RequestMapping("/test/teaDepartment")
public class TeacherDepartmentController extends BaseController
{
    private String prefix = "test/teaDepartment";

    @Autowired
    private ITeacherDepartmentService teacherDepartmentService;

    @RequiresPermissions("test:teaDepartment:view")
    @GetMapping()
    public String teaDepartment()
    {
        return prefix + "/teaDepartment";
    }

    /**
     * 查询教师部门模块列表
     */
    @RequiresPermissions("test:teaDepartment:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TeacherDepartment teacherDepartment)
    {
        startPage();
        List<TeacherDepartment> list = teacherDepartmentService.selectTeacherDepartmentList(teacherDepartment);
        return getDataTable(list);
    }

    /**
     * 导出教师部门模块列表
     */
    @RequiresPermissions("test:teaDepartment:export")
    @Log(title = "教师部门模块", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TeacherDepartment teacherDepartment)
    {
        List<TeacherDepartment> list = teacherDepartmentService.selectTeacherDepartmentList(teacherDepartment);
        ExcelUtil<TeacherDepartment> util = new ExcelUtil<TeacherDepartment>(TeacherDepartment.class);
        return util.exportExcel(list, "教师部门模块数据");
    }

    /**
     * 新增教师部门模块
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存教师部门模块
     */
    @RequiresPermissions("test:teaDepartment:add")
    @Log(title = "教师部门模块", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TeacherDepartment teacherDepartment)
    {
        return toAjax(teacherDepartmentService.insertTeacherDepartment(teacherDepartment));
    }

    /**
     * 修改教师部门模块
     */
    @RequiresPermissions("test:teaDepartment:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        TeacherDepartment teacherDepartment = teacherDepartmentService.selectTeacherDepartmentById(id);
        mmap.put("teacherDepartment", teacherDepartment);
        return prefix + "/edit";
    }

    /**
     * 修改保存教师部门模块
     */
    @RequiresPermissions("test:teaDepartment:edit")
    @Log(title = "教师部门模块", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TeacherDepartment teacherDepartment)
    {
        return toAjax(teacherDepartmentService.updateTeacherDepartment(teacherDepartment));
    }

    /**
     * 删除教师部门模块
     */
    @RequiresPermissions("test:teaDepartment:remove")
    @Log(title = "教师部门模块", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(teacherDepartmentService.deleteTeacherDepartmentByIds(ids));
    }
}
