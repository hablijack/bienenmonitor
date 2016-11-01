<@layout.basic>
	<form id="signin" class="navbar-form" role="form" action="/login" method="post">
		<div class="<#if error?exists && error.isPresent()>alert alert-danger<#else>hide</#if>" role="alert">
			Die eingegebene E-Mail-Adresse oder das Passwort ist falsch ...
		</div>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<div class="form-group <#if error?exists && error.isPresent()>has-error</#if>">
			<input	type="text" 
					class="form-control input-lg" 
					id="email" 
					name="email" 
					value="" 
					required="" 
					title="Bitte Nutzernamen eingeben" 
					placeholder="Nutzername">
		</div>
		<div class="form-group <#if error?exists && error.isPresent()>has-error</#if>">
			<input	type="password" 
					class="form-control input-lg" 
					id="password" 
					name="password" 
					value="" 
					required="" 
					title="Bitte Passwort eingeben" 
					placeholder="Passwort">
		</div>
		<div class="form-group">
			<button type="submit" class="btn btn-primary btn-lg">Anmelden</button>
		</div>
	</form>

	<section id="homepage-content" class="page-content">
		<h1>
			<span class="headline-name-left">BIENEN</span>
			<img src="/img/logo.gif" />
			<span class="headline-info">Monitor</span>
		</h1>
	</section>

	<div class="hexcontainer">
		<div class="board">
			<div class="hex2-row">
				<div class="hex2">
					<div class="left"></div>
					<div class="middle"></div>
					<div class="right"></div>
				</div>
				<div class="hex2 even">
					<div class="left"></div>
					<div class="middle"></div>
					<div class="right"></div>
				</div>
				<div class="hex2">
					<div class="left"></div>
					<div class="middle"></div>
					<div class="right"></div>
				</div>
				<div class="hex2 even">
					<div class="left"></div>
					<div class="middle"></div>
					<div class="right"></div>
				</div>
				<div class="hex2">
					<div class="left"></div>
					<div class="middle"></div>
					<div class="right"></div>
				</div>
			</div>
			<div class="hex2-row">
				<div class="hex2">
					<div class="left"></div>
					<div class="middle"></div>
					<div class="right"></div>
				</div>
				<div class="hex2 even">
					<div class="left"></div>
					<div class="middle"></div>
					<div class="right"></div>
				</div>
				<div class="hex2">
					<div class="left"></div>
					<div class="middle"></div>
					<div class="right"></div>
				</div>
				<div class="hex2 even">
					<div class="left"></div>
					<div class="middle"></div>
					<div class="right"></div>
				</div>
			</div>
			<div class="hex2-row">
				<div class="hex2">
					<div class="left"></div>
					<div class="middle"></div>
					<div class="right"></div>
				</div>
				<div class="hex2 even black">
					<div class="left"></div>
					<div class="middle"></div>
					<div class="right"></div>
				</div>
				<div class="hex2">
					<div class="left"></div>
					<div class="middle"></div>
					<div class="right"></div>
				</div>
				
			</div>
			<div class="hex2-row">
				<div class="hex2">
					<div class="left"></div>
					<div class="middle"></div>
					<div class="right"></div>
				</div>
				<div class="hex2 even">
					<div class="left"></div>
					<div class="middle"></div>
					<div class="right"></div>
				</div>
				<div class="hex2">
					<div class="left"></div>
					<div class="middle"></div>
					<div class="right"></div>
				</div>
			</div>
			<div class="hex2-row">
				<div class="hex2">
					<div class="left"></div>
					<div class="middle"></div>
					<div class="right"></div>
				</div>
			</div>
			<div class="hex2-row">
				<div class="hex2 even">
					<div class="left"></div>
					<div class="middle"></div>
					<div class="right"></div>
				</div>
				<div class="hex2">
					<div class="left"></div>
					<div class="middle"></div>
					<div class="right"></div>
				</div>
			</div>
		</div>
	</div>
</@layout.basic>