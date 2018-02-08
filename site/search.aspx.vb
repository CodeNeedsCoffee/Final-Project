Imports System.Data, System.IO, System.Text, System.Security.Cryptography

Partial Class search
    Inherits System.Web.UI.Page

    Private Sub search_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim strSearch As String
        Dim aSearch As New search
        Dim intSearchIndex As Int32
        Dim sDataset As New DataSet
        strSearch = txtSearch.Text.Trim
        intSearchIndex = cboSearch.SelectedIndex
        sDataset = aSearch.searching

        Try
            If sDataset.Tables(0).Rows.Count > 0 Then
                'make it look nice
                Me.dgvSearch.DataSource = sDataset.Tables(0)

                'Data grid visible
                Me.dgvSearch.Visible = True
                Me.lblMessage.Visible = False
            Else
                Me.dgvSearch.Visible = False
                Me.lblMessage.Visible = True
                Me.lblMessage.Text = "No Search Results"
            End If

            txtSearch.Focus()
        Catch ex As Exception
            MessageBox.Show("Connection to database Failed", "Database Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
        End Try

    End Sub
    End Sub
End Class
