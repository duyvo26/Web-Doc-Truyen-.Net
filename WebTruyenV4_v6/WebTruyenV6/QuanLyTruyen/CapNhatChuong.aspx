<%@ Page Title="" Language="C#" MasterPageFile="~/Theme/NguoiDung.Master" AutoEventWireup="true" CodeBehind="CapNhatChuong.aspx.cs" Inherits="WebTruyenV6.QuanLyTruyen.CapNhatChuong" %>

<%@ Register Src="~/Control_NguoiDung/QuanLyTruyen/UiCapNhatChuong.ascx" TagPrefix="uc1" TagName="UiCapNhatChuong" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PhanNoiDung" runat="server">
    <uc1:UiCapNhatChuong runat="server" id="UiCapNhatChuong" />
</asp:Content>
