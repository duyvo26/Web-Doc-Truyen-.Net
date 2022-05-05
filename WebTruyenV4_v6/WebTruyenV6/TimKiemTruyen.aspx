<%@ Page Title="" Language="C#" MasterPageFile="~/Theme/NguoiDung.Master" AutoEventWireup="true" CodeBehind="TimKiemTruyen.aspx.cs" Inherits="WebTruyenV6.TimKiemTruyen" %>

<%@ Register Src="~/Control_NguoiDung/UiTimKiemTruyen.ascx" TagPrefix="uc1" TagName="UiTimKiemTruyen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PhanNoiDung" runat="server">
    <uc1:UiTimKiemTruyen runat="server" id="UiTimKiemTruyen" />
</asp:Content>
