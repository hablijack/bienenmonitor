<@layout.adminTemplate>
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">
					<i class="fa fa-user fa-fw"></i>
					Benutzer
					<a href="/users/create" class="btn btn-primary">
						<i class="fa fa-plus fa-fw"></i>
					</a>
				</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="table-responsive">
					<table class="table table-striped table-bordered table-hover">
						<thead>
							<tr>
								<th>#</th>
								<th>Email</th>
								<th>Vorname</th>
								<th>Name</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<#list users as user>
								<tr>
									<td>${user_index+1}</td>
									<td>${user.email}</td>
									<td>${user.firstname}</td>
									<td>${user.lastname}</td>
									<td>
										<a href="/user/${user.id}" class="btn btn-success">
											<i class="fa fa-edit"></i>
										</a>
										<a href="/user/${user.id}/delete" class="btn btn-danger">
											<i class="fa fa-trash"></i>
										</a>
									</td>
								</tr>
							</#list>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</@layout.adminTemplate>
