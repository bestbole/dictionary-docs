<?php

abstract class BaseLogic {

    /**
     *
     * @param type $id
     */
    public function get($id) {

    }
    public function add($args) {

    }
    public function edit($id, $args) {

    }
    public function delete($id) {

    }
    public function canDelete($id) {

    }
    public function startAddFlow($args) {

    }
    public function startEditFlow($id, $args) {

    }
    public function startDeleteFlow($id) {

    }
    abstract public function getList($args, &$page, &$search);
    public function nameExists($name, $parent_id, $self_id = null) {

    }
}

class HouseLogic extends BaseLogic {
    public function getNameListLike($key_words) {

    }
    public function getSeatCount($house_id) {
        
    }
    public function getUnitCount($house_id) {
        
    }
    public function getRoomCount($house_id) {

    }
    public function setInvalid($house_id) {

    }
    public function getExistsSeatNameList($house_id) {

    }
}

class SeatLogic extends BaseLogic {
    public function getUnitCount($seat_id) {

    }
    public function getRoomCount($seat_id) {

    }
    public function getExistsUnitNameList($seat_id) {

    }

}

class UnitLogic extends BaseLogic {
    public function getRoomCount($unit_id) {

    }
}

class RoomLogic extends BaseLogic {
    public function addOneViewTimes($room_id, $user_id) {

    }
    public function getViewTimesList($args, &$page, &$search) {

    }
}

class SchoolLogic {
    public function get($id) {

    }
    public function add($args) {

    }
    public function edit($id, $args) {

    }
    public function startAddFlow($args) {

    }
    public function startEditFlow($id, $args) {

    }
    public function getList($args, &$page, &$search) {

    }
}

class FollowLogic {
    public function get($id) {

    }
    public function add($args) {

    }
    public function edit($id, $args) {

    }
    public function startAddFlow($args) {

    }
    public function startEditFlow($id, $args) {

    }
    public function getList($args, &$page, &$search) {

    }
}

class PictureLogic {
    public function get($id) {

    }
    public function add($args) {

    }
    public function bulkAdd($args) {

    }
    public function edit($id, $args) {

    }
    public function startAddFlow($args) {

    }
    public function startEditFlow($id, $args) {

    }
    public function getList($args, &$page, &$search) {

    }
}

class ImportLogic {
    public function upload($args) {

    }
    public function getList($args, &$page, &$search) {

    }
    public function getDetailList($args, &$page, &$search) {

    }
}