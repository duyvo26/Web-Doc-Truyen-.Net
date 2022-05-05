<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Theme.Master" AutoEventWireup="true" CodeBehind="ThemTruyen.aspx.cs" Inherits="WebTruyenV6.Admin.Truyens.ThemTruyen" %>

<%@ Register Src="~/Control_Admin/Truyens/UiThemTruyen.ascx" TagPrefix="uc1" TagName="UiThemTruyen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:UiThemTruyen runat="server" id="UiThemTruyen" />
</asp:Content>
