<?xml version="1.0" encoding="GB2312"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:variable name="ItinTitle"/>
	<xsl:template match="/">
		<html>
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
				<title/>
				<style>
					<!--
			 p.MsoNormal
				{mso-style-parent:"";
				margin-bottom:.0001pt;
				text-align:justify;
				text-justify:inter-ideograph;
				font-size:9pt;
				font-family:"Times New Roman";
				margin-left:0cm; margin-right:0cm; margin-top:0cm}
			-->
				</style>
			</head>
			<body>
				<TABLE cellSpacing="0" width="640" border="0">
					<TBODY>
						<tr>
							<td width="15">　</td>
							<td>
								<table border="0" width="100%" id="table5" cellspacing="1">
									<tr>
										<td width="49%">
											<xsl:choose>
												<xsl:when test="normalize-space(/Response/ITINERARY/PICPATH)=''">
												<img border="0" src="IATA.bmp"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:element name="IMG">
														<xsl:attribute name="src"><xsl:value-of select="/Response/ITINERARY/PICPATH"/></xsl:attribute>
													</xsl:element>
												</xsl:otherwise>
											</xsl:choose>
										</td>
										<td width="49%">
											<p align="right">
												<span style="font-size: 12.0pt; font-family: Fixedsys">CHINA BSP</span>
											</p>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<hr color="#C0C0C0" size="1"/>
											<p class="MsoNormal" align="center" style="text-	align:center">
												<span style="font-size: 16.0pt; font-family: Fixedsys">ITINERARY</span>
											</p>
								　		</td>
									</tr>
								</table>
							</td>
							<td width="15">　</td>
						</tr>
						<xsl:apply-templates select="/Response/ErrorReason"/>
						<xsl:apply-templates select="/Response/ITINERARY"/>
					</TBODY>
				</TABLE>
			</body>
		</html>
	</xsl:template>
	<!--判断查询是否成功-->
	<xsl:template match="/Response/ErrorReason">
		<TR>
			<TD width="15"/>
			<TD>
				<xsl:value-of select="."/>
			</TD>
		</TR>
	</xsl:template>
	<!--四种航段信息-->
	<!--四种航段信息-->
	<xsl:template match="NORMAL">
		<xsl:variable name="AIRLINE" select="AIRLINE"/>
		<xsl:variable name="FLIGHTNO" select="FLIGHTNO"/>
		<xsl:variable name="CLASS" select="CLASS"/>
		<xsl:variable name="SEATSTATUS" select="SEATSTATUS"/>
		<xsl:for-each select="LEGS/LEG">
			<tr>
				<td align="left" width="310">
					<xsl:value-of select="ORIGIN"/>
				</td>
				<td align="middle" width="52">
					<xsl:value-of select="$AIRLINE"/><xsl:value-of select="$FLIGHTNO"/>
				</td>
				<td align="middle" width="50">
					<xsl:value-of select="$CLASS"/>
				</td>
				<td align="middle" width="50">
					<xsl:value-of select="DEPDATE"/>
				</td>
				<td align="middle">
					<xsl:value-of select="DEPTIME"/>
				</td>
				<td align="middle" width="50">
					<xsl:value-of select="NVB"/>
					<xsl:if test="NVA!='' or NVB!=''">/</xsl:if>
					<xsl:value-of select="NVA"/>
				</td>
				<td align="middle" width="50">
					<xsl:value-of select="$SEATSTATUS"/>
				</td>
				<td align="middle" width="50">
					<xsl:value-of select="BAGGAGE"/>
				</td>
			</tr>
		</xsl:for-each>
	</xsl:template>
	<xsl:template match="OPEN">
		<tr>
			<td align="left" width="310">
				<xsl:value-of select="ORIGIN"/>
			</td>
			<td align="middle" width="52">
				<xsl:value-of select="AIRLINE"/><xsl:value-of select="FLIGHTNO"/>
			</td>
			<td align="middle" width="50">
				<xsl:value-of select="CLASS"/>
			</td>
			<td align="middle" width="50">
				<xsl:value-of select="DEPDATE"/>
			</td>
			<td align="middle">
				<xsl:value-of select="DEPTIME"/>
			</td>
			<td align="middle" width="50">
					<xsl:value-of select="NVB"/>
					<xsl:if test="NVA!='' or NVB!=''">/</xsl:if>
					<xsl:value-of select="NVA"/>
			</td>
			<td align="middle" width="50">
				<xsl:value-of select="SEATSTATUS"/>
			</td>
			<td align="middle" width="50">
				<xsl:value-of select="BAGGAGE"/>
			</td>
		</tr>
	</xsl:template>
	<xsl:template match="ARNK">
		<tr>
			<td align="left" width="310">
				<xsl:value-of select="ORIGIN"/>
			</td>
			<td align="middle" width="52"/>
			<td align="middle" width="50">ARNK</td>
			<td align="middle" width="50"/>
			<td align="middle">
				<xsl:value-of select="DATE"/>
			</td>
			<td align="middle" width="50"/>
			<td align="middle" width="50"/>
			<td align="middle" width="50"/>
		</tr>
	</xsl:template>
	<xsl:template match="INFO">
		<xsl:variable name="AIRLINE" select="AIRLINE"/>
		<xsl:variable name="FLIGHTNO" select="FLIGHTNO"/>
		<xsl:variable name="CLASS" select="CLASS"/>
		<xsl:variable name="SEATSTATUS" select="SEATSTATUS"/>
		<xsl:for-each select="LEGS/LEG">
			<tr>
				<td align="middle" width="310">
					<xsl:value-of select="ORIGIN"/>
				</td>
				<td align="middle" width="52">
					<xsl:value-of select="$AIRLINE"/><xsl:value-of select="$FLIGHTNO"/>
				</td>
				<td align="middle" width="50">
					<xsl:value-of select="$CLASS"/>
				</td>
				<td align="middle" width="50">
					<xsl:value-of select="DEPDATE"/>
				</td>
				<td align="middle">
					<xsl:value-of select="DEPTIME"/>
				</td>
				<td align="middle" width="50">
					<xsl:value-of select="NVB"/>
					<xsl:if test="NVA!='' or NVB!=''">/</xsl:if>
					<xsl:value-of select="NVA"/>
				</td>
				<td align="middle" width="50">
					<xsl:value-of select="$SEATSTATUS"/>
				</td>
				<td align="middle" width="50">
					<xsl:value-of select="BAGGAGE"/>
				</td>
			</tr>
		</xsl:for-each>
	</xsl:template>
	<xsl:template match="/Response/ITINERARY">
		<!--行程单信息-->
		<TR>
			<TD width="15">　</TD>
			<TD>
				<TABLE cellSpacing="1" width="100%" border="0">
					<TBODY>
						<!--行程单信息:PNR信息-->
						<tr>
							<xsl:variable name="system" select="SYSTEM"/>
							<xsl:choose>
								<xsl:when test="$system='1E'">
									<td width="399">
										<span style="font-size: 12.0pt; font-family: Fixedsys">
										AIRLINE PNR:<xsl:value-of select="PNRNO"/>
										</span>
									</td>
									<td>
										<span style="font-size: 12.0pt; font-family: Fixedsys">
										1E PNR:<xsl:value-of select="AIRLINEPNRNO"/>
										</span>
									</td>
								</xsl:when>
								<xsl:otherwise>
									<td width="399">
										<span style="font-size: 12.0pt; font-family: Fixedsys">
										AIRLINE PNR:<xsl:value-of select="AIRLINEPNRNO"/>
										</span>
									</td>
									<td>
										<span style="font-size: 12.0pt; font-family: Fixedsys">
										1E PNR:<xsl:value-of select="PNRNO"/>
										</span>
									</td>
								</xsl:otherwise>
							</xsl:choose>
						</tr>
						<!--行程单信息:旅客及票号信息-->
						<tr>
							<td width="399">
								<span style="font-size: 12.0pt; font-family: Fixedsys">NAME:<xsl:value-of select="PASSENGERLIST/PASSENGER/NAME"/>
								</span>
							</td>
							<td>
								<span style="font-size: 12.0pt; font-family: Fixedsys">ETKT NBR:<xsl:value-of select="TICKETS/TICKETINFO/TKTN"/>
								</span>
							</td>
						</tr>
						<tr>
							<td width="399">
								<span style="font-size: 12.0pt; font-family: Fixedsys">ID NUMBER:<xsl:value-of select="PASSENGERLIST/PASSENGER/IDCARD/CARDTYPE"/>
									<xsl:value-of select="PASSENGERLIST/PASSENGER/IDCARD/CARDNUMBER"/>
								</span>
							</td>
							<td>
								<span style="font-size: 12.0pt; font-family: Fixedsys">CONJ NBR:<xsl:value-of select="TICKETS/TICKETINFO/CONJTKT"/>
								</span>
							</td>
						</tr>
						<TR>
							<TD width="15" high="10">　</TD>
						</TR>
						<!--行程单信息:出票信息-->
						<tr>
							<td width="399">
								<span style="font-size: 12.0pt; font-family: Fixedsys">
									<span style="font-size: 12.0pt; font-family: Fixedsys; mso-ascii-font-family: Times New Roman; mso-hansi-font-family: Times New Roman; mso-bidi-font-family: Times New Roman; mso-font-kerning: 1.0pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">ISSUING AIRLINE:</span>
									<xsl:value-of select="TICKETS/TICKETINFO/ISSUEDBY"/>
								</span>
							</td>
							<td>
								<span style="font-size: 12.0pt; font-family: Fixedsys">
									<span style="font-size: 12.0pt; font-family: Fixedsys; mso-ascii-font-family: Times New Roman; mso-hansi-font-family: Times New Roman; mso-bidi-font-family: Times New Roman; mso-font-kerning: 1.0pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">DATE OF ISSUE:</span>
									<xsl:value-of select="TICKETS/TICKETINFO/ISSUEDDATE"/>
								</span>
							</td>
						</tr>
						<!--行程单信息:代理人信息-->
						<TR>
							<TD width="15" high="10">　</TD>
						</TR>
						<tr>
							<td width="399">
								<span style="font-size: 12.0pt; font-family: Fixedsys">
									<span style="font-size: 12.0pt; font-family: Fixedsys; mso-ascii-font-family: Times New Roman; mso-hansi-font-family: Times New Roman; mso-bidi-font-family: Times New Roman; mso-font-kerning: 1.0pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">ISSUING AGENT:</span>
									<xsl:value-of select="AGENTINFO/NAME"/>
								</span>
							</td>
							<td>
								<span style="font-size: 12.0pt; font-family: Fixedsys">
									<span style="font-size: 12.0pt; font-family: Fixedsys; mso-ascii-font-family: Times New Roman; mso-hansi-font-family: Times New Roman; mso-bidi-font-family: Times New Roman; mso-font-kerning: 1.0pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">IATA CODE:</span>
									<xsl:value-of select="AGENTINFO/IATANUMBER"/>
								</span>
							</td>
						</tr>
						<tr>
							<td colSpan="2">
								<span style="font-size: 12.0pt; font-family: Fixedsys">
									<span style="font-size: 12.0pt; font-family: Fixedsys; mso-ascii-font-family: Times New Roman; mso-hansi-font-family: Times New Roman; mso-bidi-font-family: Times New Roman; mso-font-kerning: 1.0pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">AGENCY ADDRESS:</span>
									<xsl:value-of select="AGENTINFO/CONTACTINFO/ADDRESS"/>
								</span>
							</td>
						</tr>
						<tr>
							<td width="399">
								<span style="font-size: 12.0pt; font-family: Fixedsys">
									<span style="font-size: 12.0pt; font-family: Fixedsys; mso-ascii-font-family: Times New Roman; mso-hansi-font-family: Times New Roman; mso-bidi-font-family: Times New Roman; mso-font-kerning: 1.0pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">TEL:</span>
									<xsl:value-of select="AGENTINFO/CONTACTINFO/PHONE"/>
								</span>
							</td>
							<td>
								<span style="font-size: 12.0pt; font-family: Fixedsys">
									<span style="font-size: 12.0pt; font-family: Fixedsys; mso-ascii-font-family: Times New Roman; mso-hansi-font-family: Times New Roman; mso-bidi-font-family: Times New Roman; mso-font-kerning: 1.0pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">FAX:</span>
									<xsl:value-of select="AGENTINFO/CONTACTINFO/FAX"/>
								</span>
							</td>
						</tr>
					</TBODY>
				</TABLE>
			</TD>
		</TR>
		<!--行程单信息:航段信息-->
		<TR>
			<xsl:apply-templates select="SEGMENTS"/>
		</TR>
		<TR>
			<xsl:apply-templates select="FIFS"/>
		</TR>
		<TR>
			<TD width="15">　</TD>
			<TD>
				<table border="0" width="599" cellSpacing="1">
					<TBODY>
						<TR>
							<TD width="397">　</TD>
							<TD width="188">　</TD>
						</TR>
						<TR>
							<TD width="637" colSpan="2" height="18">
								<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Fixedsys">FARE CALCULATION:</SPAN>
							</TD>
						</TR>
						<TR>
							<TD style="WORD-BREAK: break-all; WORD-WRAP: break-word" width="637" colSpan="2" height="18">
								<BLOCKQUOTE>
									<P class="MsoNormal">
										<SPAN style="FONT-SIZE: 10.5pt; FONT-FAMILY: Fixedsys">
											<xsl:value-of select="FCS/FC"/>
										</SPAN>
									</P>
								</BLOCKQUOTE>
							</TD>
						</TR>
						<TR>
							<TD width="397">
								<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Fixedsys">FORM OF PAYMENT:<xsl:value-of select="FPS/FP/PAYMENTTYPE"/>
								</SPAN>
							</TD>
							<TD width="188">
								<td width="60">
									<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Fixedsys">TAX:</SPAN>
								</td>
								<td width="128">
									<table border="0" width="100%" cellSpacing="2">
										<xsl:for-each select="FARES/FARE/TAX">
											<tr>
												<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Fixedsys">
													<xsl:value-of select="CURRENCY"/>
													<xsl:apply-templates select="AMOUNT"/>
												</SPAN>
											</tr>
										</xsl:for-each>
									</table>
								</td>
							</TD>
						</TR>
						<TR>
							<TD width="591" colSpan="2">
								<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Fixedsys">FARE:<xsl:value-of select="FARES/FARE/TICKETFARE/CURRENCY"/>
									<xsl:value-of select="FARES/FARE/TICKETFARE/AMOUNT"/>
								</SPAN>
							</TD>
						</TR>
						<TR>
							<TD width="591" colSpan="2">
								<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Fixedsys">TOTAL:<xsl:value-of select="FARES/FARE/TOTALFARE/CURRENCY"/>
									<xsl:value-of select="FARES/FARE/TOTALFARE/AMOUNT"/>
								</SPAN>
							</TD>
						</TR>
						<TR>
							<TD width="397">　</TD>
							<TD width="188">　</TD>
						</TR>
						<TR>
							<TD width="591" colSpan="2">
								<P class="MsoNormal">
									<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Fixedsys">RESTRICTIONS:
