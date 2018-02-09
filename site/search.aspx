<%@ Page Title="" Language="VB" MasterPageFile="~/main.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="Server">


    <form runat="server" id="form">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>


        <div id="modal-full" class="jen-modal-full jen-modal" jen-modal>
            <div class="jen-modal-dialog jen-flex jen-flex-center jen-flex-middle" jen-height-viewport>
                <button class="jen-modal-close-full" type="button" jen-close></button>
                <div class="jen-search jen-search-large" action="/search.aspx" method="get" enctype="multipart/form-data">
                    <input type="text"
                        class="jen-search-input jen-text-center"
                        id="txtSearch"
                        onkeydown="if (event.keyCode == 13)
                        doSomething();"
                        placeholder="Search..." autofocus />
                </div>
            </div>
        </div>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">

            <ContentTemplate>

                <div class="jen-overflow-auto">


                    <div class="jen-search jen-search-navbar">
                        <span jen-search-icon></span>
                        <asp:TextBox ID="txtSearching" runat="server" class="jen-search-input" type="search" placeholder="Search..."></asp:TextBox>
                    </div>

                    <br />
                    <br />

                    <asp:GridView ID="dgvSearch" runat="server" CssClass="jen-table jen-table-hover jen-table-middle jen-table-divider"></asp:GridView>
                    <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>

                </div>


            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="txtSearching" EventName="TextChanged" />
            </Triggers>
        </asp:UpdatePanel>


    </form>



</asp:Content>

