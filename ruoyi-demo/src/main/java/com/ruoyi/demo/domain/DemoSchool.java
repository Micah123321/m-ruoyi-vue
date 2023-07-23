package com.ruoyi.demo.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BasePlusEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 树对象 demo_school
 *
 * @author metaee
 * @date 2023-07-06
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName(value = "demo_school")
public class DemoSchool extends BasePlusEntity {
    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

    /** 编号 */
    @TableId(type = IdType.AUTO)
    private Long schoolId;

    /** 父编号id */
    @Excel(name = "父编号id")
    private Long parentId;

    /** 祖级列表 */
    @Excel(name = "祖级列表")
    private String ancestors;

    /** 显示顺序 */
    @Excel(name = "显示顺序")
    private Long orderNum;

    /** 学生名称 */
    @Excel(name = "学生名称")
    private String schoolName;

    /** 状态（0正常 1停用） */
    @Excel(name = "状态", readConverterExp = "0=正常,1=停用")
    private String status;

    /** 删除标志（0逻辑未删除值 1逻辑已删除值） */
    private Integer delFlag;

}
