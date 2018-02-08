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

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" rowspan="6">&nbsp;</td>
                    <td colspan="2">Search Criteria</td>
                </tr>
                <tr>
                    <td class="auto-style5">ID:</td>
                    <td>
                        <asp:TextBox ID="txtstudid" runat="server" CssClass="auto-style4" Width="157px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Last Name:</td>
                    <td>
                        <asp:TextBox ID="txtlname" runat="server" CssClass="auto-style4" Width="157px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">First Name</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtfname" runat="server" Width="158px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="margin-left: auto; margin-right: auto;">
                        <asp:Button ID="btnSearch" runat="server" Text="Search" Width="616px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="grdStudents" AutoGenerateColumns="False"
                            CssClass="GridView" runat="server" Width="75%" AllowPaging="True"
                            AllowSorting="True" PageSize="2">
                            <PagerSettings Mode="NextPreviousFirstLast" FirstPageText="Go To First Page" LastPageText="Go To Last Page"
                                Position="Top" />
                            <Columns>
                                <asp:TemplateField HeaderText="Customer ID" ControlStyle-Width="35 px" ItemStyle-Width="35 px">

                                    <HeaderTemplate>
                                        <asp:CheckBox ID="cbSelectAll" runat="server" />
                                        &nbsp;
                <asp:LinkButton ID="lbtnDelete" runat="server" OnCommand="Delete_Click"
                    CommandName="lbtnDelete" CommandArgument='<%#Eval("CliID") %>'>Delete</asp:LinkButton>
                                    </HeaderTemplate>


                                    <ItemTemplate>
                                        <asp:CheckBox ID="chkStudId" runat="server" AutoPostBack="false" />
                                        <asp:Label ID="hidStudID" runat="server" Text='<%#Eval("CliID") %>' Visible="false"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="FName" HeaderText="First Name" SortExpression="FName" />
                                <asp:BoundField DataField="LName" HeaderText="Last Name" SortExpression="LName" />
                                <asp:BoundField HeaderText="Gender" DataField="Gender" SortExpression="Gender" />
                                <asp:HyperLinkField DataNavigateUrlFields="CliID" DataNavigateUrlFormatString="Display.aspx?IDS={0}"
                                    HeaderText="View" Text="View" Target="_blank">
                                    <HeaderStyle HorizontalAlign="Left" />
                                </asp:HyperLinkField>
                                <asp:TemplateField HeaderText="Edit" ItemStyle-Width="75 px">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lbtnEdit" runat="server"
                                            OnCommand="lbtnEdit_Click" CommandName="lbtnEdit"
                                            CommandArgument='<% # Eval("CliID")%>'>Edit</asp:LinkButton>&nbsp;&nbsp;
                                    </ItemTemplate>
                                    <ItemTemplate>

                                        <asp:ImageButton ID="imgDelete" runat="server" CommandArgument='<% # Eval("CliID")%>' OnCommand="Delete_Click"
                                            CommandName="lbtnDelete" ImageUrl="~/images/delete.jpg" Height="30" Width="30" CausesValidation="false" />||
           <asp:ImageButton ID="imgEdit" runat="server" CommandArgument='<% # Eval("CliID") %>' OnCommand="lbtnEdit_Click"
               CommandName="lbtnEdit" ImageUrl="~/images/edit.jpg" Height="30" Width="30" CausesValidation="false" />


                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Left" />

                                </asp:TemplateField>

                            </Columns>

                            <EmptyDataTemplate>
                                No Records Found Matching Your Search!
                            </EmptyDataTemplate>

                        </asp:GridView>
                    </td>
                </tr>
            </table>

        </div>
        <asp:Label ID="lblError" runat="server" Text="Please Enter Something to Search"></asp:Label>









    </form>



</asp:Content>

