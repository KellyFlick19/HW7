
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

        tbsearch.Focus()
    End Sub

    Protected Sub btnsearch_Click(sender As Object, e As EventArgs) Handles btnsearch.Click
        Dim searchWord As String

        searchWord = "Select * From db_flick_nflplayers where (FirstName Like '%" + tbsearch.Text.ToString() + "%') or (LastName Like '%" + tbsearch.Text.ToString() + "%') or (Team Like '%" + tbsearch.Text.ToString() + "%') or (Position Like '%" + tbsearch.Text.ToString() + "%') or (Weight Like '%" + tbsearch.Text.ToString() + "%') or (Height Like '%" + tbsearch.Text.ToString() + "%') or (Experience Like '%" + tbsearch.Text.ToString() + "%') or (College Like '%" + tbsearch.Text.ToString() + "%')"

        SqlDataSource1.SelectCommand = searchWord

        tbsearch.Text = ""
    End Sub

End Class
