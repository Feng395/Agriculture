package com.ruoyi.project.test.student_info.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 学生成绩对象 test_stu_mark
 * 
 * @author Chen
 * @date 2023-03-02
 */
public class StuMark extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增主键(与业务无关) */
    private Long id;

    /** 学生编号 */
    @Excel(name = "学生编号")
    private Long stuId;

    /** 语文成绩 */
    @Excel(name = "语文成绩")
    private Long markChinese;

    /** 数学成绩 */
    @Excel(name = "数学成绩")
    private Long markMath;

    /** 计算机成绩 */
    @Excel(name = "计算机成绩")
    private Long markIt;

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
    public void setMarkChinese(Long markChinese) 
    {
        this.markChinese = markChinese;
    }

    public Long getMarkChinese() 
    {
        return markChinese;
    }
    public void setMarkMath(Long markMath) 
    {
        this.markMath = markMath;
    }

    public Long getMarkMath() 
    {
        return markMath;
    }
    public void setMarkIt(Long markIt) 
    {
        this.markIt = markIt;
    }

    public Long getMarkIt() 
    {
        return markIt;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("stuId", getStuId())
            .append("markChinese", getMarkChinese())
            .append("markMath", getMarkMath())
            .append("markIt", getMarkIt())
            .toString();
    }
}
