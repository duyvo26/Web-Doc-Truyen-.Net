<%@ Page Title="" Language="C#" MasterPageFile="~/Theme/NguoiDung.Master" AutoEventWireup="true" CodeBehind="CapNhatTruyen.aspx.cs" Inherits="WebTruyenV6.QuanLyTruyen.CapNhatTruyen" %>

<%@ Register Src="~/Control_NguoiDung/QuanLyTruyen/UiCapNhatTruyen.ascx" TagPrefix="uc1" TagName="UiCapNhatTruyen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PhanNoiDung" runat="server">
    <uc1:UiCapNhatTruyen runat="server" id="UiCapNhatTruyen" />
</asp:Content>