</SPAN>
									<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Fixedsys">
										<xsl:value-of select="TICKETS/TICKETINFO/ER"/>
									</SPAN>
								</P>
								<p/>
							</TD>
						</TR>
					</TBODY>
				</table>
			</TD>
			<TD width="15">　</TD>
		</TR>
		<TR>
			<TD width="15">　</TD>
			<TD>
				<TABLE cellSpacing="1" width="100%" border="0">
					<TBODY>
						<TR>
							<TD>
								<P class="MsoNormal">
									<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Fixedsys">NOTICE:</SPAN>
								</P>
								<P class="MsoNormal" style="MARGIN-LEFT: 21pt; TEXT-INDENT: -21pt; mso-list: l0 level1 lfo1; tab-stops: list 21.0pt">
									<xsl:for-each select="NOTICE/LINE">
										<li>
											<SPAN style="FONT-SIZE: 10.5pt;FONT-FAMILY: Fixedsys; mso-ascii-font-family: Times New Roman; mso-hansi-font-family: Times New Roman">
												<xsl:value-of select="."/>
											</SPAN>
										</li>
									</xsl:for-each>
								</P>
							</TD>
						</TR>
						<TR>
							<TD>　</TD>
						</TR>
						<!--注意事项-->
						<xsl:apply-templates select="NOTICE/ATTENTION"/>
					</TBODY>
				</TABLE>
			</TD>
			<TD width="15">　</TD>
		</TR>
	</xsl:template>
	<xsl:template match="FARES/FARE/TAX">
		<td>
			<xsl:value-of select="AMOUNT"/>
			<xsl:value-of select="CURRENCY"/>
		</td>
	</xsl:template>
	<xsl:template match="SEGMENTS">
		<!--行程单信息:航段信息-->
		<TD width="15" high="10"/>
		<TD>
			<table border="0" cellSpacing="1" width="640">
				<TBODY>
					<TR>
						<TD align="left" width="310">
							<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Fixedsys">ORIGIN</SPAN>
							<SPAN lang="EN-US" style="FONT-SIZE: 12pt; FONT-FAMILY: Times New Roman">/</SPAN>
							<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Fixedsys">DES</SPAN>
						</TD>
						<TD align="middle" width="52">
							<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Fixedsys">FLIGHTNO</SPAN>
						</TD>
						<TD align="middle" width="50">
							<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Fixedsys">CLASS</SPAN>
						</TD>
						<TD align="middle" width="50">
							<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Fixedsys">DATE</SPAN>
						</TD>
						<TD align="middle">
							<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Fixedsys">TIME</SPAN>
						</TD>
						<TD align="middle" width="50">
							<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Fixedsys">PERIOD</SPAN>
						</TD>
						<TD align="middle" width="50">
							<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Fixedsys">STATUS</SPAN>
						</TD>
						<TD align="middle" width="60">
							<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Fixedsys">ALLOW</SPAN>
						</TD>
					</TR>
					<TR>
						<TD align="middle" colSpan="8">
							<HR/>
						</TD>
					</TR>
					<xsl:for-each select="/Response/ITINERARY/SEGMENTS/SEGMENT">
						<xsl:apply-templates select="NORMAL"/>
						<xsl:apply-templates select="OPEN"/>
						<xsl:apply-templates select="INFO"/>
						<xsl:apply-templates select="ARNK"/>
						<xsl:if test="position()=last()">
							<tr>
								<td align="left" width="310">
									<xsl:value-of select="NORMAL/LEGS/LEG[last()]/DEST"/>
									<xsl:value-of select="INFO/LEGS/LEG[last()]/DEST"/>
									<xsl:value-of select="ARNK/DEST"/>
									<xsl:value-of select="OPEN/DEST"/>
								</td>
								<td align="middle" width="52"/>
								<td align="middle" width="50"/>
								<td align="middle" width="50"/>
								<td align="middle"/>
								<td align="middle" width="50"/>
								<td align="middle" width="50"/>
								<td align="middle" width="50"/>
							</tr>
						</xsl:if>
					</xsl:for-each>
				</TBODY>
			</table>
		</TD>
	</xsl:template>
	<xsl:template match="NOTICE/ATTENTION">
		<TR>
			<TD>
				<P class="MsoNormal">
					<B>
						<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Fixedsys">ATTENTION:<xsl:value-of select="."/>
						</SPAN>
					</B>
				</P>
			</TD>
		</TR>
	</xsl:template>
	<xsl:template match="FIFS">
		<TD width="15">　</TD>
		<TD>
			<table border="0" width="599" cellSpacing="1">
				<TBODY>
					<TD>	
						<P class="MsoNormal" style="MARGIN-LEFT: 21pt; TEXT-INDENT: -21pt; mso-list: l0 level1 lfo1; tab-stops: list 21.0pt">
							<xsl:for-each select="FLTINFO">
								<li>
									<SPAN style="FONT-SIZE: 10.5pt;FONT-FAMILY: Fixedsys; mso-ascii-font-family: Times New Roman; mso-hansi-font-family: Times New Roman">
										<xsl:value-of select="MAIRLINE"/><xsl:value-of select="MFLIGHTNO"/>:<xsl:value-of select="ENGINFO"/>
									</SPAN>
								</li>
							</xsl:for-each>
						</P>
					</TD>
				</TBODY>
			</table>
		</TD>
	</xsl:template>
</xsl:stylesheet>
