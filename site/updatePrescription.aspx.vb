Imports System.Data
Partial Class updatePrescription
    Inherits System.Web.UI.Page

    Private Sub updatePrescription_Load(sender As Object, e As EventArgs) Handles Me.Load
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

        adataset = pdatatier.GetPrescriptionsByRxNumber(ddlRxNumber.SelectedValue)

        adatatable = adataset.Tables(0)

        txtPrescriptionRefills.Text = adatatable.Rows(0)("PerscriptionRefills")
        txtPrescriptionName.Text = adatatable.Rows(0)("MedName")
        txtPrescriptionOrdered.Text = adatatable.Rows(0)("OrderDateTime")
        txtPrescriptionDosage.Text = adatatable.Rows(0)("Dosage")
        txtPrescriptionType.Text = adatatable.Rows(0)("MedType")
        txtPrescriptionIntake.Text = adatatable.Rows(0)("Intake")
        txtPrescriptionDispenses.Text = adatatable.Rows(0)("Dispense")
        txtPrescriptionFrequency.Text = adatatable.Rows(0)("Frequency")
        ddlUpdateClientID.Items.Add(adatatable.Rows(0)("CliID"))
        ddlPhtID.Items.Add(adatatable.Rows(0)("PhyID"))
    End Sub
End Class
