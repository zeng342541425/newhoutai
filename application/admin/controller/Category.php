<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
use think\Request;
class Category extends Allow{

	//分类列表
    public function index(){
        $data=db::name('category')->order('list_order asc')->select();
        $tree=tree($data);
        // dump($tree);
        $this->assign('data',$tree);
        return view('index');
    }
    //添加分类
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
            if(db::name('category')->insert($data)){
                // $this->success('添加成功',url('category/index'));
                return alert_success('添加成功',url('category/index'));
            }
        }else{
            $data=db::name('category')->order('list_order asc')->select();
            $tree=tree($data);
            $this->assign('data',$tree);
            return view('add');
        }
        
    }

    //编辑分类
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
            if(db::name('category')->update($data)){
                // $this->success('修改成功',url('category/index'));
                return alert_success("修改成功",url("category/index"));
            }
        }else{
            $id=Request::instance()->param('id');
            $rowData=db::name('category')->find($id);
            $this->assign('rowdata',$rowData);
            $data=db::name('category')->order('list_order asc')->select();
            $tree=tree($data);
            $this->assign('data',$tree);
            return view('edit');
        }
        
    }


    //删除轮播图
    public function ajax_del(){
        $id=Request::instance()->param('id');
        $data=db::name('category')->where("parent_id='$id'")->select();
        if($data){
            echo "请先删除子分类";
        }else{
            echo db::name('category')->delete($id);
        }
    }
}
