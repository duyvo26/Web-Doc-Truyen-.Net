﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Theme.Master" AutoEventWireup="true" CodeBehind="DanhSach.aspx.cs" Inherits="WebTruyenV6.Admin.Chuongs.DanhSach" %>

<%@ Register Src="~/Control_Admin/Chuongs/UiDanhSach.ascx" TagPrefix="uc1" TagName="UiDanhSach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:UiDanhSach runat="server" id="UiDanhSach" />
</asp:Content>
