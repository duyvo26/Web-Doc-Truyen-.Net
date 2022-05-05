<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Theme.Master" AutoEventWireup="true" CodeBehind="ThemChuong.aspx.cs" Inherits="WebTruyenV6.Admin.Chuongs.ThemChuong" %>

<%@ Register Src="~/Control_Admin/Chuongs/UiThemChuong.ascx" TagPrefix="uc1" TagName="UiThemChuong" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:UiThemChuong runat="server" id="UiThemChuong" />
</asp:Content>
