Imports Microsoft.VisualBasic, System.Data, System.Web, System.Configuration.ConfigurationManager, System.Collections, System.Collections.Generic

Public Class PrescriptionDataTier
    Dim connString As New SqlClient.SqlConnection(ConnectionStrings("connstring").ConnectionString)
    Dim cmdstring As New SqlClient.SqlCommand
    Public Function GetAllPrescriptions() As DataSet
        Try
            'open connection
            connString.Open()
            cmdstring.Parameters.Clear()
            'command
            cmdstring.Connection = connString
            cmdstring.CommandType = CommandType.StoredProcedure
            cmdstring.CommandTimeout = 1500
            cmdstring.CommandText = "getAllPrescriptions"

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

    Public Function GetPrescriptionsByRxNumber(ByVal RxNumber As String) As DataSet

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
                .CommandText = “GetStudentID”
                'Define input parameter
                .Parameters.Add(“@RxNumber”, SqlDbType.Int).Value = RxNumber
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


    Public Sub DeletePrescription(ByVal RxNumber As String)

        Try
            connString.Open()
            cmdstring.Parameters.Clear()
            With cmdstring
                .Connection = connString
                .CommandType = CommandType.StoredProcedure
                .CommandTimeout = 900
                .CommandText = "DeleteStudentByID"
                .Parameters.Add("@RxNumber", SqlDbType.Int).Value = RxNumber
                .ExecuteNonQuery()
            End With
        Catch ex As Exception
            Throw New ArgumentException(ex.Message)
        End Try
    End Sub
    Public Sub add_prescription(ByVal cliID As String, ByVal physid As Integer)
        Try
            connString.Open()
            cmdstring.Parameters.Clear()
            With cmdstring
                .Connection = connString
                .CommandType = CommandType.StoredProcedure
                .CommandTimeout = 900
                .CommandText = "add_prescription"
                .Parameters.Add()
            End With
        Catch ex As Exception

        End Try
    End Sub

End Class

