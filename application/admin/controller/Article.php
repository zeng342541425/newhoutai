<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
use think\Request;
class Article extends Allow{

	//分类列表
    public function index(){
        $data=db::name('article')->order('id desc')->paginate(10);
        $this->assign('data',$data);
        return view('index');
    }
    //添加分类
    public function add(){
        if(Request::instance()->isPost()){
            $data=Request::instance()->param();
            $id=Request::instance()->param('parent_id');
            $data['time']=time();
            if($file1=request()->file('photo1')){
               $info1 = $file1->move(ROOT_PATH . 'public' . DS . 'static/uploads'); 
                if($info1){
                    $data['img']="uploads/".$info1->getSaveName();
                }
            }
            if(db::name('article')->insert($data)){
                $this->success('添加成功',url('article/index'));
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
            if(db::name('article')->update($data)){
                $this->success('修改成功',url('article/index'));
            }
        }else{
            $id=Request::instance()->param('id');
            $rowdata=db::name('article')->find($id);
            $this->assign('rowdata',$rowdata);
            $data=db::name('category')->order('list_order asc')->select();
            $tree=tree($data);
            $this->assign('data',$tree);
            return view('edit');
        }
        
    }


    //删除轮播图
    public function ajax_del(){
        $id=Request::instance()->param('id');
        echo db::name('article')->delete($id);
    }
}
