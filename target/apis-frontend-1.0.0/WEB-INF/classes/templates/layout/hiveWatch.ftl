<@compress single_line=true>
	<@layout.doctype />
	<html lang="de">
		<head>
			<@layout.metainfo />
			<@layout.pagetitle />
			<@layout.css controllerId=controllerId />
		</head>
		<body>
			<div id="wrapper">
				<@navigation.render />
				${template}
			</div>
			<@layout.js controllerId=controllerId />
		</body>
	</html>
</@compress>