<%@ Page Title="" Language="C#" MasterPageFile="~/Theme/NguoiDung.Master" AutoEventWireup="true" CodeBehind="ThongTinTruyen.aspx.cs" Inherits="WebTruyenV6.TrangTruyen.ThongTinTruyen" %>

<%@ Register Src="~/Control_NguoiDung/TrangTruyen/UiThongTinTruyen.ascx" TagPrefix="uc1" TagName="UiThongTinTruyen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PhanNoiDung" runat="server">
    <uc1:UiThongTinTruyen runat="server" id="UiThongTinTruyen" />
</asp:Content>
