package com.ruoyi.project.peasant_info.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 农户个人信息对象 agr_peasant
 * 
 * @author Chen
 * @date 2023-03-01
 */
public class AgrPeasant extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增主键（与业务无关） */
    private Long id;

    /** 户编号 */
    @Excel(name = "户编号")
    private Long peaId;

    /** 姓名 */
    @Excel(name = "姓名")
    private String peaName;

    /** 证件号码 */
    @Excel(name = "证件号码")
    private String peaCard;

    /** 自然村 */
    @Excel(name = "自然村")
    private String peaVillage;

    /** 年度 */
    @Excel(name = "年度")
    private String peaYear;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setPeaId(Long peaId)
    {
        this.peaId = peaId;
    }

    public Long getPeaId()
    {
        return peaId;
    }
    public void setPeaName(String peaName)
    {
        this.peaName = peaName;
    }

    public String getPeaName()
    {
        return peaName;
    }
    public void setPeaCard(String peaCard)
    {
        this.peaCard = peaCard;
    }

    public String getPeaCard()
    {
        return peaCard;
    }
    public void setPeaVillage(String peaVillage)
    {
        this.peaVillage = peaVillage;
    }

    public String getPeaVillage()
    {
        return peaVillage;
    }
    public void setPeaYear(String peaYear)
    {
        this.peaYear = peaYear;
    }

    public String getPeaYear()
    {
        return peaYear;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("peaId", getPeaId())
            .append("peaName", getPeaName())
            .append("peaCard", getPeaCard())
            .append("peaVillage", getPeaVillage())
            .append("peaYear", getPeaYear())
            .toString();
    }
}
