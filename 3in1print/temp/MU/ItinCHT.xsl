<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!-- 编辑使用 XMLSpy v2006 U (http://www.altova.com) 由 any (any) -->
<!-- 编辑使用 XMLSpy v2006 U (http://www.altova.com) 由 any (any) -->
<!-- 编辑使用 XMLSpy v2006 U (http://www.altova.com) 由 any (any) -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:variable name="ItinTitle"/>
	<xsl:template match="/">
		<html xmlns="">
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
				<title/>
				<style/>
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
												<xsl:when test="normalize-space(/Response/ITINERARY/AGENTINFO/PICPATH)=''">
													<img border="0" src="image/MU.jpg"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:element name="IMG">
														<xsl:attribute name="src"><xsl:value-of select="/Response/ITINERARY/AGENTINFO/PICPATH"/></xsl:attribute>
														<xsl:attribute name="border">0</xsl:attribute>
													</xsl:element>
												</xsl:otherwise>
											</xsl:choose>
										</td>
										<td width="49%">
											<p align="right">
												<span style="font-size: 12.0pt; font-family: 宋体"/>
											</p>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<hr color="#C0C0C0" size="1"/>
											<p class="MsoNormal" align="center" style="text- align:center">
												<span style="font-size: 16.0pt; font-family: 宋体">行程單</span>
											</p>　</td>
									</tr>
								</table>
							</td>
							<td width="15">　</td>
						</tr>
						<apply-templates select="/Response/ErrorReason" xmlns="http://www.w3.org/1999/XSL/Transform"/>
						<apply-templates select="/Response/ITINERARY" xmlns="http://www.w3.org/1999/XSL/Transform"/>
					</TBODY>
				</TABLE>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="/Response/ErrorReason">
		<TR xmlns="">
			<TD width="15"/>
			<TD>
				<value-of select="." xmlns="http://www.w3.org/1999/XSL/Transform"/>
			</TD>
		</TR>
	</xsl:template>
	<xsl:template match="NORMAL">
		<xsl:variable name="AIRLINE" select="AIRLINE"/>
		<xsl:variable name="FLIGHTNO" select="FLIGHTNO"/>
		<xsl:variable name="CLASS" select="CLASS"/>
		<xsl:variable name="SEATSTATUS" select="SEATSTATUS"/>
		<xsl:variable name="DATE" select="DATE"/>
		<xsl:for-each select="LEGS/LEG">
			<tr xmlns="">
				<td align="middle" width="110">
					<value-of select="ORIGIN" xmlns="http://www.w3.org/1999/XSL/Transform"/>
				</td>
				<td align="middle" width="52">
					<value-of select="$FLIGHTNO" xmlns="http://www.w3.org/1999/XSL/Transform"/>
				</td>
				<td align="middle" width="61">
					<value-of select="$CLASS" xmlns="http://www.w3.org/1999/XSL/Transform"/>
				</td>
				<td align="middle" width="70">
					<value-of select="$DATE" xmlns="http://www.w3.org/1999/XSL/Transform"/>
				</td>
				<td align="middle">
					<value-of select="DEPTIME" xmlns="http://www.w3.org/1999/XSL/Transform"/>
				</td>
				<td align="middle" width="81">
					<value-of select="$SEATSTATUS" xmlns="http://www.w3.org/1999/XSL/Transform"/>
				</td>
				<td align="middle" width="50">
					<value-of select="BAGGAGE" xmlns="http://www.w3.org/1999/XSL/Transform"/>
				</td>
			</tr>
		</xsl:for-each>
	</xsl:template>
	<xsl:template match="OPEN">
		<tr xmlns="">
			<td align="middle" width="110">
				<xsl:value-of select="ORIGIN" xmlns="http://www.w3.org/1999/XSL/Transform"/>
			</td>
			<td align="middle" width="52">
				<xsl:value-of select="FLIGHTNO" xmlns="http://www.w3.org/1999/XSL/Transform"/>
			</td>
			<td align="middle" width="61">
				<xsl:value-of select="CLASS" xmlns="http://www.w3.org/1999/XSL/Transform"/>
			</td>
			<td align="middle" width="70">
				<xsl:value-of select="DATE" xmlns="http://www.w3.org/1999/XSL/Transform"/>
			</td>
			<td align="middle">
				<xsl:value-of select="DEPTIME" xmlns="http://www.w3.org/1999/XSL/Transform"/>
			</td>
			<td align="middle" width="81">
				<xsl:value-of select="SEATSTATUS" xmlns="http://www.w3.org/1999/XSL/Transform"/>
			</td>
			<td align="middle" width="50">
				<xsl:value-of select="BAGGAGE" xmlns="http://www.w3.org/1999/XSL/Transform"/>
			</td>
		</tr>
	</xsl:template>
	<xsl:template match="ARNK">
		<tr xmlns="">
			<td align="middle" width="110">
				<value-of select="ORIGIN" xmlns="http://www.w3.org/1999/XSL/Transform"/>
			</td>
			<td align="middle" width="52"/>
			<td align="middle" width="61">ARNK</td>
			<td align="middle" width="70"/>
			<td align="middle">
				<value-of select="DATE" xmlns="http://www.w3.org/1999/XSL/Transform"/>
			</td>
			<td align="middle" width="81"/>
			<td align="middle" width="50"/>
		</tr>
	</xsl:template>
	<xsl:template match="INFO">
		<xsl:variable name="AIRLINE" select="AIRLINE"/>
		<xsl:variable name="FLIGHTNO" select="FLIGHTNO"/>
		<xsl:variable name="CLASS" select="CLASS"/>
		<xsl:variable name="SEATSTATUS" select="SEATSTATUS"/>
		<xsl:variable name="DATE" select="DATE"/>
		<xsl:for-each select="LEGS/LEG">
			<tr xmlns="">
				<td align="middle" width="110">
					<xsl:value-of select="ORIGIN" xmlns="http://www.w3.org/1999/XSL/Transform"/>
				</td>
				<td align="middle" width="52">
					<xsl:value-of select="$FLIGHTNO" xmlns="http://www.w3.org/1999/XSL/Transform"/>
				</td>
				<td align="middle" width="61">
					<xsl:value-of select="$CLASS" xmlns="http://www.w3.org/1999/XSL/Transform"/>
				</td>
				<td align="middle" width="70">
					<xsl:value-of select="$DATE" xmlns="http://www.w3.org/1999/XSL/Transform"/>
				</td>
				<td align="middle">
					<xsl:value-of select="DEPTIME" xmlns="http://www.w3.org/1999/XSL/Transform"/>
				</td>
				<td align="middle" width="81">
					<xsl:value-of select="$SEATSTATUS" xmlns="http://www.w3.org/1999/XSL/Transform"/>
				</td>
				<td align="middle" width="50">
					<xsl:value-of select="BAGGAGE" xmlns="http://www.w3.org/1999/XSL/Transform"/>
				</td>
			</tr>
		</xsl:for-each>
	</xsl:template>
	<xsl:template match="/Response/ITINERARY">
		<TR xmlns="">
			<TD width="15">　</TD>
			<TD>
				<TABLE cellSpacing="1" width="100%" border="0">
					<TBODY>
						<tr>
							<variable name="system" select="SYSTEM" xmlns="http://www.w3.org/1999/XSL/Transform"/>
							<choose xmlns="http://www.w3.org/1999/XSL/Transform">
								<when test="$system='1E'">
									<td width="25%" xmlns="">
										<span style="font-size: 12.0pt; font-family: 宋体">航空公司記錄編號:</span>
									</td>
									<td xmlns="">
										<span style="font-size: 12.0pt; font-family: 宋体">
											<value-of select="PNRNO" xmlns="http://www.w3.org/1999/XSL/Transform"/>
										</span>
									</td>
									<td width="18%" xmlns="">
										<span style="font-size: 12.0pt; font-family: 宋体">訂座記錄編號:</span>
									</td>
									<td xmlns="">
										<span style="font-size: 12.0pt; font-family: 宋体">
											<value-of select="AIRLINEPNRNO" xmlns="http://www.w3.org/1999/XSL/Transform"/>
										</span>
									</td>
								</when>
								<otherwise>
									<td width="25%" xmlns="">
										<span style="font-size: 12.0pt; font-family: 宋体">航空公司記錄編號:</span>
									</td>
									<td xmlns="">
										<span style="font-size: 12.0pt; font-family: 宋体">
											<value-of select="AIRLINEPNRNO" xmlns="http://www.w3.org/1999/XSL/Transform"/>
										</span>
									</td>
									<td width="18%" xmlns="">
										<span style="font-size: 12.0pt; font-family: 宋体">訂座記錄編號:</span>
									</td>
									<td xmlns="">
										<span style="font-size: 12.0pt; font-family: 宋体">
											<value-of select="PNRNO" xmlns="http://www.w3.org/1999/XSL/Transform"/>
										</span>
									</td>
								</otherwise>
							</choose>
						</tr>
						<TR>
							<TD colspan="4" high="10">　</TD>
						</TR>
						<tr>
							<td width="20%">
								<span style="font-size: 12.0pt; font-family: 宋体">旅客姓名：</span>
							</td>
							<td width="30%">
								<span style="fort-size: 12.Opt; font-family: 宋体">身份識別代碼：</span>
							</td>
							<td width="20%">
								<span style="font-size: 12.0pt; font-family: 宋体">旅客姓名：</span>
							</td>
							<td width="30%">
								<span style="fort-size: 12.Opt; font-family: 宋体">身份識別代碼：</span>
							</td>
						</tr>
						<tr>
							<for-each select="PASSENGERLIST/PASSENGER" xmlns="http://www.w3.org/1999/XSL/Transform">
								<td xmlns="">
									<span style="font-size: 12.0pt; font-family: 宋体">
										<value-of select="NAME" xmlns="http://www.w3.org/1999/XSL/Transform"/>
										<if test="TYPE='INFANT'" xmlns="http://www.w3.org/1999/XSL/Transform">(INF)</if>
									</span>
								</td>
								<td xmlns="">
									<span style="font-size: 12.0pt; font-family: 宋体">
										<value-of select="IDCARD/CARDNUMBER" xmlns="http://www.w3.org/1999/XSL/Transform"/>
									</span>
								</td>
								<if test="position() mod 2 = 0 ">
									<tr xmlns=""/>
								</if>
							</for-each>
						</tr>
						<TR>
							<TD colspan="4" high="10">　</TD>
						</TR>
						<!--
						<tr>
							<td colspan="2">
								<span style="font-size: 12.0pt; font-family: 宋体">票號：<for-each select="TICKETS/TICKETINFO/TNs/TN" xmlns="http://www.w3.org/1999/XSL/Transform">
										<sort select="number(TktNo)" order="ascending" data-type="number"/>
										<if test="position() = 1">
											<value-of select="TktNo"/>
										</if>
									</for-each>-<for-each select="TICKETS/TICKETINFO/TNs/TN" xmlns="http://www.w3.org/1999/XSL/Transform">
										<sort select="number(TktNo)" order="descending" data-type="number"/>
										<if test="position() = 1">
											<value-of select="TktNo"/>
										</if>
									</for-each>
								</span>
							</td>
							<td colspan="2">
								<span style="font-size: 12.0pt; font-family: 宋体">聯票：<value-of select="TICKETS/TICKETINFO/CONJTKT" xmlns="http://www.w3.org/1999/XSL/Transform"/>
								</span>
							</td>
						</tr>
						-->
						<TR>
							<TD colspan="4" high="10">　</TD>
						</TR>
						<tr>
							<td colspan="4">
								<span style="font-size: 12.0pt; font-family: 宋体">
									<span style="font-size: 12.0pt; font-family: 宋体; mso-ascii-font-family: Times New Roman; mso-hansi-font-family: Times New Roman; mso-bidi-font-family: Times New Roman; mso-font-kerning: 1.0pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">出票航空公司：中國東方航空公司</span>
								</span>
							</td>
							<!--
							<td colspan="2">
								<span style="font-size: 12.0pt; font-family: 宋体">
									<span style="font-size: 12.0pt; font-family: 宋体; mso-ascii-font-family: Times New Roman; mso-hansi-font-family: Times New Roman; mso-bidi-font-family: Times New Roman; mso-font-kerning: 1.0pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">出票時間：</span>
									<value-of select="TICKETS/TICKETINFO/ISSUEDDATE" xmlns="http://www.w3.org/1999/XSL/Transform"/>
								</span>
							</td>
							-->
						</tr>
						<TR>
							<TD colspan="4" high="10">　</TD>
						</TR>
						<tr>
							<td colspan="4">
								<span style="font-size: 12.0pt; font-family: 宋体">
									<span style="font-size: 12.0pt; font-family: 宋体; mso-ascii-font-family: Times New Roman; mso-hansi-font-family: Times New Roman; mso-bidi-font-family: Times New Roman; mso-font-kerning: 1.0pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">出票代理人：</span>
									<value-of select="AGENTINFO/NAME" xmlns="http://www.w3.org/1999/XSL/Transform"/>
								</span>
							</td>
							<!--
							<td colspan="2">
								<span style="font-size: 12.0pt; font-family: 宋体">
									<span style="font-size: 12.0pt; font-family: 宋体; mso-ascii-font-family: Times New Roman; mso-hansi-font-family: Times New Roman; mso-bidi-font-family: Times New Roman; mso-font-kerning: 1.0pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">航協代碼：</span>
									<value-of select="AGENTINFO/IATANUMBER" xmlns="http://www.w3.org/1999/XSL/Transform"/>
								</span>
							</td>
							-->
						</tr>
						<tr>
							<td colSpan="4">
								<span style="font-size: 12.0pt; font-family: 宋体">
									<span style="font-size: 12.0pt; font-family: 宋体; mso-ascii-font-family: Times New Roman; mso-hansi-font-family: Times New Roman; mso-bidi-font-family: Times New Roman; mso-font-kerning: 1.0pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">代理人地址：</span>
									<value-of select="AGENTINFO/CONTACTINFO/ADDRESS" xmlns="http://www.w3.org/1999/XSL/Transform"/>
								</span>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<span style="font-size: 12.0pt; font-family: 宋体">
									<span style="font-size: 12.0pt; font-family: 宋体; mso-ascii-font-family: Times New Roman; mso-hansi-font-family: Times New Roman; mso-bidi-font-family: Times New Roman; mso-font-kerning: 1.0pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">電話：</span>
									<value-of select="AGENTINFO/CONTACTINFO/PHONE" xmlns="http://www.w3.org/1999/XSL/Transform"/>
								</span>
							</td>
							<td colspan="2">
								<span style="font-size: 12.0pt; font-family: 宋体">
									<span style="font-size: 12.0pt; font-family: 宋体; mso-ascii-font-family: Times New Roman; mso-hansi-font-family: Times New Roman; mso-bidi-font-family: Times New Roman; mso-font-kerning: 1.0pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">傳真：</span>
									<value-of select="AGENTINFO/CONTACTINFO/FAX" xmlns="http://www.w3.org/1999/XSL/Transform"/>
								</span>
							</td>
						</tr>
					</TBODY>
				</TABLE>
			</TD>
		</TR>
		<TR xmlns="">
			<TD colspan="4" high="10">　</TD>
		</TR>
		<TR xmlns="">
			<apply-templates select="SEGMENTS" xmlns="http://www.w3.org/1999/XSL/Transform"/>
		</TR>
<!--		
		<TR xmlns="">
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
								<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体">票價計算：</SPAN>
							</TD>
						</TR>
						<TR>
							<TD style="WORD-BREAK: break-all; WORD-WRAP: break-word" width="637" colSpan="2" height="18">
								<BLOCKQUOTE>
									<P class="MsoNormal">
										<SPAN style="FONT-SIZE: 10.5pt; FONT-FAMILY: 宋体">
											<value-of select="FCS/FC" xmlns="http://www.w3.org/1999/XSL/Transform"/>
										</SPAN>
									</P>
								</BLOCKQUOTE>
							</TD>
						</TR>
						<TR>
							<TD width="397">
								<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体">付款方式：<value-of select="FPS/FP/PAYMENTTYPE" xmlns="http://www.w3.org/1999/XSL/Transform"/>
								</SPAN>
							</TD>
							<TD width="188">
								<td width="60">
									<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体">稅款：</SPAN>
								</td>
								<td width="128">
									<table border="0" width="100%" cellSpacing="2">
										<for-each select="FARES/FARE/TAX" xmlns="http://www.w3.org/1999/XSL/Transform">
											<tr xmlns="">
												<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体">
													<value-of select="CURRENCY" xmlns="http://www.w3.org/1999/XSL/Transform"/>
													<apply-templates select="AMOUNT" xmlns="http://www.w3.org/1999/XSL/Transform"/>
												</SPAN>
											</tr>
										</for-each>
									</table>
								</td>
							</TD>
						</TR>
						<TR>
							<TD width="591" colSpan="2">
								<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体">機票款：<value-of select="FARES/FARE/TICKETFARE/CURRENCY" xmlns="http://www.w3.org/1999/XSL/Transform"/>
									<value-of select="FARES/FARE/TICKETFARE/AMOUNT" xmlns="http://www.w3.org/1999/XSL/Transform"/>
								</SPAN>
							</TD>
						</TR>
						<TR>
							<TD width="591" colSpan="2">
								<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体">總 額：<value-of select="FARES/FARE/TOTALFARE/CURRENCY" xmlns="http://www.w3.org/1999/XSL/Transform"/>
									<value-of select="FARES/FARE/TOTALFARE/AMOUNT" xmlns="http://www.w3.org/1999/XSL/Transform"/>
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
									<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体">限制條件：</SPAN>
									<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体">
										<value-of select="TICKETS/TICKETINFO/ER" xmlns="http://www.w3.org/1999/XSL/Transform"/>
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
-->
		<TR xmlns="">
			<TD width="15">　</TD>
			<TD>
				<TABLE cellSpacing="1" width="100%" border="0">
					<TBODY>
						<TR>
							<TD>
								<P class="MsoNormal">
									<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋體">須知：</SPAN>
								</P>
								<P class="MsoNormal" style="MARGIN-LEFT: 21pt; TEXT-INDENT: -21pt; mso-list: l0 level1 lfo1; tab-stops: list 21.0pt">
									<xsl:for-each select="NOTICE/LINE">
										<li>
											<SPAN style="FONT-SIZE: 10.5pt;FONT-FAMILY: 宋體; mso-ascii-font-family: Times New Roman; mso-hansi-font-family: Times New Roman">
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
						<xsl:apply-templates select="NOTICE/ATTENTION" xmlns="http://www.w3.org/1999/XSL/Transform"/>
					</TBODY>
				</TABLE>
			</TD>
			<TD width="15">　</TD>
		</TR>
	</xsl:template>
	<xsl:template match="FARES/FARE/TAX">
		<td xmlns="">
			<xsl:value-of select="AMOUNT" xmlns="http://www.w3.org/1999/XSL/Transform"/>
			<xsl:value-of select="CURRENCY" xmlns="http://www.w3.org/1999/XSL/Transform"/>
		</td>
	</xsl:template>
	<xsl:template match="SEGMENTS">
		<TD width="15" high="10" xmlns=""/>
		<TD xmlns="">
			<table border="0" cellSpacing="1" width="100%">
				<TBODY>
					<TR>
						<TD align="middle" width="110">
							<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体">始發地</SPAN>
							<SPAN lang="EN-US" style="FONT-SIZE: 12pt; FONT-FAMILY: Times New Roman">/</SPAN>
							<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体">目的地</SPAN>
						</TD>
						<TD align="middle" width="52">
							<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体">航班號</SPAN>
						</TD>
						<TD align="middle" width="61">
							<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体">艙位</SPAN>
						</TD>
						<TD align="middle" width="70">
							<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体">日期</SPAN>
						</TD>
						<TD align="middle" width="50">
							<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体">時間</SPAN>
						</TD>
						<TD align="middle" width="81">
							<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体">狀態</SPAN>
						</TD>
						<TD align="middle" width="60">
							<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体">行李</SPAN>
						</TD>
					</TR>
					<TR>
						<TD align="middle" colSpan="8">
							<HR/>
						</TD>
					</TR>
					<for-each select="SEGMENT" xmlns="http://www.w3.org/1999/XSL/Transform">
						<apply-templates select="NORMAL"/>
						<apply-templates select="OPEN"/>
						<apply-templates select="INFO"/>
						<apply-templates select="ARNK"/>
						<if test="position()=last()">
							<tr xmlns="">
								<td align="middle" width="110">
									<value-of select="NORMAL[last()]/LEGS/LEG[last()]/DEST" xmlns="http://www.w3.org/1999/XSL/Transform"/>
									<value-of select="INFO[last()]/LEGS/LEG[last()]/DEST" xmlns="http://www.w3.org/1999/XSL/Transform"/>
									<value-of select="ARNK[last()]/DEST" xmlns="http://www.w3.org/1999/XSL/Transform"/>
									<value-of select="OPEN[last()]/DEST" xmlns="http://www.w3.org/1999/XSL/Transform"/>
								</td>
								<td align="middle" width="52"/>
								<td align="middle" width="61"/>
								<td align="middle" width="70"/>
								<td align="middle"/>
								<td align="middle" width="64"/>
								<td align="middle" width="81"/>
								<td align="middle" width="50"/>
							</tr>
						</if>
					</for-each>
				</TBODY>
			</table>
		</TD>
	</xsl:template>
	<xsl:template match="NOTICE/ATTENTION">
		<TR xmlns="">
			<TD>
				<P class="MsoNormal">
					<B>
						<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体">注意：<xsl:value-of select="." xmlns="http://www.w3.org/1999/XSL/Transform"/>
						</SPAN>
					</B>
				</P>
			</TD>
		</TR>
	</xsl:template>
</xsl:stylesheet>
