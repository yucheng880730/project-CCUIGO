using System;
using System.Collections.Generic;
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
using System.Windows.Shapes;
using System.Net;//
using System.Net.Sockets;//

namespace CCUiGO2
{
    /// <summary>
    /// sign_up.xaml 的互動邏輯
    /// </summary>
    public partial class Sign_up : Window
    {
		private string id, pw;
		private Client clientConnect;
		public Sign_up()
        {
            InitializeComponent();
			this.clientConnect = new Client();
			conditionIcon.Visibility = Visibility.Hidden;
            Sign_in_line.Visibility = Visibility.Hidden;
        }
		public Sign_up(Socket pre_socket)
		{
			InitializeComponent();
			this.clientConnect = new Client(pre_socket);
			conditionIcon.Visibility = Visibility.Hidden;
            Sign_in_line.Visibility = Visibility.Hidden;
        }
		public Sign_up(Socket pre_socket,string id)
		{
			InitializeComponent();
			this.clientConnect = new Client(pre_socket);
			conditionIcon.Visibility = Visibility.Hidden;
            Sign_in_line.Visibility = Visibility.Hidden;
            id_register.Text = id;
		}

		private void pw_register_PasswordChanged(object sender, RoutedEventArgs e)
		{
			if (!pw_recheck.Password.Equals(pw_register.Password))
			{
				conditionIcon.Visibility = Visibility.Visible;
				conditionIcon.Kind = MaterialDesignThemes.Wpf.PackIconKind.Close;
			}
			else if (pw_recheck.Password.Equals(pw_register.Password))
			{
				conditionIcon.Visibility = Visibility.Visible;
				conditionIcon.Kind = MaterialDesignThemes.Wpf.PackIconKind.CheckBold;
			}
		}

		private void Pw_recheck_PasswordChanged(object sender, RoutedEventArgs e)
        {
			if(pw_recheck.Password.Length ==0)
			{
				conditionIcon.Visibility = Visibility.Hidden;
			}
            if(!pw_recheck.Password.Equals(pw_register.Password))
            {
				conditionIcon.Visibility = Visibility.Visible;
				conditionIcon.Kind = MaterialDesignThemes.Wpf.PackIconKind.Close;
            }
            else if(pw_recheck.Password.Equals(pw_register.Password))
            {
				conditionIcon.Visibility = Visibility.Visible;
				conditionIcon.Kind = MaterialDesignThemes.Wpf.PackIconKind.CheckBold;
            }
        }

        private void SignIn_MouseDown(object sender, MouseButtonEventArgs e)
        {
			MainWindow sign_in_window = new MainWindow(this.clientConnect.getSocket());
            sign_in_window.Show();
            this.Close();
		}

        private void SignInLabel_MouseEnter(object sender, MouseEventArgs e)
        {
            Sign_in_line.Visibility = Visibility.Visible;
        }

        private void SignInLabel_MouseLeave(object sender, MouseEventArgs e)
        {
            Sign_in_line.Visibility = Visibility.Hidden;
        }

        private void Close_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Minus_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (pw_register.Password.Length != 0 && pw_recheck.Password.Length != 0)
            {
                if (pw_recheck.Password.Equals(pw_register.Password))
                {
                    string[] idpw = new string[2];
                    idpw[0] = id_register.Text;
                    idpw[1] = pw_register.Password;
                    //this.clientConnect.setIDPW(idpw);
                    this.clientConnect.AsyncSend("REGISTER_VERIFY_IDPW:" + id_register.Text + "/" + pw_register.Password);
                    Loading loading = new Loading();
                    loading.Show();
                }
                else
                {
                    MessageBox.Show("密碼不一致，請重新輸入!");
                }
            }
            else
            {
                MessageBox.Show("輸入不完整，請重新輸入!");
            }
        }

        private void CheckID_Click(object sender, RoutedEventArgs e)
		{
			this.id = id_register.Text;
			this.clientConnect.AsyncSend("REGISTER_VERIFY_ID:" + this.id);
			Loading loading = new Loading();
			loading.Show();
		}
	}
}
