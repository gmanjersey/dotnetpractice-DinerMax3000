<%@ Page Title="" Language="C#" MasterPageFile="~/DinerMax3000MasterPage.Master" AutoEventWireup="true" CodeBehind="Menus.aspx.cs" Inherits="DinerMax3000.Web.Menus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">
    <asp:GridView CssClass="MenuGridViews" ID="gvMenu" OnRowDataBound ="gvMenu_RowDataBound"   AutoGenerateColumns ="false"  DataSourceID ="odsMenu"  runat ="server">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                   <div class="MenuHeadings">  <%#Eval("Name") %> </div>
                    <asp:GridView CssClass="MenuGridViews"  ID="gvMenuItems" runat="server"></asp:GridView>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="odsMenu" runat="server" SelectMethod="GetAllMenus" TypeName="DinerMax3000.Business.Menu"></asp:ObjectDataSource>
</asp:Content>
