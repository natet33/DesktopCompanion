   M S B A M L   `   `   `  ����K  GDesktopCompanion, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:DesktopCompanionDesktopCompanion  5      $    DesktopCompanion.ExpenseItHome   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0localclr-namespace:DesktopCompanion     5        N� Title$  ExpenseIt - Home��5	      .��5      � $��
10,0,10,10q�6    � 	Resources 5   
      ExpenseDataSource � XPath  nameItemTemplate �� XPath��%;  &	        &	 �    � 5      $ Expenses��68   .��5      ��<Expenses xmlns="">
                        <Person Name="Mike" Department="Legal">
                            <Expense ExpenseType="Lunch" ExpenseAmount="50" Date="1/1/19" />
                            <Expense ExpenseType="Transportation" ExpenseAmount="50" Date="1/5/19" />
                        </Person>
                        <Person Name="Lisa" Department="Marketing">
                            <Expense ExpenseType="Document printing" ExpenseAmount="50" Date="1/12/19" />
                            <Expense ExpenseType="Gift" ExpenseAmount="125" Date="1/21/19" />
                            <Expense ExpenseType="Nails" ExpenseAmount="40" Date="2/8/19" />
                            <Expense ExpenseType="Margs" ExpenseAmount="100" Date="2/15/19" />
                        </Person>
                        <Person Name="John" Department="Engineering">
                            <Expense ExpenseType="Magazine subscription" ExpenseAmount="50" Date="1/9/19" />
                            <Expense ExpenseType="New machine" ExpenseAmount="600" Date="1/25/19" />
                            <Expense ExpenseType="Software" ExpenseAmount="500" Date="2/1/19" />
                        </Person>
                        <Person Name="Mary" Department="Finance">
                            <Expense ExpenseType="Dinner" ExpenseAmount="100" Date="2/22/19" />
                        </Person>
                    </Expenses>        5'      �� 5*      .R�5+      �� ��6   �� $ @Name��5,      5.      ��50   
   �� 51       �� ImageSource$ wall.jpg��6    � ColumnDefinitions 54   
   �� 55      $	��230 �6   �� 56       � RowDefinitions 59   
   �� 5:      �� 5;      $
��Auto �6   �� 5<      �� 5=      $
��Auto �6   .+�5A   
   �� $��1��6     headerTextStyle#��[ 6    .��6I   View Expense Report5C      �� 5E   
   $��1��6   $��1��6!     listHeaderStyle#��[ 6.   ._�5F      ��   listHeaderTextStyle#��[ 6   .��6A   Names6H   5G      �� 5I   
   -   5        $��peopleListBox��5I      $��1��6'   $��2��67   5K      �� 5N   
   -   5        $��1��5N      $��3��6!     buttonStyle#��[ 6.   .��6h   View6n   5O      5P      