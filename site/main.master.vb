Imports System.Data, System.IO, System.Text, System.Security.Cryptography
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Private Sub MasterPage_Load(sender As Object, e As EventArgs) Handles Me.Load
        Page.ClientScript.GetPostBackEventReference(Me, String.Empty)


        If Me.IsPostBack Then
            Dim eventTarget As String
            Dim eventArgument As String

            If ((Me.Request("__EVENTTARGET") Is Nothing)) Then
                eventTarget = String.Empty
            Else
                eventTarget = Me.Request("__EVENTTARGET")
                If ((Me.Request("__EVENTARGUMENT") Is Nothing)) Then
                    eventArgument = String.Empty
                Else
                    eventArgument = Me.Request("__EVENTARGUMENT")
                    If eventTarget = "CustomPostBack" Then
                        Dim valuePassed As String = eventArgument
                        Response.Redirect("/search.aspx?id=" + eventArgument)
                    End If
                End If
            End If
        End If


    End Sub



    Public Property BodyTag As HtmlGenericControl
        Get
            Return Tagging
        End Get
        Set(value As HtmlGenericControl)
            Tagging = value
        End Set
    End Property




End Class

