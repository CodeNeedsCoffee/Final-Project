<%@ Page Title="" Language="VB" MasterPageFile="~/main.master" AutoEventWireup="false" CodeFile="updateDoctor.aspx.vb" Inherits="updateDoctor" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ MasterType VirtualPath="~/main.master" %>

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

            <h3 class="jen-card-title">Update Doctor</h3>
            <div class="jen-card jen-card-secondary jen-card-hover jen-card-body jen-light">
                <div>
                    <label style="vertical-align: text-top;">Doctor ID</label>
                    <div jen-form-custom="target: > * > span:first-child">
                        <asp:DropDownList ID="ddlUpdateDoctorID" runat="server">
                            <asp:ListItem Selected="True" disabled>Please Select</asp:ListItem>
                        </asp:DropDownList>
                        <button class="jen-button jen-button-default" type="button" tabindex="-1">
                            <span></span>
                            <span jen-icon="icon: chevron-down"></span>
                        </button>
                    </div>
                    <asp:Button ID="btnFill" runat="server" Text="Fill Data" CssClass="jen-button jen-button-default" formnovalidate UseSubmitBehavior="False" />

                </div>
               <h3 class="jen-card-title">Personal Information</h3>
                <div class="jen-margin">
                    <label>First</label>
                    <br />
                    <div class="jen-inline">
                        <span class="jen-form-icon" jen-icon="icon: user"></span>
                        <asp:TextBox ID="txtDoctorFname" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,25, 0);" pattern="[a-zA-Z]+" required></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                    <label>Middle</label>
                    <br />
                    <div class="jen-inline">
                        <span class="jen-form-icon" jen-icon="icon: user"></span>
                        <asp:TextBox ID="txtDoctorMidInt" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,1, 1);" pattern="[a-zA-Z]+" required></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                    <label>Last</label>
                    <br />
                    <div class="jen-inline">

                        <span class="jen-form-icon" jen-icon="icon: user"></span>
                        <asp:TextBox ID="txtDoctorLname" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,30, 2);" pattern="[a-zA-Z]+" required></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>

                    <br />
                    <label>Speciality</label>
                    <br />
                    <div class="jen-inline">
                        <div class="uk-autocomplete uk-form" data-uk-autocomplete="{source:'degree.json'}">
                            <span class="jen-form-icon" jen-icon="icon: user"></span>
                            <asp:TextBox ID="txtDoctorSpecialty" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,50, 3);" pattern="[a-zA-Z0-9_&-]+([ ]?[a-zA-Z0-9_&-]+)*" required></asp:TextBox>
                        </div>
                    </div>
                    <div class="numbersofChart"></div>
                </div>
            </div>
            <br />
            <div class="jen-card jen-card-secondary jen-card-hover jen-card-body jen-light">
                <h3 class="jen-card-title">Contact Information</h3>
                <div class="jen-margin">
                    <label>Email</label>
                    <br />
                    <div class="jen-inline">
                        <span class="jen-form-icon" jen-icon="icon: mail"></span>
                        <asp:TextBox type="email" ID="txtDoctorEmail" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,100, 4);"></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                    <label>Phone Number</label>
                    <br />
                    <div class="jen-inline">
                        <span class="jen-form-icon" jen-icon="icon: receiver"></span>
                        <asp:TextBox ID="txtDoctorPhone" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,12, 5);" pattern="\d{3}[\-]\d{3}[\-]\d{4}"></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                </div>
            </div>
            <br />
            <div class="jen-card jen-card-secondary jen-card-hover jen-card-body jen-light">
                <h3 class="jen-card-title">Address</h3>
                <div class="jen-margin">
                    <label>Street</label>
                    <br />
                    <div class="jen-inline">
                        <span class="jen-form-icon" jen-icon="icon: home"></span>
                        <asp:TextBox ID="txtDoctorStreet" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,40, 6);" pattern="[[a-zA-Z0-9_&-]+([ ]?[a-zA-Z0-9_&-]+)*]+"></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                    <label>City</label>
                    <br />
                    <div class="jen-inline">
                        <span class="jen-form-icon" jen-icon="icon: menu"></span>
                        <asp:TextBox ID="txtDoctorCity" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,60, 7);" pattern="[a-zA-Z]+"></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                    <label>State</label>
                    <br />
                    <div class="jen-inline">

                        <span class="jen-form-icon" jen-icon="icon: thumbnails"></span>
                        <asp:TextBox ID="txtDoctorState" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this, 2, 8);" pattern="[a-zA-Z]+"></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                    <label>Zip</label>
                    <br />
                    <div class="jen-inline">

                        <span class="jen-form-icon" jen-icon="icon: location"></span>
                        <asp:TextBox ID="txtDoctorZip" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,5, 9);" pattern="\d*"></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
                </div>
            </div>
            <br />
            <div class="jen-card jen-card-secondary jen-card-hover jen-card-body jen-light">
                <h3 class="jen-card-title">Additional Information</h3>
                <div class="jen-margin">
                    <label>Gender</label>
                    <br />
                    <div class="jen-inline">
                        <span class="jen-form-icon" jen-icon="icon: pencil"></span>
                        <asp:TextBox ID="txtDoctorGender" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,1, 10);" pattern="[a-zA-Z]+"></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                    <label>Date of Birth</label>
                    <br />
                    <div class="jen-inline">
                        <span class="jen-form-icon" jen-icon="icon: calendar"></span>

                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:TextBox ID="txtDoctorDOB" runat="server" CssClass="jen-input" Style="width: 500px; padding-left: 40px;" onkeypress="countChar(this,7, 11);" pattern="(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d" required></asp:TextBox>
                                <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtDoctorDOB" Format="MM/dd/yyyy" />
                            </ContentTemplate>

                        </asp:UpdatePanel>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                    <label>Salary</label>
                    <br />
                    <div class="jen-inline">
                        <span class="jen-form-icon" jen-icon="icon: credit-card"></span>
                        <asp:TextBox ID="txtDoctorSalary" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,7,12);" pattern="\d+(\.\d{2})?"></asp:TextBox>
                        

                    </div>
                    <div class="numbersofChart"></div>
                </div>

            </div>
        </div>
        <div class="jen-card jen-card-secondary jen-card-hover jen-card-body jen-light">
            <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="jen-button jen-button-secondary jen-width-1-1" Style="height: 50px; font-size: 25px;" />
        </div>
    </form>
</asp:Content>

