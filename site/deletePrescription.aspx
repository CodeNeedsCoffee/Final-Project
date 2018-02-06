<%@ Page Title="" Language="VB" MasterPageFile="~/main.master" AutoEventWireup="false" CodeFile="deletePrescription.aspx.vb" Inherits="deletePrescription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="Server">
    <form id="form1" runat="server">

        <div id="modal-full" class="jen-modal-full jen-modal" jen-modal>
        <div class="jen-modal-dialog jen-flex jen-flex-center jen-flex-middle" jen-height-viewport>
            <button class="jen-modal-close-full" type="button" jen-close></button>
            <div class="jen-search jen-search-large" action="/search.aspx" method="get" enctype="multipart/form-data">
                <asp:TextBox ID="txtSearch" runat="server" class="jen-search-input jen-text-center" type="search" placeholder="Search..." autofocus></asp:TextBox>
            </div>


        </div>
    </div>

        <div class="jen-card jen-card-hover jen-card-body">
            <h3 class="jen-card-title">Delete Prescription</h3>
            <label style="vertical-align: text-top;">&nbsp RX Number</label>
            <div jen-form-custom="target: > * > span:first-child">
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem Selected="True" disabled>Please Select</asp:ListItem>
                    <asp:ListItem>01</asp:ListItem>
                    <asp:ListItem>02</asp:ListItem>
                    <asp:ListItem>03</asp:ListItem>
                    <asp:ListItem>04</asp:ListItem>
                </asp:DropDownList>
                <button class="jen-button jen-button-default" type="button" tabindex="-1">
                    <span></span>
                    <span jen-icon="icon: chevron-down"></span>
                </button>
            </div>


            <div class="jen-card jen-card-hover jen-card-body">

                <h3 class="jen-card-title">Preview Prescription</h3>
                <div class="jen-card jen-card-secondary jen-card-hover jen-card-body jen-light">
                    <div>
                        <label style="vertical-align: text-top;">Client ID</label>
                        <div jen-form-custom="target: > * > span:first-child">
                            <asp:DropDownList ID="ddlClientID" runat="server" Enabled="False">
                                <asp:ListItem Selected="True" disabled>Please Select</asp:ListItem>
                                <asp:ListItem>01</asp:ListItem>
                                <asp:ListItem>02</asp:ListItem>
                                <asp:ListItem>03</asp:ListItem>
                                <asp:ListItem>04</asp:ListItem>
                            </asp:DropDownList>
                            <button class="jen-button jen-button-default" type="button" tabindex="-1">
                                <span></span>
                                <span jen-icon="icon: chevron-down"></span>
                            </button>
                        </div>
                        <label style="vertical-align: text-top;">&nbsp Doctor ID</label>
                        <div jen-form-custom="target: > * > span:first-child">
                            <asp:DropDownList ID="ddlDoctorID" runat="server" Enabled="False">
                                <asp:ListItem Selected="True" disabled>Please Select</asp:ListItem>
                                <asp:ListItem>01</asp:ListItem>
                                <asp:ListItem>02</asp:ListItem>
                                <asp:ListItem>03</asp:ListItem>
                                <asp:ListItem>04</asp:ListItem>
                            </asp:DropDownList>
                            <button class="jen-button jen-button-default" type="button" tabindex="-1">
                                <span></span>
                                <span jen-icon="icon: chevron-down"></span>
                            </button>
                        </div>
                    </div>
                    <h3 class="jen-card-title">Prescription</h3>
                    <div class="jen-margin">
                        <label>Number of Refills</label>
                        <br />
                        <div class="jen-inline">
                            <span class="jen-form-icon" jen-icon="icon: tag"></span>
                            <asp:TextBox ID="txtClientFname" runat="server" CssClass="jen-input" Style="width: 500px" disabled></asp:TextBox>
                        </div>
                        <br />
                        <label>Medicine Name</label>
                        <br />
                        <div class="jen-inline">
                            <span class="jen-form-icon" jen-icon="icon: bookmark"></span>
                            <asp:TextBox ID="txtClientMidInt" runat="server" CssClass="jen-input" Style="width: 500px" disabled></asp:TextBox>
                        </div>
                        <br />
                        <label>Date Ordered</label>
                        <br />
                        <div class="jen-inline">

                            <span class="jen-form-icon" jen-icon="icon: calendar"></span>
                            <asp:TextBox ID="txtClientLname" runat="server" CssClass="jen-input" Style="width: 500px" disabled></asp:TextBox>
                        </div>
                    </div>
                </div>
                <br />
                <div class="jen-card jen-card-secondary jen-card-hover jen-card-body jen-light">
                    <h3 class="jen-card-title">Directions</h3>
                    <div class="jen-margin">
                        <label>Type of Medicine</label>
                        <br />
                        <div class="jen-inline">
                            <span class="jen-form-icon" jen-icon="icon: info"></span>
                            <asp:TextBox ID="txtClientEmail" runat="server" CssClass="jen-input" Style="width: 500px" disabled></asp:TextBox>
                        </div>
                        <br />
                        <label>Dosage</label>
                        <br />
                        <div class="jen-inline">
                            <span class="jen-form-icon" jen-icon="icon: nut"></span>
                            <asp:TextBox ID="txtClientPhone" runat="server" CssClass="jen-input" Style="width: 500px" disabled></asp:TextBox>
                        </div>
                        <br />
                        <label>Intake Method</label>
                        <br />
                        <div class="jen-inline">
                            <span class="jen-form-icon" jen-icon="icon: sign-in"></span>
                            <asp:TextBox ID="txtClientStreet" runat="server" CssClass="jen-input" Style="width: 500px" disabled></asp:TextBox>
                        </div>
                        <br />
                        <label>Dosage</label>
                        <br />
                        <div class="jen-inline">
                            <span class="jen-form-icon" jen-icon="icon: menu"></span>
                            <asp:TextBox ID="txtClientCity" runat="server" CssClass="jen-input" Style="width: 500px" disabled></asp:TextBox>
                        </div>
                        <br />
                        <label>Frequency</label>
                        <br />
                        <div class="jen-inline">

                            <span class="jen-form-icon" jen-icon="icon: thumbnails"></span>
                            <asp:TextBox ID="txtClientState" runat="server" CssClass="jen-input" Style="width: 500px" disabled></asp:TextBox>
                        </div>
                        <br />
                    </div>
                </div>

            </div>
            <div class="jen-card jen-card jen-card-hover jen-card-body jen-dark">
                <asp:Button ID="btnSubmit" runat="server" Text="Delete" CssClass="jen-button jen-button-secondary jen-width-1-1" Style="height: 50px; font-size: 25px;" />
            </div>
            <br />
        </div>

    </form>
</asp:Content>

