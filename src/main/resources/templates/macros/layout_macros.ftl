<#macro basic>
	<#local template><#nested></#local>
	<#include "../layout/basic.ftl" />
</#macro>

<#macro adminTemplate>
	<#local template><#nested></#local>
	<#include "../layout/adminTemplate.ftl" />
</#macro>

<#macro hiveWatch>
	<#local template><#nested></#local>
	<#include "../layout/hiveWatch.ftl" />
</#macro>

<#macro doctype>
	<!DOCTYPE html>
</#macro>

<#macro metainfo>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
</#macro>

<#macro pagetitle title="">
	<title>
		<#if title?exists && title?has_content>
			${title}
		<#else>
			BIENEN - Monitor
		</#if>
	</title>
</#macro>

<#macro css controllerId="empty">
	<link href='http://fonts.googleapis.com/css?family=Black+Ops+One|Sonsie+One' rel='stylesheet' type='text/css'>
	<link href="/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" rel="stylesheet">
    <link href="/bower_components/fontawesome/css/font-awesome.min.css" rel="stylesheet">  	
	<link href="/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">
	<link href="/bower_components/morris.js/morris.css" rel="stylesheet">
	<link href="/bower_components/sb-admin-2/css//sb-admin-2.css" rel="stylesheet">

	<!--[if lt IE 9]>
		<script src="/bower_components/html5shiv/dist/html5shiv.min.js"></script>
		<script src="/bower_components/respond/dest/respond.min.js"></script>
	<![endif]-->
	
	<link href="/css/timeline.css" rel="stylesheet">
	<link href="/css/buttons.css" rel="stylesheet">
	<link href="/css/apis.css" rel="stylesheet">
	<link href="/css/${controllerId}.css" rel="stylesheet">
	
	<link href="/img/favicon.ico" rel="shortcut icon" type="image/x-icon" />
</#macro>

<#macro js controllerId="empty">
	<script src="/bower_components/jquery/dist/jquery.min.js"></script>
	<script src="/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	<script src="/bower_components/metisMenu/dist/metisMenu.min.js"></script>
	<script src="/bower_components/raphael/raphael.min.js"></script>
	<script src="/bower_components/morris.js/morris.min.js"></script>
	<script src="/bower_components/sb-admin-2/js/sb-admin-2.js"></script>
	
	<script src="/js/app/common.js"></script>
	<script src="/js/app/${controllerId}.js"></script>
</#macro>