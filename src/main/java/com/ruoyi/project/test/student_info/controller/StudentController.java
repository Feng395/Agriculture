package com.ruoyi.project.test.student_info.controller;

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
import com.ruoyi.project.test.student_info.domain.Student;
import com.ruoyi.project.test.student_info.service.IStudentService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 学生个人信息Controller
 * 
 * @author Chen
 * @date 2023-03-02
 */
@Controller
@RequestMapping("/test/student_info")
public class StudentController extends BaseController
{
    private String prefix = "test/student_info";

    @Autowired
    private IStudentService studentService;

    @RequiresPermissions("test:student_info:view")
    @GetMapping()
    public String student_info()
    {
        return prefix + "/student_info";
    }

    /**
     * 查询学生个人信息列表
     */
    @RequiresPermissions("test:student_info:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Student student)
    {
        startPage();
        List<Student> list = studentService.selectStudentList(student);
        return getDataTable(list);
    }

    /**
     * 导出学生个人信息列表
     */
    @RequiresPermissions("test:student_info:export")
    @Log(title = "学生个人信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Student student)
    {
        List<Student> list = studentService.selectStudentList(student);
        ExcelUtil<Student> util = new ExcelUtil<Student>(Student.class);
        return util.exportExcel(list, "学生个人信息数据");
    }

    /**
     * 新增学生个人信息
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存学生个人信息
     */
    @RequiresPermissions("test:student_info:add")
    @Log(title = "学生个人信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Student student)
    {
        return toAjax(studentService.insertStudent(student));
    }

    /**
     * 修改学生个人信息
     */
    @RequiresPermissions("test:student_info:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Student student = studentService.selectStudentById(id);
        mmap.put("student", student);
        return prefix + "/edit";
    }

    /**
     * 修改保存学生个人信息
     */
    @RequiresPermissions("test:student_info:edit")
    @Log(title = "学生个人信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Student student)
    {
        return toAjax(studentService.updateStudent(student));
    }

    /**
     * 删除学生个人信息
     */
    @RequiresPermissions("test:student_info:remove")
    @Log(title = "学生个人信息", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(studentService.deleteStudentByIds(ids));
    }
}
