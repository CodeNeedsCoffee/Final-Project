<%@ Page Title="" Language="VB" MasterPageFile="~/main.master" AutoEventWireup="false" CodeFile="updateClient.aspx.vb" Inherits="updateClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="Server">
    <form id="form1" runat="server">
        <div class="jen-card jen-card-hover jen-card-body">

            <h3 class="jen-card-title">Update Client</h3>
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

                </div>
                <h3 class="jen-card-title">Personal Information</h3>
                <div class="jen-margin">
                    <label>First</label>
                    <br />
                    <div class="jen-inline">
                        <span class="jen-form-icon" jen-icon="icon: user"></span>
                        <asp:TextBox ID="txtClientFname" runat="server" CssClass="jen-input" Style="width: 500px"></asp:TextBox>
                    </div>
                    <br />
                    <label>Middle</label>
                    <br />
                    <div class="jen-inline">
                        <span class="jen-form-icon" jen-icon="icon: user"></span>
                        <asp:TextBox ID="txtClientMidInt" runat="server" CssClass="jen-input" Style="width: 500px"></asp:TextBox>
                    </div>
                    <br />
                    <label>Last</label>
                    <br />
                    <div class="jen-inline">

                        <span class="jen-form-icon" jen-icon="icon: user"></span>
                        <asp:TextBox ID="txtClientLname" runat="server" CssClass="jen-input" Style="width: 500px"></asp:TextBox>
                    </div>
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
                        <asp:TextBox ID="txtClientEmail" runat="server" CssClass="jen-input" Style="width: 500px"></asp:TextBox>
                    </div>
                    <br />
                    <label>Phone Number</label>
                    <br />
                    <div class="jen-inline">
                        <span class="jen-form-icon" jen-icon="icon: receiver"></span>
                        <asp:TextBox ID="txtClientPhone" runat="server" CssClass="jen-input" Style="width: 500px"></asp:TextBox>
                    </div>
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
                        <asp:TextBox ID="txtClientStreet" runat="server" CssClass="jen-input" Style="width: 500px"></asp:TextBox>
                    </div>
                    <br />
                    <label>City</label>
                    <br />
                    <div class="jen-inline">
                        <span class="jen-form-icon" jen-icon="icon: menu"></span>
                        <asp:TextBox ID="txtClientCity" runat="server" CssClass="jen-input" Style="width: 500px"></asp:TextBox>
                    </div>
                    <br />
                    <label>State</label>
                    <br />
                    <div class="jen-inline">

                        <span class="jen-form-icon" jen-icon="icon: thumbnails"></span>
                        <asp:TextBox ID="txtClientState" runat="server" CssClass="jen-input" Style="width: 500px"></asp:TextBox>
                    </div>
                    <br />
                    <label>Zip</label>
                    <br />
                    <div class="jen-inline">

                        <span class="jen-form-icon" jen-icon="icon: location"></span>
                        <asp:TextBox ID="txtClientZip" runat="server" CssClass="jen-input" Style="width: 500px"></asp:TextBox>
                    </div>
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
                        <asp:TextBox ID="txtClientGender" runat="server" CssClass="jen-input" Style="width: 500px"></asp:TextBox>
                    </div>
                    <br />
                    <label>Date of Birth</label>
                    <br />
                    <div class="jen-inline">
                        <span class="jen-form-icon" jen-icon="icon: calendar"></span>
                        <asp:TextBox ID="txtClientDOB" runat="server" CssClass="jen-input" Style="width: 500px"></asp:TextBox>
                    </div>
                    <br />
                </div>
            </div>
        </div>
        <div class="jen-card jen-card-secondary jen-card-hover jen-card-body jen-light">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="jen-button jen-button-secondary jen-width-1-1" Style="height: 50px; font-size: 25px;" />
        </div>
    </form>
</asp:Content>

