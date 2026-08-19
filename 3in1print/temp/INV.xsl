<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xdt="http://www.w3.org/2005/xpath-datatypes">
	<xsl:template match="/">
		<html>
			<head>
				<title>INV</title>
			</head>
			<style>
.RedIn
{font-size:10.0pt;
color:red;
font-weight:bold;}
.RedInNoB
{font-size:9.0pt;
color:red;}
.Font8
{font-size:8.0pt;}
.Font6
{font-size:6.0pt;}
.Top
{border-top:.5pt solid windowtext;}
.Right
{border-right:.4pt solid windowtext;}
.Left
{border-left:.5pt solid windowtext;}
.Bottom
{border-bottom:.5pt solid windowtext;}
#Layer1 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:3;
	left: 4px;
	top: 15px;
	visibility: visible;
	white-space: pre;
}
			</style>
			<body>
				<xsl:if test="Response/ErrorReason != ''">
					<xsl:value-of select="Response/ErrorReason"/>
				</xsl:if>
				<xsl:if test="Response/VTINV != ''">
					<xsl:value-of select="Response/VTINV"/>
				</xsl:if>
				<xsl:if test="Response/VBLANKINV != ''">
					<xsl:value-of select="Response/VBLANKINV"/>
				</xsl:if>
				<xsl:if test="Response/TKT != ''">
					<table style="table-layout:fixed;font-family:Times New Roman;border-collapse:
 collapse;" border="0" cellpadding="0" cellspacing="0">
						<col width="47"/>
						<col width="22"/>
						<col width="82"/>
						<col width="18"/>
						<col width="26"/>
						<col width="45"/>
						<col width="44"/>
						<col width="17"/>
						<col width="29"/>
						<col width="42"/>
						<col width="44"/>
						<col width="80"/>
						<col width="55"/>
						<col width="55"/>
						<col width="45"/>
						<tr>
							<td colspan="15" align="right" class="RedIn">
								<xsl:value-of select="Response/INV_ID"/>
							</td>
						</tr>
						<tr height="19" class="Font8">
							<td colspan="4" class="Top Right Left">旅客姓名 PASSENGER NAME</td>
							<td colspan="6" class="Top Right">有效身份证件号码 ID.NO.</td>
							<td colspan="5" class="Top Right">签注 ENDORSEMENTS/RESTRICTIONS(CARBON)</td>
						</tr>
						<tr height="23" class="RedIn">
							<td colspan="4" class="Bottom Right Left">
								<xsl:value-of select="Response/INV/PASSENGER_NAME"/>
							</td>
							<td colspan="6" class="Bottom Right">
								<xsl:value-of select="Response/INV/ID.NO."/>
							</td>
							<td colspan="5" class="Bottom Right">
								<xsl:value-of select="Response/INV/CARBON"/>
							</td>
						</tr>
						<tr height="14" class="Font6" align="center">
							<td colspan="3" rowspan="2" class="RedIn Bottom Left Right" align="left">
								<xsl:value-of select="Response/INV/PNR"/>
							</td>
							<td colspan="2" class="Right">承运人</td>
							<td class="Right">航班号</td>
							<td class="Right">座们等级</td>
							<td class="Right" colspan="2">日期</td>
							<td class="Right">时间</td>
							<td class="Right" colspan="2">客票级别/客票类别</td>
							<td class="Right">客票生效日期</td>
							<td class="Right">有效截止日期</td>
							<td class="Right">免费行李</td>
						</tr>
						<tr height="14" style="font-size:6.0pt;" align="center">
							<td class="Right Bottom" colspan="2">CARRIER</td>
							<td class="Right Bottom">FLIGHT</td>
							<td class="Right Bottom">CLASS</td>
							<td class="Right Bottom" colspan="2">DATE</td>
							<td class="Right Bottom">TIME</td>
							<td class="Right Bottom" colspan="2">FARE BASIS</td>
							<td class="Right Bottom">NOT VALID BEFORE</td>
							<td class="Right Bottom">NOT VALID AFTER</td>
							<td class="Right Bottom">ALLOW</td>
						</tr>
						<tr height="15" class="RedIn">
							<td class="Left">　</td>
							<td class="Right" colspan="2" rowspan="2">
							</td>
							<td class="Right" colspan="2" rowspan="2">
							</td>
							<td class="Right" rowspan="2">
							</td>
							<td class="Right" rowspan="2">
							</td>
							<td class="Right" colspan="2" rowspan="2">
							</td>
							<td class="Right" rowspan="2">
							</td>
							<td class="Right" colspan="2" rowspan="2">
							</td>
							<td class="Right" rowspan="2">
							</td>
							<td class="Right" rowspan="2">
							</td>
							<td class="Right" rowspan="2">
							</td>
						</tr>
						<tr height="17" class="Font8">
							<td class="Left">自 FROM</td>
						</tr>
						<tr height="17" class="RedIn">
							<td class="Left">　</td>
							<td class="Right" colspan="2" rowspan="2">
							</td>
							<td class="Right" colspan="2" rowspan="2">
							</td>
							<td class="Right" rowspan="2">
							</td>
							<td class="Right" rowspan="2">
							</td>
							<td class="Right" colspan="2" rowspan="2">
							</td>
							<td class="Right" rowspan="2">
							</td>
							<td class="Right" colspan="2" rowspan="2">
							</td>
							<td class="Right" rowspan="2">
							</td>
							<td class="Right" rowspan="2">
							</td>
							<td class="Right" rowspan="2">
							</td>
						</tr>
						<tr height="17" class="Font8">
							<td class="Left">至 TO</td>
						</tr>
						<tr height="17" class="RedIn">
							<td class="Left">　</td>
							<td class="Right" colspan="2" rowspan="2">
							</td>
							<td class="Right" colspan="2" rowspan="2">
							</td>
							<td class="Right" rowspan="2">
							</td>
							<td class="Right" rowspan="2">
							</td>
							<td class="Right" colspan="2" rowspan="2">
							</td>
							<td class="Right" rowspan="2">
							</td>
							<td class="Right" colspan="2" rowspan="2">
							</td>
							<td class="Right" rowspan="2">
							</td>
							<td class="Right" rowspan="2">
							</td>
							<td class="Right" rowspan="2">
							</td>
						</tr>
						<tr height="17" class="Font8">
							<td class="Left">至 TO</td>
						</tr>
						<tr height="17" class="RedIn">
							<td class="Left">　</td>
							<td class="Right" colspan="2" rowspan="2">
							</td>
							<td class="Right Bottom" colspan="2" rowspan="2">
							</td>
							<td class="Right Bottom" rowspan="2">
							</td>
							<td class="Right Bottom" rowspan="2">
							</td>
							<td class="Right Bottom" colspan="2" rowspan="2">
							</td>
							<td class="Right Bottom" rowspan="2">
							</td>
							<td class="Right Bottom" colspan="2" rowspan="2">
							</td>
							<td class="Right Bottom" rowspan="2">
							</td>
							<td class="Right Bottom" rowspan="2">
							</td>
							<td class="Right Bottom" rowspan="2">
							</td>
						</tr>
						<tr height="17" class="Font8">
							<td class="Left">至 TO</td>
						</tr>
						<tr height="17" style="font-size:6.0pt;background:#FFCC99;">
							<td class="Left" style="background:#FFFFFF;">　</td>
							<td class="RedIn Right Bottom" colspan="2" rowspan="2" style="background:#FFFFFF;">
							</td>
							<td class="Right" colspan="3">票价FARE</td>
							<td class="Right" colspan="3">民航发展基金 CAAC DEVELOPMENT FUND</td>
							<td class="Right" colspan="2">燃油附加费 FUEL SURCHARGE</td>
							<td class="Right">其他税费 OTHER TAXS</td>
							<td class="Right" colspan="3">合计 TOTAL</td>
						</tr>
						<tr height="17" style="font-size:9.0pt;background:#FFCC99;">
							<td class="Left Bottom" style="font-size:8.0pt;background:#FFFFFF;">至 TO</td>
							<td class="Right Bottom RedInNoB" colspan="3">
							</td>
							<td class="Right Bottom RedInNoB" colspan="3">
							</td>
							<td class="Right Bottom RedInNoB" colspan="2">
							</td>
							<td class="Right Bottom RedInNoB">
							</td>
							<td class="Right Bottom RedInNoB" colspan="3">
							</td>
						</tr>
						<tr height="18" class="Font8">
							<td class="Left" colspan="2">电子客票号码</td>
							<td class="RedIn Bottom" colspan="3" rowspan="2">
							</td>
							<td>验证码</td>
							<td class="RedIn Bottom" colspan="2" rowspan="2">
							</td>
							<td colspan="2">连续客票</td>
							<td class="RedIn Right Bottom" colspan="3" rowspan="2">
							</td>
							<td>保险费</td>
							<td class="RedIn Right Bottom" rowspan="2">
							</td>
						</tr>
						<tr height="15" style="font-size:6.0pt;">
							<td class="Left Bottom" colspan="2">E-TICKET NO</td>
							<td class="Bottom">CK</td>
							<td class="Bottom" colspan="2">CONJUNCTION TKT</td>
							<td class="Bottom">INSURANCE</td>
						</tr>
						<tr height="16" class="Font8">
							<td class="Left" colspan="2">销售单位代号</td>
							<td class="RedIn" colspan="3">
							</td>
							<td colspan="2">填开单位 (盖章)</td>
							<td class="RedIn" colspan="5"/>
							<td>填开日期</td>
							<td class="Right RedIn" colspan="2">
							</td>
						</tr>
						<tr height="18" style="font-size:6.0pt;">
							<td class="Left Bottom" colspan="2">AGENT CODE</td>
							<td class="Bottom RedIn" colspan="3">
							</td>
							<td class="Bottom">ISSUED BY</td>
							<td class="Bottom">　</td>
							<td class="Bottom RedIn" colspan="5">
							</td>
							<td class="Bottom">ISSUED DATE</td>
							<td class="Bottom Right" colspan="2"/>
						</tr>
					</table>
					<div style="z-index: 1; left: 60px; top:10px; visibility: visible; font-size:14px; color:red" id="layer1">
						<pre style="line-height:8.5px">
							<xsl:value-of select="/Response/TKT"/>
						</pre>
					</div>
				</xsl:if>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
