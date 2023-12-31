## 平台简介

m-ruoyi-vue快速开发平台基于开源项目“RuoYi-Vue”优化改造，追求快速开发，一切向效率看齐，重构优化前后端的代码。平台将持续升级，持续完善。欢迎star和fork。

* 感谢 [RuoYi-Vue](https://gitee.com/y_project/RuoYi-Vue)

## 内置功能

1.  用户管理：用户是系统操作者，该功能主要完成系统用户配置。
2.  部门管理：配置系统组织机构（公司、部门、小组），树结构展现支持数据权限。
3.  岗位管理：配置系统用户所属担任职务。
4.  菜单管理：配置系统菜单，操作权限，按钮权限标识等。
5.  角色管理：角色菜单权限分配、设置角色按机构进行数据范围权限划分。
6.  字典管理：对系统中经常使用的一些较为固定的数据进行维护。
7.  参数管理：对系统动态配置常用参数。
8.  通知公告：系统通知公告信息发布维护。
9.  操作日志：系统正常操作日志记录和查询；系统异常信息日志记录和查询。
10. 登录日志：系统登录日志记录查询包含登录异常。
11. 在线用户：当前系统中活跃用户状态监控。
12. 定时任务：在线（添加、修改、删除)任务调度包含执行结果日志。
13. 代码生成：前后端代码的生成（java、html、xml、sql）支持CRUD下载 。
14. 系统接口：根据业务代码自动生成相关的api接口文档。
15. 服务监控：监视当前系统CPU、内存、磁盘、堆栈等相关信息。
16. 缓存监控：对系统的缓存信息查询，命令统计等。
17. 在线构建器：拖动表单元素生成相应的HTML代码。
18. 连接池监视：监视当前系统数据库连接池状态，可进行分析SQL找出系统性能瓶颈。

## 系统模块

~~~
ruoyi     
├── ruoyi-ui                   // 前端框架 [80]
├── ruoyi-admin                // 应用后台 [8080]
├── ruoyi-common               // 通用模块
    ├── ruoyi-common-api          // 各模块聚合api
    ├── ruoyi-common-core         // 核心工具
    ├── ruoyi-common-log          // 日志记录    
    ├── ruoyi-common-mybatis      // 数据库访问
    ├── ruoyi-common-security     // 登录安全认证
    ├── ruoyi-common-web          // web服务
├── ruoyi-system               // 系统管理模块
├── ruoyi-quzrtz               // 定时任务模块 
├── ruoyi-generator            // 代码生成模块   
├── ruoyi-demo                 // DEMO演示模块
~~~

## 改造开发计划

1.  集成Mybatis-Plus实现mybatis增强，提升快速CRUD开发效率。（已完成）
2.  代码生成可以界面选择是否生成Mybatis-Plus代码风格实现。（已完成）
3.  集成dynamic-datasource，简化多数据源使用。（已完成）
4.  集成Knife4j，美化接口文档。（已完成）
5.  集成ip2region实现离线IP地址定位。（已完成）
6.  集成EasyCaptcha，提供多风格验证码使用。（已完成）
7.  集成Hutool，简化工具类使用。（已完成）
8.  集成jsencrypt实现密码加密传输方式。（已完成）
9.  调整工程模块包结构。（已完成）
10. 前端界面改造。（进行中）

## 使用方法
1. clone下来
2. 导入数据库,修改数据库配置
3. 安装前端依赖
4. 前后端运行
5. 进入系统工具,代码生成
6. 修改构造器配置包名,表名
7. 导入想要使用的表

## 数据库参数
- 单表需要包含  
```sql
`create_by` VARCHAR(255) DEFAULT NULL COMMENT '创建者',
  `create_time` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` VARCHAR(255) DEFAULT NULL COMMENT '更新者',
  `update_time` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` VARCHAR(255) DEFAULT NULL COMMENT '备注',
  `del_flag` TINYINT(1) DEFAULT '0' COMMENT '删除标志',
```
- 树表需要包含 


```sql
  `parent_id` int DEFAULT '0' COMMENT '所属分类ID',
  `ancestors` varchar(255) NOT NULL COMMENT '祖级列表',
  `order_num` int DEFAULT '0' COMMENT '排序',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除标志',

```
