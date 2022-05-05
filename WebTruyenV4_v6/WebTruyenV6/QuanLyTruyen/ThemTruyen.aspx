<%@ Page Title="" Language="C#" MasterPageFile="~/Theme/NguoiDung.Master" AutoEventWireup="true" CodeBehind="ThemTruyen.aspx.cs" Inherits="WebTruyenV6.QuanLyTruyen.ThemTruyen" %>

<%@ Register Src="~/Control_NguoiDung/QuanLyTruyen/UiThemTruyen.ascx" TagPrefix="uc1" TagName="UiThemTruyen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PhanNoiDung" runat="server">
    <uc1:UiThemTruyen runat="server" id="UiThemTruyen" />
</asp:Content>
