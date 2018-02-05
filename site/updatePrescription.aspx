<%@ Page Title="" Language="VB" MasterPageFile="~/main.master" AutoEventWireup="false" CodeFile="updatePrescription.aspx.vb" Inherits="updatePrescription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" Runat="Server">
    <form id="form1" runat="server">
        <div class="jen-card jen-card-hover jen-card-body">
             <h3 class="jen-card-title">Select Prescription</h3>
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

            <div class="jen-card jen-card jen-card-hover jen-card-body jen-dark">
                <asp:Button ID="btnSubmit" runat="server" Text="Select" CssClass="jen-button jen-button-secondary jen-width-1-1" Style="height: 50px; font-size: 25px;" />
            </div>
        </div>
        <div class="jen-card jen-card-hover jen-card-body">

            <h3 class="jen-card-title">Update Prescription</h3>
            <div class="jen-card jen-card-secondary jen-card-hover jen-card-body jen-light">
                <div>
                    <label style="vertical-align: text-top;">Client ID</label>
                    <div jen-form-custom="target: > * > span:first-child">
                        <asp:DropDownList ID="ddlUpdateClientID" runat="server">
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
                        <asp:DropDownList ID="DropDownList1" runat="server">
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
                        <asp:TextBox ID="txtClientFname" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,3, 0);"></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                    <label>Medicine Name</label>
                    <br />
                    <div class="jen-inline">
                        <span class="jen-form-icon" jen-icon="icon: bookmark"></span>
                        <asp:TextBox ID="txtMedName" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,3, 1);"></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                    <label>Date Ordered</label>
                    <br />
                    <div class="jen-inline">

                        <span class="jen-form-icon" jen-icon="icon: calendar"></span>
                        <asp:TextBox ID="txtOrdered" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,3, 2);"></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
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
                        <asp:TextBox ID="txtMedicine" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,3, 3);"></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                    <label>Dosage</label>
                    <br />
                    <div class="jen-inline">
                        <span class="jen-form-icon" jen-icon="icon: nut"></span>
                        <asp:TextBox ID="txtDosage" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,3, 4);"></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                    <label>Intake Method</label>
                    <br />
                    <div class="jen-inline">
                        <span class="jen-form-icon" jen-icon="icon: sign-in"></span>
                        <asp:TextBox ID="txtMethod" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,3, 5);"></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                    <label>Dispense</label>
                    <br />
                    <div class="jen-inline">
                        <span class="jen-form-icon" jen-icon="icon: menu"></span>
                        <asp:TextBox ID="txtDispense" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,3, 6);"></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                    <label>Frequency</label>
                    <br />
                    <div class="jen-inline">

                        <span class="jen-form-icon" jen-icon="icon: thumbnails"></span>
                        <asp:TextBox ID="txtFrequency" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,3, 7);"></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                </div>
            </div>
            <br />
        </div>

    </form>
</asp:Content>

