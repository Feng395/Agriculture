package com.ruoyi.project.test.student_info.domain;

import java.util.List;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 学生个人信息对象 test_student
 * 
 * @author Chen
 * @date 2023-03-02
 */
public class Student extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增主键(与业务无关) */
    private Long id;

    /** 学生编号 */
    @Excel(name = "学生编号")
    private Long stuId;

    /** 学生姓名 */
    @Excel(name = "学生姓名")
    private String stuName;

    /** 学生性别(0女  1男) */
    @Excel(name = "学生性别(0女  1男)")
    private Integer stuSex;

    /** 学生班级 */
    @Excel(name = "学生班级")
    private Long stuClass;

    /** 学生成绩 */
    @Excel(name = "学生成绩")
    private String stuMark;

    /** 创建时间 */
    private Date creatTime;

    /** 学生成绩信息 */
    private List<StuMark> stuMarkList;

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
    public void setStuSex(Integer stuSex)
    {
        this.stuSex = stuSex;
    }

    public Integer getStuSex()
    {
        return stuSex;
    }
    public void setStuClass(Long stuClass)
    {
        this.stuClass = stuClass;
    }

    public Long getStuClass()
    {
        return stuClass;
    }
    public void setStuMark(String stuMark)
    {
        this.stuMark = stuMark;
    }

    public String getStuMark()
    {
        return stuMark;
    }
    public void setCreatTime(Date creatTime)
    {
        this.creatTime = creatTime;
    }

    public Date getCreatTime()
    {
        return creatTime;
    }

    public List<StuMark> getStuMarkList()
    {
        return stuMarkList;
    }

    public void setStuMarkList(List<StuMark> stuMarkList)
    {
        this.stuMarkList = stuMarkList;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("stuId", getStuId())
            .append("stuName", getStuName())
            .append("stuSex", getStuSex())
            .append("stuClass", getStuClass())
            .append("stuMark", getStuMark())
            .append("creatTime", getCreatTime())
            .append("stuMarkList", getStuMarkList())
            .toString();
    }
}
