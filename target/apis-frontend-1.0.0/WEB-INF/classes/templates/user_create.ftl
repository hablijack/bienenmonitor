<@layout.basic>
	<link href="css/register.css" rel="stylesheet">
	<section id="register" class="page-content">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<h1>Deinen eigener Eilkurier</h1> 
					<form role="form" name="form" action="/user/create" method="post">
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
							<label for="password">Passwort:</label>
							<input type="password" name="password" class="form-control" id="password" required/>
						</div>
						<div class="form-group">
							<label for="passwordRepeated">Passwort wiederholen:</label>
							<input type="password" name="passwordRepeated" class="form-control" id="passwordRepeated" required/>
						</div>
						<input type="hidden" name="role" id="role" value="USER"/>
						<button class="btn btn-primary" type="submit">Jetzt kostenlos registrieren</button>
					</form>
				</div>
				<div class="col-md-6">
					<div class="well">
						jaja so ist das ;)
					</div> 
				</div>
			</div>
		</div>
	</section>
</@layout.basic>