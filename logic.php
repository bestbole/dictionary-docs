<?php

/**
 * 楼盘字典基础逻辑
 * 
 * 楼盘、栋座、单元、房屋继承此类
 */
abstract class BaseLogic {

    /**
     * 获取单条记录及相关的所有信息
     * @param int $id   主键id
     * @return array 主键对应的数据
     */
    public function get($id) {
        
    }

    /**
     * 新增入库
     * @param array $args   表单提交的数据
     * @return string   数据行的id
     */
    public function add($args) {
        
    }

    /**
     * 编辑
     * @param int $id   需要编辑的数据行的主键
     * @param array $args   需要编辑的数据
     */
    public function edit($id, $args) {
        
    }

    /**
     * 删除数据
     * @param int $id   需要删除的数据行主键
     */
    public function delete($id) {
        
    }

    /**
     * 检测数据是否可以删除
     * @param int $id   需要检测的数据行id
     */
    public function canDelete($id) {
        
    }

    /**
     * 开启新增审核
     * @param array $args 审核数据
     */
    public function startAddFlow($args) {
        
    }

    /**
     * 开启编辑审核
     * @param array $args 审核数据
     */
    public function startEditFlow($id, $args) {
        
    }

    /**
     * 开启删除审核
     * @param array $args 审核数据
     */
    public function startDeleteFlow($id) {
        
    }

    /**
     * 获取列表页信息
     * @param array $args 搜索条件
     * @param array $page 分页
     * @param array $search 搜索条件显示
     */
    abstract public function getList($args, &$page, &$search);

    /**
     * 查重
     * @param string $name 需要查重的名称
     * @param int $parent_id 查重条件
     * @param int $self_id 用于编辑时查重，需要查重数据的自身id以排除
     */
    public function nameExists($name, $parent_id, $self_id = null) {
        
    }

}

/**
 * 楼盘
 */
class HouseLogic extends BaseLogic {

    /**
     * 选择楼盘时自动根据输入的关键词模糊搜索
     * 
     * 用于新增页面
     * @param string $key_words 关键词
     */
    public function getNameListLike($key_words) {
        
    }

    /**
     * 统计栋阁数量
     * 
     * 用于详情页面
     * @param int $house_id 楼盘id
     */
    public function getSeatCount($house_id) {
        
    }

    /**
     * 统计单元数量
     * 
     * 用于详情页面
     * @param int $house_id 楼盘id
     */
    public function getUnitCount($house_id) {
        
    }

    /**
     * 统计房屋数量
     * 
     * 用于详情页面
     * @param int $house_id 楼盘id
     */
    public function getRoomCount($house_id) {
        
    }

    /**
     * 设为无效
     * @param int $house_id 要设置成无效的楼盘id
     */
    public function setInvalid($house_id) {
        
    }

    /**
     * 获取已经存在的栋阁名称列表
     * 
     * @param int $house_id 楼盘id
     */
    public function getExistsSeatNameList($house_id) {
        
    }

}

/**
 * 栋阁
 */
class SeatLogic extends BaseLogic {

    /**
     * 统计栋阁下的单元数量
     * 
     * 用于详情页面
     * @param int $seat_id 栋阁id
     */
    public function getUnitCount($seat_id) {
        
    }

    /**
     * 统计栋阁下的房屋数量
     * 
     * 用于详情页面
     * @param int $seat_id 栋阁id
     */
    public function getRoomCount($seat_id) {
        
    }

    /**
     * 获取已经存在的单元名称列表
     * 
     * @param int $seat_id 栋阁id
     */
    public function getExistsUnitNameList($seat_id) {
        
    }

}

/**
 * 单元
 */
class UnitLogic extends BaseLogic {

    /**
     * 统计单元下的房屋数量
     * 
     * 用于详情页面
     * @param int $unit_id 单元id
     */
    public function getRoomCount($unit_id) {
        
    }

}

/**
 * 房屋
 */
class RoomLogic extends BaseLogic {

    /**
     * 设置业主查看次数（每次+1）
     * @param int $room_id 查看的房屋id
     * @param int $user_id 查看者id
     */
    public function addOneViewTimes($room_id, $user_id) {
        
    }

    /**
     * 获取业主查看记录的列表
     * @param array $args 搜索条件
     * @param array $page 分页
     * @param array $search 搜索条件显示
     */
    public function getViewTimesList($args, &$page, &$search) {
        
    }

}

/**
 * 学区房
 */
class SchoolLogic {

    /**
     * 获取单条学区房及相关的所有信息
     * @param int $id 需要查出数据行id
     */
    public function get($id) {
        
    }

