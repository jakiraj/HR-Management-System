
<body <c:if test="${cookie.sidebar_minimum.value == 'true'}">class="hold-transition <c:out value="${cookie.skin.value}" default="skin-blue"/> sidebar-mini sidebar-collapse"</c:if>
	  <c:if test="${cookie.sidebar_minimum.value != 'true'}">class="hold-transition <c:out value="${cookie.skin.value}" default="skin-blue"/> sidebar-mini"</c:if>
>
<div class="wrapper">

	<!-- Main Header -->
	<header class="main-header">

		<!-- Logo -->
		<a href="/home" class="logo">
			<!-- mini logo for sidebar mini 50x50 pixels -->
			<span class="logo-mini"><b>JAKIR</b></span>
			<!-- logo for regular state and mobile devices -->
			<span class="logo-lg"><b>JAKIR</b> HR</span>
		</a>

		<!-- Header Navbar -->
		<nav class="navbar navbar-static-top" role="navigation">
			<!-- Sidebar toggle button-->
			<a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
				<span class="sr-only">Toggle navigation</span>
			</a>
			<!-- Navbar Right Menu -->
			<div class="navbar-custom-menu">
				<ul class="nav navbar-nav">
					<!-- User Account Menu -->
					<li class="dropdown user user-menu">
						<!-- Menu Toggle Button -->
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<!-- The user image in the navbar-->
							<img src="${pageContext.request.contextPath}/resources/dist/img/avatar.png" class="user-image" alt="User Image">
							<!-- hidden-xs hides the username on small devices so only the image appears. -->
							<span class="hidden-xs"><sec:authentication property="principal.username"/></span>
						</a>
						<ul class="dropdown-menu">
							<!-- The user image in the menu -->
							<li class="user-header">
								<img src="${pageContext.request.contextPath}/resources/dist/img/avatar.png" class="img-circle" alt="User Image">

								<p>
									<sec:authentication property="principal.username"/>
								</p>

							</li>
							<!-- Menu Body -->
							<!-- Menu Footer-->
							<li class="user-footer">
								<div class="pull-left">
									<a href="/myprofile" class="btn btn-default btn-flat">Profile</a>
								</div>
								<div class="pull-right">
									<a href="/logout" class="btn btn-default btn-flat">Sign out</a>
								</div>
							</li>
						</ul>
					</li>
					<!-- Control Sidebar Toggle Button -->
					<li>
						<a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
					</li>
				</ul>
			</div>
		</nav>
	</header>
	<!-- Left side column. contains the logo and sidebar -->
	<aside class="main-sidebar">

		<!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar">

			<!-- Sidebar user panel (optional) -->
			<!-- <div class="user-panel">
              <div class="pull-left image">
                <img src="dist/img/photo4.jpg" class="img-circle" alt="User Image">
              </div>
              <div class="pull-left info">
                <p>Alexander Pierce</p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
              </div>
            </div> -->

			<!-- search form (Optional) -->
			<!-- <form action="#" method="get" class="sidebar-form">
              <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search...">
                <span class="input-group-btn">
                    <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                    </button>
                  </span>
              </div>
            </form> -->
			<!-- /.search form -->

			<!-- Sidebar Menu -->
			<ul class="sidebar-menu" data-widget="tree">
				<li class="header">Build 0.0.1</li>
				<!-- Optionally, you can add icons to the links -->
				<li <c:if test="${active_tab eq 'home'}">class="active"</c:if>><a href="/main"><i class="fa fa-home"></i> <span>Home</span></a></li>

				<li class="treeview <c:if test="${active_tab eq 'new_emp' || active_tab eq 'manage_emp'}">active menu-open</c:if>">
					<a href="#"><i class="fa fa-group"></i> <span>Employee Management</span>
						<span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
					</a>
					<ul class="treeview-menu" <c:if test="${active_tab eq 'new_emp' || active_tab eq 'manage_emp'}">style="display: block;"</c:if>>
						<li <c:if test="${active_tab eq 'new_emp'}">class="active"</c:if>><a href="/createEmp"><i class="fa fa-circle-o text-blue"></i>Create Employee</a></li>
						<li <c:if test="${active_tab eq 'manage_emp'}">class="active"</c:if>><a href="/manageEmp"><i class="fa fa-circle-o text-blue"></i>Manage Employee</a></li>
					</ul>
				</li>

				<li class="treeview <c:if test="${active_tab eq 'new_dept' || active_tab eq 'manage_dept'}">active menu-open</c:if>">
					<a href="#"><i class="fa fa-wrench"></i> <span>Department Management</span>
						<span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
					</a>
					<ul class="treeview-menu " <c:if test="${active_tab eq 'new_dept' || active_tab eq 'manage_dept'}">style="display: block;"</c:if>>
						<li <c:if test="${active_tab eq 'new_dept'}">class="active"</c:if>><a href="/newDept"><i class="fa fa-circle-o text-blue"></i>Create New Department</a></li>
						<li <c:if test="${active_tab eq 'manage_dept'}">class="active"</c:if>><a href="/manageDept"><i class="fa fa-circle-o text-blue"></i>View/Edit All Departments</a></li>
					</ul>
				</li>

				<li><a href="#"><i class="fa fa-file-text"></i> <span>Document Management</span></a></li>

				<li class="treeview <c:if test="${active_tab eq 'my_ts' || active_tab eq 'completed_ts'}">active menu-open</c:if>">
					<a href="#"><i class="fa fa-clock-o"></i> <span>Timesheet Management</span>
						<span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
					</a>
					<ul class="treeview-menu" <c:if test="${active_tab eq 'my_ts' || active_tab eq 'completed_ts'|| active_tab eq 'approve_ts'}">style="display: block;"</c:if>>
						<li <c:if test="${active_tab eq 'my_ts'}">class="active"</c:if>><a href="#"><i class="fa fa-circle-o text-blue"></i>My Timesheet</a></li>
						<li <c:if test="${active_tab eq 'completed_ts'}">class="active"</c:if>><a href="#"><i class="fa fa-circle-o text-blue"></i>Completed Timesheet</a></li>
						<li <c:if test="${active_tab eq 'approve_ts'}">class="active"</c:if>><a href="#"><i class="fa fa-circle-o text-blue"></i>Approve Timesheet</a></li>
					</ul>
				</li>



			</ul>
			<!-- /.sidebar-menu -->
		</section>
		<!-- /.sidebar -->
	</aside>
