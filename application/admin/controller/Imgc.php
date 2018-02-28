<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
use think\Request;
class Imgc extends Allow{

	//分类列表
    public function index(){
        $data=db::name('imgc')->order('id desc')->paginate(10);
        $this->assign('data',$data);
        return view('index');
    }
    //添加分类
    public function add(){
        if(Request::instance()->isPost()){
            $data=Request::instance()->param();
            $data['time']=time();
            if(db::name('imgc')->insert($data)){
                // $this->success('添加成功',url('imgc/index'));
                return alert_success('添加成功',url('imgc/index'));
            }
        }else{
            return view('add');
        }
        
    }

    //编辑分类
    public function edit(){
        if(Request::instance()->isPost()){
            $data=Request::instance()->param();
            if(db::name('imgc')->update($data)){
                // $this->success('修改成功',url('imgc/index'));
                return alert_success('修改成功',url('imgc/index'));
            }
        }else{
            $id=Request::instance()->param('id');
            $data=db::name('imgc')->find($id);
            $this->assign('data',$data);
            return view('edit');
        }
        
    }


    //删除轮播图
    public function ajax_del(){
        $id=Request::instance()->param('id');
        echo db::name('imgc')->delete($id);
    }
}
