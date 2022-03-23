Imports System.Collections.Generic
Imports System.Security.Claims
Imports System.Security.Principal
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls

Public Partial Class SiteMaster
    Inherits MasterPage
    Private Const AntiXsrfTokenKey As String = "__AntiXsrfToken"
    Private Const AntiXsrfUserNameKey As String = "__AntiXsrfUserName"
    Private _antiXsrfTokenValue As String

    Protected Sub Page_Init(sender As Object, e As EventArgs)
        ' El código siguiente ayuda a proteger frente a ataques XSRF
        Dim requestCookie = Request.Cookies(AntiXsrfTokenKey)
        Dim requestCookieGuidValue As Guid
        If requestCookie IsNot Nothing AndAlso Guid.TryParse(requestCookie.Value, requestCookieGuidValue) Then
            ' Utilizar el token Anti-XSRF de la cookie
            _antiXsrfTokenValue = requestCookie.Value
            Page.ViewStateUserKey = _antiXsrfTokenValue
        Else
            ' Generar un nuevo token Anti-XSRF y guardarlo en la cookie
            _antiXsrfTokenValue = Guid.NewGuid().ToString("N")
            Page.ViewStateUserKey = _antiXsrfTokenValue

            Dim responseCookie = New HttpCookie(AntiXsrfTokenKey) With {
                .HttpOnly = True,
                .Value = _antiXsrfTokenValue
            }
            If FormsAuthentication.RequireSSL AndAlso Request.IsSecureConnection Then
                responseCookie.Secure = True
            End If
            Response.Cookies.[Set](responseCookie)
        End If

        AddHandler Page.PreLoad, AddressOf master_Page_PreLoad
    End Sub

    Protected Sub master_Page_PreLoad(sender As Object, e As EventArgs)
        If Not IsPostBack Then
            ' Establecer token Anti-XSRF
            ViewState(AntiXsrfTokenKey) = Page.ViewStateUserKey
            ViewState(AntiXsrfUserNameKey) = If(Context.User.Identity.Name, [String].Empty)
        Else
            ' Validar el token Anti-XSRF
            If DirectCast(ViewState(AntiXsrfTokenKey), String) <> _antiXsrfTokenValue OrElse DirectCast(ViewState(AntiXsrfUserNameKey), String) <> (If(Context.User.Identity.Name, [String].Empty)) Then
                Throw New InvalidOperationException("Error de validación del token Anti-XSRF.")
            End If
        End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs)

    End Sub

    Protected Sub Unnamed_LoggingOut(sender As Object, e As LoginCancelEventArgs)
        Context.GetOwinContext().Authentication.SignOut()
    End Sub

    Private Sub btnBuscar_Click(sender As Object, e As EventArgs) Handles btnBuscar.Click
        Session("Buscar") = txtBuscar.Text
        Response.Redirect("~/Buscar.aspx")
    End Sub

    Private Sub LkBajos_Click(sender As Object, e As EventArgs) Handles LkBajos.Click
        Session("Bajos") = "Bajos"
        Response.Redirect("~/Bajos.aspx")
    End Sub

    Private Sub LkBaterias_Click(sender As Object, e As EventArgs) Handles LkBaterias.Click
        Session("Baterias") = "Baterias"
        Response.Redirect("~/Baterias.aspx")
    End Sub

    Private Sub LkPianos_Click(sender As Object, e As EventArgs) Handles LkPianos.Click
        Session("Pianos") = "Pianos"
        Response.Redirect("~/Pianos.aspx")
    End Sub

    Private Sub lkGuitarras_Click(sender As Object, e As EventArgs) Handles lkGuitarras.Click
        Session("Guitarras") = "Guitarras"
        Response.Redirect("~/Guitarras.aspx")
    End Sub

    Private Sub lGuit_Click(sender As Object, e As EventArgs) Handles lGuit.Click
        Session("Guitarras") = "Guitarras"
        Response.Redirect("~/Guitarras.aspx")
    End Sub

    Private Sub lBass_Click(sender As Object, e As EventArgs) Handles lBass.Click
        Session("Bajos") = "Bajos"
        Response.Redirect("~/Bajos.aspx")
    End Sub

    Private Sub lDrum_Click(sender As Object, e As EventArgs) Handles lDrum.Click
        Session("Baterias") = "Baterias"
        Response.Redirect("~/Baterias.aspx")
    End Sub

    Private Sub lkeys_Click(sender As Object, e As EventArgs) Handles lkeys.Click
        Session("Pianos") = "Pianos"
        Response.Redirect("~/Pianos.aspx")
    End Sub

    Private Sub SiteMaster_Load(sender As Object, e As EventArgs) Handles Me.Load
        Session("useract") = Context.User.Identity.GetUserName()
        Dim et As Label
        Dim cont As Integer
        Dim nom As String
        Dim TA As New DSBTB.CARRITODataTable
        Dim prod As New DSBTBTableAdapters.CARRITOTableAdapter

        If Context.User.Identity.GetUserName().IsNullOrEmpty(Context.User.Identity.GetUserName()) Then
        Else
            nom = Context.User.Identity.GetUserName()
            cont = prod.CountByNomUs(nom).HasValue

            et = LoginView1.FindControl("lblCont")
            If cont.Equals("False") Then
                cont = "0"
            Else
                Try
                    cont = prod.CountByNomUs(nom)
                Catch ex As Exception

                End Try

            End If
            et.Text = cont
        End If
    End Sub
End Class
