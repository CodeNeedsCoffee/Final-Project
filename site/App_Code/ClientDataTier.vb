Imports Microsoft.VisualBasic, System.Data, System.Web, System.Configuration.ConfigurationManager, System.Collections, System.Collections.Generic

Public Class ClientDataTier
    Dim connString As New SqlClient.SqlConnection(ConnectionStrings("connstring").ConnectionString)
    Dim cmdstring As New SqlClient.SqlCommand

    Public Function GetAllClients() As DataSet
        Try
            'open connection
            connString.Open()
            cmdstring.Parameters.Clear()
            'command
            cmdstring.Connection = connString
            cmdstring.CommandType = CommandType.StoredProcedure
            cmdstring.CommandTimeout = 1500
            cmdstring.CommandText = "GetAllClients"

            'adapter and dataset
            Dim aAdapter As New SqlClient.SqlDataAdapter
            aAdapter.SelectCommand = cmdstring
            Dim aDataSet As New DataSet

            'fill adapater
            aAdapter.Fill(aDataSet)

            Return aDataSet
            'Return

        Catch ex As Exception
            Throw New ArgumentException(ex.Message)
        Finally
            connString.Close()

        End Try
    End Function


    Public Function GetStudentByID(ByVal CliID As String) As DataSet

        Try
            'open connection
            connString.Open()
            'clear cmd
            cmdstring.Parameters.Clear()
            'command
            With cmdstring
                .Connection = connString
                .CommandType = CommandType.StoredProcedure
                .CommandTimeout = 150
                .CommandText = “GetClientID”
                'Define input parameter
                .Parameters.Add(“@CliID”, SqlDbType.VarChar, 6).Value = CliID
                ''execute command
                '.ExecuteNonQuery()
            End With
            Dim aAdapter As New SqlClient.SqlDataAdapter
            aAdapter.SelectCommand = cmdstring
            Dim aDataSet As New DataSet

            'fill adapter
            aAdapter.Fill(aDataSet)

            'return dataset
            Return aDataSet

        Catch ex As Exception
            Throw New ArgumentException(ex.Message)
        End Try
    End Function
End Class
