package com.ruoyi.demo.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ruoyi.demo.domain.DemoClasses;

import java.util.List;

/**
 * 主子Service接口
 *
 * @author metaee
 * @date 2023-07-06
 */
public interface IDemoClassesService extends IService<DemoClasses> {
    /**
     * 查询主子列表
     *
     * @param demoClasses 主子
     * @return 主子集合
     */
    public List<DemoClasses> selectDemoClassesList(DemoClasses demoClasses);
}
