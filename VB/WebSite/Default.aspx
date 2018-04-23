<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v9.3, Version=9.3.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" KeyFieldName="ID"
			DataSourceID="LinqDataSource1">
			<Columns>
				<dx:GridViewCommandColumn VisibleIndex="0">
					<EditButton Visible="True">
					</EditButton>
				</dx:GridViewCommandColumn>
				<dx:GridViewDataTextColumn FieldName="ID" VisibleIndex="1">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="Value" VisibleIndex="2">
				</dx:GridViewDataTextColumn>
			</Columns>
		</dx:ASPxGridView>
		<asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClassesDataContext"
			EnableUpdate="True" TableName="DemoTables">
		</asp:LinqDataSource>
	</div>
	</form>
</body>
</html>