<%@ Page Language="VB" AutoEventWireup="false" CodeFile="updateClient.aspx.vb" Inherits="addPatient" %>

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
                    <li class="uk-active">
                        <a href="#">Client</a>
                        <div class="uk-navbar-dropdown">
                            <ul class="uk-nav uk-navbar-dropdown-nav">
                                <li><a href="/addClient.aspx">Add Client</a></li>
                                <li class="uk-nav-divider"></li>
                                <li><a href="#">Update Client</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="#">Doctor</a>
                        <div class="uk-navbar-dropdown">
                            <ul class="uk-nav uk-navbar-dropdown-nav">
                                <li><a href="#">Add Doctor</a></li>
                                <li class="uk-nav-divider"></li>
                                <li><a href="#">Update Doctor</a></li>
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
            </div>
        </nav>
    </div>
    <div class="uk-height-large uk-background-cover uk-light uk-flex" uk-parallax="bgy: -510" style="background-image: url('img/patients.jpg');">
        <div class="uk-width-1-2@m uk-text-center uk-margin-auto uk-margin-auto-vertical">
            <h1 uk-parallax="opacity: 0,1; y: 100,0; scale: 2,1; viewport: 0.5;" style="color: #27513f; margin-top: 30%; text-align: left;">Add Client</h1>
        </div>
    </div>
    <form id="form1" runat="server">
        <div class="uk-card uk-card-hover uk-card-body">

            <h3 class="uk-card-title">Add Client</h3>
            <div class="uk-card uk-card-secondary uk-card-hover uk-card-body uk-light">
                <div>
                    <label style="vertical-align: text-top;">Client ID</label>
                    <asp:TextBox ID="txtClientID" runat="server" CssClass="uk-input" Style="width: 10%; height: 75%;"></asp:TextBox>
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
        $(document).ready(function () {
            // create DatePicker from input HTML element
            $("#datepicker").kendoDatePicker();

            $("#monthpicker").kendoDatePicker({
                // defines the start view
                start: "year",

                // defines when the calendar should return date
                depth: "year",

                // display month and year in the input
                format: "MMMM yyyy",

                // specifies that DateInput is used for masking the input element
                dateInput: true
            });
        });
    </script>

</body>
</html>
