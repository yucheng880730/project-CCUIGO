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
using System.Net.Sockets;//

namespace CCUiGO2
{
	/// <summary>
	/// UserMainWindow.xaml 的互動邏輯
	/// </summary>
	public partial class UserMainWindow : Window
	{
		private Client clientConnect;
		public UserMainWindow()
		{
			InitializeComponent();
			this.clientConnect = new Client();
		}

		public UserMainWindow(Socket pre_socket)
		{
			InitializeComponent();
			this.clientConnect = new Client(pre_socket);
		}
	}
}
