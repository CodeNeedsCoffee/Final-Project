Imports Microsoft.VisualBasic, System.Data, System.Web, System.Configuration.ConfigurationManager, System.Collections, System.Collections.Generic

Public Class searchclass

    Dim connString As New SqlClient.SqlConnection(ConnectionStrings("connstring").ConnectionString)
    Dim cmdstring As New SqlClient.SqlCommand

    Public Function searching(ByVal keyword As String) As DataSet
        Try
            'open connection
            connString.Open()
            cmdstring.Parameters.Clear()
            'command
            With cmdstring
                .Connection = connString
                .CommandType = CommandType.StoredProcedure
                .CommandTimeout = 1500
                .CommandText = "keywordSearch"
                .Parameters.Add("@search", SqlDbType.VarChar, 5).Value = keyword
            End With



            'adapter and dataset
            Dim aAdapter As New SqlClient.SqlDataAdapter
            aAdapter.SelectCommand = cmdstring
            Dim aDataSet As New DataSet

            'fill adapater
            aAdapter.Fill(aDataSet)

            'return dataSet
            Return aDataSet

        Catch ex As Exception
            Throw New ArgumentException(ex.Message)
        Finally
            connString.Close()
        End Try

    End Function


    Public Function searchclient(ByVal cliID As String, ByVal fname As String, ByVal lname As String) As DataSet
        Try
            'open connection
            connString.Open()
            cmdstring.Parameters.Clear()
            'command
            With cmdstring
                .Connection = connString
                .CommandType = CommandType.StoredProcedure
                .CommandTimeout = 1500
                .CommandText = "SearchClients"
                .Parameters.Add("@cliID", SqlDbType.VarChar, 5).Value = cliID
                .Parameters.Add("@FNAME", SqlDbType.VarChar, 25).Value = fname
                .Parameters.Add("@LNAME", SqlDbType.VarChar, 25).Value = lname
            End With



            'adapter and dataset
            Dim aAdapter As New SqlClient.SqlDataAdapter
            aAdapter.SelectCommand = cmdstring
            Dim aDataSet As New DataSet

            'fill adapater
            aAdapter.Fill(aDataSet)

            'return dataSet
            Return aDataSet

        Catch ex As Exception
            Throw New ArgumentException(ex.Message)
        Finally
            connString.Close()
        End Try

    End Function



End Class
