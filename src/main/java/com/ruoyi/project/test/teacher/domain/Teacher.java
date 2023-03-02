package com.ruoyi.project.test.teacher.domain;

import java.util.List;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 教师模块对象 test_teacher
 * 
 * @author Chen
 * @date 2023-03-02
 */
public class Teacher extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增主键 */
    private Long id;

    /** 教师编号 */
    @Excel(name = "教师编号")
    private Long teaId;

    /** 教师名称 */
    @Excel(name = "教师名称")
    private String teaName;

    /** 教师所属部门编号 */
    @Excel(name = "教师所属部门编号")
    private Long teaDep;

    /** 教师部门模块信息 */
    private List<TeaDepartment> teaDepartmentList;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setTeaId(Long teaId)
    {
        this.teaId = teaId;
    }

    public Long getTeaId()
    {
        return teaId;
    }
    public void setTeaName(String teaName)
    {
        this.teaName = teaName;
    }

    public String getTeaName()
    {
        return teaName;
    }
    public void setTeaDep(Long teaDep)
    {
        this.teaDep = teaDep;
    }

    public Long getTeaDep()
    {
        return teaDep;
    }

    public List<TeaDepartment> getTeaDepartmentList()
    {
        return teaDepartmentList;
    }

    public void setTeaDepartmentList(List<TeaDepartment> teaDepartmentList)
    {
        this.teaDepartmentList = teaDepartmentList;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("teaId", getTeaId())
            .append("teaName", getTeaName())
            .append("teaDep", getTeaDep())
            .append("teaDepartmentList", getTeaDepartmentList())
            .toString();
    }
}
