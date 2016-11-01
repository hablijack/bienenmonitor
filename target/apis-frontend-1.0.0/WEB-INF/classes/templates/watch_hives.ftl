<@layout.hiveWatch>
	<div id="page-wrapper">
		<div id="carousel" class="hive-container carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<#list hives as hive>
					<li data-target="#carousel" data-slide-to="${hive_index}" <#if hive_index == 0>class="active"</#if>></li>
				</#list>
			</ol>
			<div class="carousel-inner">
				<#list hives as hive>
					<div class="item <#if hive_index == 0>active</#if>">
						<div class="hive normal">
							<span class="hive-number" style="background-color: ${hive.color};">
								${hive_index+1}
							</span>
							<br/>
							<img src="/img/watchHives/top.png" class="top">
							<br/>
							<#list 1..hive.boxCount as container>
								<span class="box-top"></span><br/>
								<span class="box"></span><br/>
								<span class="floor">
									<span class="door"></span>
								</span>
							</#list>
						</div>
						<div class="hive-description">
							<span class="hive-description-text">
								<strong>${hive.name}</strong>
								(${hive.type})
							</span>
						</div>
					</div>
				</#list>
			</div>
			<a class="left carousel-control" href="#carousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#carousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
		<div id="grass"></div>
	</div>
</@layout.hiveWatch>
