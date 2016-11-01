<@layout.adminTemplate>
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">
					<i class="fa fa-forumbee fa-fw"></i>
					Volk
					<#if form.id??>
						: ${form.name}
					<#else>
						anlegen
					</#if>
				</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-3 col-md-6">
				<#if form.id??>
					<#assign formUrl="/hive/${form.id}" >
				<#else>
					<#assign formUrl="/hives/create" >
				</#if>
				<form role="form" name="form" action="${formUrl}" method="post">
					<@spring.bind "form" />
					<#if spring.status.error>
						<ul>
							<#list spring.status.errorMessages as error>
								<li>${error}</li>
							</#list>
						</ul>
					</#if>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					<div class="form-group">
						<label for="name">Name:</label>
						<input type="text" name="name" id="name" class="form-control" value="${form.name!""}" required autofocus/>
					</div>
					<div class="form-group">
						<label for="type">Rasse:</label>
						<input type="text" name="type" id="type" class="form-control" value="${form.type!""}" required/>
					</div>
					<div class="form-group">
						<label for="color">Farbe:</label>
						<input type="color" name="color" id="color" class="form-control" value="${form.color!""}" required/>
					</div>
					<div class="form-group">
						<label for="assemblyDate">Datum der Aufstellung:</label>
						<input id="assemblyDate" name="assemblyDate" type="text" 
							class="form-control datepicker" value="${form.assemblyDate!""}" 
							requried data-date-format="dd.mm.yyyy">
					</div>
					<div class="form-group">
						<label for="position">Standort:</label>
						<input type="position" name="position" id="position" class="form-control" value="${form.position!""}" required/>
					</div>
					<div class="form-group">
						<label for="combCount">Zahl der Mittelwände:</label>
						<input type="combCount" name="combCount" id="combCount" class="form-control" value="${form.combCount!""}" required/>
					</div>
					<div class="form-group">
						<label for="combPerBox">Mittelwände pro Beute:</label>
						<input type="combPerBox" name="combPerBox" id="combPerBox" class="form-control" value="${form.combPerBox!""}" required/>
					</div>
					<a href="/hives" class="btn btn-default">
						<i class="fa fa-arrow-left"></i> Zurück
					</a>
					<button class="btn btn-primary" type="submit">
						<i class="glyphicon glyphicon-floppy-disk"></i>
						Volk <#if form.id??>ändern<#else>speichern</#if>
					</button>
				</form>
			</div>
		</div>
	</div>
</@layout.adminTemplate>