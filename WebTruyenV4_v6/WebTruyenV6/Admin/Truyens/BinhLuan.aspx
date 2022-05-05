<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Theme.Master" AutoEventWireup="true" CodeBehind="BinhLuan.aspx.cs" Inherits="WebTruyenV6.Admin.Truyens.BinhLuan" %>

<%@ Register Src="~/Control_Admin/Truyens/UiBinhLuan.ascx" TagPrefix="uc1" TagName="UiBinhLuan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:UiBinhLuan runat="server" id="UiBinhLuan" />
</asp:Content>
