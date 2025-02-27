﻿Imports System.Data
Partial Class updatePrescription
    Inherits System.Web.UI.Page

    Private Sub updatePrescription_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim pdatatier As New PrescriptionDataTier
        Dim pdatatable As New DataTable

        If Not IsPostBack Then
            pdatatable = pdatatier.GetAllPrescriptions().Tables(0)


            For Each dr As DataRow In pdatatable.Rows

                ddlRxNumber.Items.Add(dr("RxNumber"))
            Next
        End If



    End Sub

    Private Sub btnFill_Click(sender As Object, e As EventArgs) Handles btnFill.Click
        Dim pdatatier As New PrescriptionDataTier
        Dim ddatatable, pdatatable, cdatatabe, adatatable As New DataTable
        Dim ddatatier As New DoctorDataTier
        Dim cdatatier As New ClientDataTier
        Dim adataset As New DataSet
        Dim rxstr As String

        rxstr = ddlRxNumber.SelectedItem.Text
        adataset = pdatatier.GetPrescriptionsByRxNumber(rxstr)
        adatatable = adataset.Tables(0)

        ViewState("rxnumber") = rxstr

        ddlRxNumber.Items.Clear()
        ddlPhtID.Items.Clear()
        ddlUpdateClientID.Items.Clear()


        txtPrescriptionRefills.Text = adatatable.Rows(0)("PerscriptionRefills")
        txtPrescriptionName.Text = adatatable.Rows(0)("MedName")
        txtPrescriptionOrdered.Text = adatatable.Rows(0)("OrderDateTime")
        txtPrescriptionDosage.Text = adatatable.Rows(0)("Dosage")
        txtPrescriptionType.Text = adatatable.Rows(0)("MedType")
        txtPrescriptionIntake.Text = adatatable.Rows(0)("Intake")
        txtPrescriptionDispenses.Text = adatatable.Rows(0)("Dispense")
        txtPrescriptionFrequency.Text = adatatable.Rows(0)("Frequency")


        ddatatable = ddatatier.GetAllDoctors().Tables(0)
        cdatatabe = cdatatier.GetAllClients().Tables(0)
        pdatatable = pdatatier.GetAllPrescriptions().Tables(0)

        For Each dr As DataRow In pdatatable.Rows

            ddlRxNumber.Items.Add(dr("RxNumber"))
        Next

        For Each dr As DataRow In ddatatable.Rows

            ddlPhtID.Items.Add(dr("PhyID"))
        Next

        For Each dr As DataRow In cdatatabe.Rows

            ddlUpdateClientID.Items.Add(dr("CliID"))
        Next

        ddlUpdateClientID.SelectedValue = (adatatable.Rows(0)("CliID"))
        ddlPhtID.SelectedValue = (adatatable.Rows(0)("PhyID"))

        ddlRxNumber.Items.Remove(ViewState("rxnumber"))
        ddlRxNumber.SelectedItem.Text = ViewState("rxnumber")

        txtPrescriptionRefills.Focus()

        Master.BodyTag.Attributes.Remove("onload")


    End Sub
    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click
        Dim rxnumber, cliid, physid, refillnum, medname, medtype, dosage, intake, dispense, frequency As String
        Dim pdatatier As New PrescriptionDataTier
        Dim pdatatable As New DataTable

        rxnumber = ddlRxNumber.SelectedItem.Text
        cliid = ddlUpdateClientID.SelectedItem.Text
        physid = ddlPhtID.SelectedItem.Text
        refillnum = txtPrescriptionRefills.Text.ToString
        medname = txtPrescriptionName.Text.ToString
        medtype = txtPrescriptionType.Text.ToString
        dosage = txtPrescriptionDosage.Text.ToString
        intake = txtPrescriptionIntake.Text.ToString
        dispense = txtPrescriptionDispenses.Text.ToString
        frequency = txtPrescriptionFrequency.Text.ToString
        pdatatier.Update_prescription(rxnumber, cliid, physid, refillnum, medname, medtype, dosage, intake, dispense, frequency)
        txtPrescriptionDispenses.Text = String.Empty
        txtPrescriptionDosage.Text = String.Empty
        txtPrescriptionFrequency.Text = String.Empty
        txtPrescriptionIntake.Text = String.Empty
        txtPrescriptionName.Text = String.Empty
        txtPrescriptionRefills.Text = String.Empty
        txtPrescriptionType.Text = String.Empty
        ddlPhtID.Items.Clear()
        ddlRxNumber.Items.Clear()
        ddlUpdateClientID.Items.Clear()


        Master.BodyTag.Attributes.Add("onload", "good();")

        pdatatable = pdatatier.GetAllPrescriptions().Tables(0)


        For Each dr As DataRow In pdatatable.Rows

            ddlRxNumber.Items.Add(dr("RxNumber"))
        Next

    End Sub
End Class
