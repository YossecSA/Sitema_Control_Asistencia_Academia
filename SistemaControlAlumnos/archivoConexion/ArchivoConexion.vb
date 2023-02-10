Imports MySql.Data.MySqlClient

Public Class ArchivoConexion

    'creamos el objeto de mysqlconnection

    Protected con As New MySqlConnection("server=localhost; database=dbg_controlAlumnos; user=root; password=rootleon")

    'metodos
    Public Function conectar() As Boolean
        Try
            con.Open()
            Return True
        Catch ex As Exception
            MsgBox("No se pudo conectar a la base de datos error: " & ex.Message)
            Return False
        End Try
    End Function

    Public Sub desconectar()

        Try
            If con.State = ConnectionState.Open Then
                con.Close()
            End If

        Catch ex As Exception

            MsgBox("No se pudo cerrar la conexion, revisar el motro Mysql: " & ex.Message)

        End Try
    End Sub

End Class
