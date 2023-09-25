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
use App\Models\Course;

class CourseController extends AdminController
{

    protected function grid()
    {
        //db fields
        $grid = new Grid(new Course());

        $grid->column('id', __('Id'));
        $grid->column('user_token', __('Teacher'))->display(function($token){
            //for further process data ,you can
            return User::where('token', '=', $token)->value('name');

        });
        $grid->column('name', __('Name'));
        $grid->column('thumbnail', __('Thumbnail'));
        $grid->column('video', __('Video'));
        $grid->column('description', __('Description'));
        $grid->column('type_id', __('Type id'));
        $grid->column('price', __('Price'));
        $grid->column('lesson_num', __('Lesson num'));
        $grid->column('video_length', __('Video length'));
        $grid->column('follow', __('Follow'));
        $grid->column('score', __('Score'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Course::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_token', __('User token'));
        $show->field('name', __('Name'));
        $show->field('thumbnail', __('Thumbnail'));
        $show->field('video', __('Video'));
        $show->field('description', __('Description'));
        $show->field('type_id', __('Type id'));
        $show->field('price', __('Price'));
        $show->field('lesson_num', __('Lesson num'));
        $show->field('video_length', __('Video length'));
        $show->field('follow', __('Follow'));
        $show->field('score', __('Score'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    protected function form()
    {
        $form = new Form(new Course());
        $form->text('name',__('Name'));
        $result=CourseType::pluck('title','id');
        // dd($result);
        $form->select('type_id',__('Category'))->options($result);
        $form->image('thumbnail',__('Thumbnail'))->uniqueName();
        $form->file('video',__('Video'))->uniqueName();
        $form->text('description',__('Description'));
        $form->decimal('price',__('Price'));
        $form->number('lesson_num',__('Lesson Num'));
        $form->number('video_length',__('Video Length'));
        $result=User::pluck('name','token');
        $form->select('user_token',__('Teacher'))->options($result);
        $form->display('created_at',__('Created at'));
        $form->display('updated_at',__('Updated at'));
        // $form->select('parent_id',__('Parent Category'))->options((new CourseType())::selectOptions());
        // $form->text('title',__('Title'));
        // $form->textarea('description',__('Description'));
        // $form->number('Order',__('Order'));
        // $form->textarea('name', __('Name'));
        // $form->textarea('email', __('Email'));
        // // $form->textarea('password', __('Password'));

        return $form;
    }
}
