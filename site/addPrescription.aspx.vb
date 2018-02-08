
Partial Class addPrescription
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Dim CliID, PhysID, rxnumber As Integer
        Dim refillnum, medname, dateordered, medtype, dispense, intake, dosage, frequency As String
        Dim aprescription As New PrescriptionDataTier
        CliID = ddlUpdateprescriptionCliID.SelectedIndex()
        PhysID = ddlDoctorID.SelectedIndex()
        rxnumber = ddlRXNumber.SelectedIndex()
        refillnum = txtprescriptionRefillNum.Text.Trim
        medname = txtprescriptionMedName.Text.Trim
        dateordered = txtprescriptionDateOrdered.Text.Trim
        medtype = txtprescriptionMedType.Text.Trim
        dispense = txtprescriptionDispense.Text.Trim
        intake = txtprescriptionIntake.Text.Trim
        dosage = txtprescriptionDosage.Text.Trim
        frequency = txtprescriptionFreq.Text.Trim
        aprescription.add_prescription(CliID, PhysID, refillnum, medname, dateordered, medtype, dispense, intake, dosage, frequency)

    End Sub
End Class
