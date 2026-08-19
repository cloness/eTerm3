<?xml version="1.0" encoding="GB2312"?>
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
													<xsl:element name="IMG">
														<xsl:attribute name="src"><xsl:value-of select="/Response/ITINERARY/AGENTINFO/PICPATH"/></xsl:attribute>
														<xsl:attribute name="border">0</xsl:attribute>
													</xsl:element>
												</P>
											</TD>
											<TD width="23%" height="100">　</TD>
											<TD width="58%" height="100">
												<B>
													<p>
														<xsl:apply-templates select="/Response/PNR/AGENTINFO"/>
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
									<FONT face="Arial" color="#ffffff" size="5">行程單</FONT>
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
													<SPAN style="FONT-SIZE: 10.5pt; FONT-FAMILY: Times New Roman">PNR號碼</SPAN>
													<SPAN style="FONT-SIZE: 10.5pt; FONT-FAMILY: Times New Roman">: 
            </SPAN>
												</B>
												<SPAN style="FONT-SIZE: 10.5pt; FONT-FAMILY: Times New Roman">
													<xsl:value-of select="/Response/PNR/PNRNO"/>
												</SPAN>
											</TD>
											<TD width="50%">
												<B>
													<SPAN style="FONT-SIZE: 10.5pt; FONT-FAMILY: Times New Roman">日期</SPAN>
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
									<SPAN style="FONT-SIZE: 10.5pt; FONT-FAMILY: Times New Roman">旅客列表:</SPAN>
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
												<xsl:apply-templates select="/Response/PNR/NMs"/>
												<xsl:apply-templates select="/Response/PNR/XNs"/>
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
							<xsl:apply-templates select="/Response/PNR/SGs"/>
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
											<TD width="397">　</TD>
											<TD width="188">　</TD>
										</TR>
										<TR>
											<TD width="397">
												<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋體">付款方式：<xsl:value-of select="/Response/PNR/FPs/FP/FP1/CashOrCheck"/>
													<xsl:value-of select="/Response/PNR/FPs/FP/FP2/card"/>
												</SPAN>
											</TD>
											<TD width="188">
												<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋體">稅款：</SPAN>
												<table border="0" width="100%" cellSpacing="2">
													<xsl:apply-templates select="/Response/PNR/FNs/FN/tax"/>
												</table>
											</TD>
										</TR>
										<TR>
											<TD width="591" colSpan="2">
												<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋體">機票款：<xsl:value-of select="/Response/PNR/FNs/FN/fcur/price"/>
													<xsl:value-of select="/Response/PNR/FNs/FN/fcur/CurUnit"/>
												</SPAN>
											</TD>
										</TR>
										<TR>
											<TD width="591" colSpan="2">
												<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋體">總 額：<xsl:value-of select="/Response/PNR/FNs/FN/acur/price"/>
													<xsl:value-of select="/Response/PNR/FNs/FN/acur/CurUnit"/>
												</SPAN>
											</TD>
										</TR>
									</TBODY>
								</table>
							</TD>
							<TD width="15">　</TD>
						</TR>
						<TR>
							<TD width="3%" height="16"/>
							<TD width="95%" height="16">
								<TABLE cellSpacing="1" width="100%" border="0">
									<TBODY>
										<TR>
											<TD>
												<P class="MsoNormal">　</P>
												<P class="MsoNormal">
													<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋體">
														<B>備註:</B>
													</SPAN>
												</P>
												<P class="MsoNormal" style="MARGIN-LEFT: 21pt; TEXT-INDENT: -21pt; mso-list: l0 level1 lfo1; tab-stops: list 21.0pt">
													<SPAN lang="EN-US" style="FONT-SIZE: 12pt; FONT-FAMILY: Wingdings"/>
													<SPAN style="FONT-FAMILY: 宋體; mso-ascii-font-family: Times New Roman; mso-hansi-font-family: Times New Roman">
														<xsl:for-each select="/Response/PNR/REMARK/LINE">
															<li>
																<xsl:value-of select="."/>
															</li>
														</xsl:for-each>														
													</SPAN>
													<SPAN lang="EN-US" style="FONT-SIZE: 12pt"/>
												</P>
											</TD>
										</TR>
										<TR>
											<TD>　</TD>
										</TR>
										<!--注意事項-->
									</TBODY>
								</TABLE>
							</TD>
							<TD width="2%">　</TD>
						</TR>
					</TBODY>
				</TABLE>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="/Response/PNR/NMs">
		<tr>
			<xsl:for-each select="NM">
				<xsl:value-of select="position()"/>
				<font>.</font>
				<xsl:value-of select="name"/>
				<font>&#x20;&#x20;</font>
			</xsl:for-each>
		</tr>
	</xsl:template>
	
	<xsl:template match="/Response/PNR/XNs">
		
		<tr>
			<xsl:for-each select="XN">
				<xsl:value-of select="position()"/>
				<font>.</font>
				<xsl:value-of select="name"/>(兒童)
				<font>&#x20;&#x20;</font>
			</xsl:for-each>
		</tr>
	</xsl:template>
	<xsl:template match="/Response/PNR/SGs">
		<!--行程單資訊:航段資訊-->
			<TD width="3%" high="10"/>
		<TD>
			<table border="0" cellSpacing="1" width="95%">
				<TBODY>
					<TR>
						<TD align="middle" width="110">
							<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋體">始發地</SPAN>
							<SPAN lang="EN-US" style="FONT-SIZE: 12pt; FONT-FAMILY: Times New Roman">/</SPAN>
							<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋體">目的地</SPAN>
						</TD>
						<TD align="middle" width="52">
							<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋體">乘運人</SPAN>
						</TD>
						<TD align="middle" width="61">
							<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋體">航班號</SPAN>
						</TD>
						<TD align="middle" width="70">
							<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋體">座位等級</SPAN>
						</TD>
						<TD align="middle">
							<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋體">日期</SPAN>
						</TD>
						<TD align="middle" width="64">
							<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋體">時間</SPAN>
						</TD>
						<TD align="middle" width="81">
							<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋體">座位狀態</SPAN>
						</TD>
						<TD align="middle" width="60">
							<SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋體">座位數</SPAN>
						</TD>
					</TR>
					<TR>
						<TD align="middle" colSpan="8">
							<HR/>
						</TD>
					</TR>
					<xsl:for-each select="SG">
						<xsl:apply-templates select="NORMAL"/>
						<xsl:apply-templates select="OPEN"/>
						<xsl:apply-templates select="INFO"/>
						<xsl:apply-templates select="ARNK"/>
						<xsl:if test="position()=last()">
							<tr>
								<td align="middle" width="110">
									<xsl:value-of select="NORMAL/dest"/>
									<xsl:value-of select="INFO/dest"/>
									<xsl:value-of select="ARNK/dest"/>
									<xsl:value-of select="OPEN/dest"/>
								</td>
								<td align="middle" width="52"/>
								<td align="middle" width="61"/>
								<td align="middle" width="70"/>
								<td align="middle"/>
								<td align="middle" width="64"/>
								<td align="middle" width="81"/>
								<td align="middle" width="50"/>
							</tr>
						</xsl:if>
					</xsl:for-each>
				</TBODY>
			</table>
		</TD>
	</xsl:template>
	<xsl:template match="/Response/PNR/FNs/FN/tax">
		<xsl:value-of select="price"/>
		<xsl:value-of select="CurUnit"/>
		<xsl:value-of select="country"/>
		<br/>
	</xsl:template>
	<!--四種航段資訊-->
	<xsl:template match="NORMAL">
		<tr>
			<td align="middle" width="110">
				<xsl:value-of select="origin"/>
			</td>
			<td align="middle" width="52">
				<xsl:value-of select="airlineP"/>
			</td>
			<td align="middle" width="61">
				<xsl:value-of select="fltno"/>
			</td>
			<td align="middle" width="70">
				<xsl:value-of select="class"/>
			</td>
			<td align="middle">
				<xsl:value-of select="date"/>
			</td>
			<td align="middle" width="64">
				<xsl:value-of select="depTime"/>
			</td>
			<td align="middle" width="81">
				<xsl:value-of select="actCode"/>
			</td>
			<td align="middle" width="50">
				<xsl:value-of select="seats"/>
			</td>
		</tr>
	</xsl:template>
	<xsl:template match="OPEN">
		<tr>
			<td align="middle" width="110">
				<xsl:value-of select="origin"/>
			</td>
			<td align="middle" width="52">
				<xsl:value-of select="airlineP"/>
			</td>
			<td align="middle" width="61">
				<xsl:value-of select="fltno"/>
			</td>
			<td align="middle" width="70">
				<xsl:value-of select="class"/>
			</td>
			<td align="middle">
				<xsl:value-of select="date"/>
			</td>
			<td align="middle" width="64">
				<xsl:value-of select="depTime"/>
			</td>
			<td align="middle" width="81">
				<xsl:value-of select="actCode"/>
			</td>
			<td align="middle" width="50">
				<xsl:value-of select="seats"/>
			</td>
		</tr>
	</xsl:template>
	<xsl:template match="ARNK">
		<tr>
			<td align="middle" width="110">
				<xsl:value-of select="origin"/>
			</td>
			<td align="middle" width="52">
				<xsl:value-of select="airlineP"/>
			</td>
			<td align="middle" width="61">
				<xsl:value-of select="fltno"/>
			</td>
			<td align="middle" width="70">
				<xsl:value-of select="class"/>
			</td>
			<td align="middle">
				<xsl:value-of select="date"/>
			</td>
			<td align="middle" width="64">
				<xsl:value-of select="depTime"/>
			</td>
			<td align="middle" width="81">
				<xsl:value-of select="actCode"/>
			</td>
			<td align="middle" width="50">
				<xsl:value-of select="seats"/>
			</td>
		</tr>
	</xsl:template>
	<xsl:template match="INFO">
		<tr>
			<td align="middle" width="110">
				<xsl:value-of select="origin"/>
			</td>
			<td align="middle" width="52">
				<xsl:value-of select="airlineP"/>
			</td>
			<td align="middle" width="61">
				<xsl:value-of select="fltno"/>
			</td>
			<td align="middle" width="70">
				<xsl:value-of select="class"/>
			</td>
			<td align="middle">
				<xsl:value-of select="date"/>
			</td>
			<td align="middle" width="64">
				<xsl:value-of select="depTime"/>
			</td>
			<td align="middle" width="81">
				<xsl:value-of select="actCode"/>
			</td>
			<td align="middle" width="50">
				<xsl:value-of select="seats"/>
			</td>
		</tr>
	</xsl:template>
	<xsl:template match="/Response/PNR/AGENTINFO">
		<xsl:value-of select="NAME"/>
		<br/>
    電話：<xsl:value-of select="CONTACTINFO/PHONE"/>
		<br/>
    傳真：<xsl:value-of select="CONTACTINFO/FAX"/>
		<br/>
	 地址：<xsl:value-of select="CONTACTINFO/ADDRESS"/>
	</xsl:template>
</xsl:stylesheet>

