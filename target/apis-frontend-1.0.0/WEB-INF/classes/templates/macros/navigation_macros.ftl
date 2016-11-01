<#macro render>
	<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html">
				A.P.I.S. <span class="network">-Net</span>
			</a>
		</div>

		<ul class="nav navbar-top-links navbar-right">
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">
					<span class="fa fa-user fa-lg"></span> 
					<strong>Hallo, ${currentUser.user.firstname}</strong> 
					<i class="fa fa-caret-down"></i>
				</a>
				<ul class="dropdown-menu dropdown-user">
						<@showUserInfo />
				</ul>
			</li>
		</ul>

		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">
					<li class="navigation-logo">
						<img src="/img/logo_brown.gif" />
					</li>
					<li>
						<a href="/dashboard.html">
							<i class="fa fa-dashboard fa-fw"></i> Dashboard
						</a>
					</li>
					<li>
						<a href="/measurement.html">
							<i class="fa fa-clock-o fa-fw"></i> 
							Sensoren
							<span class="fa arrow"></span>
						</a>
						<ul class="nav nav-second-level">
							<li>
								<a href="/hive-view.html">Verwalten</a>
							</li>
							<li>
								<a href="/measurement.html">Messwerte</a>
							</li>
						</ul>
					</li>
					
					<li>
						<a href="/hive-view.html">
							<i class="fa fa-forumbee fa-fw"></i> 
							Völker
							<span class="fa arrow"></span>
						</a>
						<ul class="nav nav-second-level">
							<li>
								<a href="/hives">Verwalten</a>
							</li>
							<li>
								<a href="/watchHives.html">Besuchen</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="/users">
							<i class="fa fa-user fa-fw"></i> Benutzer
						</a>
					</li>
					<li>
						<a href="/settings.html">
							<i class="fa fa-wrench fa-fw"></i> Einstellungen
						</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
</#macro>

<#macro showUserInfo>
	<li>
		<p title="${currentUser.role}">
			<span>
				<strong>${currentUser.user.firstname} ${currentUser.user.lastname}</strong>
				${currentUser.user.email}
			</span>
			<span class="glyphicon glyphicon-user navbar-user-icon"></span>
		</p>
	</li>
	<li class="divider"></li>
	<li>
		<p>
			<form action="/logout" method="post">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				<button class="btn btn-danger btn-block" type="submit">Abmelden</button>
			</form>
		</p>
	</li>
</#macro>
