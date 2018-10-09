<div class="content-wrapper">

	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Dashboard
			<small></small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Dashboard </a></li>
		</ol>
	</section>

	<!-- Main content -->
	<section class="content container-fluid">

<div class="col-lg-12">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3>Home  Department-Employee</h3>
		</div>
		<div class="panel-body">
			<table class="table table-condensed"
				style="border-collapse: collapse;">

				<thead>
					<tr>
						<th>&nbsp;</th>
						<th>Dept. Name</th>
						<th>Description</th>
						<th>Contact Email</th>
						<th>Contact number</th>
						<th>Status</th>
					</tr>
				</thead>

				<tbody>
				<c:forEach items="${deptList}" var="dept">
					<tr data-toggle="collapse" data-target="#dept_${dept.id}"
						class="accordion-toggle">
						<td><button class="btn btn-default btn-xs">
								<span class="glyphicon glyphicon-eye-open"></span>
							</button></td>
						<td>${dept.name}</td>
						<td>${dept.desc}</td>
						<td>${dept.email}</td>
						<td>${dept.contact}</td>
						<td>${dept.status}</td>
					</tr>
					<tr>
						<td colspan="12" class="hiddenRow"><div
								class="accordian-body collapse" id="dept_${dept.id}">
								<table class="table table-striped">
									<thead>
										<tr>
											<th>First Name</th>
											<th>Last Name</th>
											<th>Email </th>
											<th>Telephone</th>
											<th>Address</th>
											<th>Status</th>
										</tr>
									</thead>
									<tbody>
									<c:if test="${empty dept.employeeList}">
											<tr>
												<td>There is no employee</td>
											</tr>
									</c:if>
									<c:if test="${!empty dept.employeeList}">
										<c:forEach items="${dept.employeeList}" var="emp">
											<tr>
												<td>${emp.firstName }</td>
												<td>${emp.lastName }</td>
												<td>${emp.lastName }</td>
												<td>${emp.lastName }</td>
												<td>${emp.lastName }</td>
												<td>${emp.age }</td>
											</tr>
										</c:forEach>
									</c:if>
									</tbody>
								</table>
							</div></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>

	</div>

</div>
	</section>
</div>