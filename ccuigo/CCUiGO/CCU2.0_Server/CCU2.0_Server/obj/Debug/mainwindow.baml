   M S B A M L   `   `   `  ����H  DCCU2.0_Server, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:CCU2._0_ServerCCU2._0_Server  5   	       CCU2._0_Server.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:CCU2._0_Server     5   	   -   5          � Title$  Server��5   	   $��615.6��6   $��731.6��6'    � Icon$ Icon/igo_black.png��65   .��5	      � ���	#FF3F3F46 � ColumnDefinitions 5
      �� 5      $
��380* �6   �� 5      $
��179* �6   �� 5      $
��234* �6   .+�5      �� -   5        $��ServerIPLabel��5   
   $	��IP:��6   $
��Left=�6-   $��125.8,61,0,0q�6H   $	��Top=�6^   
�������$��1��6�   $��2��6�   $	��123��6�   �� 5      -   5        $��ServerPortLabel��5   
   $��Port:��6!   $
��Left=�61   $��89.8,61,0,0q�6L   $	��Top=�6a   
�������$��2��6�   $��25��6�   $��78��6�   �� 5      -   5        $��ClientComboBox��5      $
��Left=�6#   $��125.8,91,0,0q�6>   $	��Top=�6T   $	��219��6l   $��2��6x   $��26��6�   $��1��6�   �� 5      -   5        $��SendTextBox��5      $
��Left=�6   $	��235��6:   $��125.8,146,0,0q�6G    �� TextWrapping$
 Wrap=�6^   $	��Top=�6r   $	��219��6�   $��2��6�   $��1��6�   �� 5      -   5        $��SendBTN��5      $
��Send��6   $
��Left=�6)   $��
76,386,0,0q�6D   $	��Top=�6X   $	��106��6p   $��41��6|   $��2��6�   $��16(�6�   �� 5      -   5        $��
LogTextBox��5      $��Visible=�6   $
��Left=�6R   $	��543��6m   $��	10,10,0,0q�6z   $
 Wrap=�6�   $	��Top=�6�   $	��439��6�   $��2��6�    �� 
IsReadOnly . 6�   �� 5      -   5        $��
ConnectBTN��5      $��MySQL Online��6   $
��Left=�64   $��123.8,15,0,0q�6O   $	��Top=�6e   $	��221��6}   $��46��6�   $��1��6�   $��2��6�   6�   5      5      