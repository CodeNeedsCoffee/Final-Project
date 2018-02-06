<%@ Page Title="" Language="VB" MasterPageFile="~/main.master" AutoEventWireup="false" CodeFile="addDoctor.aspx.vb" Inherits="addDoctor" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

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

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <div class="jen-card jen-card-hover jen-card-body">

            <h3 class="jen-card-title">Add Doctor</h3>
            <div class="jen-card jen-card-secondary jen-card-hover jen-card-body jen-light">
                <div>
                    <label style="vertical-align: text-top;">Doctor ID</label>
                    <div class="jen-margin">
                        <asp:TextBox ID="txtDoctorID" runat="server" CssClass="jen-input" Style="width: 10%; height: 75%;"></asp:TextBox>
                    </div>
                </div>
                <h3 class="jen-card-title">Personal Information</h3>
                <div class="jen-margin">
                    <label>First</label>
                    <br />
                    <div class="jen-inline">
                        <span class="jen-form-icon" jen-icon="icon: user"></span>
                        <asp:TextBox ID="txtDoctorFname" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,25, 0);"></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                    <label>Middle</label>
                    <br />
                    <div class="jen-inline">
                        <span class="jen-form-icon" jen-icon="icon: user"></span>
                        <asp:TextBox ID="txtDoctorMidInt" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,1, 1);"></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                    <label>Last</label>
                    <br />
                    <div class="jen-inline">

                        <span class="jen-form-icon" jen-icon="icon: user"></span>
                        <asp:TextBox ID="txtDoctorLname" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,30, 2);"></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>

                    <br />
                    <label>Speciality</label>
                    <br />
                    <div class="jen-inline">
                        <div class="uk-autocomplete uk-form" data-uk-autocomplete="{source:'degree.json'}">
                            <span class="jen-form-icon" jen-icon="icon: user"></span>
                            <asp:TextBox ID="txtDoctorSpecialty" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,50, 3);"></asp:TextBox>
                            <script type="text/autocomplete">
                                <ul class="uk-nav uk-nav-autocomplete uk-autocomplete-results">
                                    {{~items}}
                                    <li data-value="{{ $item.value }}">
                                        <a>
                                            {{ $item.title }}
                                            <div>{{{ $item.text }}}</div>
                                        </a>
                                    </li>
                                    {{/items}}
                                </ul>
                            </script>
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
                        <asp:TextBox ID="txtDoctorEmail" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,100, 4);"></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                    <label>Phone Number</label>
                    <br />
                    <div class="jen-inline">
                        <span class="jen-form-icon" jen-icon="icon: receiver"></span>
                        <asp:TextBox ID="txtDoctorPhone" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,15, 5);"></asp:TextBox>
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
                        <asp:TextBox ID="txtDoctorStreet" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,40, 6);"></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                    <label>City</label>
                    <br />
                    <div class="jen-inline">
                        <span class="jen-form-icon" jen-icon="icon: menu"></span>
                        <asp:TextBox ID="txtDoctorCity" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,60, 7);"></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                    <label>State</label>
                    <br />
                    <div class="jen-inline">

                        <span class="jen-form-icon" jen-icon="icon: thumbnails"></span>
                        <asp:TextBox ID="txtDoctorState" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this, 2, 8);"></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                    <label>Zip</label>
                    <br />
                    <div class="jen-inline">

                        <span class="jen-form-icon" jen-icon="icon: location"></span>
                        <asp:TextBox ID="txtDoctorZip" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,5, 9);"></asp:TextBox>
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
                        <asp:TextBox ID="txtDoctorGender" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,1, 10);"></asp:TextBox>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                    <label>Date of Birth</label>
                    <br />
                    <div class="jen-inline">
                        <span class="jen-form-icon" jen-icon="icon: calendar"></span>

                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:TextBox ID="txtDoctorDOB" runat="server" CssClass="jen-input" Style="width: 500px; padding-left: 40px;" onkeypress="countChar(this,7, 11);"></asp:TextBox>
                                <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtDoctorDOB" />
                            </ContentTemplate>

                        </asp:UpdatePanel>
                    </div>
                    <div class="numbersofChart"></div>
                    <br />
                    <label>Salary</label>
                    <br />
                    <div class="jen-inline">
                        <span class="jen-form-icon" jen-icon="icon: credit-card"></span>
                        <asp:TextBox ID="txtDoctorSalary" runat="server" CssClass="jen-input" Style="width: 500px" onkeypress="countChar(this,7,11);"></asp:TextBox>
                    </div>
                </div>

            </div>
        </div>
        <div class="jen-card jen-card-secondary jen-card-hover jen-card-body jen-light">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="jen-button jen-button-secondary jen-width-1-1" Style="height: 50px; font-size: 25px;" />
        </div>
    </form>

</asp:Content>

