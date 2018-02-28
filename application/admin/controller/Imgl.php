<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
use think\Request;
class Imgl extends Allow{

	//列表
    public function index(){

        $data=db::name('imgl')->order('id desc')->paginate(10);
        $this->assign('data',$data);
        $imgc=db::name('imgc')->select();
        $this->assign('imgc',$imgc);
        return view('index');
    }

    //添加
    public function add(){
        if(Request::instance()->isPost()){
            $data=Request::instance()->param();
            $data['time']=time();
            if($file1=request()->file('photo1')){
               $info1 = $file1->move(ROOT_PATH . 'public' . DS . 'static/uploads'); 
                if($info1){
                    $data['img']="uploads/".$info1->getSaveName();
                }
            }
            if(db::name('imgl')->insert($data)){
                return alert_success('添加成功',url("imgl/index"));
            }
        }else{
            $data=db::name('imgc')->select();
            $this->assign('data',$data);
            return view('add');
        }
        
    }

    //编辑
    public function edit(){
        if(Request::instance()->isPost()){
            $data=Request::instance()->param();
            $data['time']=time();
            if($file1=request()->file('photo1')){
               $info1 = $file1->move(ROOT_PATH . 'public' . DS . 'static/uploads'); 
                if($info1){
                    $data['img']="uploads/".$info1->getSaveName();
                }
            }
            if(db::name('imgl')->update($data)){
                return alert_success('修改成功',url("imgl/index"));
            }
        }else{
            $id=Request::instance()->param('id');
            $data=db::name('imgl')->find($id);
            $datac=db::name('imgc')->select();
            return $this->fetch('edit',['data'=>$data,'datac'=>$datac]);
        }
        
    }


    //删除
    public function ajax_del(){
        $id=Request::instance()->param('id');
        echo db::name('imgl')->delete($id);
    }
}
