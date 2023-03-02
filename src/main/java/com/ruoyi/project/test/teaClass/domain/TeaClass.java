package com.ruoyi.project.test.teaClass.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.TreeEntity;

/**
 * 班级模块对象 test_tea_class
 * 
 * @author Chen
 * @date 2023-03-02
 */
public class TeaClass extends TreeEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增主键 */
    private Long id;

    /** 班级编号 */
    @Excel(name = "班级编号")
    private Long claId;

    /** 班级教学教师编号 */
    @Excel(name = "班级教学教师编号")
    private Long claTeaId;

    /** 班级学生数量 */
    @Excel(name = "班级学生数量")
    private Long claNumber;

    /** 班级名称 */
    @Excel(name = "班级名称")
    private String claName;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setClaId(Long claId)
    {
        this.claId = claId;
    }

    public Long getClaId()
    {
        return claId;
    }
    public void setClaTeaId(Long claTeaId)
    {
        this.claTeaId = claTeaId;
    }

    public Long getClaTeaId()
    {
        return claTeaId;
    }
    public void setClaNumber(Long claNumber)
    {
        this.claNumber = claNumber;
    }

    public Long getClaNumber()
    {
        return claNumber;
    }
    public void setClaName(String claName)
    {
        this.claName = claName;
    }

    public String getClaName()
    {
        return claName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("claId", getClaId())
            .append("claTeaId", getClaTeaId())
            .append("claNumber", getClaNumber())
            .append("claName", getClaName())
            .toString();
    }
}
