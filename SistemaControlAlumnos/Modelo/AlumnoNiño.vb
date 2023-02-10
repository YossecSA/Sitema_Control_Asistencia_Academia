Imports MySql.Data.MySqlClient
Public Class AlumnoNiño
    Inherits ArchivoConexion

    'varibales
    Private nombres As String
    Private dni As String
    Private direccion As String
    Private celular As String
    Private polo As Integer
    Private ubicacion As String

    'variables mysql
    Private cmd As MySqlCommand

    Public Sub New(nom As String, dniA As String, dir As String, cel As String, pol As Integer, ubi As String)

        nombres = nom
        dni = dniA
        direccion = dir
        celular = cel
        polo = pol
        ubicacion = ubi

    End Sub

    Public Sub New()

    End Sub



    'metodos GET y POST
    Public Property nombres_alumno As String
        Get
            Return nombres
        End Get
        Set(value As String)
            nombres = value
        End Set
    End Property

    Public Property dni_alumno As String
        Get
            Return dni
        End Get
        Set(value As String)
            dni = value
        End Set
    End Property

    Public Property direccion_alumno As String
        Get
            Return direccion
        End Get
        Set(value As String)
            direccion = value
        End Set
    End Property

    Public Property celular_alumno As String
        Get
            Return celular
        End Get
        Set(value As String)
            celular = value
        End Set
    End Property

    Public Property polo_alumno As String
        Get
            Return polo
        End Get
        Set(value As String)
            polo = value
        End Set
    End Property

    Public Property ubicacion_alumno As String
        Get
            Return ubicacion
        End Get
        Set(value As String)
            ubicacion = value
        End Set
    End Property

End Class
