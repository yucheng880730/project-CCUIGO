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
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Net;//
using System.Net.Sockets;//

namespace CCUiGO2
{
    /// <summary>
    /// MainWindow.xaml 的互動邏輯
    /// </summary>
    public partial class MainWindow : Window
    {
		private Client clientConnect;
        private UserSettings userSettings;
        private Dictionary<string, string> setting;
		public MainWindow()
        {
            InitializeComponent();
			this.clientConnect = new Client();
            this.userSettings = new UserSettings();
            this.setting = new Dictionary<string, string>();

            this.setting = this.userSettings.MainWindow_LoadXML();
            if (this.setting["remeberID"].Length != 0)
            {
                rememberIDcheck.IsChecked = true;
                id_inputbox.Text = this.setting["remeberID"];
            }
            Sign_up_line.Visibility = Visibility.Hidden;
        }

		public MainWindow(Socket pre_socket)
		{
            InitializeComponent();
            this.clientConnect = new Client(pre_socket);
            this.userSettings = new UserSettings();
            this.setting = new Dictionary<string, string>();

            this.setting = this.userSettings.MainWindow_LoadXML();
            if (this.setting["remeberID"].Length != 0)
            {
                rememberIDcheck.IsChecked = true;
                id_inputbox.Text = this.setting["remeberID"];
            }
            Sign_up_line.Visibility = Visibility.Hidden;
        }

        private void SignUp_MouseDown(object sender, MouseButtonEventArgs e)
        {
            Sign_up sign_up_window = new Sign_up(this.clientConnect.getSocket());
            sign_up_window.Show();
            this.Close();
        }

		private void Button_Click(object sender, RoutedEventArgs e)
		{
			string send = "LOGINTRY:" + id_inputbox.Text + "/" + pw_inputbox.Password;
			this.clientConnect.AsyncSend(send);
			Loading loading = new Loading();
			loading.Show();
		}

        private void SignUpLabel_MouseEnter(object sender, MouseEventArgs e)
        {
            Sign_up_line.Visibility = Visibility.Visible;
        }

        private void SignUpLabel_MouseLeave(object sender, MouseEventArgs e)
        {
            Sign_up_line.Visibility = Visibility.Hidden;
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            if(rememberIDcheck.IsChecked.Value)
            {
                this.setting["remeberID"] = id_inputbox.Text;
                this.userSettings.MainWindow_SaveXML(this.setting);
            }
            else
            {
                this.setting["remeberID"] = "";
                this.userSettings.MainWindow_SaveXML(this.setting);
            }
        }

        private void Close_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Minus_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }
    }
}
