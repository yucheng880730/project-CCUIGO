   M S B A M L   `   `   `  ����B  >CCUiGO2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:CCUiGO2CCUiGO2  5   	       CCUiGO2.VerifyCode   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   !localclr-namespace:CCUiGO2  5   	     � Icon$  Icon/igo_white.png��5	       � Title$ 
MainWindow��5
   	   $��364.33��6   $��449.603��6,    � WindowState$ Normal=�6<    � WindowStyle$
 None=�6Q   ���#6E7783 � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�6    � 	Resources 5       �� 
TargetType   Textbox1 �� Property	 �� Value
 �� 
TargetType ��Name �� CornerRadius ��Name �� Triggers P� Property P� Value  Button1 �� EndPoint �� 
StartPoint � Color � Offset��%�  &	        &	 Q    �� 5   
   " ��6   .�5      ��  � ��$	 7q�6(   �� 5       � ��	 �#0006+   �� 5       � ��$		 182��6&   �� 5       � ��$	 33��6'   �� 5       � ��	 5      �� 5      "
 ��6&   .R�5      �� $ border��6!   $ 15��5   !   ���#D8E6E7$��2q�5   !   ���#D8E6E7$��	10,0,10,0q�5   6   ._�5      �� $ PART_ContentHost��6+   |�.  $��Hidden=�6W   $��Hidden=�6~   5       5      P� 5       �@J�IsMouseOver . 5      P� 5       �@J�	IsFocused . 5       5"      5$      5%      �� 5'   
   " ��6   .�5(      ��  � ��$	 15(�6)   �� 5)       � ��
	 �����6+   �� 5*       � ��	 �#77AAAD6+   �� 5+       � ��$		 182��6&   �� 5,       � ��$	 33��6'   �� 5-       � ��	 5.      �� 5/      "
 ��6&   .R�50      �� $��PART_Background��6g   #��z��6!   $ 16��6U   ��51      �� 52   "   $	 0,1&�66   $	 0,0&�6E   .��53   &   � $ #77AAAD��63   $	 0.0Q�6C   54   #   ._�56      �� #��z��6/   $��Center=�6b   $��Center=�6   57      58      5:      5;      5<      .��5>      �  � RowDefinitions 5?   
   �� 5@       � ColumnDefinitions 5B   
   �� 5C      $��6* �6   �� 5D      $
��431* �6   �� 5E      $��5* �6   .+�5H   
   �� $��1��6   $��184,15,184,287q�6    $��igo_white_update1.png��68   $
��Fill=�6W    J� RenderTransformOrigin$ 0.832,0.523&�6f   �� 5J   
   -   5        $��close��5J      
������ $��1��68   $��421,0,0.333,342q�6H   $��22��6a   $��22��6l   $��17(�6x   $��2��6�   ��5K      �� 5L       �� ImageSource$ Icon/cross.png��6   5N      �� 5P   
   -   5        $��minus��5P      
������ $��1��68   $��397,-2,16,338q�6H   $
��Auto��6_   $��15(�6m   ��5Q      �� 5R      $ Icon/minus.png��6    �� Opacity$	 0.3Q�6:   5T      �� 5V   
    �� Orientation$ 
Horizontal=�6   $��Center=�6.   $��Center=�6K   $��65,124,65.8,201q�6f   $��2��6   $��1��6�   $	��287��6�   .+�5W      �� $��
驗證碼:��6   ���#D8E6E7$��16(�68   �� 5X      -   5         ��Name$ verify_code_text��5X      $
��-4,0q�60   #��[  6>   $	��Top=�6`   $��輸入驗證碼��6   
�������6�   5Y      �� 5[   
   -   5        $
��next��5[       $
��NEXT��6   $	��Top=�6,   $��1��6D   $��371,326,6,0q�6T   #��[ 6i   $
��Auto��6�   $��28��6�   6�   �� 5\   
   -   5        $
��back��5\       $
��BACK��6   $	��Top=�6,   $��1��6D   $��6,326,371,0q�6T   #��[ 6i   $
��Auto��6�   $��28��6�   6�   �� 5^   
   $��Take Care Of Your Course��6   ���#D8E6E7$��139,75,139,267q�6H   $��1��6`   �� 5`   
   -   5        $��ReVerifyCodeBTN��5`      $��重取驗證碼��6(   $	��Top=�68   $	��101��6P   $��34��6\   $��1��6h   $��316,126,22,0q�6x   #��[ 6�   6�   �� 5b   
   $E��?若未收到驗證碼信，請點選重取驗整碼的按鈕，��6   ���#D8E6E7$��86,185,87,153q�6E   $��1��6\    J� Opacity$	 0.6Q�6l   �� 5c   
   $6��0或返回上一步確認信箱輸入正確與否��6   ���#D8E6E7$��86,202,99,135q�6@   $��1��6W   $	 0.6Q�6g   5d      5e      