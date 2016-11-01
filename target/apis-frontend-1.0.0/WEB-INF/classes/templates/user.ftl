<@layout.adminTemplate>
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">
					<i class="fa fa-user fa-fw"></i>
					Benutzer
					<#if form.id??>
						${form.firstname}  ${form.lastname}
					<#else>
						anlegen
					</#if>
				</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-3 col-md-6">
				<#if form.id??>
					<#assign formUrl="/user/${form.id}" >
				<#else>
					<#assign formUrl="/user/create" >
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
						<label for="email">Email:</label>
						<input type="email" name="email" id="email" class="form-control" value="${form.email}" required autofocus/>
					</div>
					<div class="form-group">
						<label for="firstname">Vorname:</label>
						<input type="firstname" name="firstname" id="firstname" class="form-control" value="${form.firstname}" required/>
					</div>
					<div class="form-group">
						<label for="lastname">Nachname:</label>
						<input type="lastname" name="lastname" id="lastname" class="form-control" value="${form.lastname}" required/>
					</div>
					
					<#if form.id??>
						<input type="hidden" name="password" value="${form.password}" />
						<input type="hidden" name="passwordRepeated" value="${form.passwordRepeated}" />
					<#else>
						<div class="form-group">
							<label for="password">Passwort:</label>
							<input type="password" name="password" class="form-control" id="password" required/>
						</div>
						<div class="form-group">
							<label for="passwordRepeated">Passwort wiederholen:</label>
							<input type="password" name="passwordRepeated" class="form-control" id="passwordRepeated" required/>
						</div>
					</#if>
					<input type="hidden" name="role" id="role" value="user"/>
					<a href="/users" class="btn btn-default">
						<i class="fa fa-arrow-left"></i> Zurück
					</a>
					<button class="btn btn-primary" type="submit">
						<i class="glyphicon glyphicon-floppy-disk"></i>
						Benutzer <#if form.id??>ändern<#else>speichern</#if>
					</button>
				</form>
			</div>
		</div>
	</div>
</@layout.adminTemplate>
