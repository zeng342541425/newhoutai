<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 流年 <liu21st@gmail.com>
// +----------------------------------------------------------------------

// 应用公共文件
use think\Db;
use think\Request;
//生成随机数
function randomkeys($length){  
	$pattern='1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLOMNOPQRSTUVWXYZ';
	$key='';  
    for($i=0;$i<$length;$i++){    
        $key.=$pattern{mt_rand(0,35)};//生成php随机数  
    }  
    return $key;  
};

//分类排序
function tree ($array,$pid=0){
	$arr = array();
    
	foreach($array as $v){
    	if($v['parent_id']==$pid){
        	$arr[] = $v;
        	$arr = array_merge($arr,tree($array,$v['id']));
    	}
	}
	return $arr;
}

/**
 * 通过文章id得到分类名
 */
function getcategory($id){
    $data=db::name('category')->field('name')->where("id='$id'")->find()['name'];
    return $data;
}

/**
 * 通过图片id得到分类名
 */
function getimgc($id){
    $data=db::name('imgc')->field('name')->where("id='$id'")->find()['name'];
    return $data;
}

/**
 * 通过客户id得到客户信息
 * 
 */
function getclient($id,$field=""){
    $data=db::name("admin")->field($field)->find($id);
    return $data;
}

/**
 * $msg 待提示的消息
 * $url 待跳转的链接
 * $icon 这里主要有两个，5和6，代表两种表情（哭和笑）
 * $time 弹出维持时间（单位秒）
 */
function alert_success($msg='',$url='',$time=2){
    $instances = Request::instance();
    $roots=$instances->root();
    $paths=substr($roots,0,strripos($roots,'/'));
    $str='<script type="text/javascript" src="'.$paths.'/static/layer/jquery.min.js"></script> <script type="text/javascript" src="'.$paths.'/static/layer/layer.js"></script>';//加载jquery和layer
    $str.='<script>
        layer.msg("'.$msg.'",{icon:"6",time:'.($time*1000).'});
            setTimeout(function(){
                self.location="'.$url.'";
            },2000)
    </script>';//主要方法
    return $str;
}


/**
 * $msg 待提示的消息
 * $icon 这里主要有两个，5和6，代表两种表情（哭和笑）
 * $time 弹出维持时间（单位秒）
 */
function alert_error($msg='',$time=3){ 
    $instances = Request::instance();
    $roots=$instances->root();
    $paths=substr($roots,0,strripos($roots,'/'));
    $str='<script type="text/javascript" src="'.$paths.'/static/layer/jquery.min.js"></script> <script type="text/javascript" src="'.$paths.'/static/layer/layer.js"></script>';//加载jquery和layer
    $str.='<script>
        $(function(){
            layer.msg("'.$msg.'",{icon:"5",time:'.($time*1000).'});
            setTimeout(function(){
                window.history.go(-1);
            },2000)
        });
    </script>';//主要方法
    return $str;
}

//百度地图通过地址获取经纬度
function addresstolatlag($address){
    $data=db::name('wxset')->where("id='1'")->find();
    $url='http://api.map.baidu.com/geocoder/v2/?address='.$address.'&output=json&ak='.$data['baiduak']; 
        if($result=file_get_contents($url)){  
            $res= explode(',"lat":', substr($result, 40,36));  
            return   $res;  
        }  
}

//二级分类导航模版
function twonav($parent_id){
    $data=db::name("category")->field("id,parent_id,name")->where("parent_id='$parent_id'")->select();
    $str='';
    foreach($data as $key=>$val){
        $str.='
            <li><a data-href="__URL__/article?id='.$val['id'].'" data-title="'.$val['name'].'" href="javascript:void(0)">'.$val['name'].'</a></li>
        ';
    }
    return $str;
}