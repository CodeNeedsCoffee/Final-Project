<%@ Page Title="" Language="VB" MasterPageFile="~/main.master" AutoEventWireup="false" CodeFile="addPrescription.aspx.vb" Inherits="addPrescription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="Server">
    <form id="form1" runat="server">
        <div class="jen-card jen-card-hover jen-card-body">

            <h3 class="jen-card-title">Add Prescription</h3>
            <div class="jen-card jen-card-secondary jen-card-hover jen-card-body jen-light">
                <div>
                    <label style="vertical-align: text-top;">Client ID</label>
                    <div jen-form-custom="target: > * > span:first-child">
                        <asp:dropdownlist id="ddlUpdateClientID" runat="server">
                            <asp:ListItem Selected="True" disabled>Please Select</asp:ListItem>
                            <asp:ListItem>01</asp:ListItem>
                            <asp:ListItem>02</asp:ListItem>
                            <asp:ListItem>03</asp:ListItem>
                            <asp:ListItem>04</asp:ListItem>
                        </asp:dropdownlist>
                        <button class="jen-button jen-button-default" type="button" tabindex="-1">
                            <span></span>
                            <span jen-icon="icon: chevron-down"></span>
                        </button>
                    </div>
                    <label style="vertical-align: text-top;">&nbsp Doctor ID</label>
                    <div jen-form-custom="target: > * > span:first-child">
                        <asp:dropdownlist id="DropDownList1" runat="server">
                            <asp:ListItem Selected="True" disabled>Please Select</asp:ListItem>
                            <asp:ListItem>01</asp:ListItem>
                            <asp:ListItem>02</asp:ListItem>
                            <asp:ListItem>03</asp:ListItem>
                            <asp:ListItem>04</asp:ListItem>
                        </asp:dropdownlist>
                        <button class="jen-button jen-button-default" type="button" tabindex="-1">
                            <span></span>
                            <span jen-icon="icon: chevron-down"></span>
                        </button>
                    </div>
                    <label style="vertical-align: text-top;">&nbsp RX Number</label>
                    <div jen-form-custom="target: > * > span:first-child">
                        <asp:dropdownlist id="DropDownList2" runat="server">
                            <asp:ListItem Selected="True" disabled>Please Select</asp:ListItem>
                            <asp:ListItem>01</asp:ListItem>
                            <asp:ListItem>02</asp:ListItem>
                            <asp:ListItem>03</asp:ListItem>
                            <asp:ListItem>04</asp:ListItem>
                        </asp:dropdownlist>
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
                        <asp:textbox id="txtClientFname" runat="server" cssclass="jen-input" style="width: 500px"></asp:textbox>
                    </div>
                    <br />
                    <label>Medicine Name</label>
                    <br />
                    <div class="jen-inline">
                        <span class="jen-form-icon" jen-icon="icon: bookmark"></span>
                        <asp:textbox id="txtClientMidInt" runat="server" cssclass="jen-input" style="width: 500px"></asp:textbox>
                    </div>
                    <br />
                    <label>Date Ordered</label>
                    <br />
                    <div class="jen-inline">

                        <span class="jen-form-icon" jen-icon="icon: calendar"></span>
                        <asp:textbox id="txtClientLname" runat="server" cssclass="jen-input" style="width: 500px"></asp:textbox>
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
                        <asp:textbox id="txtClientEmail" runat="server" cssclass="jen-input" style="width: 500px"></asp:textbox>
                    </div>
                    <br />
                    <label>Dosage</label>
                    <br />
                    <div class="jen-inline">
                        <span class="jen-form-icon" jen-icon="icon: nut"></span>
                        <asp:textbox id="txtClientPhone" runat="server" cssclass="jen-input" style="width: 500px"></asp:textbox>
                    </div>
                    <br />
                        <label>Intake Method</label>
                        <br />
                        <div class="jen-inline">
                            <span class="jen-form-icon" jen-icon="icon: sign-in"></span>
                            <asp:textbox id="txtClientStreet" runat="server" cssclass="jen-input" style="width: 500px"></asp:textbox>
                        </div>
                        <br />
                        <label>Dosage</label>
                        <br />
                        <div class="jen-inline">
                            <span class="jen-form-icon" jen-icon="icon: menu"></span>
                            <asp:textbox id="txtClientCity" runat="server" cssclass="jen-input" style="width: 500px"></asp:textbox>
                        </div>
                        <br />
                        <label>Frequency</label>
                        <br />
                        <div class="jen-inline">

                            <span class="jen-form-icon" jen-icon="icon: thumbnails"></span>
                            <asp:textbox id="txtClientState" runat="server" cssclass="jen-input" style="width: 500px"></asp:textbox>
                        </div>
                        <br />
                    </div>
                </div>
                <br />
            </div>
        <div class="jen-card jen-card-secondary jen-card-hover jen-card-body jen-light">
            <asp:button id="btnSubmit" runat="server" text="Submit" cssclass="jen-button jen-button-secondary jen-width-1-1" style="height: 50px; font-size: 25px;" />
        </div>
    </form>
</asp:Content>

