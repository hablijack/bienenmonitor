<@layout.adminTemplate>
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">
					<i class="fa fa-forumbee fa-fw"></i>
					Völker
					<a href="/hives/create" class="btn btn-primary">
						<i class="fa fa-plus fa-fw"></i>
					</a>
				</h1>
			</div>
		</div>
		<div class="row hiveList">
			<#if hives?size &lt; 1>
				<div class="alert alert-info page-alert" id="alert-2">
					<button type="button" class="close"><span aria-hidden="true">×</span><span class="sr-only">Schließen</span></button>
					<strong>Achtung!</strong> Du hast im Augenblick noch keine Bienen.<br/>
					Du kannst deine Völker <a href="/hives/create">Hier</a> einpflegen ... 
				</div>
			</#if>
			<#list hives as hive>
				<a href="/hive/${hive.id}" class="hive">
					<div class="col-sm-3">
						<div class="hero-widget well well-sm">
							<div class="icon">
								 <i class="glyphicon glyphicon-home" style="color: ${hive.color!"#000000"};"></i>
							</div>
							<div class="text">
								<var>${hive.name}</var>
								<label class="text-muted">${hive.combCount} Waben</label>
							</div>
							<div class="options text-right">
								<a href="/hive/${hive.id}" class="btn btn-default">
									<i class="glyphicon glyphicon-edit"></i>
									Bearbeiten
								</a> 
							</div>
						</div>
					</div>
				</a>
			</#list>
		</div>
	</div>
</@layout.adminTemplate>