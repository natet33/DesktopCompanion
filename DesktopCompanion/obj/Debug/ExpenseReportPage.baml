   M S B A M L   `   `   `  ����K  GDesktopCompanion, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:DesktopCompanionDesktopCompanion  5      (    "DesktopCompanion.ExpenseReportPage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0localclr-namespace:DesktopCompanion     5        N� Title$  ExpenseIt - View Expense��5	      .��5      �  � 	Resources 5   
      typeItemTemplate �� XPath  amountItemTemplate  dateItemTemplate��%�   &	        &	 I     &	 �     �� 5      .R�5      �� ��6   �� $ @ExpenseType��5      �� 5      .R�5      �� ��6   �� $ @ExpenseAmount��5      �� 5      .R�5      �� ��6   �� $ @Date��5      5      ��5   
   �� 5       �� ImageSource$ wall.jpg��6    � ColumnDefinitions 5    
   �� 5!      $	��230 �6   �� 5"       � RowDefinitions 5$   
   �� 5%      $
��Auto �6   �� 5&      .+�5)   
   �� $��0��6     headerTextStyle#��[ 6    .��6I   Add Expense:5+      � 5,   
   $��20q�6   $��0��6   $��1��6+    5-      �� 5.       50      �� 51      $
��Auto �6    �� 52      $
��Auto �6    �� 53      �� 54      $
��Auto �6    .+�56      �� $��0��6   $��0��6)    �� Orientation$ Vertical=�66   .+�57      ��   
labelStyle#��[ 6   .��6<   ExpenseType:6J   �� 58      59      �� 5:      $��0��6   $��1��6)   $ Vertical=�66   .+�5;      �� #��[ 6   .��6<   	Amount:6E   �� 5<      5=      &   System.Windows.Controls.Calendar  5>      $��0��6   $��2��6'   $
��5,10q�64   �� 5?      -   5        $��0��5?      $��3��6%     buttonStyle#��[ 62   .��6l   Add6q   5@      �� 5B   
   $��1��6   #��[ 6    .��6I   Expense Report For:5D      � 5E   
   $��10q�6   $��1��6   $��1��6+    5G      �� 5H      �� 5I      �� 5J       5L      �� 5M      $
��Auto �6    �� 5N      $
��Auto �6    �� 5O      .+�5S      �� $��0��6   $��3��6)   $��0��6=   $ 
Horizontal=�6J   .+�5T      �� #��[ 6   .��6<   Name:6C   �� 5U      #��[ 6   ��6<   �� $ @Name��6^   5V      �� 5Y      $��0��6   $��2��6)   $��1��6=   $ 
Horizontal=�6J   .+�5Z      �� #��[ 6   .��6<   Department:6I   �� 5[      #��[ 6   ��6<   �� $ @Department��6d   5\      � 5^      $��0��6   $��3��6#   $��2��67   $	��Top=�6D   $
��Left=�6\   .+�5`      &   System.Windows.Controls.DataGrid    columnHeaderStyle   ColumnHeaderStyle# [ 6A      AutoGenerateColumns .  	   RowHeaderWidth$	 0Q�6�   ��6   �� $ Expense��
   Columns
 5a      4  .System.Windows.Controls.DataGridTemplateColumn  5b      ,  &System.Windows.Controls.DataGridColumn   Header$ ExpenseType��61      CellTemplate# [  6F     5c      $ Amount��61   # [ 6A     5d      $
 Date��61   # [ 6?   5f      5g      5h      5i      5j      