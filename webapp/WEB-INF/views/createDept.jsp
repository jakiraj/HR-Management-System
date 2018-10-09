<%@include file="/WEB-INF/views/includes/header.jsp"%>
<%@include file="/WEB-INF/views/includes/navi.jsp"%>
<div class="content-wrapper">

	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Create Department
			<small></small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Create Department </a></li>
		</ol>
	</section>

	<!-- Main content -->
	<section class="content container-fluid">
		<div class="row">
			<div class="col-md-12">
				<form:form action="" method="POST" id="create_new_dept_form" modelAttribute="dept">
					<div class="box box-primary">
							<%--<div class="box-header">--%>
							<%--<h3 class="box-title"></h3>--%>

							<%--</div>--%>
						<div class="box-body">
							<!-- Date -->
							<div class="row">
								<!-- Text -->
								<div class="col-md-4">
									<spring:bind path="name">
										<div class="form-group ${status.error ? 'has-error' : ''}">
											<label>Department Name</label>
											<form:input path="name" type="text" name="name" class="form-control" placeholder="Enter ..." />
											<form:errors path="name" cssClass="help-block"/>
										</div>
									</spring:bind>
								</div>
								<!-- Text -->
								<div class="col-md-4">
									<spring:bind path="desc">
										<div class="form-group ${status.error ? 'has-error' : ''}">
											<label>Description</label>
											<form:input type="text" path="desc" class="form-control" placeholder="Enter ..."/>
											<form:errors path="desc" cssClass="help-block"/>
										</div>
									</spring:bind>
								</div>

								<!-- /.form group -->

							</div>
							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<label>Contact Phone</label>
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-phone"></i></span>
											<form:input type="text" path="phone" class="form-control" placeholder="Phone"/>
										</div>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label>Contact Email</label>
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-envelope"></i></span>
											<form:input type="email" path="email" class="form-control" placeholder="Email"/>
										</div>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label>Status</label>
										<form:select class="form-control" path="statusId"  >
											<form:options items="${statusCodeList}" itemLabel="value" itemValue="cId"/>
										</form:select>
									</div>
								</div>

							</div>
						</div>
						<!-- /.box-body -->
						<div class="box-footer">
							<c:if test="${id != null}"><a class="btn btn-default btn-arrow-left" href="/viewProj" role="button">Cancel</a></c:if>

							<button type="submit" class="btn btn-primary">Submit</button>
							<button type="button" id="reset_button" class="btn btn-default">Reset</button>

						</div>
						<div id="create_new_form_overlay" style="display: none" class="overlay">  <%----%>
							<i class="fa fa-refresh fa-spin"></i>
						</div>
					</div>
				</form:form>
				<!-- /.box -->
			</div>
			<!-- /.col (right) -->
		</div>
	</section>
</div>

<%@include file="/WEB-INF/views/includes/footer.jsp"%>
<script>
    //Date picker
    $('#datepicker').datepicker({
        autoclose: true
    })

    $(function(){
        $('#reset_button').on('click',function(e){
            $('#warn_msg').text("Are you sure to reset the form?");
            $("#warn-dialog-ok-button").click(function(){ window.location.replace("/newDept");});
            $('#modal-warn').modal('toggle');
        });
    });
    $('#create_new_dept_form').submit(function() {
        enableOverlay('create_new_form_overlay');
        return true;
    });
</script>