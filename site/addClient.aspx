<%@ Page Language="VB" AutoEventWireup="false" CodeFile="addClient.aspx.vb" Inherits="addPatient" %>

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
                <h3 class="uk-card-title">Client Name</h3>
                <div class="uk-margin">
                    <label>First</label>
                    <br />
                    <div class="uk-inline">

                        <span class="uk-form-icon" uk-icon="icon: user"></span>
                        <input class="uk-input" type="text" style="width: 500px" />
                    </div>
                    <br />
                    <label>Last</label>
                    <br />
                    <div class="uk-inline">

                        <span class="uk-form-icon" uk-icon="icon: user"></span>
                        <input class="uk-input" type="text" style="width: 500px" />
                    </div>
                </div>
            </div>

            <h3 class="uk-card-title">Add Client</h3>
            <div class="uk-card uk-card-secondary uk-card-hover uk-card-body uk-light">
                <h3 class="uk-card-title">Client Name</h3>
                <div class="uk-margin">
                    <br />
                    <input id="datepicker" value="10/10/2011" title="datepicker" style="width: 100%" />
                </div>
                <br />
                 <!--  <label>Last</label>
                <br />
                <div class="uk-inline">

                    <span class="uk-form-icon" uk-icon="icon: user"></span>
                 <input class="uk-input" type="text" style="width: 500px" /> 
                </div>
            </div> -->
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
