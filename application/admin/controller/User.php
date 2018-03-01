<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
use think\Request;
use think\Session;
class User extends Allow{


    //公司信息
    public function company(){
        if(Request::instance()->isPost()){
            $data=Request::instance()->param();

            if($file1=request()->file('photo1')){
               $info1 = $file1->move(ROOT_PATH . 'public' . DS . 'static/uploads'); 
                if($info1){
                    $data['wxkey']="uploads/".$info1->getSaveName();
                }
            }
            $location=addresstolatlag($data['mch_id']);
            if(count($location)>=2){
                $data['notify_url']=$location['0'];
                $data['baiduak']=$location['1'];
            }
            if(db::name('wxset')->update($data)){
                return alert_success('修改成功','company');
            }
            
        }else{
            $data=db::name('wxset')->where("id='2'")->find();
            return $this->fetch('company',['data'=>$data]);
        }
    }

    //修改登录密码
    public function editpass(){
        if(Request::instance()->isPost()){
            $data=Request::instance()->param();

            $data['password']=md5($data['password']);
            $data['time']=time();
            if(db::name('admin')->update($data)){
                return alert_success('修改成功',url('user/editpass'));
            }
        }else{
            $name=Session::get('adminname');
            $id=Session::get('adminid');
            // $data=db::name()->find();
            return $this->fetch('editpass',['name'=>$name,'id'=>$id]);
        }
    }

}
