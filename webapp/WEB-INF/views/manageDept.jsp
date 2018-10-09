<%@include file="/WEB-INF/views/includes/header.jsp"%>
<%@include file="/WEB-INF/views/includes/navi.jsp"%>
<div class="content-wrapper">

	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Manage Department
			<small></small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Manage Department </a></li>
		</ol>
	</section>

	<!-- Main content -->
	<section class="content container-fluid">
		<div class="col-lg-12">
			<div class="panel panel-default">

				<div class="panel-body">
					<table id="dept_table" class="table table-bordered table-hover">

						<thead>
						<tr>
							<th>&nbsp;</th>
							<th>Department ID</th>
                                                        <th>Department Name</th>
							<th>Description</th>
							<th>Contact Email</th>
							<th>Contact number</th>
						</tr>
						</thead>

						<tbody>
						<c:forEach items="${deptList}" var="dept">
							<tr data-toggle="collapse" data-target="#dept_${dept.id}"
								class="accordion-toggle">
								<td><button class="btn btn-default btn-xs">
									<span class="glyphicon glyphicon-eye-open"></span>
								</button></td>
                                                                <td>${dept.id}</td>
								<td>${dept.name}</td>
								<td>${dept.desc}</td>
								<td>${dept.email}</td>
								<td>${dept.contact}</td>
							</tr>
							<tr>
								<td colspan="12" class="hiddenRow"><div
										class="accordian-body collapse" id="dept_${dept.id}">
									<button type="button" id="detail_button" class="btn btn-primary">Detail</button>
									<button type="button" id="edit_button" class="btn btn-primary">Edit</button>
									<button type="button" id="assign_button" class="btn btn-primary">Assign Employee</button>
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

<%@include file="/WEB-INF/views/includes/footer.jsp"%>
<script>
    $(function () {
//        $('#dept_table').DataTable({
//            'paging'      : true,
//            'lengthChange': false,
//            'searching'   : true,
//            'ordering'    : true,
//            'info'        : true,
//            'autoWidth'   : false,
//            "language": {
//                "emptyTable": "No Record Found",
//                "paginate": {
//                    "previous": "&lt;",
//                    "next":"&gt;"
//                }
//            }
//        });
//        $('#modal-info').modal('toggle');
    });
    $('.detail_button').on('click',function(){
        var uri = "/viewProjDetail?id=" + this.id.substr("actions_detail_".length);
        window.location.replace(uri);
    });
    $('.edit_button').on('click',function(){
        //alert("Edit: " + this.id);
    });
    $('.delete_button').on('click',function(){

    });
</script>