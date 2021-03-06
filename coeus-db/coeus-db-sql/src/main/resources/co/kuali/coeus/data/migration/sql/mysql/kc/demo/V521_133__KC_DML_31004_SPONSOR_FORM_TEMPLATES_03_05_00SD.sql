--
-- Kuali Coeus, a comprehensive research administration system for higher education.
-- 
-- Copyright 2005-2015 Kuali, Inc.
-- 
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU Affero General Public License as
-- published by the Free Software Foundation, either version 3 of the
-- License, or (at your option) any later version.
-- 
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU Affero General Public License for more details.
-- 
-- You should have received a copy of the GNU Affero General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.
--

DELIMITER /
INSERT INTO SEQ_SPONSOR_FORM_TEMPLATES VALUES(NULL)
/
INSERT INTO SPONSOR_FORM_TEMPLATES (SPONSOR_FORM_TEMPLATE_ID,SPONSOR_FORM_ID,PAGE_NUMBER,PAGE_DESCRIPTION,FILE_NAME,CONTENT_TYPE,FORM_TEMPLATE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
VALUES ((SELECT (MAX(ID)) FROM SEQ_SPONSOR_FORM_TEMPLATES),(SELECT SPONSOR_FORM_ID FROM SPONSOR_FORMS WHERE PACKAGE_NAME = 'NIH 2590 package (Coeus 4.0)'),5,'Personnel Report','Personnel Report.xslt','text/xml',
'<?xml version="1.0" encoding="UTF-8"?>
<!--Designed and generated by Altova StyleVision Enterprise Edition 2008 rel. 2 - see http://www.altova.com/stylevision for more information.-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:common="http://era.nih.gov/Projectmgmt/SBIR/CGAP/common.namespace" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:nih="http://era.nih.gov/Projectmgmt/SBIR/CGAP/nihspecific.namespace" xmlns:phs398="http://era.nih.gov/Projectmgmt/SBIR/CGAP/phs398.namespace" xmlns:rar="http://era.nih.gov/Projectmgmt/SBIR/CGAP/researchandrelated.namespace" xmlns:xdt="http://www.w3.org/2005/xpath-datatypes" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:output version="1.0" method="xml" encoding="UTF-8" indent="no"/>
<xsl:param name="SV_OutputFormat" select="''PDF''"/>
<xsl:variable name="XML" select="/"/>
<xsl:variable name="fo:layout-master-set">
<fo:layout-master-set>
<fo:simple-page-master master-name="default-page" page-height="11in" page-width="8.5in" margin-left="0.3in" margin-right="0.3in">
<fo:region-body margin-top="0.5in" margin-bottom="0.6in"/>
<fo:region-after extent="0.6in"/>
</fo:simple-page-master>
</fo:layout-master-set>
</xsl:variable>
<xsl:template match="/">
<fo:root>
<xsl:copy-of select="$fo:layout-master-set"/>
<fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
<xsl:call-template name="footerall"/>
<fo:flow flow-name="xsl-region-body">
<fo:block>
<xsl:for-each select="$XML">
<fo:block/>
<fo:inline font-family="Verdana" font-size="8pt" line-height="9pt">
<xsl:text>Principal Investigator/Program Director (Last, First, Middle):&#160; </xsl:text>
</fo:inline>
<fo:inline font-family="Verdana" font-size="9pt">
<xsl:text>&#160;</xsl:text>
</fo:inline>
<xsl:for-each select="nih:ResearchAndRelatedProject">
<xsl:for-each select="nih:ResearchCoverPage">
<xsl:for-each select="nih:ProgramDirectorPrincipalInvestigator">
<xsl:for-each select="Name">
<xsl:for-each select="LastName">
<xsl:variable name="value-of-template">
<xsl:apply-templates/>
</xsl:variable>
<xsl:choose>
<xsl:when test="contains(string($value-of-template),''&#x2029;'')">
<fo:block font-family="Verdana" font-size="8pt">
<xsl:copy-of select="$value-of-template"/>
</fo:block>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family="Verdana" font-size="8pt">
<xsl:copy-of select="$value-of-template"/>
</fo:inline>
</xsl:otherwise>
</xsl:choose>
</xsl:for-each>
<fo:inline font-size="10pt">
<xsl:text>, </xsl:text>
</fo:inline>
<xsl:for-each select="FirstName">
<xsl:variable name="value-of-template">
<xsl:apply-templates/>
</xsl:variable>
<xsl:choose>
<xsl:when test="contains(string($value-of-template),''&#x2029;'')">
<fo:block font-family="Verdana" font-size="8pt">
<xsl:copy-of select="$value-of-template"/>
</fo:block>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family="Verdana" font-size="8pt">
<xsl:copy-of select="$value-of-template"/>
</fo:inline>
</xsl:otherwise>
</xsl:choose>
</xsl:for-each>
<fo:inline font-size="10pt">
<xsl:text>&#160;</xsl:text>
</fo:inline>
<xsl:for-each select="MiddleName">
<xsl:variable name="value-of-template">
<xsl:apply-templates/>
</xsl:variable>
<xsl:choose>
<xsl:when test="contains(string($value-of-template),''&#x2029;'')">
<fo:block font-family="Verdana" font-size="8pt">
<xsl:copy-of select="$value-of-template"/>
</fo:block>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family="Verdana" font-size="8pt">
<xsl:copy-of select="$value-of-template"/>
</fo:inline>
</xsl:otherwise>
</xsl:choose>
</xsl:for-each>
</xsl:for-each>
</xsl:for-each>
</xsl:for-each>
</xsl:for-each>
<fo:inline-container>
<fo:block>
<xsl:text>&#x2029;</xsl:text>
</fo:block>
</fo:inline-container>
<fo:table table-layout="fixed" width="100%" border="solid 1pt gray" border-spacing="-1pt">
<fo:table-column column-width="8in"/>
<fo:table-body start-indent="0pt">
<fo:table-row>
<fo:table-cell border-bottom-style="none" border-left-style="none" border-right-style="none" border="solid 1pt gray" padding="0" text-align="center" display-align="center">
<fo:block>
<fo:block>
<fo:leader leader-pattern="space"/>
</fo:block>
<fo:inline-container>
<fo:block>
<xsl:text>&#x2029;</xsl:text>
</fo:block>
</fo:inline-container>
<fo:block margin="0pt">
<fo:block>
<fo:inline font-family="Verdana" font-size="9pt" font-weight="bold">
<xsl:text>DO NOT SUBMIT UNLESS REQUESTED</xsl:text>
</fo:inline>
</fo:block>
</fo:block>
<fo:block>
<fo:leader leader-pattern="space"/>
</fo:block>
<fo:inline-container>
<fo:block>
<xsl:text>&#x2029;</xsl:text>
</fo:block>
</fo:inline-container>
<fo:block margin="0pt">
<fo:block>
<fo:inline font-family="Verdana" font-size="9pt" font-weight="bold">
<xsl:text>Renewal Applications Only</xsl:text>
</fo:inline>
</fo:block>
</fo:block>
<fo:inline font-family="Verdana" font-size="9pt" font-weight="bold">
<xsl:text>SENIOR/KEY PERSONNEL REPORT</xsl:text>
</fo:inline>
</fo:block>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell border-bottom-style="none" border-left-style="none" border-right-style="none" font-weight="bold" border="solid 1pt gray" padding="0" text-align="center" display-align="center">
<fo:block>
<fo:inline font-size="9pt" font-weight="bold">
<xsl:text>All Senior/Key Personnel for the Current Budget Period</xsl:text>
</fo:inline>
</fo:block>
</fo:table-cell>
</fo:table-row>
</fo:table-body>
</fo:table>
<fo:inline-container>
<fo:block>
<xsl:text>&#x2029;</xsl:text>
</fo:block>
</fo:inline-container>
<fo:table table-layout="fixed" width="100%" border="solid 1pt gray" border-spacing="-1pt">
<fo:table-column column-width="2.5in"/>
<fo:table-column column-width="1in"/>
<fo:table-column column-width="1in"/>
<fo:table-column column-width="1.25in"/>
<fo:table-column column-width=".3in"/>
<fo:table-column column-width=".4in"/>
<fo:table-column column-width=".4in"/>
<fo:table-body start-indent="0pt">
<fo:table-row>
<fo:table-cell border-left-style="none" border-top-style="none" font-family="Verdana" font-size="8pt" font-weight="bold" border="solid 1pt gray" padding="0"display-align="center">
<fo:block>
<fo:inline>
<xsl:text>Name</xsl:text>
</fo:inline>
</fo:block>
</fo:table-cell>
<fo:table-cell border-top-style="none" font-family="Verdana" font-size="8pt" font-weight="bold" border="solid 1pt gray" padding="0" display-align="center">
<fo:block>
<fo:inline>
<xsl:text>Degree</xsl:text>
</fo:inline>
</fo:block>
</fo:table-cell>
<fo:table-cell border-top-style="none" font-family="Verdana" font-size="8pt" font-weight="bold" border="solid 1pt gray" padding="0" display-align="center">
<fo:block>
<fo:block>
<fo:leader leader-pattern="space"/>
</fo:block>
<fo:inline-container>
<fo:block>
<xsl:text>&#x2029;</xsl:text>
</fo:block>
</fo:inline-container>
<fo:block font-weight="bold" margin="0pt">
<fo:block>
<fo:inline>
<xsl:text>SSN</xsl:text>
</fo:inline>
</fo:block>
</fo:block>
<fo:inline>
<xsl:text>(last 4 digits)</xsl:text>
</fo:inline>
</fo:block>
</fo:table-cell>
<fo:table-cell border-top-style="none" font-family="Verdana" font-size="8pt" font-weight="bold" border="solid 1pt gray" padding="0" display-align="center">
<fo:block>
<fo:block>
<fo:leader leader-pattern="space"/>
</fo:block>
<fo:inline-container>
<fo:block>
<xsl:text>&#x2029;</xsl:text>
</fo:block>
</fo:inline-container>
<fo:block font-weight="bold" margin="0pt">
<fo:block>
<fo:inline>
<xsl:text>Role on Project</xsl:text>
</fo:inline>
</fo:block>
</fo:block>
<fo:inline>
<xsl:text>(e.g. PI, Res. Assoc.)</xsl:text>
</fo:inline>
</fo:block>
</fo:table-cell>
<fo:table-cell border-top-style="none" font-family="Verdana" font-size="8pt" font-weight="bold" border="solid 1pt gray" padding="0" text-align="center" display-align="center">
<fo:block>
<fo:block>
<fo:leader leader-pattern="space"/>
</fo:block>
<fo:inline-container>
<fo:block>
<xsl:text>&#x2029;</xsl:text>
</fo:block>
</fo:inline-container>
<fo:block font-weight="bold" margin="0pt">
<fo:block/>
</fo:block>
<fo:inline>
<xsl:text>Cal</xsl:text>
</fo:inline>
</fo:block>
</fo:table-cell>
<fo:table-cell border-right-style="none" border-top-style="none" font-family="Verdana" font-size="8pt" font-weight="bold" border="solid 1pt gray" padding="0" text-align="center" display-align="center">
<fo:block>
<fo:inline>
<xsl:text>Acad</xsl:text>
</fo:inline>
</fo:block>
</fo:table-cell>
<fo:table-cell border-right-style="none" border-top-style="none" font-family="Verdana" font-size="8pt" font-weight="bold" border="solid 1pt gray" padding="0" text-align="center" display-align="center">
<fo:block>
<fo:block>
<fo:leader leader-pattern="space"/>
</fo:block>
<fo:inline-container>
<fo:block>
<xsl:text>&#x2029;</xsl:text>
</fo:block>
</fo:inline-container>
<fo:block font-weight="bold" margin="0pt">
<fo:block>
<fo:inline>
<xsl:text>Sum</xsl:text>
</fo:inline>
</fo:block>
</fo:block>
</fo:block>
</fo:table-cell>
</fo:table-row>
</fo:table-body>
</fo:table>
<fo:block/>
<xsl:for-each select="nih:ResearchAndRelatedProject">
<fo:inline-container>
<fo:block>
<xsl:text>&#x2029;</xsl:text>
</fo:block>
</fo:inline-container>
<xsl:if test="ProposalPerson">
<fo:table table-layout="fixed" width="100%" border="solid 1pt gray" border-spacing="2pt">
<fo:table-column column-width="2.5in"/>
<fo:table-column column-width="1in"/>
<fo:table-column column-width="1in"/>
<fo:table-column column-width="1.25in"/>
<fo:table-column column-width=".3in"/>
<fo:table-column column-width=".4in"/>
<fo:table-column column-width=".4in"/>
<fo:table-body start-indent="0pt">
<xsl:for-each select="ProposalPerson">
<fo:table-row>
<fo:table-cell border-left-style="none" font-family="Verdana" font-size="8pt" border="solid 1pt gray" padding="2pt" height="32" text-align="left" display-align="center">
<fo:block>
<xsl:for-each select="Name">
<xsl:for-each select="LastName">
<xsl:variable name="value-of-template">
<xsl:apply-templates/>
</xsl:variable>
<xsl:choose>
<xsl:when test="contains(string($value-of-template),''&#x2029;'')">
<fo:block font-family="Verdana" font-size="8pt">
<xsl:copy-of select="$value-of-template"/>
</fo:block>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family="Verdana" font-size="8pt">
<xsl:copy-of select="$value-of-template"/>
</fo:inline>
</xsl:otherwise>
</xsl:choose>
</xsl:for-each>
<fo:inline font-size="9pt">
<xsl:text>, </xsl:text>
</fo:inline>
<xsl:for-each select="FirstName">
<xsl:variable name="value-of-template">
<xsl:apply-templates/>
</xsl:variable>
<xsl:choose>
<xsl:when test="contains(string($value-of-template),''&#x2029;'')">
<fo:block font-size="8pt">
<xsl:copy-of select="$value-of-template"/>
</fo:block>
</xsl:when>
<xsl:otherwise>
<fo:inline font-size="8pt">
<xsl:copy-of select="$value-of-template"/>
</fo:inline>
</xsl:otherwise>
</xsl:choose>
</xsl:for-each>
<fo:inline font-size="9pt">
<xsl:text>&#160;</xsl:text>
</fo:inline>
<xsl:for-each select="MiddleName">
<xsl:variable name="value-of-template">
<xsl:apply-templates/>
</xsl:variable>
<xsl:choose>
<xsl:when test="contains(string($value-of-template),''&#x2029;'')">
<fo:block font-size="8pt">
<xsl:copy-of select="$value-of-template"/>
</fo:block>
</xsl:when>
<xsl:otherwise>
<fo:inline font-size="8pt">
<xsl:copy-of select="$value-of-template"/>
</fo:inline>
</xsl:otherwise>
</xsl:choose>
</xsl:for-each>
<fo:inline font-size="9pt">
<xsl:text>&#160;</xsl:text>
</fo:inline>
<xsl:for-each select="NameSuffix">
<xsl:variable name="value-of-template">
<xsl:apply-templates/>
</xsl:variable>
<xsl:choose>
<xsl:when test="contains(string($value-of-template),''&#x2029;'')">
<fo:block font-size="8pt">
<xsl:copy-of select="$value-of-template"/>
</fo:block>
</xsl:when>
<xsl:otherwise>
<fo:inline font-size="8pt">
<xsl:copy-of select="$value-of-template"/>
</fo:inline>
</xsl:otherwise>
</xsl:choose>
</xsl:for-each>
</xsl:for-each>
</fo:block>
</fo:table-cell>
<fo:table-cell font-family="Verdana" font-size="8pt" border="solid 1pt gray" padding="2pt" height="32" text-align="left" display-align="center">
<fo:block>
<xsl:if test="Degree != &apos;Unknown&apos; and Degree != &apos;UNKNOWN&apos;">
<xsl:for-each select="Degree">
<xsl:variable name="value-of-template">
<xsl:apply-templates/>
</xsl:variable>
<xsl:choose>
<xsl:when test="contains(string($value-of-template),''&#x2029;'')">
<fo:block font-size="8pt">
<xsl:copy-of select="$value-of-template"/>
</fo:block>
</xsl:when>
<xsl:otherwise>
<fo:inline font-size="8pt">
<xsl:copy-of select="$value-of-template"/>
</fo:inline>
</xsl:otherwise>
</xsl:choose>
</xsl:for-each>
</xsl:if>
</fo:block>
</fo:table-cell>
<fo:table-cell font-family="Verdana" font-size="8pt" border="solid 1pt gray" padding="2pt" height="32" text-align="left" display-align="center">
<fo:block>
<xsl:for-each select="SSN">
<xsl:variable name="value-of-template">
<xsl:apply-templates/>
</xsl:variable>
<xsl:choose>
<xsl:when test="contains(string($value-of-template),''&#x2029;'')">
<fo:block font-size="8pt">
<xsl:copy-of select="$value-of-template"/>
</fo:block>
</xsl:when>
<xsl:otherwise>
<fo:inline font-size="8pt">
<xsl:copy-of select="$value-of-template"/>
</fo:inline>
</xsl:otherwise>
</xsl:choose>
</xsl:for-each>
</fo:block>
</fo:table-cell>
<fo:table-cell font-family="Verdana" font-size="8pt" border="solid 1pt gray" padding="2pt" height="32" text-align="left" display-align="center">
<fo:block>
<xsl:choose>
<xsl:when test="ProjectRole = &apos;Principal Investigator&apos; or ProjectRole=&apos;Co-PI&apos;">
<fo:inline>
<xsl:text>Principal Investigator</xsl:text>
</fo:inline>
</xsl:when>
<xsl:otherwise>
<xsl:for-each select="ProjectRole">
<xsl:variable name="value-of-template">
<xsl:apply-templates/>
</xsl:variable>
<xsl:choose>
<xsl:when test="contains(string($value-of-template),''&#x2029;'')">
<fo:block>
<xsl:copy-of select="$value-of-template"/>
</fo:block>
</xsl:when>
<xsl:otherwise>
<fo:inline>
<xsl:copy-of select="$value-of-template"/>
</fo:inline>
</xsl:otherwise>
</xsl:choose>
</xsl:for-each>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell>
<fo:table-cell font-family="Verdana" font-size="8pt" border="solid 1pt gray" padding="2pt" height="32" text-align="center" display-align="center">
<fo:block>
<xsl:for-each select="FundingMonths">
<xsl:variable name="value-of-template">
<xsl:apply-templates/>
</xsl:variable>
<xsl:choose>
<xsl:when test="contains(string($value-of-template),''&#x2029;'')">
<fo:block font-size="8pt">
<xsl:copy-of select="$value-of-template"/>
</fo:block>
</xsl:when>
<xsl:otherwise>
<fo:inline font-size="8pt">
<xsl:copy-of select="$value-of-template"/>
</fo:inline>
</xsl:otherwise>
</xsl:choose>
</xsl:for-each>
</fo:block>
</fo:table-cell>
<fo:table-cell border="solid 1pt gray" padding="2pt" display-align="before">
<fo:block>
<xsl:for-each select="AcademicFundingMonths">
<xsl:variable name="value-of-template">
<xsl:apply-templates/>
</xsl:variable>
<xsl:choose>
<xsl:when test="contains(string($value-of-template),''&#x2029;'')">
<fo:block font-family="Verdana" font-size="8pt">
<xsl:copy-of select="$value-of-template"/>
</fo:block>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family="Verdana" font-size="8pt">
<xsl:copy-of select="$value-of-template"/>
</fo:inline>
</xsl:otherwise>
</xsl:choose>
</xsl:for-each>
</fo:block>
</fo:table-cell>
<fo:table-cell border="solid 1pt gray" padding="2pt" display-align="before">
<fo:block>
<xsl:for-each select="SummerFundingMonths">
<xsl:variable name="value-of-template">
<xsl:apply-templates/>
</xsl:variable>
<xsl:choose>
<xsl:when test="contains(string($value-of-template),''&#x2029;'')">
<fo:block font-family="Verdana" font-size="8pt">
<xsl:copy-of select="$value-of-template"/>
</fo:block>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family="Verdana" font-size="8pt">
<xsl:copy-of select="$value-of-template"/>
</fo:inline>
</xsl:otherwise>
</xsl:choose>
</xsl:for-each>
</fo:block>
</fo:table-cell>
</fo:table-row>
</xsl:for-each>
</fo:table-body>
</fo:table>
</xsl:if>
</xsl:for-each>
<fo:block/>
<fo:block/>
<fo:block/>
<fo:block/>
</xsl:for-each>
</fo:block>
<fo:block id="SV_RefID_PageTotal"/>
</fo:flow>
</fo:page-sequence>
</fo:root>
</xsl:template>
<xsl:template name="footerall">
<fo:static-content flow-name="xsl-region-after">
<fo:block>
<xsl:for-each select="$XML">
<fo:inline-container>
<fo:block>
<xsl:text>&#x2029;</xsl:text>
</fo:block>
</fo:inline-container>
<fo:table table-layout="fixed" width="100%" border-spacing="2pt">
<fo:table-column column-width="286"/>
<fo:table-column column-width="proportional-column-width(1)"/>
<fo:table-column column-width="proportional-column-width(1)"/>
<fo:table-body start-indent="0pt">
<fo:table-row>
<fo:table-cell padding="0" number-columns-spanned="3" height="4" display-align="center">
<fo:block/>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell padding="2pt" display-align="center">
<fo:block>
<fo:inline font-family="Verdana" font-size="9pt">
<xsl:text>PHS 398 </xsl:text>
</fo:inline>
<fo:inline font-family="Verdana" font-size="9pt">
<xsl:text>(Rev.11/07)</xsl:text>
</fo:inline>
</fo:block>
</fo:table-cell>
<fo:table-cell padding="2pt" display-align="center">
<fo:block>
<fo:inline font-family="Verdana" font-size="9pt">
<xsl:text>Page:__</xsl:text>
</fo:inline>
</fo:block>
</fo:table-cell>
<fo:table-cell padding="2pt" text-align="right" display-align="center">
<fo:block>
<fo:inline font-family="Verdana" font-size="7pt" font-weight="bold">
<xsl:text>Senior/Key Personnel Report Format Page</xsl:text>
</fo:inline>
</fo:block>
</fo:table-cell>
</fo:table-row>
</fo:table-body>
</fo:table>
</xsl:for-each>
</fo:block>
</fo:static-content>
</xsl:template>
<xsl:template name="double-backslash">
<xsl:param name="text"/>
<xsl:param name="text-length"/>
<xsl:variable name="text-after-bs" select="substring-after($text, '''')"/>
<xsl:variable name="text-after-bs-length" select="string-length($text-after-bs)"/>
<xsl:choose>
<xsl:when test="$text-after-bs-length = 0">
<xsl:choose>
<xsl:when test="substring($text, $text-length) = ''''">
<xsl:value-of select="concat(substring($text,1,$text-length - 1), \'\'\\\'\')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$text"/>
</xsl:otherwise>
</xsl:choose>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="concat(substring($text,1,$text-length - $text-after-bs-length - 1), \'\'\\\'\')"/>
<xsl:call-template name="double-backslash">
<xsl:with-param name="text" select="$text-after-bs"/>
<xsl:with-param name="text-length" select="$text-after-bs-length"/>
</xsl:call-template>
</xsl:otherwise>
</xsl:choose>
</xsl:template>
</xsl:stylesheet>','admin',NOW(),UUID(),1)
/
DELIMITER ;
