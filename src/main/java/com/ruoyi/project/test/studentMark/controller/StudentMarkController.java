package com.ruoyi.project.test.studentMark.controller;

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
import com.ruoyi.project.test.studentMark.domain.StudentMark;
import com.ruoyi.project.test.studentMark.service.IStudentMarkService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 学生成绩Controller
 * 
 * @author Chen
 * @date 2023-03-02
 */
@Controller
@RequestMapping("/test/studentMark")
public class StudentMarkController extends BaseController
{
    private String prefix = "test/studentMark";

    @Autowired
    private IStudentMarkService studentMarkService;

    @RequiresPermissions("test:studentMark:view")
    @GetMapping()
    public String studentMark()
    {
        return prefix + "/studentMark";
    }

    /**
     * 查询学生成绩列表
     */
    @RequiresPermissions("test:studentMark:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(StudentMark studentMark)
    {
        startPage();
        List<StudentMark> list = studentMarkService.selectStudentMarkList(studentMark);
        return getDataTable(list);
    }

    /**
     * 导出学生成绩列表
     */
    @RequiresPermissions("test:studentMark:export")
    @Log(title = "学生成绩", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(StudentMark studentMark)
    {
        List<StudentMark> list = studentMarkService.selectStudentMarkList(studentMark);
        ExcelUtil<StudentMark> util = new ExcelUtil<StudentMark>(StudentMark.class);
        return util.exportExcel(list, "学生成绩数据");
    }

    /**
     * 新增学生成绩
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存学生成绩
     */
    @RequiresPermissions("test:studentMark:add")
    @Log(title = "学生成绩", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(StudentMark studentMark)
    {
        return toAjax(studentMarkService.insertStudentMark(studentMark));
    }

    /**
     * 修改学生成绩
     */
    @RequiresPermissions("test:studentMark:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        StudentMark studentMark = studentMarkService.selectStudentMarkById(id);
        mmap.put("studentMark", studentMark);
        return prefix + "/edit";
    }

    /**
     * 修改保存学生成绩
     */
    @RequiresPermissions("test:studentMark:edit")
    @Log(title = "学生成绩", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(StudentMark studentMark)
    {
        return toAjax(studentMarkService.updateStudentMark(studentMark));
    }

    /**
     * 删除学生成绩
     */
    @RequiresPermissions("test:studentMark:remove")
    @Log(title = "学生成绩", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(studentMarkService.deleteStudentMarkByIds(ids));
    }
}
