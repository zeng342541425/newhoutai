<?php
/**
 * 登录控制器
 */
namespace app\admin\controller;
use think\Controller;
use think\Db;
use think\Request;
use think\Session;
class Login extends Controller{
    public function login(){
        return view("login");
    }

    

    public function check(){
    	$name=Request::instance()->param("name");
    	$pass=md5(Request::instance()->param("pass"));
    	$data=Db::name('admin')->where("name","=","$name")->where("password","=","$pass")->find();
    	if($data){
    		Session::set('adminlogin','1');
            Session::set('adminname',$data['name']);
            Session::set('adminid',$data['id']);
    		return alert_success('登录成功',url("index/index"));
    	}else{
    		return alert_error('用户名或密码错误',url("login/login"));
    	}
    }

    public function logout(){
        Session::clear();
        // $this->success('退出成功',url('login/login'));
        header("Location: ".url('login/login').""); 
    }
}
