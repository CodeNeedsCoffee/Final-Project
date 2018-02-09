Imports System.Data
Partial Class deletePrescription
    Inherits System.Web.UI.Page

    Private Sub deletePrescription_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim pdatatier As New PrescriptionDataTier
        Dim ddatatable As New DataTable





        ddatatable = pdatatier.GetAllPrescriptions().Tables(0)

        For Each dr As DataRow In ddatatable.Rows

            ddlrxnumber.Items.Add(dr("RxNumber"))
        Next
    End Sub

    Private Sub btnFill_Click(sender As Object, e As EventArgs) Handles btnFill.Click
        Dim pdatatier As New PrescriptionDataTier
        Dim adataset As New DataSet
        Dim adatatable As New DataTable

        adataset = pdatatier.GetPrescriptionsByRxNumber(ddlrxnumber.SelectedValue)

        adatatable = adataset.Tables(0)

        ddlClientID.Items.Add(adatatable.Rows(0)("CliID"))
        ddlDoctorID.Items.Add(adatatable.Rows(0)("PhyID"))
        txtPrescriptionRefills.Text = adatatable.Rows(0)("PerscriptionRefills")
        txtPrescriptionName.Text = adatatable.Rows(0)("MedName")
        txtPrescriptionOrdered.Text = adatatable.Rows(0)("OrderDateTime")
        txtPrescriptionDosage.Text = adatatable.Rows(0)("Dosage")
        txtPrescriptionType.Text = adatatable.Rows(0)("MedType")
        txtPrescriptionIntake.Text = adatatable.Rows(0)("Intake")
        txtPrescriptionDispenses.Text = adatatable.Rows(0)("Dispense")
        txtPrescriptionFrequency.Text = adatatable.Rows(0)("Frequency")

    End Sub

    Private Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Dim pdatatier As New PrescriptionDataTier

        pdatatier.DeletePrescription(ddlrxnumber.SelectedValue)

        ddlClientID.Items.Clear()
        ddlDoctorID.Items.Clear()
        ddlrxnumber.Items.Clear()
        txtPrescriptionRefills.Text = String.Empty
        txtPrescriptionName.Text = String.Empty
        txtPrescriptionOrdered.Text = String.Empty
        txtPrescriptionDosage.Text = String.Empty
        txtPrescriptionType.Text = String.Empty
        txtPrescriptionIntake.Text = String.Empty
        txtPrescriptionDispenses.Text = String.Empty
        txtPrescriptionFrequency.Text = String.Empty

    End Sub
End Class
