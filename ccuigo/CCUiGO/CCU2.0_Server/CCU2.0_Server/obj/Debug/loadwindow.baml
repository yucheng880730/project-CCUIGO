   M S B A M L   `   `   `  ����H  DCCU2.0_Server, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:CCU2._0_ServerCCU2._0_Server  5   	       CCU2._0_Server.LoadWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:CCU2._0_Server     5   	   J FWpfAnimatedGif, Version=1.4.18.0, Culture=neutral, PublicKeyToken=null,gif"http://wpfanimatedgif.codeplex.com  5      -   5          � Icon$  Icon/igo_white.png��5	       � Title$ Loading��5
   	   $��140.494��6   $��274.697��6*    � WindowStyle$
 None=�5       � WindowStartupLocation$ CenterScreen=�5      ��6(   Z� .��5      � ���	#FF26282B � ColumnDefinitions 5      �� 5      �� 5      $��0* �6   .+�5      � -   5        $��ConnectProgress��5      $
��Left=�6'   $��12��6B   $��
10,107,0,0q�6N   $	��Top=�6b   $	��248��6z   ���	#FF77AAAD��6�   Z� �� 5      -   5        $��PercentLabel��5   
   $��0%��6   $
��Left=�6+   $��
219,73,0,0q�6F   $	��Top=�6Z   
�������6r   �� 5      -   5        $��
loadingGIF��5   F   "  WpfAnimatedGif.ImageBehavior   AnimatedSource$ GIF/ellipsis_loading.gif��6
   $��Center=�6X   $��Center=�6u   $��92��6�   $��90,7,86,35.4q�6�   $��92��6�   5      5      