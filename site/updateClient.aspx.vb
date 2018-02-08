
Partial Class updateClient
    Inherits System.Web.UI.Page


    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click
        Dim ClientID, fname, minit, lname, email, phone, street, city, state, zip, gender, dob As String
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
        dob = txtClientDOB.Text.Trim
    End Sub
End Class
