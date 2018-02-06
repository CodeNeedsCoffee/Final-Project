
Partial Class addDoctor
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Dim DoctorID, fname, minit, lname, email, phone, street, city, state, zip, gender, dob, salary, specialty As String
        Dim aDoctortier As New DoctorDataTier
        DoctorID = txtDoctorID.Text.Trim
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
        aDoctortier.AddDoctor(DoctorID, fname, minit, lname, email, phone, street, city, state, zip, gender, dob, salary, specialty)
    End Sub
End Class
