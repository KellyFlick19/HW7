
Partial Class players
    Inherits System.Web.UI.MasterPage
    Protected Sub dateLabel_Load(sender As Object, e As EventArgs) Handles dateLbl.Load

        dateLbl.Text = System.DateTime.Now.ToString("MMMM dd yyyy")

    End Sub

    Protected Sub timeLabel_Load(sender As Object, e As EventArgs) Handles timeLbl.Load

        timeLbl.Text = System.DateTime.Now.ToString("hh:mm tt")
    End Sub
End Class

