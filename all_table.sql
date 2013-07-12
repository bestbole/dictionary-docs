delimiter $$

CREATE TABLE `fy_dictionary_follow` (
  `follow_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '精耕记录id',
  `room_id` int(11) unsigned NOT NULL COMMENT '房屋id',
  `follow_purpose` tinyint(2) unsigned NOT NULL COMMENT '精耕目的{1:议价,2:独家,3:限时,4:验房,5:拿钥匙,6:带看反馈,7:保鲜翻盘,8:情感联接,9:斡旋谈判}',
  `follow_type` tinyint(1) unsigned NOT NULL COMMENT '精耕类型{1:电话,2:短信,3:面谈,4:电子邮件,5:QQ,6:其他}',
  `follow_content` varchar(255) NOT NULL DEFAULT '' COMMENT '精耕内容',
  `follow_result` varchar(100) NOT NULL DEFAULT '' COMMENT '精耕结果',
  `follow_create_by` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `follow_create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `audit_status` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '审核状态',
  PRIMARY KEY (`follow_id`),
  KEY `index_room` (`room_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='精耕(跟进)记录表'$$


delimiter $$

CREATE TABLE `fy_dictionary_house` (
  `house_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '楼盘id',
  `house_code` char(10) NOT NULL DEFAULT '' COMMENT '楼盘代码',
  `house_name` varchar(30) NOT NULL DEFAULT '' COMMENT '楼盘名称',
  `house_alias` varchar(30) NOT NULL DEFAULT '' COMMENT '楼盘别名',
  `house_part` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '期数 0:不分期,$num:期数',
  `house_city` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所属城市(fk)',
  `house_area` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所属城区(fk)',
  `house_business_circle` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所属商圈(fk)',
  `house_address_street` varchar(20) NOT NULL DEFAULT '' COMMENT '物业地址街',
  `house_address_num` varchar(20) NOT NULL DEFAULT '' COMMENT '物业地址号',
  `house_building_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '楼盘栋数',
  `house_family_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '楼盘户数',
  `house_use` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '楼盘用途 F000000133',
  `house_opening` date NOT NULL DEFAULT '0000-00-00' COMMENT '开盘时间',
  `house_tags` varchar(30) NOT NULL DEFAULT '' COMMENT '标签',
  `house_intro` varchar(200) NOT NULL DEFAULT '' COMMENT '小区简介',
  `house_building_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '建筑类型 F000000128',
  `house_structure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '建筑结构 F000000127',
  `house_project_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '项目类别 F000000126',
  `house_era` year(4) NOT NULL DEFAULT '0000' COMMENT '建成年份',
  `house_building_area` varchar(20) NOT NULL DEFAULT '' COMMENT '建筑面积',
  `house_cover_area` varchar(20) NOT NULL DEFAULT '' COMMENT '占地面积',
  `house_volume_rate` varchar(20) NOT NULL DEFAULT '' COMMENT '容积率',
  `house_pooled_rate` varchar(20) NOT NULL DEFAULT '' COMMENT '公摊率',
  `house_greening_rate` varchar(20) NOT NULL DEFAULT '' COMMENT '绿化率',
  `house_land_nature` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '土地类别 F000000123',
  `house_land_life` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '土地年限 F000000124',
  `house_land_certificate_date` date NOT NULL DEFAULT '0000-00-00' COMMENT '土地证日期',
  `house_permissions` varchar(20) NOT NULL DEFAULT '' COMMENT '权属 F000000122',
  `house_gas_method` tinyint(1) unsigned NOT NULL COMMENT '供气方式 F000000157',
  `house_electricity_charge` varchar(20) NOT NULL DEFAULT '' COMMENT '电费',
  `house_park_count` varchar(10) NOT NULL COMMENT '车位数',
  `house_parking_rent` varchar(20) NOT NULL DEFAULT '' COMMENT '车位月租金',
  `house_parking_fee` varchar(20) NOT NULL DEFAULT '' COMMENT '停车费',
  `house_parking_remarks` varchar(200) NOT NULL DEFAULT '' COMMENT '车位信息备注',
  `house_sell_average_price` decimal(6,2) unsigned zerofill NOT NULL DEFAULT '0000.00' COMMENT '出售均价：元/平方米',
  `house_rent_average_price` decimal(6,2) unsigned zerofill NOT NULL DEFAULT '0000.00' COMMENT '出租均价：元/平方米',
  `house_developer` varchar(30) NOT NULL DEFAULT '' COMMENT '开发商',
  `house_developer_address` varchar(30) NOT NULL DEFAULT '' COMMENT '开发商公司地址',
  `house_developer_contact_name` varchar(10) NOT NULL DEFAULT '' COMMENT '开发商联系人',
  `house_developer_contact_phone` varchar(20) NOT NULL DEFAULT '' COMMENT '开发商联系电话',
  `house_developer_remarks` varchar(200) NOT NULL DEFAULT '' COMMENT '开发商信息备注',
  `house_property` varchar(30) NOT NULL DEFAULT '' COMMENT '物业公司',
  `house_property_address` varchar(30) NOT NULL DEFAULT '' COMMENT '物业公司地址',
  `house_property_fee` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT '物业费 元/㎡',
  `house_property_contact_name` varchar(20) NOT NULL DEFAULT '' COMMENT '物业联系人',
  `house_property_contact_phone` varchar(20) NOT NULL DEFAULT '' COMMENT '物业联系电话',
  `house_property_remarks` varchar(200) NOT NULL DEFAULT '' COMMENT '物业信息备注',
  `house_selling_points` text NOT NULL COMMENT '楼盘卖点',
  `house_group` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所属店组(fk)',
  `house_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '楼盘类别 F000000129',
  `house_heating_method` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '采暖方式 F000000130',
  `house_credit_price` varchar(20) NOT NULL DEFAULT '' COMMENT '贷款评估价',
  `house_in_time` date NOT NULL COMMENT '入住日期',
  `house_land_level` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '土地级别 F000000142',
  `house_obstacle_channel` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '障碍通道 F000000146',
  `house_floor_spacing` varchar(20) NOT NULL DEFAULT '' COMMENT '楼间距',
  `house_wall_color` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '外墙颜色 F000000150',
  `house_parking` varchar(20) NOT NULL DEFAULT '' COMMENT '车位比',
  `house_garage_count` varchar(10) NOT NULL COMMENT '车库数量',
  `house_outwall` tinyint(1) unsigned NOT NULL COMMENT '外墙面 F000000154',
  `house_electricity_method` tinyint(1) unsigned NOT NULL COMMENT '供电方式 F000000155',
  `house_water_method` tinyint(1) unsigned NOT NULL COMMENT '供水方式 F000000156',
  `house_communication` tinyint(1) unsigned NOT NULL COMMENT '通讯配置 F000000158',
  `house_elevator_brand` tinyint(2) NOT NULL COMMENT '电梯品牌 F000000159',
  `house_profile_material` tinyint(1) unsigned NOT NULL COMMENT '门窗材料 F000000160',
  `house_opening_price` varchar(20) NOT NULL DEFAULT '' COMMENT '开盘价格',
  `house_bottom_price` varchar(20) NOT NULL DEFAULT '' COMMENT '底商价格',
  `house_rent_price` varchar(20) NOT NULL DEFAULT '' COMMENT '现租价',
  `house_water_charge` varchar(20) NOT NULL DEFAULT '' COMMENT '水费',
  `house_gas_charge` varchar(20) NOT NULL DEFAULT '' COMMENT '气费',
  `house_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '楼盘状态 =>0新建 1有效 2无效',
  `house_create_by` int(11) unsigned NOT NULL COMMENT '创建人',
  `house_create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `house_last_modify_by` int(11) unsigned NOT NULL COMMENT '修改者',
  `house_last_modify_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  `house_duty_range` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '责任盘范围(责任盘) 1:责任盘,2:范围盘,3:非范围盘',
  `audit_status` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '审核状态 ',
  PRIMARY KEY (`house_id`),
  UNIQUE KEY `house_code_UNIQUE` (`house_code`) USING BTREE,
  KEY `house_business_circle` (`house_business_circle`) USING BTREE,
  KEY `index_part` (`house_part`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='楼盘表'$$


delimiter $$

CREATE TABLE `fy_dictionary_house_import` (
  `import_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '导入历史id',
  `import_file_unique_hash` char(40) NOT NULL COMMENT '全局唯一hash',
  `import_file_name` varchar(50) DEFAULT NULL COMMENT '上传文件名',
  `import_fail` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '有无失败楼盘 0:无,1:有',
  `import_file_url` varchar(100) NOT NULL DEFAULT '' COMMENT '原文件路径',
  `import_file_fail_url` varchar(100) NOT NULL DEFAULT '' COMMENT '失败楼盘文件路径',
  `user_id` int(10) unsigned NOT NULL COMMENT '上传者',
  `import_upload_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  PRIMARY KEY (`import_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='批量导入历史表'$$


delimiter $$

CREATE TABLE `fy_dictionary_house_import_detail` (
  `detail_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '历史详情id',
  `import_id` int(11) unsigned NOT NULL COMMENT '导入历史id',
  `detail_row` tinyint(1) unsigned NOT NULL COMMENT '行数',
  `detail_house_name` varchar(30) NOT NULL COMMENT '上传楼盘名称',
  `detail_house_part` varchar(20) NOT NULL COMMENT '楼盘分期',
  `detail_city_area` varchar(45) DEFAULT NULL COMMENT '城区',
  `detail_seat` varchar(45) DEFAULT NULL COMMENT '栋座名',
  `detail_unit` varchar(45) DEFAULT NULL COMMENT '单元',
  `detail_room` varchar(45) DEFAULT NULL COMMENT '房号',
  `detail_result` tinyint(1) unsigned NOT NULL COMMENT '上传结果 0:失败, 1:成功',
  `detail_fail_reson` varchar(40) NOT NULL DEFAULT '' COMMENT '失败原因',
  PRIMARY KEY (`detail_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='批量导入历史详情表'$$


delimiter $$

CREATE TABLE `fy_dictionary_house_school_relation` (
  `dhsr_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '关联id',
  `school_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '学校id',
  `house_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '楼盘id',
  `dhsr_status` tinyint(1) unsigned NOT NULL COMMENT '关联状态 1有效 2无效',
  PRIMARY KEY (`dhsr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='学校楼盘关联表'$$


delimiter $$

CREATE TABLE `fy_dictionary_house_support` (
  `support_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '配套id',
  `house_id` int(11) unsigned NOT NULL COMMENT '楼盘id',
  `support_type_id` int(11) unsigned NOT NULL COMMENT '配套类型id',
  `support_name` varchar(20) NOT NULL COMMENT '配套名称',
  `support_remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`support_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='楼盘配套设施表'$$


delimiter $$

CREATE TABLE `fy_dictionary_house_transit_map` (
  `house_transit_map_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `house_id` int(11) unsigned NOT NULL COMMENT '楼盘id',
  `transit_line_id` int(11) unsigned NOT NULL COMMENT '公交id',
  `transit_type` tinyint(2) NOT NULL COMMENT '公交类型',
  `transit_line_name` varchar(30) NOT NULL COMMENT '线路名称',
  PRIMARY KEY (`house_transit_map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='楼盘公交映射表'$$


delimiter $$

CREATE TABLE `fy_dictionary_picture` (
  `picture_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '文件id',
  `picture_module` smallint(6) NOT NULL COMMENT '图片所属模块=>100:楼盘字典,200:房源',
  `picture_target_type` smallint(6) DEFAULT NULL COMMENT '对象类型=>101:楼盘,104:房屋,201:房源',
  `picture_target_id` int(11) unsigned NOT NULL COMMENT '对象id',
  `picture_type` smallint(6) NOT NULL COMMENT '图片类型(房源:（201:房屋照片,202:证件图,203:户型图）,)',
  `file_unique_hash` char(40) NOT NULL COMMENT '文件id',
  `file_save_path` varchar(100) NOT NULL COMMENT '文件路径(冗余)',
  `picture_name` varchar(50) NOT NULL DEFAULT '' COMMENT '图片名称',
  `picture_size` varchar(45) NOT NULL DEFAULT '' COMMENT '图片尺寸',
  `picture_file_type` varchar(45) NOT NULL DEFAULT '' COMMENT '图片文件类型如：（.jpg,.gif,.jpeg）',
  `picture_belong` tinyint(3) NOT NULL COMMENT '图片所属(10:客厅,20:厨房,30:客房,40:厕所,50:阳台,60:杂物间)',
  `picture_tag` smallint(6) NOT NULL COMMENT '标签图片(200:验房)',
  `picture_is_cover` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否是封面(0:不是封面，1：封面)',
  PRIMARY KEY (`picture_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='图片表'$$


delimiter $$

CREATE TABLE `fy_dictionary_region_operation_config` (
  `droc_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '业务区域配置id',
  `droc_name` varchar(20) NOT NULL DEFAULT '' COMMENT '模块名称',
  `droc_alias` varchar(20) NOT NULL DEFAULT '' COMMENT '别名',
  `droc_order` tinyint(1) unsigned NOT NULL COMMENT '顺序',
  PRIMARY KEY (`droc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='业务区域配置表'$$


delimiter $$

CREATE TABLE `fy_dictionary_room` (
  `room_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '房屋ID',
  `house_id` int(10) unsigned NOT NULL COMMENT '楼盘id',
  `seat_id` int(10) unsigned NOT NULL COMMENT '栋座id',
  `unit_id` int(10) unsigned NOT NULL COMMENT '单元ID',
  `room_name` varchar(10) NOT NULL DEFAULT '' COMMENT '房屋户号',
  `room_alias` varchar(20) NOT NULL DEFAULT '' COMMENT '房屋别名',
  `room_floor_number` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所处楼层（在第几楼）',
  `room_use_area` varchar(20) NOT NULL DEFAULT '' COMMENT '套内面积',
  `room_build_area` varchar(20) NOT NULL DEFAULT '' COMMENT '产权面积（建筑面积）',
  `room_useful_area` varchar(20) DEFAULT NULL COMMENT '实用面积',
  `room_orientation` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '朝向{1:东,2:南,3:西,4:北}',
  `type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '户型ID',
  `room_address` varchar(200) NOT NULL COMMENT '房屋地址',
  `room_build_year` year(4) DEFAULT NULL COMMENT '建成年代',
  `room_style` tinyint(4) DEFAULT NULL COMMENT '房屋样式=>1:复式,2:跃层,3:错层',
  `room_basic_decoration` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '装修类型{1:精装,2:简装,3:毛坯,4:清水:,5:豪装,6:统装}',
  `room_basic_elevator` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有电梯{1:有,0:无}',
  `room_basic_affiliate_facility` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '附属设施{1:花园,2:露台,3:地下室,4:阁楼}',
  `room_basic_purpose` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '房屋用途{1:住宅-公寓,2:住宅-普通住宅,3:住宅-别墅,4:非住宅-商铺,5:非住宅-公建,6:非住宅-写字间,7:非住宅-车库,8:工用-仓库,9:工用-厂房}',
  `room_basic_actuality` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '房屋现状{1:自住,2:闲置,3:出售,4:出租}',
  `room_owner_name` varchar(20) NOT NULL DEFAULT '' COMMENT '产权人姓名',
  `room_owner_contact` varchar(200) NOT NULL DEFAULT '' COMMENT '产权人联系方式',
  `room_owner_papers_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '产权证类型',
  `room_owner_papers_number` varchar(30) NOT NULL DEFAULT '' COMMENT '证件号码',
  `room_owner_paper_date` date DEFAULT NULL COMMENT '证件日期',
  `room_owner_common` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否共有{1:共有,0:不共有}',
  `room_owner_coowner` varchar(20) NOT NULL DEFAULT '' COMMENT '共有人姓名',
  `room_last_follow_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后一次精耕时间',
  `room_last_follow_by` int(10) unsigned NOT NULL DEFAULT '0',
  `room_create_by` int(10) unsigned NOT NULL COMMENT '添加人id',
  `room_create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  `room_last_modify_by` int(10) unsigned NOT NULL COMMENT '修改人id',
  `room_last_modify_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后一次修改时间',
  `audit_status` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '审核状态',
  `room_owner_remark` varchar(255) DEFAULT NULL COMMENT '产权人备注',
  PRIMARY KEY (`room_id`),
  KEY `house_id` (`house_id`) USING BTREE,
  KEY `index_seat_id` (`seat_id`) USING BTREE,
  KEY `index_unit_id` (`unit_id`) USING BTREE,
  KEY `index_time` (`room_last_modify_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='楼盘字典房屋表'$$


delimiter $$

CREATE TABLE `fy_dictionary_room_type` (
  `type_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '户型id',
  `type_name` varchar(20) NOT NULL DEFAULT '' COMMENT '户型名称',
  `type_room` int(5) unsigned NOT NULL DEFAULT '0' COMMENT '室',
  `type_hall` int(5) unsigned NOT NULL DEFAULT '0' COMMENT '厅',
  `type_kitchen` int(5) unsigned NOT NULL DEFAULT '0' COMMENT '厨',
  `type_bathroom` int(5) unsigned NOT NULL DEFAULT '0' COMMENT '卫',
  `type_balcony` int(5) unsigned NOT NULL DEFAULT '0' COMMENT '阳',
  PRIMARY KEY (`type_id`),
  KEY `index_search` (`type_room`,`type_hall`,`type_kitchen`,`type_bathroom`,`type_balcony`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='户型表'$$


delimiter $$

CREATE TABLE `fy_dictionary_school` (
  `school_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '学校id',
  `school_associate` int(10) unsigned DEFAULT NULL COMMENT '关联学校id',
  `school_code` char(10) NOT NULL DEFAULT '' COMMENT '学校代码 10位 X000000001',
  `school_name` varchar(20) NOT NULL DEFAULT '' COMMENT '学校名称',
  `school_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '学校类型 F000000324',
  `school_address` varchar(100) NOT NULL DEFAULT ' ' COMMENT '学校地址',
  `school_level` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '学校等级 F000000325',
  `ro_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '末级业务区域id',
  `school_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 100新建 200有效（110，120...）',
  `school_create_by` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `school_create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `school_modify_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  `school_modify_by` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '修改人',
  `school_if_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 (0:未删1:删除)',
  `school_city` int(11) DEFAULT '0' COMMENT '学校所属城市',
  PRIMARY KEY (`school_id`),
  KEY `index_assoc` (`school_associate`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='学校信息表'$$


delimiter $$

CREATE TABLE `fy_dictionary_seat` (
  `seat_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '栋座id',
  `house_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属楼盘id',
  `seat_name` varchar(30) NOT NULL DEFAULT '' COMMENT '栋座名称',
  `seat_number` varchar(20) NOT NULL DEFAULT '0' COMMENT '栋座号',
  `seat_buliding_number` varchar(20) NOT NULL DEFAULT '0' COMMENT '建筑号',
  `seat_buliding_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '建筑类型{1=>多层；2=>小高层；3=>高层;4=>联排;5=>叠拼;6=>独栋}',
  `seat_unit` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '单元数',
  `seat_households` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '总户数',
  `seat_selling` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '在售数（从房源冗余）',
  `seat_renting` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '在租数（从房源冗余）',
  `seat_property_fee` float(10,2) unsigned NOT NULL COMMENT '物业费',
  `seat_tax` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '计税评估价',
  `seat_loan` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '贷款评估价',
  `seat_obstacle_course` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '障碍通道{0=>无;1=>有}',
  `seat_complete_year` year(4) NOT NULL COMMENT '建成年代',
  `seat_region_num` varchar(50) NOT NULL COMMENT '栋座行政号',
  `seat_create_by` int(10) unsigned NOT NULL COMMENT '创建人id',
  `seat_create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `seat_last_modify_by` int(10) unsigned NOT NULL COMMENT '修改人',
  `seat_last_modify_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后一次修改时间',
  `audit_status` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '审核状态',
  PRIMARY KEY (`seat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='栋座'$$


delimiter $$

CREATE TABLE `fy_dictionary_unit` (
  `unit_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '单元id',
  `house_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属楼盘id',
  `seat_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属栋座id',
  `unit_name` varchar(30) NOT NULL DEFAULT '' COMMENT '单元名称',
  `unit_alias` varchar(30) DEFAULT NULL COMMENT '单元别名',
  `unit_floor_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '楼层数',
  `unit_households` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '总户数',
  `unit_create_by` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建者id',
  `unit_create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `unit_last_modify_by` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '修改人id',
  `unit_last_modify_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后一次修改时间',
  `audit_status` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '审核状态',
  PRIMARY KEY (`unit_id`),
  KEY `index_time` (`unit_last_modify_time`),
  KEY `index_house` (`house_id`),
  KEY `index_seat` (`seat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='单元表'$$


delimiter $$

CREATE TABLE `fy_dictionary_unit_room_type_relation` (
  `relation_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '关系id',
  `unit_id` int(10) unsigned NOT NULL COMMENT '单元id',
  `type_id` int(10) unsigned NOT NULL COMMENT '户型id',
  PRIMARY KEY (`relation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='单元户型关系表'$$


delimiter $$

CREATE TABLE `fy_dictionary_view_times` (
  `times_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '查看id',
  `room_id` int(10) unsigned DEFAULT NULL COMMENT '房屋id',
  `user_id` int(10) unsigned DEFAULT NULL COMMENT '查看人id',
  `times_count` int(10) unsigned DEFAULT '0',
  `times_last_update_time` timestamp NULL DEFAULT NULL COMMENT '查看时间',
  PRIMARY KEY (`times_id`),
  KEY `index_room_id` (`room_id`) USING BTREE,
  KEY `index_user_id` (`user_id`) USING BTREE,
  KEY `index_user_room` (`user_id`,`room_id`) USING BTREE,
  KEY `index_time` (`times_last_update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='业主电话查看记录表'$$


