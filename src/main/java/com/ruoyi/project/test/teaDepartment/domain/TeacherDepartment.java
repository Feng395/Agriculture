package com.ruoyi.project.test.teaDepartment.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 教师部门模块对象 test_tea_department
 * 
 * @author Chen
 * @date 2023-03-02
 */
public class TeacherDepartment extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增主键 */
    private Long id;

    /** 部门编号 */
    @Excel(name = "部门编号")
    private Long depId;

    /** 部门名称 */
    @Excel(name = "部门名称")
    private String depName;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setDepId(Long depId)
    {
        this.depId = depId;
    }

    public Long getDepId()
    {
        return depId;
    }
    public void setDepName(String depName)
    {
        this.depName = depName;
    }

    public String getDepName()
    {
        return depName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("depId", getDepId())
            .append("depName", getDepName())
            .toString();
    }
}
