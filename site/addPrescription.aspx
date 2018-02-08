<%@ Page Title="" Language="VB" MasterPageFile="~/main.master" AutoEventWireup="false" CodeFile="addPrescription.aspx.vb" Inherits="addPrescription" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="Server">
    <form id="form1" runat="server">

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

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <div class="jen-card jen-card-hover jen-card-body">

            <h3 class="jen-card-title">Add Prescription</h3>
            <div class="jen-card jen-card-secondary jen-card-hover jen-card-body jen-light">
                <div>
                    <label style="vertical-align: text-top;">Client ID</label>
                    <div jen-form-custom="target: > * > span:first-child">
                        <asp:DropDownList ID="ddlCliID" runat="server">
                            <asp:ListItem Selected="True" disabled>Please Select</asp:ListItem>
                        </asp:DropDownList>
                        <button class="jen-button jen-button-default" type="button" tabindex="-1">
                            <span></span>
                            <span jen-icon="icon: chevron-down"></span>
                        </button>
                    </div>
                    <label style="vertical-align: text-top;">&nbsp Doctor ID</label>
                    <div jen-form-custom="target: > * > span:first-child">
                        <asp:DropDownList ID="ddlDoctorID" runat="server">
                            <asp:ListItem Selected="True" disabled>Please Select</asp:ListItem>
                        </asp:DropDownList>
                        <button class="jen-button jen-button-default" type="button" tabindex="-1">
                            <span></span>
                            <span jen-icon="icon: chevron-down"></span>
                        </button>
                    </div>
                    <label style="vertical-align: text-top;">&nbsp RX Number</label>
                    <div jen-form-custom="target: > * > span:first-child">
                        <asp:DropDownList ID="ddlRXNumber" runat="server">
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
                        <asp:TextBox ID="txtprescriptionRefillNum" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,3, 0);"></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                    <label>Medicine Name</label>
                    <br />
                    <div class="jen-inline">
                        <span class="jen-form-icon" jen-icon="icon: bookmark"></span>
                        <asp:TextBox ID="txtprescriptionMedName" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,40, 1);"></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                    <label>Date Ordered</label>
                    <br />
                    <div class="jen-inline">

                        <span class="jen-form-icon" jen-icon="icon: calendar"></span>

                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:TextBox ID="txtprescriptionDateOrdered" runat="server" CssClass="jen-input" Style="width: 500px; padding-left: 40px;"></asp:TextBox>
                                <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtprescriptionDateOrdered" />
                            </ContentTemplate>

                        </asp:UpdatePanel>


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
                        <asp:TextBox ID="txtprescriptionMedType" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,15, 3);"></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                    <label>Dispense</label>
                    <br />
                    <div class="jen-inline">
                        <span class="jen-form-icon" jen-icon="icon: nut"></span>
                        <asp:TextBox ID="txtprescriptionDispense" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,15, 4);"></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                    <label>Intake Method</label>
                    <br />
                    <div class="jen-inline">
                        <span class="jen-form-icon" jen-icon="icon: sign-in"></span>
                        <asp:TextBox ID="txtprescriptionIntake" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,140, 5);"></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                    <label>Dosage</label>
                    <br />
                    <div class="jen-inline">
                        <span class="jen-form-icon" jen-icon="icon: menu"></span>
                        <asp:TextBox ID="txtprescriptionDosage" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,15, 6);"></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                    <label>Frequency</label>
                    <br />
                    <div class="jen-inline">

                        <span class="jen-form-icon" jen-icon="icon: thumbnails"></span>
                        <asp:TextBox ID="txtprescriptionFreq" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,20, 7);"></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                </div>
            </div>
            <br />
        </div>
        <div class="jen-card jen-card-secondary jen-card-hover jen-card-body jen-light">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="jen-button jen-button-secondary jen-width-1-1" Style="height: 50px; font-size: 25px;" />
        </div>
    </form>
</asp:Content>

