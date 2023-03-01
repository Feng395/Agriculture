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
    private String peaYear;

    /** 与户主关系 */
    @Excel(name = "与户主关系")
    private String peaRelation;

    /** 致贫原因 */
    @Excel(name = "致贫原因")
    private String peaReason;

    /** 健康状况 */
    private String peaHealth;

    /** 年龄 */
    private Long peaAge;

    /** 在校状况 */
    private String peaStatus;

    /** 民族 */
    private String peaNation;

    /** 户联系电话 */
    private String peaTel;

    /** 人员识别时间 */
    private String peaTime;

    /** 劳动技能 */
    private String peaAbility;

    /** 文化程度 */
    private String peaEducation;

    /** 户类型 */
    private String peaType;

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
    public void setPeaRelation(String peaRelation)
    {
        this.peaRelation = peaRelation;
    }

    public String getPeaRelation()
    {
        return peaRelation;
    }
    public void setPeaReason(String peaReason)
    {
        this.peaReason = peaReason;
    }

    public String getPeaReason()
    {
        return peaReason;
    }
    public void setPeaHealth(String peaHealth)
    {
        this.peaHealth = peaHealth;
    }

    public String getPeaHealth()
    {
        return peaHealth;
    }
    public void setPeaAge(Long peaAge)
    {
        this.peaAge = peaAge;
    }

    public Long getPeaAge()
    {
        return peaAge;
    }
    public void setPeaStatus(String peaStatus)
    {
        this.peaStatus = peaStatus;
    }

    public String getPeaStatus()
    {
        return peaStatus;
    }
    public void setPeaNation(String peaNation)
    {
        this.peaNation = peaNation;
    }

    public String getPeaNation()
    {
        return peaNation;
    }
    public void setPeaTel(String peaTel)
    {
        this.peaTel = peaTel;
    }

    public String getPeaTel()
    {
        return peaTel;
    }
    public void setPeaTime(String peaTime)
    {
        this.peaTime = peaTime;
    }

    public String getPeaTime()
    {
        return peaTime;
    }
    public void setPeaAbility(String peaAbility)
    {
        this.peaAbility = peaAbility;
    }

    public String getPeaAbility()
    {
        return peaAbility;
    }
    public void setPeaEducation(String peaEducation)
    {
        this.peaEducation = peaEducation;
    }

    public String getPeaEducation()
    {
        return peaEducation;
    }
    public void setPeaType(String peaType)
    {
        this.peaType = peaType;
    }

    public String getPeaType()
    {
        return peaType;
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
            .append("peaRelation", getPeaRelation())
            .append("peaReason", getPeaReason())
            .append("peaHealth", getPeaHealth())
            .append("peaAge", getPeaAge())
            .append("peaStatus", getPeaStatus())
            .append("peaNation", getPeaNation())
            .append("peaTel", getPeaTel())
            .append("peaTime", getPeaTime())
            .append("peaAbility", getPeaAbility())
            .append("peaEducation", getPeaEducation())
            .append("peaType", getPeaType())
            .toString();
    }
}
