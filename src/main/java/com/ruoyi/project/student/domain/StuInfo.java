package com.ruoyi.project.student.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 学生（测试代码生成功能）对象 stu_info
 * 
 * @author Chen
 * @date 2023-02-24
 */
public class StuInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增主键（与业务无关） */
    private Long id;

    /** 学生编号 */
    @Excel(name = "学生编号")
    private Long stuId;

    /** 学生姓名 */
    @Excel(name = "学生姓名")
    private String stuName;

    /** 学生年龄 */
    @Excel(name = "学生年龄")
    private Long stuAge;

    /** 学生性别（0是女  1是男） */
    @Excel(name = "学生性别", readConverterExp = "0=是女,1=是男")
    private Long stuSex;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setStuId(Long stuId)
    {
        this.stuId = stuId;
    }

    public Long getStuId()
    {
        return stuId;
    }
    public void setStuName(String stuName)
    {
        this.stuName = stuName;
    }

    public String getStuName()
    {
        return stuName;
    }
    public void setStuAge(Long stuAge)
    {
        this.stuAge = stuAge;
    }

    public Long getStuAge()
    {
        return stuAge;
    }
    public void setStuSex(Long stuSex)
    {
        this.stuSex = stuSex;
    }

    public Long getStuSex()
    {
        return stuSex;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("stuId", getStuId())
            .append("stuName", getStuName())
            .append("stuAge", getStuAge())
            .append("stuSex", getStuSex())
            .toString();
    }
}
