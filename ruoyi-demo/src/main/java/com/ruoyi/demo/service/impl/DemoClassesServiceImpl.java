package com.ruoyi.demo.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.demo.mapper.DemoClassesMapper;
import com.ruoyi.demo.domain.DemoClasses;
import com.ruoyi.demo.service.IDemoClassesService;

/**
 * 主子Service业务层处理
 * 
 * @author metaee
 * @date 2023-07-06
 */
@Service
public class DemoClassesServiceImpl extends ServiceImpl<DemoClassesMapper, DemoClasses> implements IDemoClassesService {
    @Autowired
    private DemoClassesMapper demoClassesMapper;
    
    /**
     * 查询主子列表
     * 
     * @param demoClasses 主子
     * @return 主子
     */
    @Override
    public List<DemoClasses> selectDemoClassesList(DemoClasses demoClasses) {
    	LambdaQueryWrapper<DemoClasses> queryWrapper = Wrappers.lambdaQuery();
        if (StringUtils.isNotEmpty(demoClasses.getClassesName())) {
			queryWrapper.like(DemoClasses::getClassesName, demoClasses.getClassesName());
		}
        if (StringUtils.isNotNull(demoClasses.getClassesGrade())) {
			queryWrapper.eq(DemoClasses::getClassesGrade, demoClasses.getClassesGrade());
		}
        if (StringUtils.isNotEmpty(demoClasses.getClassesTeacher())) {
			queryWrapper.eq(DemoClasses::getClassesTeacher, demoClasses.getClassesTeacher());
		}
        if (StringUtils.isNotEmpty(demoClasses.getStatus())) {
			queryWrapper.eq(DemoClasses::getStatus, demoClasses.getStatus());
		}
        return demoClassesMapper.selectList(queryWrapper);
    }
}
