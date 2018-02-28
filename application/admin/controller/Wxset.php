<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
use think\Request;
class Wxset extends Allow{

	//后台首页
    public function index(){
        if(Request::instance()->isPost()){
            $data=Request::instance()->param();
            if(db::name('wxset')->update($data)){
                $this->success('修改成功','wxset/index');
            }
        }else{
            $data=db::name("wxset")->find("1");

            $this->assign('data',$data);
            return view('index');
        }
    }
}
