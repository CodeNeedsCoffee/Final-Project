<%@ Page Title="" Language="VB" MasterPageFile="~/main.master" AutoEventWireup="false" CodeFile="addClient.aspx.vb" Inherits="addClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="Server">
    <form id="form1" runat="server">
        <div class="uk-card uk-card-hover uk-card-body">

            <h3 class="uk-card-title">Add Client</h3>
            <div class="uk-card uk-card-secondary uk-card-hover uk-card-body uk-light">
                <div>
                    <label style="vertical-align: text-top;">Client ID</label>
                    <div class="uk-margin">
                        <asp:TextBox ID="txtClientID" runat="server" CssClass="uk-input" Style="width: 10%; height: 75%;"></asp:TextBox>
                    </div>
                </div>
                <h3 class="uk-card-title">Personal Information</h3>
                <div class="uk-margin">
                    <label>First</label>
                    <br />
                    <div class="uk-inline">
                        <span class="uk-form-icon" uk-icon="icon: user"></span>
                        <asp:TextBox ID="txtClientFname" runat="server" CssClass="uk-input" Style="width: 500px"></asp:TextBox>
                    </div>
                    <br />
                    <label>Middle</label>
                    <br />
                    <div class="uk-inline">
                        <span class="uk-form-icon" uk-icon="icon: user"></span>
                        <asp:TextBox ID="txtClientMidInt" runat="server" CssClass="uk-input" Style="width: 500px"></asp:TextBox>
                    </div>
                    <br />
                    <label>Last</label>
                    <br />
                    <div class="uk-inline">

                        <span class="uk-form-icon" uk-icon="icon: user"></span>
                        <asp:TextBox ID="txtClientLname" runat="server" CssClass="uk-input" Style="width: 500px"></asp:TextBox>
                    </div>
                </div>
            </div>
            <br />
            <div class="uk-card uk-card-secondary uk-card-hover uk-card-body uk-light">
                <h3 class="uk-card-title">Contact Information</h3>
                <div class="uk-margin">
                    <label>Email</label>
                    <br />
                    <div class="uk-inline">
                        <span class="uk-form-icon" uk-icon="icon: mail"></span>
                        <asp:TextBox ID="txtClientEmail" runat="server" CssClass="uk-input" Style="width: 500px"></asp:TextBox>
                    </div>
                    <br />
                    <label>Phone Number</label>
                    <br />
                    <div class="uk-inline">
                        <span class="uk-form-icon" uk-icon="icon: receiver"></span>
                        <asp:TextBox ID="txtClientPhone" runat="server" CssClass="uk-input" Style="width: 500px"></asp:TextBox>
                    </div>
                    <br />
                </div>
            </div>
            <br />
            <div class="uk-card uk-card-secondary uk-card-hover uk-card-body uk-light">
                <h3 class="uk-card-title">Address</h3>
                <div class="uk-margin">
                    <label>Street</label>
                    <br />
                    <div class="uk-inline">
                        <span class="uk-form-icon" uk-icon="icon: home"></span>
                        <asp:TextBox ID="txtClientStreet" runat="server" CssClass="uk-input" Style="width: 500px"></asp:TextBox>
                    </div>
                    <br />
                    <label>City</label>
                    <br />
                    <div class="uk-inline">
                        <span class="uk-form-icon" uk-icon="icon: menu"></span>
                        <asp:TextBox ID="txtClientCity" runat="server" CssClass="uk-input" Style="width: 500px"></asp:TextBox>
                    </div>
                    <br />
                    <label>State</label>
                    <br />
                    <div class="uk-inline">

                        <span class="uk-form-icon" uk-icon="icon: thumbnails"></span>
                        <asp:TextBox ID="txtClientState" runat="server" CssClass="uk-input" Style="width: 500px"></asp:TextBox>
                    </div>
                    <br />
                    <label>Zip</label>
                    <br />
                    <div class="uk-inline">

                        <span class="uk-form-icon" uk-icon="icon: location"></span>
                        <asp:TextBox ID="txtClientZip" runat="server" CssClass="uk-input" Style="width: 500px"></asp:TextBox>
                    </div>
                </div>
            </div>
            <br />
            <div class="uk-card uk-card-secondary uk-card-hover uk-card-body uk-light">
                <h3 class="uk-card-title">Additional Information</h3>
                <div class="uk-margin">
                    <label>Gender</label>
                    <br />
                    <div class="uk-inline">
                        <span class="uk-form-icon" uk-icon="icon: pencil"></span>
                        <asp:TextBox ID="txtClientGender" runat="server" CssClass="uk-input" Style="width: 500px"></asp:TextBox>
                    </div>
                    <br />
                    <label>Date of Birth</label>
                    <br />
                    <div class="uk-inline">
                        <span class="uk-form-icon" uk-icon="icon: calendar"></span>
                        <asp:TextBox ID="txtClientDOB" runat="server" CssClass="uk-input" Style="width: 500px"></asp:TextBox>
                    </div>
                    <br />
                </div>
            </div>
        </div>
        <div class="uk-card uk-card-secondary uk-card-hover uk-card-body uk-light">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="uk-button uk-button-secondary uk-width-1-1" Style="height: 50px; font-size: 25px;" />
        </div>
    </form>
</asp:Content>

