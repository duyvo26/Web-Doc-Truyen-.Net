<%@ Page Title="" Language="C#" MasterPageFile="~/Theme/NguoiDung.Master" AutoEventWireup="true" CodeBehind="ThemChuong.aspx.cs" Inherits="WebTruyenV6.QuanLyTruyen.ThemChuong" %>

<%@ Register Src="~/Control_NguoiDung/QuanLyTruyen/UiThemTruyen.ascx" TagPrefix="uc1" TagName="UiThemTruyen" %>
<%@ Register Src="~/Control_NguoiDung/QuanLyTruyen/UiThemChuong.ascx" TagPrefix="uc1" TagName="UiThemChuong" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PhanNoiDung" runat="server">
    <uc1:UiThemChuong runat="server" ID="UiThemChuong" />
</asp:Content>
