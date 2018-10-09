<%@include file="/WEB-INF/views/includes/header.jsp"%>
<%@include file="/WEB-INF/views/includes/navi.jsp"%>
<div class="content-wrapper">

	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Manage Employee
			<small></small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Manage Employee </a></li>
		</ol>
	</section>

	<!-- Main content -->
	<section class="content container-fluid">
<div class="col-lg-12">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3>Employee</h3>
		</div>
		<div class="panel-body">
			<table class="table table-condensed"
				style="border-collapse: collapse;">

					<thead>
						<tr>
							<th>Employee ID</th>
                                                        <th>First Name</th>
							<th>Last Name</th>
							<th>Contact No</th>
							<th>Address</th>
							<th>Age</th>
						</tr>
					</thead>
					<tbody>
					<c:if test="${empty employeeList}">
							<tr>
								<td>There is no employee</td>
							</tr>
					</c:if>
					<c:if test="${!empty employeeList}">
						<c:forEach items="${employeeList}" var="emp">
							<tr>
								<td>${emp.id }</td>
                                                                <td>${emp.firstName }</td>
								<td>${emp.lastName }</td>
								<td>${emp.contact }</td>
								<td>${emp.address }</td>
								<td>${emp.age }</td>
							</tr>
						</c:forEach>
					</c:if>
					</tbody>
				</table>
		</div>
	</div>
	</div>
	</section>
</div>
<%@include file="/WEB-INF/views/includes/footer.jsp"%>
