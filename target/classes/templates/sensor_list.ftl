<@layout.adminTemplate>
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">
					<i class="fa fa-forumbee fa-fw"></i>
					Sensoren
					<a href="/sensors/create" class="btn btn-primary">
						<i class="fa fa-plus fa-fw"></i>
					</a>
				</h1>
			</div>
		</div>
		<div class="row hiveList">
			<#if sensors?size &lt; 1>
				<div class="alert alert-info page-alert" id="alert-2">
					<button type="button" class="close">
						<span aria-hidden="true">×</span><span class="sr-only">Schließen</span>
					</button>
					<strong>Achtung!</strong> 
					Du hast im Augenblick noch keine Sensoren gepflegt.<br/>
					Bitte lege Sensoren an. 
				</div>
			</#if>
			<#list sensors as sensor>
				${sensor.name}
			</#list>
		</div>
	</div>
</@layout.adminTemplate>