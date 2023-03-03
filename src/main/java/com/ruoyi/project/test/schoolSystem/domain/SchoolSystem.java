package com.ruoyi.project.test.schoolSystem.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.TreeEntity;

/**
 * 学校系统对象 test_school
 * 
 * @author Chen
 * @date 2023-03-03
 */
public class SchoolSystem extends TreeEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增主键 */
    private Long id;

    /** 学校系统编号 */
    @Excel(name = "学校系统编号")
    private Long schoolId;

    /** 学校系统名称 */
    @Excel(name = "学校系统名称")
    private String schoolName;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setSchoolId(Long schoolId)
    {
        this.schoolId = schoolId;
    }

    public Long getSchoolId()
    {
        return schoolId;
    }
    public void setSchoolName(String schoolName)
    {
        this.schoolName = schoolName;
    }

    public String getSchoolName()
    {
        return schoolName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("schoolId", getSchoolId())
            .append("schoolName", getSchoolName())
            .append("parentId", getParentId())
            .toString();
    }
}
