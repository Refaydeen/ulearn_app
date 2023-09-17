<?php

namespace App\Admin\Controllers;

use App\Models\User;
use App\Models\CourseType;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Encore\Admin\Layout\Content;
use Encore\Admin\Tree;

class CourseTypeController extends AdminController
{
    public function index(Content $content){
        $tree=new Tree(new CourseType);//take every info from coursetype show in a tree manner
        return $content->header('Course Types')->body($tree);
    }
    //
    protected function detail($id)//lookes for row in db,if it means then use them 
    {
        $show = new Show(CourseType::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', __('Category'));
        $show->field('description', __('Description'));
        $show->field('order',__("Order"));
        $show->field('created_at', __('Created at'));
        $show->column('updated_at', __('Updated at'));

        return $show;
    }
    protected function form()
    {
        $form = new Form(new CourseType());
        $form->select('parent_id',__('Parent Category'))->options((new CourseType())::selectOptions());
        $form->text('title',__('Title'));
        $form->textarea('description',__('Description'));
        $form->number('Order',__('Order'));
        // $form->textarea('name', __('Name'));
        // $form->textarea('email', __('Email'));
        // // $form->textarea('password', __('Password'));

        return $form;
    }
}
