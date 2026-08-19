<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
				<title>Log</title>
			</head>
			<body>
				<td>日志信息</td>
				<TABLE cellSpacing="0" width="800" border="0">
					<xsl:for-each select="Logs/Log">
						<tr>
							<td width="30%"><xsl:value-of select="Time"></xsl:value-of></td>
							<td width="70%"><xsl:value-of select="Data"></xsl:value-of></td>
						</tr>
					</xsl:for-each>
				</TABLE>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
