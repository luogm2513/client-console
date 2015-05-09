<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
	<link rel="shortcut icon" href="/img/favicon.ico">
    <title>client-console</title>

    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/css/dashboard.css" rel="stylesheet">
    
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Parox App Client</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Dashboard</a></li>
            <li><a href="#">Settings</a></li>
            <li><a href="#">Profile</a></li>
            <li><a href="#">Help</a></li>
          </ul>
			
          <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search...">
          </form>
          
          <button type="button" class="btn btn-success navbar-right" data-toggle="modal" data-target="#createBookBtn" data-whatever="@mdo">new Company</button>

        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li class="active"><a href="#">Overview <span class="sr-only">(current)</span></a></li>
            <li><a href="#">Reports</a></li>
            <li><a href="#">Analytics</a></li>
            <li><a href="#">Export</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href="">Nav item</a></li>
            <li><a href="">Nav item again</a></li>
            <li><a href="">One more nav</a></li>
            <li><a href="">Another nav item</a></li>
            <li><a href="">More navigation</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href="">Nav item again</a></li>
            <li><a href="">One more nav</a></li>
          </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">A</h1>

		<!-- 书籍百分比 -->
          <div class="row placeholders">
            <div class="widget-content">
				<div class="row">
					<div class="col-md-3">
						<div class="easy-pie-chart green" data-percent="70">
							<span class="percent">60</span>
						</div>
						<p class="text-center">gospel</p>
					</div>
					<div class="col-md-3">
						<div class="easy-pie-chart red" data-percent="22">
							<span class="percent">12</span>
						</div>
						<p class="text-center">train</p>
					</div>
					<div class="col-md-3">
						<div class="easy-pie-chart yellow" data-percent="65">
							<span class="percent">18</span>
						</div>
						<p class="text-center">biography</p>
					</div>
					<div class="col-md-3">
						<div class="easy-pie-chart red" data-percent="87">
							<span class="percent">10</span>
						</div>
						<p class="text-center">bible study</p>
					</div>
				</div>
			</div>
          </div>

          <h2 class="sub-header">B</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>name</th>
                  <th>author</th>
                  <th>description</th>
                  <th>type</th>
                  <th>remain</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1,001</td>
                  <td>Lorem</td>
                  <td>ipsum</td>
                  <td>dolor</td>
                  <td>sit</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>


	<!-- new book btn -->
	<div class="modal fade" id="createBookBtn" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="exampleModalLabel">New Company</h4>
				</div>
				<form name="companyEditForm" class="company-edit" ng-submit="onSubmit($event)">
				    <div class="form-group">
				        <h4>团队名称</h4>
				    </div>
				    <div class="form-group">
				        <input class="form-control px-input-base" ng-model="company.name" placeholder="请输入团队名称" ng-minlength="2" px-focus="" px-select="" required="">
				    </div>
				
				    <div class="form-group">
				        <h4>团队介绍</h4>
				    </div>
				    <div class="form-group">
				        <textarea class="form-control" ng-model="company.description" placeholder="请团队介绍" ng-minlength="2"></textarea>
				    </div>
				
				    <div class="form-group">
				        <button class="px-btn px-btn-primary" type="submit" ng-disabled="companyEditForm.$invalid||submitBtn.isDisabled"><i class="icon-refresh icon-spin" ng-if="submitBtn.showLoading"></i>创建</button>
				        <button class="px-btn" type="button" ng-click="closeWindow($event)">取消</button>
				    </div>
				</form>
			</div>
		</div>
	</div>


	<script src="/jquery/jquery.min.js"></script>
    <script src="/js/bootstrap.js"></script>
  </body>
</html>
