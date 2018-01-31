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


    Public Function GetClientByID(ByVal CliID As String) As DataSet

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

    Public Sub DeleteClient(ByVal CliID As String)

        Try
            connString.Open()
            cmdstring.Parameters.Clear()
            With cmdstring
                .Connection = connString
                .CommandType = CommandType.StoredProcedure
                .CommandTimeout = 900
                .CommandText = "DeleteClientByID"
                .Parameters.Add("@CliID", SqlDbType.VarChar, 6).Value = CliID
                .ExecuteNonQuery()
            End With
        Catch ex As Exception
            Throw New ArgumentException(ex.Message)
        End Try
    End Sub
    Public Sub AddClient(ByVal ClientID As String, ByVal fname As String, ByVal minit As String, ByVal lname As String, ByVal email As String, ByVal phone As String, ByVal street As String, ByVal city As String, ByVal state As String, ByVal zip As String, ByVal gender As String, ByVal dob As String)
        Try
            connString.Open()
            cmdstring.Parameters.Clear()
            With cmdstring
                .Connection = connString
                .CommandType = CommandType.StoredProcedure
                .CommandTimeout = 900
                .CommandText = "Add_patient"
                .Parameters.Add("@CliID", SqlDbType.VarChar, 6).Value = ClientID
                .Parameters.Add("@fname", SqlDbType.VarChar, 25).Value = fname
                .Parameters.Add("@lname", SqlDbType.VarChar, 30).Value = lname
                .Parameters.Add("@initial", SqlDbType.Char, 1).Value = minit
                .Parameters.Add("@email1", SqlDbType.VarChar, 100).Value = email
                .Parameters.Add("@phone1", SqlDbType.VarChar, 15).Value = phone
                .Parameters.Add("@streetadd", SqlDbType.VarChar, 40).Value = street
                .Parameters.Add("@city", SqlDbType.VarChar, 60).Value = city
                .Parameters.Add("@stateabr", SqlDbType.Char, 2).Value = state
                .Parameters.Add("@zip", SqlDbType.VarChar, 5).Value = zip
                .Parameters.Add("@gender", SqlDbType.Char, 1).Value = gender
                .Parameters.Add("@dob", SqlDbType.Date).Value = dob

                .ExecuteNonQuery()
            End With
        Catch ex As Exception
            Throw New ArgumentException(ex.Message)
        End Try
    End Sub
End Class
