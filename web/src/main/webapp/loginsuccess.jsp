<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>登入成功界面</title>
  <style type="text/css">
    .center{
      text-align:center;
      margin-top: 50px;
    }
    .fon{
      font-size: 40px;
    }
    body{
      background: url("https://static-data.gaokao.cn/upload/school/201906/1559826553_5288_thumb.jpg");
      background-size: 100% 100%;
    }
    input {
      background-color: transparent;
      outline: none;
      color: black;
    }
    .x1{
      border: 5px solid red;
      color: red;
    }
  </style>
</head>
<body>
<div class="center">
  <p class="fon">登入成功界面</p>
  <p class="fon1">恭喜您成功登入，欢迎使用</p>
</div>
<div class="container">
  <h1 style="text-align: center">新闻管理系统</h1>
  <div class="center">

    <!--<form action="update" method="post" class="update">
      <h2>Update</h2>
      id <br><input type="text" name="id"><br>
      title <br><input type="text" name="title"><br>
      content: <br>
      <textarea cols="50" rows="10" name="content"></textarea>
      <button type="submit">提交更新</button>
    </form>
    <br>-->

    <form action="add" method="post" class="add">
      <h2>添加新闻</h2>
      新闻标题 <br><input type="text" name="title" class="x1"><br>
      内容: <br>
      <textarea cols="50" rows="10" name="content"></textarea>
      <button type="submit">提交添加</button>
    </form>
    <br>

    <!--<form action="delete" method="post" class="delete">
      <h2>delete</h2>
      id <br><input type="text" name="id">
      <button type="submit">提交删除</button>
    </form>-->
  </div>
</div>
</body>
<script>
  $(function () {
    $('button').prop('disabled',true)
    $('.update').each(function() {
      let $form = $(this);
      $form.find('input[type="text"], textarea').on('input', function() {
        let id = $form.find('input[name="id"]').val().trim()
        let title = $form.find('input[name="title"]').val().trim()
        let content = $form.find('textarea[name="content"]').val().trim()

        // 如果 id、title 和 content 都不为空，则启用当前表单的按钮，否则禁用
        if (id !== '' && title !== '' && content !== '') {
          $form.find('button[type="submit"]').prop('disabled', false)
        } else {
          $form.find('button[type="submit"]').prop('disabled', true)
        }
      })
    })
    $('.add').each(function (){
      let $form=$(this)
      $form.find('input[type="text"], textarea').on('input', function() {
        let title = $form.find('input[name="title"]').val().trim()
        let content = $form.find('textarea[name="content"]').val().trim()

        if (title !== '' && content !== '') {
          $form.find('button[type="submit"]').prop('disabled', false)
        } else {
          $form.find('button[type="submit"]').prop('disabled', true)
        }
      })
    })
    $('.delete').each(function () {
      let $form=$(this)
      $form.find('input[type="text"]').on('input',function () {
        let id = $form.find('input[name="id"]').val().trim()
        if(id!==''){
          $form.find('button[type="submit"]').prop('disabled', false)
        } else {
          $form.find('button[type="submit"]').prop('disabled', true)
        }
      })
    })

  })
</script>
</html>

