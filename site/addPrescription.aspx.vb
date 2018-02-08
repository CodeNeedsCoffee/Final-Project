Imports System.Data
Partial Class addPrescription
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Dim CliID, PhysID, rxnumber As Integer
        Dim refillnum, medname, dateordered, medtype, dispense, intake, dosage, frequency As String
        Dim aprescription As New PrescriptionDataTier
        CliID = ddlCliID.SelectedIndex()
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

    Private Sub addPrescription_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim cdatatier As New ClientDataTier
        Dim ddatatier As New DoctorDataTier
        Dim pdatatier As New PrescriptionDataTier
        Dim cdatatable As New DataTable
        Dim ddatatable As New DataTable
        Dim pdatatable As New DataTable

        cdatatable = cdatatier.GetAllClients().Tables(0)
        ddatatable = ddatatier.GetAllDoctors().Tables(0)
        pdatatable = pdatatier.GetAllPrescriptions().Tables(0)


        For Each dr As DataRow In cdatatable.Rows

            ddlCliID.Items.Add(dr("CliID"))
        Next




        For Each dr As DataRow In ddatatable.Rows

            ddlCliID.Items.Add(dr("CliID"))
        Next



        For Each dr As DataRow In pdatatable.Rows

            ddlCliID.Items.Add(dr("CliID"))
        Next


    End Sub
End Class
