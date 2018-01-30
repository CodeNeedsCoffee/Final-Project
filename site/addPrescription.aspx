<%@ Page Title="" Language="VB" MasterPageFile="~/main.master" AutoEventWireup="false" CodeFile="addPrescription.aspx.vb" Inherits="addPrescription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="Server">
    <form id="form1" runat="server">
        <div class="uk-card uk-card-hover uk-card-body">

            <h3 class="uk-card-title">Add Prescription</h3>
            <div class="uk-card uk-card-secondary uk-card-hover uk-card-body uk-light">
                <div>
                    <label style="vertical-align: text-top;">Client ID</label>
                    <div uk-form-custom="target: > * > span:first-child">
                        <asp:dropdownlist id="ddlUpdateClientID" runat="server">
                            <asp:ListItem Selected="True" disabled>Please Select</asp:ListItem>
                            <asp:ListItem>01</asp:ListItem>
                            <asp:ListItem>02</asp:ListItem>
                            <asp:ListItem>03</asp:ListItem>
                            <asp:ListItem>04</asp:ListItem>
                        </asp:dropdownlist>
                        <button class="uk-button uk-button-default" type="button" tabindex="-1">
                            <span></span>
                            <span uk-icon="icon: chevron-down"></span>
                        </button>
                    </div>
                    <label style="vertical-align: text-top;">&nbsp Doctor ID</label>
                    <div uk-form-custom="target: > * > span:first-child">
                        <asp:dropdownlist id="DropDownList1" runat="server">
                            <asp:ListItem Selected="True" disabled>Please Select</asp:ListItem>
                            <asp:ListItem>01</asp:ListItem>
                            <asp:ListItem>02</asp:ListItem>
                            <asp:ListItem>03</asp:ListItem>
                            <asp:ListItem>04</asp:ListItem>
                        </asp:dropdownlist>
                        <button class="uk-button uk-button-default" type="button" tabindex="-1">
                            <span></span>
                            <span uk-icon="icon: chevron-down"></span>
                        </button>
                    </div>
                    <label style="vertical-align: text-top;">&nbsp RX Number</label>
                    <div uk-form-custom="target: > * > span:first-child">
                        <asp:dropdownlist id="DropDownList2" runat="server">
                            <asp:ListItem Selected="True" disabled>Please Select</asp:ListItem>
                            <asp:ListItem>01</asp:ListItem>
                            <asp:ListItem>02</asp:ListItem>
                            <asp:ListItem>03</asp:ListItem>
                            <asp:ListItem>04</asp:ListItem>
                        </asp:dropdownlist>
                        <button class="uk-button uk-button-default" type="button" tabindex="-1">
                            <span></span>
                            <span uk-icon="icon: chevron-down"></span>
                        </button>
                    </div>
                </div>
                <h3 class="uk-card-title">Prescription</h3>
                <div class="uk-margin">
                    <label>Number of Refills</label>
                    <br />
                    <div class="uk-inline">
                        <span class="uk-form-icon" uk-icon="icon: tag"></span>
                        <asp:textbox id="txtClientFname" runat="server" cssclass="uk-input" style="width: 500px"></asp:textbox>
                    </div>
                    <br />
                    <label>Medicine Name</label>
                    <br />
                    <div class="uk-inline">
                        <span class="uk-form-icon" uk-icon="icon: bookmark"></span>
                        <asp:textbox id="txtClientMidInt" runat="server" cssclass="uk-input" style="width: 500px"></asp:textbox>
                    </div>
                    <br />
                    <label>Date Ordered</label>
                    <br />
                    <div class="uk-inline">

                        <span class="uk-form-icon" uk-icon="icon: calendar"></span>
                        <asp:textbox id="txtClientLname" runat="server" cssclass="uk-input" style="width: 500px"></asp:textbox>
                    </div>
                </div>
            </div>
            <br />
            <div class="uk-card uk-card-secondary uk-card-hover uk-card-body uk-light">
                <h3 class="uk-card-title">Directions</h3>
                <div class="uk-margin">
                    <label>Type of Medicine</label>
                    <br />
                    <div class="uk-inline">
                        <span class="uk-form-icon" uk-icon="icon: info"></span>
                        <asp:textbox id="txtClientEmail" runat="server" cssclass="uk-input" style="width: 500px"></asp:textbox>
                    </div>
                    <br />
                    <label>Dosage</label>
                    <br />
                    <div class="uk-inline">
                        <span class="uk-form-icon" uk-icon="icon: nut"></span>
                        <asp:textbox id="txtClientPhone" runat="server" cssclass="uk-input" style="width: 500px"></asp:textbox>
                    </div>
                    <br />
                        <label>Intake Method</label>
                        <br />
                        <div class="uk-inline">
                            <span class="uk-form-icon" uk-icon="icon: sign-in"></span>
                            <asp:textbox id="txtClientStreet" runat="server" cssclass="uk-input" style="width: 500px"></asp:textbox>
                        </div>
                        <br />
                        <label>Dosage</label>
                        <br />
                        <div class="uk-inline">
                            <span class="uk-form-icon" uk-icon="icon: menu"></span>
                            <asp:textbox id="txtClientCity" runat="server" cssclass="uk-input" style="width: 500px"></asp:textbox>
                        </div>
                        <br />
                        <label>Frequency</label>
                        <br />
                        <div class="uk-inline">

                            <span class="uk-form-icon" uk-icon="icon: thumbnails"></span>
                            <asp:textbox id="txtClientState" runat="server" cssclass="uk-input" style="width: 500px"></asp:textbox>
                        </div>
                        <br />
                    </div>
                </div>
                <br />
            </div>
        <div class="uk-card uk-card-secondary uk-card-hover uk-card-body uk-light">
            <asp:button id="btnSubmit" runat="server" text="Submit" cssclass="uk-button uk-button-secondary uk-width-1-1" style="height: 50px; font-size: 25px;" />
        </div>
    </form>
</asp:Content>

