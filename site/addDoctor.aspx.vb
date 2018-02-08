Imports System.Data
Partial Class addDoctor
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Dim DoctorID, fname, minit, lname, email, phone, street, city, state, zip, gender, dob, salary, specialty As String
        Dim aDoctortier As New DoctorDataTier
        DoctorID = ddlDoctorID.Text.Trim
        fname = txtDoctorFname.Text.Trim
        minit = txtDoctorMidInt.Text.Trim
        lname = txtDoctorLname.Text.Trim
        email = txtDoctorEmail.Text.Trim
        phone = txtDoctorPhone.Text.Trim
        street = txtDoctorStreet.Text.Trim
        city = txtDoctorCity.Text.Trim
        state = txtDoctorState.Text.Trim
        zip = txtDoctorZip.Text.Trim
        gender = txtDoctorGender.Text.Trim
        dob = txtDoctorDOB.Text.Trim
        salary = txtDoctorSalary.Text.Trim
        specialty = txtDoctorSpecialty.text.trim
        aDoctortier.AddDoctor(DoctorID, fname, minit, lname, email, phone, street, city, state, zip, gender, dob, salary, specialty)
    End Sub

    Private Sub addDoctor_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim phyid As String
        Dim intphyid As Int32
        Dim pdatatier As New DoctorDataTier
        Dim adatatable As New DataTable
        txtDoctorCity.Text = String.Empty
        txtDoctorDOB.Text = String.Empty
        txtDoctorEmail.Text = String.Empty
        txtDoctorFname.Text = String.Empty
        txtDoctorGender.Text = String.Empty
        txtDoctorLname.Text = String.Empty
        txtDoctorMidInt.Text = String.Empty
        txtDoctorPhone.Text = String.Empty
        txtDoctorSalary.Text = String.Empty
        txtDoctorSpecialty.Text = String.Empty
        txtDoctorState.Text = String.Empty
        txtDoctorStreet.Text = String.Empty
        txtDoctorZip.Text = String.Empty


        adatatable = pdatatier.getlastphyid.Tables(0)
        phyid = adatatable.Rows.Item(0).Item("maxPhyID")
        intphyid = CType(phyid, Int32) + 1
        ddlDoctorID.Items.Add(intphyid.ToString)
        ddlDoctorID.Enabled = False
    End Sub
End Class
