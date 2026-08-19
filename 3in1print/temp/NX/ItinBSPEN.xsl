<?xml version="1.0" encoding="GB2312"?>
<!-- 编辑使用 XMLSpy v2006 U (http://www.altova.com) 由 any (any) -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:variable name="ItinTitle"/>
	<xsl:template match="/">
		<html>
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
				<title/>
			</head>
			<body>
				<TABLE cellSpacing="0" width="640" border="0">
					<TBODY>
						<tr>
							<td width="15">　</td>
							<td>
								<table border="0" width="100%" cellspacing="1">
									<tr>
										<td width="57%">
											<xsl:choose>
												<xsl:when test="normalize-space(/Response/ITINERARY/PICPATH)=''">
													<img border="0" src="NX.jpg"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:element name="IMG">
														<xsl:attribute name="src"><xsl:value-of select="/Response/ITINERARY/PICPATH"/></xsl:attribute>
													</xsl:element>
												</xsl:otherwise>
											</xsl:choose>
										</td>
										<td width="43%">
											<xsl:if test="Response/ITINERARY/HotelResponse/DayWeather != ''">
												<table border="0" cellspacing="1" width="100%" align="right">
													<tr>
														<td width="10%" style="font-size: 9pt; font-family: Times New Roman;">
															<xsl:value-of select="Response/ITINERARY/HotelResponse/DayWeather/City"/>
														</td>
														<td rowspan="2" width="65%">
															<xsl:for-each select="Response/ITINERARY/HotelResponse/DayWeather/description/Weather">
																<xsl:if test="position() != 1">to</xsl:if>
																<xsl:element name="IMG">
																	<xsl:attribute name="src">Weather\<xsl:value-of select="."/>.gif</xsl:attribute>
																</xsl:element>
															</xsl:for-each>
														</td>
														<td width="25%" style="font-size: 9pt; font-family: Times New Roman;">
															<xsl:value-of select="Response/ITINERARY/HotelResponse/DayWeather/tempLow"/>
															-
														<xsl:value-of select="Response/ITINERARY/HotelResponse/DayWeather/tempHigh"/>
															℃
													</td>
													</tr>
													<tr>
														<td style="font-size: 9pt; font-family: Times New Roman;">
															<xsl:value-of select="Response/ITINERARY/HotelResponse/DayWeather/Date"/>
														</td>
														<td style="font-size: 9pt; font-family: Times New Roman;">
															<xsl:value-of select="Response/ITINERARY/HotelResponse/DayWeather/windEN"/>
														</td>
													</tr>
												</table>
											</xsl:if>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<hr color="#C0C0C0" size="1"/>
											<p align="center" style="text-	align:center">
												<span style="font-size: 16.0pt; font-family: Times New Roman; font-weight: bold;">ITINERARY</span>
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
		<tr>
			<td width="15"/>
			<td>
				<xsl:value-of select="."/>
			</td>
		</tr>
	</xsl:template>
	<!--四种航段信息-->
	<xsl:template match="NORMAL">
		<xsl:variable name="AIRLINE" select="AIRLINE"/>
		<xsl:variable name="FLIGHTNO" select="FLIGHTNO"/>
		<xsl:variable name="CLASS" select="CLASS"/>
		<xsl:variable name="SEATSTATUS" select="SEATSTATUS"/>
		<xsl:variable name="CARRIER" select="CARRIER"/>
		<xsl:for-each select="LEGS/LEG">
			<tr style="font-size: 9pt; font-family: Times New Roman">
				<td align="middle">
					<xsl:value-of select="ORIGIN"/>
				</td>
				<td align="middle">
					<xsl:value-of select="$AIRLINE"/>
					<xsl:value-of select="$FLIGHTNO"/>
					<xsl:if test="$CARRIER!=''">
					<br/>(Carrier:<xsl:value-of select="$CARRIER"/>)
					</xsl:if>
				</td>
				<td align="middle">
					<xsl:value-of select="$CLASS"/>
				</td>
				<td align="middle">
					<xsl:value-of select="DEPDATE"/>
				</td>
				<td align="middle">
					<xsl:value-of select="DEPTIME"/>
				</td>
				<td align="middle">
					<xsl:value-of select="ARRTIME"/>
				</td>
				<td align="middle">
					<xsl:value-of select="NVB"/>
					<xsl:if test="NVA!='' or NVB!=''">/</xsl:if>
					<xsl:value-of select="NVA"/>
				</td>
				<td align="middle">
					<xsl:value-of select="$SEATSTATUS"/>
				</td>
				<td align="middle">
					<xsl:value-of select="BAGGAGE"/>
				</td>
				<td align="middle">
						<xsl:value-of select="ORI_TERMINAL"/>
				</td>
				<td align="middle">
						<xsl:value-of select="DEST_TERMINAL"/>
				</td>
			</tr>
		</xsl:for-each>
	</xsl:template>
	<xsl:template match="OPEN">
		<tr style="font-size: 10.5pt; font-family: Times New Roman">
			<td align="middle">
				<xsl:value-of select="ORIGIN"/>
			</td>
			<td align="middle">
				<xsl:value-of select="AIRLINE"/>
				<xsl:value-of select="FLIGHTNO"/>
			</td>
			<td align="middle">
				<xsl:value-of select="CLASS"/>
			</td>
			<td align="middle">
				<xsl:value-of select="DEPDATE"/>
			</td>
			<td align="middle">
				<xsl:value-of select="DEPTIME"/>
			</td>
			<td align="middle">
				<xsl:value-of select="ARRTIME"/>
			</td>
			<td align="middle">
					<xsl:value-of select="NVB"/>
					<xsl:if test="NVA!='' or NVB!=''">/</xsl:if>
					<xsl:value-of select="NVA"/>
			</td>
			<td align="middle">
				<xsl:value-of select="SEATSTATUS"/>
			</td>
			<td align="middle">
				<xsl:value-of select="BAGGAGE"/>
			</td>
			<td align="middle"/>
			<td align="middle"/>
		</tr>
	</xsl:template>
	<xsl:template match="ARNK">
		<tr style="font-size: 10.5pt; font-family: Times New Roman">
			<td align="middle">
				<xsl:value-of select="ORIGIN"/>
			</td>
			<td align="middle"/>
			<td align="middle">ARNK</td>
			<td align="middle"/>
			<td align="middle">
				<xsl:value-of select="DATE"/>
			</td>
			<td align="middle"/>
			<td align="middle"/>
			<td align="middle"/>
			<td align="middle"/>
			<td align="middle"/>
			<td align="middle"/>
		</tr>
	</xsl:template>
	<xsl:template match="INFO">
		<xsl:variable name="AIRLINE" select="AIRLINE"/>
		<xsl:variable name="FLIGHTNO" select="FLIGHTNO"/>
		<xsl:variable name="CLASS" select="CLASS"/>
		<xsl:variable name="SEATSTATUS" select="SEATSTATUS"/>
		<xsl:for-each select="LEGS/LEG">
			<tr style="font-size: 10.5pt; font-family: Times New Roman">
				<td align="middle">
					<xsl:value-of select="ORIGIN"/>
				</td>
				<td align="middle">
					<xsl:value-of select="$AIRLINE"/>
					<xsl:value-of select="$FLIGHTNO"/>
				</td>
				<td align="middle">
					<xsl:value-of select="$CLASS"/>
				</td>
				<td align="middle">
					<xsl:value-of select="DEPDATE"/>
				</td>
				<td align="middle">
					<xsl:value-of select="DEPTIME"/>
				</td>
				<td align="middle">
					<xsl:value-of select="ARRTIME"/>
				</td>
				<td align="middle">
					<xsl:value-of select="NVB"/>
					<xsl:if test="NVA!='' or NVB!=''">/</xsl:if>
					<xsl:value-of select="NVA"/>
				</td>
				<td align="middle">
					<xsl:value-of select="$SEATSTATUS"/>
				</td>
				<td align="middle">
					<xsl:value-of select="BAGGAGE"/>
				</td>
				<td align="middle"/>
				<td align="middle"/>
			</tr>
		</xsl:for-each>
	</xsl:template>
	<xsl:template match="/Response/ITINERARY">
		<!--行程单信息-->
		<tr>
			<td width="15">　</td>
			<td>
				<TABLE cellSpacing="1" width="100%" border="0">
					<TBODY>
						<!--行程单信息:PNR信息-->
						<tr>
							<xsl:variable name="system" select="SYSTEM"/>
							<xsl:choose>
								<xsl:when test="$system='1E'">
									<td width="399">
										<span style="font-size: 12.0pt; font-family: Times New Roman">AIRLINE PNR:</span>
										<span style="font-size: 10.5pt; font-family: Times New Roman">
											<xsl:value-of select="PNRNO"/>
										</span>
									</td>
									<td>
										<span style="font-size: 12.0pt; font-family: Times New Roman">1E PNR:</span>
										<span style="font-size: 10.5pt; font-family: Times New Roman">
											<xsl:value-of select="AIRLINEPNRNO"/>
										</span>
									</td>
								</xsl:when>
								<xsl:otherwise>
									<td width="399">
										<span style="font-size: 12.0pt; font-family: Times New Roman">AIRLINE PNR:</span>
										<span style="font-size: 10.5pt; font-family: Times New Roman">
											<xsl:value-of select="AIRLINEPNRNO"/>
										</span>
									</td>
									<td>
										<span style="font-size: 12.0pt; font-family: Times New Roman">1E PNR:</span>
										<span style="font-size: 10.5pt; font-family: Times New Roman">
											<xsl:value-of select="PNRNO"/>
										</span>
									</td>
								</xsl:otherwise>
							</xsl:choose>
						</tr>
						<!--行程单信息:旅客及票号信息-->
						<tr>
							<td width="399">
								<span style="font-size: 12.0pt; font-family: Times New Roman">NAME:</span>
								<span style="font-size: 10.5pt; font-family: Times New Roman">
									<xsl:value-of select="PASSENGERLIST/PASSENGER/NAME"/>
								</span>
							</td>
							<td>
								<span style="font-size: 12.0pt; font-family: Times New Roman">ETKT NBR:</span>
								<span style="font-size: 10.5pt; font-family: Times New Roman">
									<xsl:value-of select="TICKETS/TICKETINFO/TKTN"/>
								</span>
							</td>
						</tr>
						<tr>
							<td width="399">
								<span style="font-size: 12.0pt; font-family: Times New Roman">ID NUMBER:</span>
								<span style="font-size: 10.5pt; font-family: Times New Roman">
									<xsl:value-of select="PASSENGERLIST/PASSENGER/IDCARD/CARDTYPE"/>
									<xsl:value-of select="PASSENGERLIST/PASSENGER/IDCARD/CARDNUMBER"/>
								</span>
							</td>
							<td>
								<span style="font-size: 12.0pt; font-family: Times New Roman">CONJ NBR:</span>
								<span style="font-size: 10.5pt; font-family: Times New Roman">
									<xsl:value-of select="TICKETS/TICKETINFO/CONJTKT"/>
								</span>
							</td>
						</tr>
						<tr>
							<td width="15" high="10">　</td>
						</tr>
						<!--行程单信息:出票信息-->
						<tr>
							<td width="399">
								<span style="font-size: 12.0pt; font-family: Times New Roman">ISSUING AIRLINE:</span>
								<span style="font-size: 10.5pt; font-family: Times New Roman">
									<xsl:value-of select="TICKETS/TICKETINFO/ISSUEDBY"/>
								</span>
							</td>
							<td>
								<span style="font-size: 12.0pt; font-family: Times New Roman">DATE OF ISSUE:</span>
								<span style="font-size: 10.5pt; font-family: Times New Roman">
									<xsl:value-of select="TICKETS/TICKETINFO/ISSUEDDATE"/>
								</span>
							</td>
						</tr>
						<!--行程单信息:代理人信息-->
						<tr>
							<td width="15" high="10">　</td>
						</tr>
						<tr>
							<td width="399">
								<span style="font-size: 12.0pt; font-family: Times New Roman">ISSUING AGENT:</span>
								<span style="font-size: 10.5pt; font-family: Times New Roman">
									<xsl:value-of select="AGENTINFO/NAME"/>
								</span>
							</td>
							<td>
								<span style="font-size: 12.0pt; font-family: Times New Roman">IATA CODE:</span>
								<span style="font-size: 10.5pt; font-family: Times New Roman">
									<xsl:value-of select="AGENTINFO/IATANUMBER"/>
								</span>
							</td>
						</tr>
						<tr>
							<td colSpan="2">
								<span style="font-size: 12.0pt; font-family: Times New Roman">AGENCY ADDRESS:</span>
								<span style="font-size: 10.5pt; font-family: Times New Roman">
									<xsl:value-of select="AGENTINFO/CONTACTINFO/ADDRESS"/>
								</span>
							</td>
						</tr>
						<tr>
							<td width="399">
								<span style="font-size: 12.0pt; font-family: Times New Roman">TEL:</span>
								<span style="font-size: 10.5pt; font-family: Times New Roman">
									<xsl:value-of select="AGENTINFO/CONTACTINFO/PHONE"/>
								</span>
							</td>
							<td>
								<span style="font-size: 12.0pt; font-family: Times New Roman">FAX:</span>
								<span style="font-size: 10.5pt; font-family: Times New Roman">
									<xsl:value-of select="AGENTINFO/CONTACTINFO/FAX"/>
								</span>
							</td>
						</tr>
						<tr>
							<td colSpan="8">
								<hr color="#CCCCCC" size="2"/>
							</td>
						</tr>
					</TBODY>
				</TABLE>
			</td>
		</tr>
		<!--行程单信息:航段信息-->
		<tr>
			<xsl:apply-templates select="SEGMENTS"/>
		</tr>
		<tr>
		<!--注释信息,在繁体版和英文版中隐藏-->
		<!--xsl:apply-templates select="FIFS"/-->
		</tr>
		<tr>
			<xsl:apply-templates select="HotelResponse"/>
		</tr>
		<tr>
			<td width="15">　</td>
			<td>
				<table border="0" cellSpacing="1">
					<TBODY>
						<tr>
							<td width="650" colSpan="4" height="18">
								<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Times New Roman">FARE CALCULATION:</SPAN>
							</td>
						</tr>
						<tr>
							<td width="10%" colSpan="1"/>
							<td width="90%" colSpan="3" height="18">
								<SPAN style="FONT-SIZE: 10.5pt; FONT-FAMILY: Times New Roman">
									<xsl:value-of select="FCS/FC"/>
								</SPAN>
							</td>
						</tr>
						<tr>
							<td width="60%" colSpan="2">
								<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Times New Roman">FORM OF PAYMENT:</SPAN>
								<SPAN style="FONT-SIZE: 10.5pt; FONT-FAMILY: Times New Roman">
									<xsl:value-of select="FPS/FP/PAYMENTTYPE"/>
								</SPAN>　
							</td>
							<td width="15%">
								<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Times New Roman">TAX:</SPAN>
							</td>
							<td width="25%">
								<table border="0" width="100%">
									<xsl:for-each select="FARES/FARE/TAX">
										<tr>
											<SPAN style="FONT-SIZE: 10.5pt; FONT-FAMILY: Times New Roman">
												<xsl:value-of select="CURRENCY"/>
												<xsl:apply-templates select="AMOUNT"/>
											</SPAN>
										</tr>
									</xsl:for-each>
								</table>
							</td>
						</tr>
						<tr>
							<td colSpan="4">
								<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Times New Roman">FARE:</SPAN>
								<SPAN style="FONT-SIZE: 10.5pt; FONT-FAMILY: Times New Roman">
									<xsl:value-of select="FARES/FARE/TICKETFARE/CURRENCY"/>
									<xsl:value-of select="FARES/FARE/TICKETFARE/AMOUNT"/>
								</SPAN>
							</td>
						</tr>
						<tr>
							<td colSpan="4">
								<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Times New Roman">TOTAL:</SPAN>
								<SPAN style="FONT-SIZE: 10.5pt; FONT-FAMILY: Times New Roman">
									<xsl:value-of select="FARES/FARE/TOTALFARE/CURRENCY"/>
									<xsl:value-of select="FARES/FARE/TOTALFARE/AMOUNT"/>
								</SPAN>
								<p/>
							</td>
						</tr>
						<tr>
							<td colSpan="4">
								<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Times New Roman">RESTRICTIONS:</SPAN>
								<SPAN style="FONT-SIZE: 10.5pt; FONT-FAMILY: Times New Roman">
									<xsl:value-of select="TICKETS/TICKETINFO/ER"/>
								</SPAN>
								<p/>
							</td>
						</tr>
					</TBODY>
				</table>
			</td>
			<td width="15">　</td>
		</tr>
		<tr>
			<td width="15">　</td>
			<td>
				<TABLE cellSpacing="1" width="100%" border="0">
					<TBODY>
						<tr>
							<td>
								<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Times New Roman">NOTICE:</SPAN>
								<xsl:for-each select="NOTICE/LINE">
									<li>
										<SPAN style="FONT-SIZE: 10.5pt;FONT-FAMILY: Times New Roman;">
											<xsl:value-of select="."/>
										</SPAN>
									</li>
								</xsl:for-each>
							</td>
						</tr>
						<tr>
							<td>
								<hr color="#CCCCCC" size="1"/>
							</td>
						</tr>

						<!--注意事项-->
						<xsl:apply-templates select="NOTICE/ATTENTION"/>
					</TBODY>
				</TABLE>
			</td>
			<td width="15">　</td>
		</tr>
	</xsl:template>
	<xsl:template match="FARES/FARE/TAX">
		<td>
			<xsl:value-of select="AMOUNT"/>
			<xsl:value-of select="CURRENCY"/>
		</td>
	</xsl:template>
	<xsl:template match="SEGMENTS">
		<!--行程单信息:航段信息-->
		<td width="15" high="10"/>
		<td>
			<table border="0" cellSpacing="1" width="100%">
				<TBODY style="FONT-SIZE: 9pt; FONT-FAMILY: Times New Roman">
					<tr>
						<td align="middle" rowspan="2">ORIGIN/DES</td>
						<td align="middle" rowspan="2">FLIGHT</td>
						<td align="middle" rowspan="2">CLASS</td>
						<td align="middle" rowspan="2">DATE</td>
						<td align="middle" rowspan="2">TIME</td>
						<td align="middle" rowspan="2">ARRTIME</td>
						<td align="middle" rowspan="2">PERIOD</td>
						<td align="middle" rowspan="2">STATUS</td>
						<td align="middle" rowspan="2">ALLOW</td>
						<td align="middle" colspan="2">TERMINAL</td>
					</tr>
					<tr>
						<td align="middle">Takeoff</td>
						<td align="middle">Arrival</td>
					</tr>
					<tr>
						<td align="middle" colSpan="11">
							<HR/>
						</td>
					</tr>
					<xsl:for-each select="SEGMENT">
						<xsl:apply-templates select="NORMAL"/>
						<xsl:apply-templates select="OPEN"/>
						<xsl:apply-templates select="INFO"/>
						<xsl:apply-templates select="ARNK"/>
						<xsl:if test="position()=last()">
							<tr style="FONT-SIZE: 9pt; FONT-FAMILY: Times New Roman">
								<td align="middle">
									<xsl:value-of select="NORMAL[last()]/LEGS/LEG[last()]/DEST"/>
									<xsl:value-of select="INFO[last()]/LEGS/LEG[last()]/DEST"/>
									<xsl:value-of select="ARNK[last()]/DEST"/>
									<xsl:value-of select="OPEN[last()]/DEST"/>
								</td>
								<td align="middle"/>
								<td align="middle"/>
								<td align="middle"/>
								<td align="middle"/>
								<td align="middle"/>
								<td align="middle"/>
								<td align="middle"/>
								<td align="middle"/>
								<td align="middle"/>
								<td align="middle"/>
							</tr>
						</xsl:if>
					</xsl:for-each>
					<tr>
						<td colSpan="11">
							<hr color="#CCCCCC" size="2"/>
						</td>
					</tr>
				</TBODY>
			</table>
		</td>
	</xsl:template>
	<xsl:template match="NOTICE/ATTENTION">
		<tr>
			<td>
				<P class="MsoNormal">
					<B>
						<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Times New Roman">ATTENTION:<xsl:value-of select="."/>
						</SPAN>
					</B>
				</P>
			</td>
		</tr>
	</xsl:template>
	<xsl:template match="FIFS">
		<xsl:if test="FLTINFO/ENGINFO!=''">
			<td width="15">　</td>
			<td>
				<table border="0" width="599" cellSpacing="1">
					<TBODY>
						<td style="FONT-SIZE: 10.5pt; FONT-FAMILY: Times New Roman;">
							<xsl:for-each select="FLTINFO">
								<li>
									<xsl:value-of select="MAIRLINE"/>
									<xsl:value-of select="MFLIGHTNO"/>/<xsl:value-of select="MDATE"/>:<xsl:value-of select="ENGINFO"/>
								</li>
							</xsl:for-each>
						</td>
					</TBODY>
				</table>
				<tr>
					<hr color="#C0C0C0"/>
				</tr>
			</td>
		</xsl:if>
	</xsl:template>
	<xsl:template match="HotelResponse">
		<xsl:if test="Cities !=''">
			<td width="15">　</td>
			<td>
				<!--table border="1" width="599" cellSpacing="1" color="#C0C0C0" -->
				<table width="650" border="0" cellpadding="0" cellspacing="0" style="border: 1pt solid #EEEEEE; font-family: Times New Roman;">
					<tr style="FONT-SIZE: 9pt; FONT-FAMILY: Times New Roman;border: 1pt solid #EEEEEE;" height="21">
						<td width="30%" style="border: 1pt solid #EEEEEE; font-weight: bold;"> PREFERRED HOTEL</td>
						<td width="30%" style="border: 1pt solid #EEEEEE; font-weight: bold;"> PRICE </td>
						<td width="40%" style="border: 1pt solid #EEEEEE; font-weight: bold;"> LOCATION </td>
					</tr>
					<xsl:for-each select="Cities/City">
						<xsl:for-each select="Hotels/Hotel">
							<tr style="FONT-SIZE: 9pt; FONT-FAMILY: Times New Roman;;">
								<td width="30%" style="border: 1pt solid #EEEEEE;">
									<xsl:value-of select="NameEN"/>(<xsl:value-of select="HotelRank"/>)
								</td>
								<xsl:for-each select="Rooms">
									<td width="30%" style="border: 1pt solid #EEEEEE;">
										<xsl:value-of select="Room/RoomType"/>:<xsl:value-of select="Room/Rate"/>
									</td>
								</xsl:for-each>
								<td width="40%" style="border: 1pt solid #EEEEEE;">
									<xsl:value-of select="HotelPosition"/>
								</td>
							</tr>
						</xsl:for-each>
					</xsl:for-each>
					<tr>
						<td colspan="3" align="right" style="FONT-SIZE: 9pt; FONT-FAMILY: Times New Roman;border: 1pt solid #EEEEEE;">
							<xsl:value-of select="Demo"/>
						</td>
					</tr>
				</table>
				<tr>
					<td height="16"/>
				</tr>
			</td>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
