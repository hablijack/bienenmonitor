<@compress single_line=true>
	<@layout.doctype />
	<html lang="de">
		<head>
			<@layout.metainfo />
			<@layout.pagetitle />
			<@layout.css controllerId=controllerId />
		</head>
		<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
			<div class="page-content">
				${template}
			</div>
			<@layout.js controllerId=controllerId />
		</body>
	</html>
</@compress>