<%@ Page Title="" Language="VB" MasterPageFile="~/main.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="Server">


    <form runat="server" id="form">

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




        <div>

            <asp:GridView ID="dgvSearch" runat="server" CssClass="uk-table uk-table-hover uk-table-middle uk-table-divider"></asp:GridView>
            <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>

    </form>



</asp:Content>

