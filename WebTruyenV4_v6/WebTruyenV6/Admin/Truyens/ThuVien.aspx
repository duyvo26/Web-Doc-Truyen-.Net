<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Theme.Master" AutoEventWireup="true" CodeBehind="ThuVien.aspx.cs" Inherits="WebTruyenV6.Admin.Truyens.ThuVien" %>

<%@ Register Src="~/Control_Admin/Truyens/UiThuVien.ascx" TagPrefix="uc1" TagName="UiThuVien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:UiThuVien runat="server" id="UiThuVien" />
</asp:Content>
