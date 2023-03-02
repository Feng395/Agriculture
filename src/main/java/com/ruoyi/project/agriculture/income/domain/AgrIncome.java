package com.ruoyi.project.agriculture.income.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 农户个人收入信息对象 agr_income
 * 
 * @author Chen
 * @date 2023-03-02
 */
public class AgrIncome extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增主键（与业务无关） */
    private Long id;

    /** 户编号 */
    @Excel(name = "户编号")
    private String peaId;

    /** 姓名 */
    @Excel(name = "姓名")
    private String peaName;

    /** 证件号码 */
    @Excel(name = "证件号码")
    private String peaCard;

    /** 自然村 */
    @Excel(name = "自然村")
    private String peaVillage;

    /** 年度（不同年度数据不同） */
    @Excel(name = "年度", readConverterExp = "不=同年度数据不同")
    private String year;

    /** 生产经营收入（后期通过多表之间匹配详细数据） */
    private String proAndOpe;

    /** 财产性收入 */
    private String property;

    /** 工资性收入 */
    private String salary;

    /** 转移性收入 */
    private String transfer;

    /** 返贫状态 */
    private String status;

    /** 本年人均收入（以户编号为统计单位） */
    private Long perIncomeThisYear;

    /** 上一年人均收入 */
    private Long perIncomeLastYear;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setPeaId(String peaId)
    {
        this.peaId = peaId;
    }

    public String getPeaId()
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
    public void setYear(String year)
    {
        this.year = year;
    }

    public String getYear()
    {
        return year;
    }
    public void setProAndOpe(String proAndOpe)
    {
        this.proAndOpe = proAndOpe;
    }

    public String getProAndOpe()
    {
        return proAndOpe;
    }
    public void setProperty(String property)
    {
        this.property = property;
    }

    public String getProperty()
    {
        return property;
    }
    public void setSalary(String salary)
    {
        this.salary = salary;
    }

    public String getSalary()
    {
        return salary;
    }
    public void setTransfer(String transfer)
    {
        this.transfer = transfer;
    }

    public String getTransfer()
    {
        return transfer;
    }
    public void setStatus(String status)
    {
        this.status = status;
    }

    public String getStatus()
    {
        return status;
    }
    public void setPerIncomeThisYear(Long perIncomeThisYear)
    {
        this.perIncomeThisYear = perIncomeThisYear;
    }

    public Long getPerIncomeThisYear()
    {
        return perIncomeThisYear;
    }
    public void setPerIncomeLastYear(Long perIncomeLastYear)
    {
        this.perIncomeLastYear = perIncomeLastYear;
    }

    public Long getPerIncomeLastYear()
    {
        return perIncomeLastYear;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("peaId", getPeaId())
            .append("peaName", getPeaName())
            .append("peaCard", getPeaCard())
            .append("peaVillage", getPeaVillage())
            .append("year", getYear())
            .append("proAndOpe", getProAndOpe())
            .append("property", getProperty())
            .append("salary", getSalary())
            .append("transfer", getTransfer())
            .append("status", getStatus())
            .append("perIncomeThisYear", getPerIncomeThisYear())
            .append("perIncomeLastYear", getPerIncomeLastYear())
            .toString();
    }
}
