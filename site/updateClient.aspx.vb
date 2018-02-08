Imports System.Data
Partial Class updateClient
    Inherits System.Web.UI.Page


    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click
        Dim ClientID, fname, minit, lname, email, phone, street, city, state, zip, gender As String
        Dim aclienttier As New ClientDataTier
        ClientID = ddlUpdateClientID.Text.Trim
        fname = txtClientFname.Text.Trim
        minit = txtClientMidInt.Text.Trim
        lname = txtClientLname.Text.Trim
        email = txtClientEmail.Text.Trim
        phone = txtClientPhone.Text.Trim
        street = txtClientStreet.Text.Trim
        city = txtClientCity.Text.Trim
        state = txtClientState.Text.Trim
        zip = txtClientZip.Text.Trim
        gender = txtClientGender.Text.Trim
        aclienttier.UpdateClient(ClientID, fname, minit, lname, email, phone, street, city, state, zip, gender)
    End Sub

    Private Sub updateClient_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim cdatatier As New ClientDataTier
        Dim cdatatable As New DataTable

        cdatatable = cdatatier.GetAllClients().Tables(0)

        For Each dr As DataRow In cdatatable.Rows

            ddlUpdateClientID.Items.Add(dr("CliID"))
        Next
    End Sub


    Private Sub btnFill_Click(sender As Object, e As EventArgs) Handles btnFill.Click
        Dim ddatatier As New DoctorDataTier
        Dim adataset As New DataSet
        Dim adatatable As New DataTable

        adataset = ddatatier.GetDoctorByID(ddlUpdateClientID.SelectedValue)

        adatatable = adataset.Tables(0)

        txtClientFname.Text = adatatable.Rows(0)("fname")
        txtClientLname.Text = adatatable.Rows(0)("lname")
        txtClientMidInt.Text = adatatable.Rows(0)("initial")
        txtClientEmail.Text = adatatable.Rows(0)("email")
        txtClientPhone.Text = adatatable.Rows(0)("phone")
        txtClientStreet.Text = adatatable.Rows(0)("streetadd")
        txtClientState.Text = adatatable.Rows(0)("stateabr")
        txtClientCity.Text = adatatable.Rows(0)("city")
        txtClientZip.Text = adatatable.Rows(0)("zip")
        txtClientGender.Text = adatatable.Rows(0)("gender")

    End Sub



End Class
