﻿Imports System.Data
Partial Class updateDoctor
    Inherits System.Web.UI.Page


    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click
        Dim DoctorID, fname, minit, lname, email, phone, street, city, state, zip, gender, salary, specialty As String
        Dim ddatatier As New DoctorDataTier
        Dim ddatatable As New DataTable
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
        ddatatier.UpdateDoctor(DoctorID, fname, minit, lname, email, phone, street, city, state, zip, gender, salary, specialty)
        txtDoctorCity.Text = String.Empty
        txtdoctorEmail.Text = String.Empty
        txtdoctorFname.Text = String.Empty
        txtdoctorGender.Text = String.Empty
        txtdoctorLname.Text = String.Empty
        txtdoctorMidInt.Text = String.Empty
        txtdoctorPhone.Text = String.Empty
        txtDoctorSalary.Text = String.Empty
        txtDoctorSpecialty.Text = String.Empty
        txtdoctorState.Text = String.Empty
        txtdoctorStreet.Text = String.Empty
        txtDoctorZip.Text = String.Empty
        txtDoctorDOB.Text = String.Empty
        ddlUpdateDoctorID.Items.Clear()

        Master.BodyTag.Attributes.Add("onload", "good();")

        ddatatable = ddatatier.GetAllDoctors().Tables(0)

        For Each dr As DataRow In ddatatable.Rows

            ddlUpdateDoctorID.Items.Add(dr("PhyID"))
        Next




    End Sub

    Private Sub updateDoctor_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim ddatatier As New DoctorDataTier
        Dim ddatatable As New DataTable

        ddlUpdateDoctorID.Items.Clear()

        ddatatable = ddatatier.GetAllDoctors().Tables(0)

        For Each dr As DataRow In ddatatable.Rows

            ddlUpdateDoctorID.Items.Add(dr("PhyID"))
        Next

    End Sub

    Private Sub btnFill_Click(sender As Object, e As EventArgs) Handles btnFill.Click
        Dim ddatatier As New DoctorDataTier
        Dim adataset As New DataSet
        Dim adatatable As New DataTable

        adataset = ddatatier.GetDoctorByID(ddlUpdateDoctorID.SelectedValue)

        adatatable = adataset.Tables(0)

        txtdoctorFname.Text = adatatable.Rows(0)("fname")
        txtdoctorLname.Text = adatatable.Rows(0)("lname")
        txtdoctorMidInt.Text = adatatable.Rows(0)("initial")
        txtDoctorSpecialty.Text = adatatable.Rows(0)("specialty")
        txtdoctorEmail.Text = adatatable.Rows(0)("email")
        txtdoctorPhone.Text = adatatable.Rows(0)("phone")
        txtdoctorCity.Text = adatatable.Rows(0)("city")
        txtdoctorStreet.Text = adatatable.Rows(0)("streetadd")
        txtdoctorState.Text = adatatable.Rows(0)("stateabr")
        txtdoctorZip.Text = adatatable.Rows(0)("zip")
        txtDoctorSalary.Text = adatatable.Rows(0)("salary")
        txtDoctorGender.Text = adatatable.Rows(0)("gender")
        txtDoctorDOB.Text = adatatable.Rows(0)("dob")
        txtDoctorDOB.Enabled = False

        Master.BodyTag.Attributes.Remove("onload")

    End Sub
End Class
