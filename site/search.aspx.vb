Imports System.Data, System.IO, System.Text, System.Security.Cryptography

Partial Class search
    Inherits System.Web.UI.Page

    Private Sub search_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim strSearch As String
        Dim aSearch As New searchclass

        Dim sDataset As New DataSet
        strSearch = Request.QueryString("id")

        sDataset = aSearch.searching(strSearch)

        Try
            If sDataset.Tables(0).Rows.Count > 0 Then
                'make it look nice
                dgvSearch.DataSource = sDataset.Tables(0)

                'Data grid visible
                dgvSearch.Visible = True
                lblMessage.Visible = False
                dgvSearch.DataBind()
            Else
                dgvSearch.Visible = False
                lblMessage.Visible = True
                lblMessage.Text = "No Search Results"
            End If

            'txtSearch.Focus()
        Catch ex As Exception

        End Try

    End Sub
<<<<<<< HEAD
=======

>>>>>>> 56dd2a4afa7dae9c9558f0090c152d7699834d78
End Class
