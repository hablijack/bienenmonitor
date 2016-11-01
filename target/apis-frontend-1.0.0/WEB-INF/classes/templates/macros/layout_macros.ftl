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
			A.P.I.S. - Net
		</#if>
	</title>
</#macro>

<#macro css controllerId="empty">
	<link href='http://fonts.googleapis.com/css?family=Black+Ops+One|Sonsie+One' rel='stylesheet' type='text/css'>
	<link href="/css/bootstrap.min.css" rel="stylesheet">
	<link href="/css/datepicker.css" rel="stylesheet">
	<link href="/css/buttons.css" rel="stylesheet">
	<link href="/css/metisMenu.min.css" rel="stylesheet">
	<link href="/css/timeline.css" rel="stylesheet">
	<link href="/css/sb-admin-2.css" rel="stylesheet">
	<link href="/css/morris.css" rel="stylesheet">
	<link href="/css/font-awesome.min.css" rel="stylesheet">	
	<link href="/css/apis.css" rel="stylesheet">
	<link href="/css/${controllerId}.css" rel="stylesheet">
	<!--[if lt IE 9]>
		<script src="/js/external/html5shiv.js"></script>
		<script src="/js/external/respond.min.js"></script>
	<![endif]-->
	<link href="/img/favicon.ico" rel="shortcut icon" type="image/x-icon" />
</#macro>

<#macro js controllerId="empty">
	<script src="/js/external/jquery.js"></script>
	<script src="/js/external/bootstrap.min.js"></script>
	<script src="/js/external/bootstrap-datepicker.js"></script>
	<script src="/js/external/metisMenu.min.js"></script>
	<script src="/js/external/raphael.min.js"></script>
	<script src="/js/external/morris.min.js"></script>
	<script src="/js/external/sb-admin-2.js"></script>
	<script src="/js/app/common.js"></script>
	<script src="/js/app/${controllerId}.js"></script>
</#macro>