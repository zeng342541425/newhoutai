<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
use think\Request;
class Index extends Allow{

    public function welcome(){
        return $this->fetch('welcome');
    }

	//后台首页
    public function index(){
        $data=db::name("category")->where("parent_id=0")->select();
        
        return $this->fetch('index',['data'=>$data]);
    }
    
    //用户列表
    public function user(){
        $data=db::name("user")->order("id","desc")->paginate(8);
        return $this->fetch('user',['data'=>$data]);
    }

    //删除用户
    public function ajax_del(){
        $id=Request::instance()->param('id');
        echo db::name('user')->delete($id);
    }

    //文章列表
    public function article(){
        $id=Request::instance()->param('id');
        $data=db::name('article')->where("parent_id='$id'")->order('id desc')->paginate(5,false,['query'=>Request::instance()->param()]);
        return $this->fetch('article',['data'=>$data,'parent_id'=>$id]);
    }

    //添加文章
    public function article_add(){
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
                return alert_success('添加成功',url("index/article?id={$id}"));
            }
        }else{
            $parent_id=Request::instance()->param('parent_id');
            return $this->fetch('article_add',['parent_id'=>$parent_id]);
        }
        
    }

    //编辑文章
    public function article_edit(){
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
                // $this->success('修改成功',url('article/index'));
                return alert_success('修改成功',url("index/article?id={$data['parent_id']}"));
            }
        }else{
            $id=Request::instance()->param('id');
            $rowdata=db::name('article')->find($id);

            return $this->fetch('article_edit',['rowdata'=>$rowdata]);
        }
        
    }
    //删除文章
    public function ajax_del_article(){
        $id=Request::instance()->param('id');
        echo db::name('article')->delete($id);
    }
}
