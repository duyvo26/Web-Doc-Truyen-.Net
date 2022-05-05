<%@ Page Title="" Language="C#" MasterPageFile="~/Theme/NguoiDung.Master" AutoEventWireup="true" CodeBehind="Danhsachchuong.aspx.cs" Inherits="WebTruyenV6.QuanLyTruyen.Danhsachchuong" %>

<%@ Register Src="~/Control_NguoiDung/QuanLyTruyen/UiDanhSachChuong.ascx" TagPrefix="uc1" TagName="UiDanhSachChuong" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PhanNoiDung" runat="server">
    <uc1:UiDanhSachChuong runat="server" id="UiDanhSachChuong" />

</asp:Content>
