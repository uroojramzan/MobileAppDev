<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="students.aspx.cs" Inherits="WebApplication6.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="well-lg">
        <asp:GridView CssClass="table table-bordered" runat="server" ID="gvstd" OnRowCommand="gvstd_RowCommand1"
            AutoGenerateColumns="false" DataKeyNames="ID" OnSelectedIndexChanged="gvstd_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="RollNo" HeaderText="Roll Number" SortExpression="RollNuumber" />
                <asp:BoundField DataField="Name" HeaderText="Full Name" SortExpression="FullName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                
                <asp:ButtonField ButtonType="Button" Text="Edit" CommandName="EditRow"  ControlStyle-CssClass="btn btn-default"></asp:ButtonField>
                <asp:ButtonField ButtonType="Button" Text="delete" CommandName="deleterow"  ControlStyle-CssClass="btn btn-default"></asp:ButtonField>
                <asp:TemplateField >
                    <ItemTemplate>
                        <asp:LinkButton runat="server"  Text="confirm and delete" CommandName="deleterow" CommandArgument="<%#Container.DataItemIndex %>"  OnClientClick="return confirm('Are you Sure?')"  CssClass="btn btn-danger"  ></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                
            </Columns>
        </asp:GridView>
    </div>
    <div class="well-lg">
        <asp:Button runat="server" Text="Add New" CssClass="btn btn-primary" OnClick="Unnamed_Click1" />
       

    </div>
</asp:Content>

