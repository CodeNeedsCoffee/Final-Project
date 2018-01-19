<%@ Page Language="VB" AutoEventWireup="false" CodeFile="OldupdateDoctor.aspx.vb" Inherits="addPatient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Louis Pharmacy</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="css/uikit.min.css" />
    <script src="js/uikit.min.js"></script>
    <script src="js/uikit-icons.min.js"></script>
    <link rel="shortcut icon" href="./img/logo.ico" />
    <script type="text/javascript" src="js/datepicker.js"></script>
</head>
<body>
    <div class="uk-position-top">
        <nav class="uk-navbar-container uk-navbar-transparent" uk-navbar>
            <div class="uk-navbar-left">
                <ul class="uk-navbar-nav">
                    <li><a href="/index.html">Loius Pharmacy</a></li>
                    <li >
                        <a href="#">Client</a>
                        <div class="uk-navbar-dropdown">
                            <ul class="uk-nav uk-navbar-dropdown-nav">
                                <li><a href="/addClient.aspx">Add Client</a></li>
                                <li class="uk-nav-divider"></li>
                                <li><a href="#">Update Client</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="uk-active">
                        <a href="#">Doctor</a>
                        <div class="uk-navbar-dropdown">
                            <ul class="uk-nav uk-navbar-dropdown-nav">
                                <li><a href="/addDoctor.aspx">Add Doctor</a></li>
                                <li class="uk-nav-divider"></li>
                                <li><a href="/updateDoctor.aspx">Update Doctor</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="#">Prescription</a>
                        <div class="uk-navbar-dropdown">
                            <ul class="uk-nav uk-navbar-dropdown-nav">
                                <li><a href="#">Add Prescription</a></li>
                                <li class="uk-nav-divider"></li>
                                <li><a href="#">Update Prescription</a></li>
                            </ul>
                        </div>
                    </li>

                    <li>
                        <a href="#">Refill</a>
                        <div class="uk-navbar-dropdown">
                            <ul class="uk-nav uk-navbar-dropdown-nav">
                                <li><a href="#">Add Refill</a></li>
                                <li class="uk-nav-divider"></li>
                                <li><a href="#">Update Refill</a></li>
                                <li class="uk-nav-divider"></li>
                                <li><a href="#">Delete Refill</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
    <div class="uk-height-large uk-background-cover uk-light uk-flex" uk-parallax="bgy: -310" style="background-image: url('img/doctor.jpg');">
        <div class="uk-width-1-2@m uk-text-center uk-margin-auto uk-margin-auto-vertical">
            <h1 uk-parallax="opacity: 0,1; y: 100,0; scale: 2,1; viewport: 0.5;" style="color: #27513f; margin-top: 30%; text-align: left;">Update Doctor</h1>
        </div>
    </div>
    <form id="form1" runat="server">
        <div class="uk-card uk-card-hover uk-card-body">

            <h3 class="uk-card-title">Update Doctor</h3>
            <div class="uk-card uk-card-secondary uk-card-hover uk-card-body uk-light">
                <div>
                    <label style="vertical-align: text-top;">Doctor ID</label>
                    <div uk-form-custom="target: > * > span:first-child">
                        <asp:DropDownList ID="ddlUpdateClientID" runat="server">
                            <asp:ListItem Selected="True" disabled>Please Select</asp:ListItem>
                            <asp:ListItem>01</asp:ListItem>
                            <asp:ListItem>02</asp:ListItem>
                            <asp:ListItem>03</asp:ListItem>
                            <asp:ListItem>04</asp:ListItem>
                        </asp:DropDownList>
                            <button class="uk-button uk-button-default" type="button" tabindex="-1">
                                <span></span>
                                <span uk-icon="icon: chevron-down"></span>
                            </button>
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

    <footer>
        <div>
            <div>
                <div>
                    <h5>Louis Pharmacy</h5>
                    <p>Copyright Evan Tempelin, Nick Luongo, Jesse Killinger 2018.</p>
                </div>
            </div>
        </div>
    </footer>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        var autocomplete = UIkit.autocomplete(element, { /* options */ });
    </script>

</body>
</html>
