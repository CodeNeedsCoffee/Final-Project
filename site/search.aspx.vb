Imports System.Data, System.IO, System.Text, System.Security.Cryptography

Partial Class search
    Inherits System.Web.UI.Page

    Private Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click
        Try
            Dim aDatatier As New ClientDataTier
            ViewState("stud_id") = txtstudid.Text.Trim
            ViewState("fname") = txtfname.Text.Trim
            ViewState("lname") = txtlname.Text.Trim
            LoadData()

        Catch ex As Exception
            Throw New Exception(ex.Message, ex.InnerException)
        End Try
    End Sub

    Private Sub grdStudents_Sorting(sender As Object, e As GridViewSortEventArgs) Handles grdStudents.Sorting
        Dim oldExpression As String = grdStudents.SortExpression
        Dim newExpression As String = e.SortExpression
        Dim lastValue, theSortField, sortExpression, theDirection, wildChar As String
        Dim source As New DataView

        theDirection = ""
        wildChar = "%"
        Try
            lastValue = CType(ViewState("sortField"), String)
            sortExpression = newExpression
            theSortField = CType(ViewState("sortField"), String)
            If sortDir = "desc" Then
                sortDir = "asc"
            Else
                sortDir = "desc"
            End If

            Dim ds As New DataSet

            Dim aDatatier As New ClientDataTier
            ds = aDatatier.SearchClients(CType(ViewState("stud_id"), String), CType(ViewState("fname"), String), CType(ViewState("lname"), String))
            source = New DataView(ds.Tables(0))

            Dim myval As Int32 = source.Count
            If myval > 1 Then
                source.Sort = "" + sortExpression + " " + sortDir
                grdStudents.DataSource = source
                grdStudents.DataBind()
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub grdStudents_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles grdStudents.PageIndexChanging
        Dim pageNum As Int32
        pageNum = e.NewPageIndex
        grdStudents.PageIndex = pageNum
        BindData()
    End Sub

    Public Sub BindData()
        Dim aDataTier As New ClientDataTier

        With Me
            Dim adataset As New DataSet
            adataset = aDataTier.SearchClients(CType(ViewState("stud_id"), String), CType(ViewState("fname"), String), CType(ViewState("lname"), String))
            .grdStudents.DataSource = adataset.Tables(0)
            .grdStudents.DataBind()
        End With
    End Sub

    Private Sub LoadData()
        Dim aDatatier As New ClientDataTier
        Dim aDataset As New DataSet
        Dim acache As New Cache
        Dim stud_id, fname, lname As String
        stud_id = txtstudid.Text.Trim
        fname = txtfname.Text.Trim
        lname = txtlname.Text.Trim

        If stud_id = String.Empty And fname = String.Empty And lname = String.Empty Then
            lblError.Visible = True
            grdStudents.Visible = False
        Else
            lblError.Visible = False
            grdStudents.Visible = True
            With Me
                aDataset = aDatatier.SearchClients(CType(ViewState("stud_id"), String), CType(ViewState("fname"), String), CType(ViewState("lname"), String))

                .grdStudents.DataSource = aDataset.Tables(0)
                .grdStudents.DataBind()
            End With
            grdStudents.Visible = True
        End If

    End Sub


    Public Sub Delete_Click(ByVal sender As Object, ByVal e As CommandEventArgs)

        Try

            Dim chk As CheckBox
            Dim lbl As Label
            Dim stu_ID As String
            Dim aDatatier As New ClientDataTier
            If grdStudents.Rows.Count > 0 Then

                'For Each row
                For Each row As GridViewRow In grdStudents.Rows
                    chk = CType(row.FindControl("chkStudId"), CheckBox)

                    'is checkbox checked
                    If chk.Checked = True Then
                        lbl = CType(row.Controls(0).FindControl("hidStudID"), Label)
                        stu_ID = lbl.ToString

                    End If
                Next

                'refresh datagrid
                LoadData()

            End If

        Catch ex As Exception
            Throw New Exception(ex.Message, ex.InnerException)
        End Try
    End Sub

    Public Sub lbtnEdit_Click(ByVal sender As Object, ByVal e As CommandEventArgs)
        Dim recordToBeEdited As String

        Try

            'Get the record
            recordToBeEdited = Trim(e.CommandArgument)
            recordToBeEdited = HttpUtility.UrlEncode(Encrypt(recordToBeEdited))

            'this script will open a popup
            Dim sb As New StringBuilder
            sb.Append("<script language='javascript'>")
            sb.Append("window.open('StudentEdit.aspx?ID=" + recordToBeEdited.ToString + "&type=Edit" + "'  , 'student',")
            sb.Append("'width=525, height=525, menubar=no, resizable=yes, left=50, top=50, scrollbars=yes');<")
            sb.Append("/script>")

            'register with ClientScript
            ClientScript.RegisterClientScriptBlock(GetType(Page), "PopupScript", sb.ToString())
        Catch ex As Exception
            Throw New Exception(ex.Message, ex.InnerException)
        End Try
    End Sub
    Public Property sortDir() As String
        Get
            Return CStr(ViewState("sortDir"))
        End Get
        Set(value As String)
            ViewState("SortDir") = value
        End Set
    End Property

    Private Function Encrypt(clearText As String) As String
        Dim EncryptionKey As String = "MAKV2SPBNI99212"
        Dim clearBytes As Byte() = Encoding.Unicode.GetBytes(clearText)
        Using encryptor As Aes = Aes.Create()
            Dim pdb As New Rfc2898DeriveBytes(EncryptionKey, New Byte() {&H49, &H76, &H61, &H6E, &H20, &H4D,
             &H65, &H64, &H76, &H65, &H64, &H65,
             &H76})
            encryptor.Key = pdb.GetBytes(32)
            encryptor.IV = pdb.GetBytes(16)
            Using ms As New MemoryStream()
                Using cs As New CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write)
                    cs.Write(clearBytes, 0, clearBytes.Length)
                    cs.Close()
                End Using
                clearText = Convert.ToBase64String(ms.ToArray())
            End Using
        End Using
        Return clearText
    End Function

    Private Sub search_Load(sender As Object, e As EventArgs) Handles Me.Load
        If CType(ViewState("stud_id"), String) = String.Empty And CType(ViewState("fname") = String.Empty, String) And CType(ViewState("lname"), String) = String.Empty Then
            grdStudents.Visible = False
            lblError.Visible = False
        Else
        End If

    End Sub


End Class
