   M S B A M L   `   `   `  ����B  >CCUiGO2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:CCUiGO2CCUiGO2  5   	       CCUiGO2.Sign_up   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   !localclr-namespace:CCUiGO2  5   	     � Icon$  Icon/igo_white.png��5	       � Title$ 
MainWindow��5
   	   $��364.33��6   $��449.603��6,    � WindowState$ Normal=�6<    � WindowStyle$
 None=�6Q   ���#6E7783 � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�6   |�.  � 	Resources 5       �� 
TargetType   Textbox1 �� Property	 �� Value
 �� 
TargetType ��Name �� CornerRadius ��Name �� Triggers P� Property P� Value  PasswordBox1  Button1 �� EndPoint �� 
StartPoint � Color � Offset'  !MaterialDesignThemes.Wpf.PackIcon  materialDesign1��%A  &	        &	 u    &	 C    &	 �    �� 5   
   " ��6   .�5      ��  � ��$	 7q�6(   �� 5       � ��	 �#0006+   �� 5       � ��$		 182��6&   �� 5       � ��$	 33��6'   �� 5       � ��$	 12(�6)   �� 5       � ��	 5      �� 5      "
 ��6&   .R�5      �� $ border��6!   $ 15��5   !   ���#D8E6E7$��2q�5   !   ���#D8E6E7$��	10,0,10,0q�5   6   ._�5      �� $ PART_ContentHost��6+   |�.  $��Hidden=�6W   $��Hidden=�6~   5       5      P� 5       �@J�IsMouseOver . 5      P� 5        �@J�	IsFocused . 5!      5#      5%      5&      �� 5(   
   " G�6   .�5)      ��  � ��$	 7q�6(   �� 5*       � ��	 �#0006+   �� 5+       � ��$		 182��6&   �� 5,       � ��$	 33��6'   �� 5-       �@G�PasswordChar$		 ●��6-   �� 5.       � ��$	 9(�6)   �� 5/       � ��$	 Center=�69   �� 50       � ��	 51      �� 52      "
 G�6&   .R�53      �� $ border��6!   $ 15��54   !   ���#D8E6E7$��2q�56   !   ���#D8E6E7$��	10,0,10,0q�57   6   ._�58      �� $ PART_ContentHost��6+   |�.  $��Hidden=�6W   $��Hidden=�6~   59       5:      P� 5;       �@J�IsMouseOver . 5<      P� 5=       �@J�	IsFocused . 5>      5@      5B      5C      �� 5E   
   " ��6   .�5F      ��  � ��$	 15(�6)   �� 5G       � ��
	 �����6+   �� 5H       � ��	 �#77AAAD6+   �� 5I       � ��$		 141��6&   �� 5J       � ��$	 33��6'   �� 5K       � ��	 5L      �� 5M      "
 ��6&   .R�5N      �� $��PART_Background��6{   #��z��6!   $��0q�6U   $ 16��6i   ��5O      �� 5P   "   $	 0,1&�66   $	 0,0&�6E   .��5Q   &   � $ #77AAAD��63   $	 0.0Q�6C   5R   #   ._�5T      �� #��z��6/   $��Center=�6b   $��Center=�6   5U      5V      5X      5Y      �� 5[   
   "  6   .�5\      ��  � ��$	 27��6'   �� 5]       � ��$	 19��6&   �� 5^       � ��	 �#D8E6E76+   5_      5`      .��5b      �  � RowDefinitions 5c   
   �� 5d       � ColumnDefinitions 5f   
   �� 5g      $��6* �6   �� 5h      $
��431* �6   �� 5i      $��5* �6   .+�5l   
   �� $��1��6   $��184,15,184,287q�6    $��igo_white_update1.png��68   $
��Fill=�6W    J� RenderTransformOrigin$ 0.832,0.523&�6f   �� 5n   
   -   5        $��close��5n      
������ $��1��68   $��421,0,0.333,342q�6H   $��22��6a   $��22��6l   $��17(�6x   $��2��6�   ��5o      �� 5p       �� ImageSource$ Icon/cross.png��6   5r      �� 5t   
   -   5        $��minus��5t      
������ $��1��68   $��397,-2,16,338q�6H   $
��Auto��6_   $��15(�6m   ��5u      �� 5v      $ Icon/minus.png��6    �� Opacity$	 0.3Q�6:   5x      �� 5z   
   -   5        $��0,82,-0.4,49q�5z      $��4��6+   ���#6E7783.+�5{      �� $	��Top=�6   .+�5|      �� -   5        $��Sign In��5|      $��23(�6*   $��Center=�68   $��111,25,239.333,0q�6\   ���#D8E6E76�   �� 5}      -   5         ��Name$ Sign_in_line��5}      $��Center=�6.   $��125,0,254,0q�6R   ���#77AAAD$
��Bold"�6|   $��3q�5~      ���#77AAAD$��2��6B    J� Opacity$	 0.5Q�6M   5      �� 5�      $	��Top=�6   .+�5�      �� $��Sign up��6   $��23(�6*   $��Center=�68   $��240,-41,100,0q�6\   ���#D8E6E76s   �� 5�      -   5        $ Sign_up_line��5�      $��Center=�6.   $��255,-3,119,0q�6R   ���#77AAAD$
��Bold"�6}   $��3q�5�      ���#77AAAD$��2��6B   5�      �� 5�       �� Orientation$ 
Horizontal=�6   $��Center=�62   $��100,15,100,0q�6O   .+�5�        �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=null]]   Kind$ AccountCardDetails=�6*   #��[ 6D   �� 5�      -   5         ��Name$ id_register��5�      $
��-4,0q�6/   #��[  6=   5�      �� 5�      $ 
Horizontal=�6   $��Center=�62   $��100,20,100,0q�6O   .+�5�        $	 Key=�6*   #��[ 65   G� 5�      -   5         G�Name$ pw_register��5�      $
��-4,0q�63   #��[ 6A   6g   5�      �� 5�      $ 
Horizontal=�6   $��Center=�62   $��119,20,100,0q�6O   .+�5�        $ CheckAll=�6*   #��[ 6:   G� 5�      -	   5        $ 
pw_recheck��5�      $
��-4,0q�62   #��[ 6@   6f     5�      -
   5        $��conditionIcon��5�   *   $ 	CheckBold=�6?   #��[ 6P   ���#8CD7906y   5�      �� 5�      $ 
Horizontal=�6   5�      �� 5�   
   $��Take Care Of Your Course��6   ���#D8E6E7$��139,75,139,267q�6H   $��1��6`   �� 5�   
   -   5        $
��NEXT��5�      $	��Top=�6    $��1��68   $��373,326,6,0q�6H   #��[ 6]   $
��Auto��6�   $��28��6�   5�      5�      