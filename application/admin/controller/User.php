<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
use think\Request;
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

}
