using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace DesktopCompanion
{
    /// <summary>
    /// Interaction logic for ExpenseItHome.xaml
    /// </summary>
    public partial class ExpenseItHome : Page
    {
        public ExpenseItHome()
        {
            string sSQL = "SELECT * FROM dbo.Person";
            InitializeComponent();
            SqlConnection con;
            SqlCommand sqlCommand;
            SqlDataAdapter adapter = new SqlDataAdapter();
            DataSet ds = new DataSet();
            //con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|DesktopCompanion.mdf;Integrated Security=True";
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\DesktopCompanion.mdf;Integrated Security=True");
            try
            {
                con.Open();
                sqlCommand = new SqlCommand(sSQL, con);
                adapter.SelectCommand = sqlCommand;
                adapter.Fill(ds);
            }
            catch (Exception ex)
            {
                con.Close();
            }
            peopleListBox.ItemsSource = ds.Tables["Person"].ToString();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            //View Expense Report
            ExpenseReportPage expenseReportPage = new ExpenseReportPage(this.peopleListBox.SelectedItem);
            this.NavigationService.Navigate(expenseReportPage);
        }
    }
}
