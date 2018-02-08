Imports System.Data

Partial Class addClient
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Dim ClientID, fname, minit, lname, email, phone, street, city, state, zip, gender, dob As String
        Dim aclienttier As New ClientDataTier
        ClientID = txtClientID.Text.Trim
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
        dob = txtClientDOB.Text.Trim
        aclienttier.AddClient(ClientID, fname, minit, lname, email, phone, street, city, state, zip, gender, dob)
    End Sub

    Private Sub addClient_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim clientId As String
        Dim intcliendID As Int32
        Dim adatatier As New ClientDataTier
        Dim adatatable As New DataTable
        adatatable = adatatier.GetGetLastClientID.Tables(0)
        clientId = adatatable.Rows.Item(0).Item("MaxCliID")
        intcliendID = CType(clientId, Int32) + 1
        txtClientID.Text = intcliendID.ToString
    End Sub
End Class
