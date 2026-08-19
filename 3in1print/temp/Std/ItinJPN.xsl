<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<TABLE style="BORDER-COLLAPSE: collapse" borderColor="#111111" height="337" cellSpacing="0" cellPadding="0" width="640" border="0">
					<TBODY>
						<TR>
							<TD width="3%" height="66">　</TD>
							<TD width="95%" height="66">
								<TABLE style="BORDER-COLLAPSE: collapse" borderColor="#111111" cellSpacing="0" cellPadding="0" width="100%" border="0">
									<TBODY>
										<TR>
											<TD width="19%" height="66">
												<P align="center">
													<xsl:choose>
														<xsl:when test="normalize-space(/Response/ITINERARY/AGENTINFO/PICPATH)=''">
															<img border="0" src="image/logo.gif"/>
														</xsl:when>
														<xsl:otherwise>
															<xsl:element name="IMG">
																<xsl:attribute name="src"><xsl:value-of select="/Response/ITINERARY/AGENTINFO/PICPATH"/></xsl:attribute>
																<xsl:attribute name="border">0</xsl:attribute>
															</xsl:element>
														</xsl:otherwise>
													</xsl:choose>
												</P>
											</TD>
											<TD width="23%" height="100">　</TD>
											<TD width="58%" height="100">
												<B>
													<p>
														<xsl:apply-templates select="/Response/ITINERARY/AGENTINFO"/>
													</p>
												</B>
											</TD>
										</TR>
									</TBODY>
								</TABLE>
							</TD>
							<TD width="2%" height="66">　</TD>
						</TR>
						<TR>
							<TD width="3%" height="16"/>
							<TD width="95%" height="16">
								<HR color="#000000" SIZE="1"/>
							</TD>
							<TD width="2%" height="16"/>
						</TR>
						<TR>
							<TD width="3%" height="27">　</TD>
							<TD width="95%" bgColor="#689ace" height="27">
								<P align="center">
									<FONT face="Arial" color="#ffffff" size="5">旅程表</FONT>
								</P>
							</TD>
							<TD width="2%" height="27">　</TD>
						</TR>
						<TR>
							<TD width="3%" height="16"/>
							<TD width="95%" height="16"/>
							<TD width="2%" height="16"/>
						</TR>
						<TR>
							<TD width="3%" height="17"/>
							<TD width="95%" height="17">
								<TABLE style="BORDER-COLLAPSE: collapse" borderColor="#111111" cellSpacing="0" cellPadding="0" width="100%" border="0">
									<TBODY>
										<TR>
											<TD width="50%">
												<B>
													<SPAN style="FONT-SIZE: 10.5pt; FONT-FAMILY: Times New Roman">リファレンス番号</SPAN>
													<SPAN style="FONT-SIZE: 10.5pt; FONT-FAMILY: Times New Roman">: 
            </SPAN>
												</B>
												<SPAN style="FONT-SIZE: 10.5pt; FONT-FAMILY: Times New Roman">
													<xsl:value-of select="/Response/ITINERARY/PNRNO"/>
												</SPAN>
											</TD>
											<TD width="50%">
												<B>
													<SPAN style="FONT-SIZE: 10.5pt; FONT-FAMILY: Times New Roman">日付</SPAN>
													<SPAN style="FONT-SIZE: 10.5pt; FONT-FAMILY: Times New Roman">: 
            </SPAN>
												</B>
												<script version="" language="JavaScript">
				var today1 = new Date()
				var month = today1.getMonth()+1
				var year = today1.getYear()
				var day = today1.getDate()
				var   s;
				s="";
				s=s+year;
				s=s+"-"+month;
				s=s+"-" + day;
				
				document.write(s);
			  </script>
											</TD>
										</TR>
									</TBODY>
								</TABLE>
							</TD>
							<TD width="2%" height="17"/>
						</TR>
						<TR>
							<TD width="3%" height="17"/>
							<TD width="95%" height="17">
								<B>
									<SPAN style="FONT-SIZE: 10.5pt; FONT-FAMILY: Times New Roman">乗客名簿:</SPAN>
								</B>
							</TD>
							<TD width="2%" height="17"/>
						</TR>
						<TR>
							<TD width="3%" height="17"/>
							<TD width="95%" height="17">
								<SPAN style="FONT-FAMILY: Times New Roman">
									<FONT size="2">
										<TABLE style="BORDER-COLLAPSE: collapse" borderColor="#111111" cellSpacing="0" cellPadding="0" width="100%" border="0">
											<TBODY>
												<xsl:apply-templates select="/Response/ITINERARY/PASSENGERLIST"/>
												<TR>
													<TD width="50%"/>
												</TR>
											</TBODY>
										</TABLE>
									</FONT>
								</SPAN>
							</TD>
							<TD width="2%" height="17"/>
						</TR>
						<TR>
							<TD width="3%" height="16"/>
							<TD width="95%" height="16"/>
							<TD width="2%" height="16"/>
						</TR>
						<TR>
							<TD width="3%" height="16"/>
							<TD width="95%" height="16"/>
							<TD width="2%" height="16"/>
						</TR>
						<TR>
							<TD width="3%" height="16"/>
							<TD width="95%" height="16"/>
							<TD width="2%" height="16"/>
						</TR>
						<TR>
							<TD width="3%" height="16"/>
							<TD width="95%" height="16">
								<TABLE style="BORDER-COLLAPSE: collapse" cellSpacing="0" borderColorDark="#000000" cellPadding="0" width="100%" borderColorLight="#000000" border="0">
									<TBODY>
										<xsl:apply-templates select="/Response/ITINERARY/SEGMENTS"/>
										<TR>
											<TD colSpan="2">
												<TABLE cellSpacing="1" width="100%" border="0">
													<TBODY>
														<TR>
															<TD/>
														</TR>
													</TBODY>
												</TABLE>
												<TABLE cellSpacing="1" width="100%" border="0">
													<TBODY>
														<TR>
															<TD/>
														</TR>
													</TBODY>
												</TABLE>
											</TD>
										</TR>
									</TBODY>
								</TABLE>
							</TD>
							<TD width="2%" height="16"/>
						</TR>
						<TR>
							<TD width="3%" height="16">
								<FONT face="Times New Roman">　</FONT>
							</TD>
							<TD width="95%" height="16">
								<FONT face="Times New Roman">　</FONT>
							</TD>
							<TD width="2%" height="16">
								<FONT face="Times New Roman">　</FONT>
							</TD>
						</TR>
						<TR>
							<TD width="3%" height="16"/>
							<TD width="95%" height="16"/>
							<TD width="2%" height="16"/>
						</TR>
						<TR>
							<TD width="3%" height="16"/>
							<TD width="95%" height="16"/>
							<TD width="2%" height="16"/>
						</TR>
						<TR>
							<TD width="3%" height="16"/>
							<TD width="95%" height="16"/>
							<TD width="2%" height="16"/>
						</TR>
						<TR>
							<TD width="3%" height="16"/>
							<TD width="95%" height="16"/>
							<TD width="2%" height="16"/>
						</TR>
						<TR>
							<TD width="3%" height="16"/>
							<TD width="95%" height="16">
								<FONT face="Times New Roman">
									<B>備考:</B>
								</FONT>
							</TD>
							<TD width="2%" height="16"/>
						</TR>
						<TR>
							<TD width="3%" height="16"/>
							<TD width="95%" height="16">
								<DIV align="left">
									<TABLE style="BORDER-COLLAPSE: collapse" borderColor="#111111" cellSpacing="0" cellPadding="0" width="100%" border="0">
										<TBODY>
											<TR>
												<TD width="100%">
													<P align="left">
														<FONT face="Times New Roman" size="2">
															<xsl:for-each select="Response/ITINERARY/NOTICE/LINE">
																<li>
																<xsl:value-of select="."/>
																</li>
															</xsl:for-each>
														</FONT>
													</P>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
								</DIV>
							</TD>
							<TD width="2%" height="16"/>
						</TR>
						<TR>
							<TD width="3%" height="15"/>
							<TD width="95%" height="15"/>
							<TD width="2%" height="15"/>
						</TR>
					</TBODY>
				</TABLE>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="/Response/ITINERARY/PASSENGERLIST">
		<tr>
			<xsl:for-each select="PASSENGER">
				<xsl:value-of select="position()"/>
				<font>.</font>
				<xsl:value-of select="NAME"/>
				<font>&#x20;&#x20;</font>
			</xsl:for-each>
		</tr>
	</xsl:template>
	<xsl:template match="/Response/ITINERARY/SEGMENTS">
		<xsl:for-each select="SEGMENT">
			<tr>
				<td height="10"/>
			</tr>
			<xsl:apply-templates select="NORMAL"/>
			<xsl:apply-templates select="OPEN"/>
			<xsl:apply-templates select="INFO"/>
			<xsl:apply-templates select="ARNK"/>
		</xsl:for-each>
	</xsl:template>
	<!--四种航段信息-->
	<xsl:template match="NORMAL">
		<TR>
			<TD colSpan="2">航空会社：<xsl:value-of select="AIRLINE"/>
			</TD>
		</TR>
		<TR>
			<TD width="50%">便名：<xsl:value-of select="FLIGHTNO"/>
					<xsl:if test="CARRIER!=''">
					<br/>(キャリア:<xsl:value-of select="CARRIER"/>)
					</xsl:if>
			</TD>
			<TD width="50%">クラス：<xsl:value-of select="CLASS"/>
			</TD>
		</TR>
		<xsl:if test="count(LEGS/LEG)=1">
			<TR>
				<TD width="50%">出発地点：<xsl:value-of select="LEGS/LEG/ORIGIN"/>
				</TD>
				<TD width="50%">当着地点：<xsl:value-of select="LEGS/LEG/DEST"/>
				</TD>
			</TR>
			<TR>
				<TD width="50%">離陸時間：<xsl:value-of select="DATE"/>
					<xsl:value-of select="LEGS/LEG/DEPTIME"/>
				</TD>
				<TD width="50%">到着時間：
					<xsl:if test="not(LEGS/LEG/ARRDATECHG)">
						<xsl:value-of select="DATE"/>
					</xsl:if>
					<xsl:if test="LEGS/LEG/ARRDATECHG ='+1'">
						翌日
					</xsl:if>
					<xsl:value-of select="LEGS/LEG/ARRTIME"/>
				</TD>
			</TR>
			<TR>
				<TD width="50%">飛行時間：<xsl:value-of select="ELAPSEDTIME"/>
				</TD>
				<TD width="50%">座席ステータス：<xsl:value-of select="SEATSTATUS"/>
				</TD>
			</TR>
			<TR>
				<TD width="50%">機内食：<xsl:value-of select="LEGS/LEG/MEAL"/>
				</TD>
				<TD width="50%">機材：<xsl:value-of select="LEGS/LEG/PLANETYPE"/>
				</TD>
			</TR>
		</xsl:if>
		<xsl:if test="count(LEGS/LEG)>1">
			<TR>
				<TD width="50%">出発地点：<xsl:value-of select="LEGS/LEG[1]/ORIGIN"/>
				</TD>
				<TD width="50%">当着地点：<xsl:value-of select="LEGS/LEG[last()]/DEST"/>
				</TD>
			</TR>
			<TR>
				<TD width="50%">出発時間：<xsl:value-of select="DATE"/>
					<xsl:value-of select="LEGS/LEG[1]/DEPTIME"/>
				</TD>
				<TD width="50%">到着時間：
					<xsl:if test="not(LEGS/LEG[last()]/ARRDATECHG)">
						<xsl:value-of select="DATE"/>
					</xsl:if>
					<xsl:if test="LEGS/LEG[last()]/ARRDATECHG ='+1'">
						翌日
					</xsl:if>
					<xsl:value-of select="LEGS/LEG[last()]/ARRTIME"/>
				</TD>
			</TR>
			<TR>
				<TD width="50%">飛行時間：<xsl:value-of select="ELAPSEDTIME"/>
				</TD>
				<TD width="50%">座席ステータス：<xsl:value-of select="SEATSTATUS"/>
				</TD>
			</TR>
			<TR>
				<xsl:for-each select="LEGS/LEG">
					<TD colSpan="2">
						<table border="1" width="100%" cellspacing="1" style="border-collapse:collapse">
							<tr>
								<td width="74">出発都市</td>
								<td width="240">
									<xsl:value-of select="ORIGIN"/>
								</td>
								<td width="91">到着都市</td>
								<td>
									<xsl:value-of select="DEST"/>
								</td>
							</tr>
							<tr>
								<td width="74">出発時間</td>
								<td width="240">
									<xsl:value-of select="DEPTIME"/>
								</td>
								<td width="91">到着時間</td>
								<td>
									<xsl:value-of select="ARRTIME"/><xsl:value-of select="ARRDATECHG"/>
								</td>
							</tr>
							<tr>
								<td width="74">滞在時間</td>
								<td width="240">00</td>
								<td width="91">機材</td>
								<td>
									<xsl:value-of select="PLANETYPE"/>
								</td>
							</tr>
							<tr>
								<td width="74">食事</td>
								<td colspan="3">
									<xsl:value-of select="MEAL"/>
								</td>
							</tr>
						</table>
					</TD>
					<tr>
						<td height="15"/>
					</tr>
				</xsl:for-each>
			</TR>
		</xsl:if>
	</xsl:template>
	<xsl:template match="INFO">
		<TR>
			<TD colSpan="2">航空会社：<xsl:value-of select="AIRLINE"/>
			</TD>
		</TR>
		<TR>
			<TD width="50%">便名：<xsl:value-of select="FLIGHTNO"/>
								<xsl:if test="CARRIER!=''">
					<br/>(キャリア:<xsl:value-of select="CARRIER"/>)
					</xsl:if>
			</TD>
			<TD width="50%">クラス：<xsl:value-of select="CLASS"/>
			</TD>
		</TR>
		<xsl:if test="count(LEGS/LEG)=1">
			<TR>
				<TD width="50%">出発都市：<xsl:value-of select="LEGS/LEG/ORIGIN"/>
				</TD>
				<TD width="50%">到着都市：<xsl:value-of select="LEGS/LEG/DEST"/>
				</TD>
			</TR>
			<TR>
				<TD width="50%">出発時間：<xsl:value-of select="LEGS/LEG/DEPTIME"/>
				</TD>
				<TD width="50%">到着時間：<xsl:value-of select="LEGS/LEG/ARRTIME"/><xsl:value-of select="LEGS/LEG/ARRDATECHG"/>
				</TD>
			</TR>
			<TR>
				<TD width="50%">飛行時間：<xsl:value-of select="ELAPSEDTIME"/>
				</TD>
				<TD width="50%">座席ステータス：<xsl:value-of select="SEATSTATUS"/>
				</TD>
			</TR>
			<TR>
				<TD width="50%">機内食：<xsl:value-of select="LEGS/LEG/MEAL"/>
				</TD>
				<TD width="50%">機材：<xsl:value-of select="LEGS/LEG/PLANETYPE"/>
				</TD>
			</TR>
		</xsl:if>
		<xsl:if test="count(LEGS/LEG)>1">
			<TR>
				<TD width="50%">出発都市：<xsl:value-of select="LEGS/LEG[1]/ORIGIN"/>
				</TD>
				<TD width="50%">到着都市：<xsl:value-of select="LEGS/LEG[last()]/DEST"/>
				</TD>
			</TR>
			<TR>
				<TD width="50%">出発時間：<xsl:value-of select="LEGS/LEG[1]/DEPTIME"/>
				</TD>
				<TD width="50%">到着時間：<xsl:value-of select="LEGS/LEG[last()]/ARRTIME"/><xsl:value-of select="LEGS/LEG[last()]/ARRDATECHG"/>
				</TD>
			</TR>
			<TR>
				<TD width="50%">飛行時間：<xsl:value-of select="ELAPSEDTIME"/>
				</TD>
				<TD width="50%">座席ステータス：<xsl:value-of select="SEATSTATUS"/>
				</TD>
			</TR>
			<TR>
				<xsl:for-each select="LEGS/LEG">
					<TD colSpan="2">
						<table border="1" width="100%" cellspacing="1" style="border-collapse:collapse">
							<tr>
								<td width="74">出発都市</td>
								<td width="240">
									<xsl:value-of select="ORIGIN"/>
								</td>
								<td width="91">到着都市</td>
								<td>
									<xsl:value-of select="DEST"/>
								</td>
							</tr>
							<tr>
								<td width="74">出発時間</td>
								<td width="240">
									<xsl:value-of select="DEPTIME"/>
								</td>
								<td width="91">到着時間</td>
								<td>
									<xsl:value-of select="ARRTIME"/><xsl:value-of select="ARRDATECHG"/>
								</td>
							</tr>
							<tr>
								<td width="74">滞在時間</td>
								<td width="240">00</td>
								<td width="91">機材</td>
								<td>
									<xsl:value-of select="PLANETYPE"/>
								</td>
							</tr>
							<tr>
								<td width="74">食事</td>
								<td colspan="3">
									<xsl:value-of select="MEAL"/>
								</td>
							</tr>
						</table>
					</TD>
					<tr>
						<td height="15"/>
					</tr>
				</xsl:for-each>
			</TR>
		</xsl:if>
	</xsl:template>
	<xsl:template match="ARNK">
		<TR>
			<TD colSpan="2">航空会社：<xsl:value-of select="AIRLINE"/>
			</TD>
		</TR>
		<TR>
			<TD width="50%">便名：<xsl:value-of select="FLIGHTNO"/>
								<xsl:if test="CARRIER!=''">
					<br/>(キャリア:<xsl:value-of select="CARRIER"/>)
					</xsl:if>
			</TD>
			<TD width="50%">クラス：<xsl:value-of select="CLASS"/>
			</TD>
		</TR>
		<TR>
			<TD width="50%">出発都市：<xsl:value-of select="ORIGIN"/>
			</TD>
			<TD width="50%">到着都市：<xsl:value-of select="DEST"/>
			</TD>
		</TR>
		<TR>
			<TD width="50%">出発時間：<xsl:value-of select="DEPTIME"/>
			</TD>
			<TD width="50%">到着時間：<xsl:value-of select="ARRTIME"/><xsl:value-of select="ARRDATECHG"/>
			</TD>
		</TR>
		<TR>
			<TD width="50%">飛行時間：<xsl:value-of select="ELAPSEDTIME"/>
			</TD>
			<TD width="50%">座席ステータス：<xsl:value-of select="SEATSTATUS"/>
			</TD>
		</TR>
	</xsl:template>
	<xsl:template match="OPEN">
		<TR>
			<TD colSpan="2">航空会社：<xsl:value-of select="AIRLINE"/>
			</TD>
		</TR>
		<TR>
			<TD width="50%">便名：<xsl:value-of select="FLIGHTNO"/>
								<xsl:if test="CARRIER!=''">
					<br/>(キャリア:<xsl:value-of select="CARRIER"/>)
					</xsl:if>
			</TD>
			<TD width="50%">クラス：<xsl:value-of select="CLASS"/>
			</TD>
		</TR>
		<TR>
			<TD width="50%">出発都市：<xsl:value-of select="ORIGIN"/>
			</TD>
			<TD width="50%">到着都市：<xsl:value-of select="DEST"/>
			</TD>
		</TR>
		<TR>
			<TD width="50%">出発時間：<xsl:value-of select="DEPTIME"/>
			</TD>
			<TD width="50%">到着時間：<xsl:value-of select="ARRTIME"/><xsl:value-of select="ARRDATECHG"/>
			</TD>
		</TR>
		<TR>
			<TD width="50%">飛行時間：<xsl:value-of select="ELAPSEDTIME"/>
			</TD>
			<TD width="50%">座席ステータス：<xsl:value-of select="SEATSTATUS"/>
			</TD>
		</TR>
		<TR>
			<TD width="50%">食事：<xsl:value-of select="MEAL"/>
			</TD>
			<TD width="50%">機材：<xsl:value-of select="PLANETYPE"/>
			</TD>
		</TR>
	</xsl:template>
	<xsl:template match="/Response/ITINERARY/AGENTINFO">
		<xsl:value-of select="NAME"/>
		<br/>
    電話番号：<xsl:value-of select="CONTACTINFO/PHONE"/>
		<br/>
    FAX：<xsl:value-of select="CONTACTINFO/FAX"/>
		<br/>
	 住所：<xsl:value-of select="CONTACTINFO/ADDRESS"/>
	</xsl:template>
</xsl:stylesheet>