    /**
     * 学区房新增
     * @param array $args 表单提交的学区房数据
     * @return string   学区房id
     */
    public function add($args) {
        
    }

    /**
     * 学区房编辑
     * @param int $id 需要编辑的数据行id
     * @param type $args 需要编辑的学区房数据
     */
    public function edit($id, $args) {
        
    }

    /**
     * 获取学区房信息的列表页
     * @param array $args 搜索条件
     * @param array $page 分页
     * @param array $search 搜索条件显示
     */
    public function getList($args, &$page, &$search) {
        
    }

}

/**
 * 精耕业务逻辑
 */
class FollowLogic {

    /**
     * 获取单条精耕记录及相关的所有信息
     * @param int $id 需要查出数据行id
     */
    public function get($id) {
        
    }

    /**
     * 新增精耕
     * @param array $args 表单提交的精耕信息
     * @return string   跟进id
     */
    public function add($args) {
        
    }

    /**
     * 编辑精耕
     * @param int $id 需要编辑的数据行id
     * @param array $args 需要编辑的精耕数据
     */
    public function edit($id, $args) {
        
    }

    /**
     * 开启新增审核
     * @param array $args 审核数据
     */
    public function startAddFlow($args) {
        
    }

    /**
     * 开启编辑审核
     * @param array $args 审核数据
     */
    public function startEditFlow($id, $args) {
        
    }

    /**
     * 获取精耕信息的列表页
     * @param array $args 搜索条件
     * @param array $page 分页
     * @param array $search 搜索条件显示
     */
    public function getList($args, &$page, &$search) {
        
    }

}

/**
 * 图片上传的业务逻辑
 */
class PictureLogic {

    /**
     * 获取单张图片及相关的所有信息
     * @param int $id 需要查出数据行id
     */
    public function get($id) {
        
    }

    /**
     * 新增图片
     * @param array $args 表单提交的图片信息
     * @return string   图片id
     */
    public function add($args) {
        
    }

    /**
     * 批量新增图片
     * @param array $args 表单提交的图片信息
     */
    public function bulkAdd($args) {
        
    }

    /**
     * 编辑图片
     * @param int $id 需要编辑的数据行id
     * @param array $args 需要编辑的图片数据
     */
    public function edit($id, $args) {
        
    }

    /**
     * 开启新增审核
     * @param array $args 审核数据
     */
    public function startAddFlow($args) {
        
    }

    /**
     * 开启编辑审核
     * @param array $args 审核数据
     */
    public function startEditFlow($id, $args) {
        
    }

    /**
     * 获取图片信息
     * @param array $args 搜索条件
     * @param array $page 分页
     * @param array $search 搜索条件显示
     */
    public function getList($args, &$page, &$search) {
        
    }

}

/**
 * 批量上传逻辑
 */
class ImportLogic {

    /**
     * 处理上传文件
     * @param array $args 上传文件的信息
     */
    public function upload($args) {
        
    }

    /**
     * 获取上传记录
     * @param array $args 搜索条件
     * @param array $page 分页
     * @param array $search 搜索条件显示
     */
    public function getList($args, &$page, &$search) {
        
    }

    /**
     * 获取文件处理记录
     * @param array $args 搜索条件
     * @param array $page 分页
     * @param array $search 搜索条件显示
     */
    public function getDetailList($args, &$page, &$search) {
        
    }

}

/**
 * 户型
 */
class RoomTypeLogic {
    /**
     * 根据室,厅,厨,卫,阳获取户型
     * 
     * @param array $args 室,厅,厨,卫,阳信息 
     * array(
     *     'type_room' => x,
     *     'type_hall' => x,
     *     'type_kitchen' => x,
     *     'type_bathroom' => x,
     *     'type_balcony' => x,)
     * @return bool|array 户型信息 如果查找不到，返回false
     */
    public function getByParams($args) {

    }

    /**
     * 根据室,厅,厨,卫,阳获取户型，如果查找不到，则自动创建，并返回创建后的信息
     * 
     * @param array $args 室,厅,厨,卫,阳信息 
     * array(
     *     'type_room' => x,
     *     'type_hall' => x,
     *     'type_kitchen' => x,
     *     'type_bathroom' => x,
     *     'type_balcony' => x,)
     * @return array 户型信息 确保一定会查到
     */
    public function getOrCreate($args) {

    }

    /**
     * 根据主键获取户型信息
     * 
     * @param int|string $id 户型id
     * @return bool|array 户型信息 如果查找不到，返回false
     */
    public function get($id) {

    }

    /**
     * 添加户型
     * 
     * @param array $args 户型信息
     * @return string 户型id
     */
    public function add($args) {

    }
}