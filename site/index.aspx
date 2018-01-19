<%@ Page Title="" Language="VB" MasterPageFile="~/main.master" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" Runat="Server">
    <div class="uk-card uk-card-hover uk-card-body">

        <h3 class="uk-card-title">Client</h3>
        <div class="uk-card uk-card-secondary uk-card-hover uk-card-body uk-light">
            <a href="/addClient.aspx">
                <h3 class="uk-card-title">Add Client</h3>
                <p>Click here to add a patient.</p>
            </a>
        </div>

        <div class="uk-card uk-card-secondary uk-card-hover uk-card-body uk-light">
            <a href="/updateClient.aspx">
                <h3 class="uk-card-title">Update Client</h3>
                <p>Click here to update client.</p>
            </a>
        </div>
    </div>

    <div class="uk-card uk-card-hover uk-card-body">
        <h3 class="uk-card-title">Doctor</h3>
        <div class="uk-card uk-card-secondary uk-card-hover uk-card-body uk-light">
            <a href="/addDoctor.aspx">
                <h3 class="uk-card-title">Add Doctor</h3>
                <p>Click here to add doctor.</p>
            </a>
        </div>
        <div class="uk-card uk-card-secondary uk-card-hover uk-card-body uk-light">
            <a href="/updateDoctor.aspx">
                <h3 class="uk-card-title">Update Doctor</h3>
                <p>Click here to update doctor.</p>
            </a>
        </div>
    </div>

    <div class="uk-card uk-card-hover uk-card-body">
        <h3 class="uk-card-title">Prescription</h3>
        <div class="uk-card uk-card-secondary uk-card-hover uk-card-body uk-light">
            <a href="#">
                <h3 class="uk-card-title">Add Prescription</h3>
                <p>Click here to add prescription.</p>
            </a>
        </div>
        <div class="uk-card uk-card-secondary uk-card-hover uk-card-body uk-light">
            <a href="#">
                <h3 class="uk-card-title">Update Prescription</h3>
                <p>Click here to update prescription.</p>
            </a>
        </div>
    </div>

    <div class="uk-card uk-card-hover uk-card-body">
        <h3 class="uk-card-title">Refill</h3>
        <div class="uk-card uk-card-secondary uk-card-hover uk-card-body uk-light">
            <a href="#">
                <h3 class="uk-card-title">Add Refill</h3>
                <p>Click here to add refill.</p>
            </a>
        </div>
        <div class="uk-card uk-card-secondary uk-card-hover uk-card-body uk-light">
            <a href="#">
                <h3 class="uk-card-title">Update Refill</h3>
                <p>Click here to update refill.</p>
            </a>
        </div>
        <div class="uk-card uk-card-secondary uk-card-hover uk-card-body uk-light">
            <a href="#">
                <h3 class="uk-card-title">Delete Refill</h3>
                <p>Click here to delete refill.</p>
            </a>
        </div>
</asp:Content>

