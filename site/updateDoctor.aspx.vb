
Partial Class updateDoctor
    Inherits System.Web.UI.Page


    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click
        Dim DoctorID, fname, minit, lname, email, phone, street, city, state, zip, gender, dob, salary, specialty As String
        Dim aDoctortier As New DoctorDataTier
        DoctorID = ddlUpdateDoctorID.Text.Trim
        fname = txtDoctorFname.Text.Trim
        minit = txtDoctorMidInt.Text.Trim
        lname = txtDoctorLname.Text.Trim
        email = txtDoctorEmail.Text.Trim
        phone = txtDoctorPhone.Text.Trim
        street = txtDoctorStreet.Text.Trim
        city = txtDoctorCity.Text.Trim
        state = txtDoctorState.Text.Trim
        zip = txtDoctorZip.Text.Trim
        gender = txtdoctorGender.Text.Trim
        salary = txtDoctorSalary.Text.Trim
        specialty = txtDoctorSpecialty.Text.Trim
        aDoctortier.UpdateDoctor(DoctorID, fname, minit, lname, email, phone, street, city, state, zip, gender, dob, salary, specialty)
    End Sub
End Class
