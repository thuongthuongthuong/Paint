   M S B A M L   `   `   `  ����@  <Paint, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:PaintPaint  5   	       Paint.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:Paint     5   	   -   5          � Title$  Paint��5   	   $	��800��6   $
��1410��6$   .��5	      ��  �� Orientation$ Vertical=�6   .+�5
   
   �� $ 
Horizontal=�6   .+�5      o� .@�5      m� $��_File��6   .@�5      m� -   5        $
��_New��5      6-   m� 5      -   5        $��_Open��5      6.   m� 5      -   5        $��_Save��5      6.   m� 5      -   5        $��_Import��5      60   m� 5      -   5        $��_Export��5      60   5      5      o� 5      .@�5      m� $
��Home��6   5      5      5      �� 5   
   $ 
Horizontal=�6   .+�5      0  *System.Windows.Controls.Ribbon.RibbonGroup  $��Tools��6   .@�5      �  � Orientation$ 
Horizontal=�6   .+�5      �� -   5        .��5      �� $ Vertical=�6%   .+�5      �� $��/Images/edit.png��6$    �� BitmapScalingMode$ HighQuality=�6>   $��45��6l   �� 5       -   5        $��	edit_draw��5    (   $
��Draw��69   $��Center=�6E   �� 5!      $
��Mode��6(   $��Center=�64   5"      5#      �� 5$      -	   5        .��5%      �� $ Vertical=�6%   .+�5&      �� $��/Images/undo.png��6$   $ HighQuality=�6>   $��45��6l   �� 5'      $
��Undo��6(   $��Center=�64   5(      5)      �� 5*      -
   5        .��5+      �� $ Vertical=�6%   .+�5,      �� $��/Images/redo.png��6$   $ HighQuality=�6>   $��45��6l   �� 5-      $
��Redo��6(   $��Center=�64   5.      5/      �� 50      -   5        .��51      �� $ Vertical=�6%   .+�52      �� $��/Images/delete.png��6$   $ HighQuality=�6@   $��45��6n   �� 53      $��Delete��6(   $��Center=�66   54      55      56      57        58      $��	Clipboard��6   .@�59      � .+�5:      �� -   5        .��5;      �� $ Vertical=�6%   .+�5<      �� $��/Images/clean.png��6$   $ HighQuality=�6?   $��50��6m   �� 5=      $��Clear��6(   $��Center=�65   5>      5?      �� 5@      -   5        .��5A      �� $ Vertical=�6%   .+�5B      �� $��/Images/paste.png��6$   $ HighQuality=�6?   $��50��6m   �� 5C      $��Paste��6(   $��Center=�65   5D      5E      � 5F      $ Vertical=�6    .+�5G      �� -   5        .��5H      �� $ Vertical=�6)   .+�5I   "   �� $��/Images/cut.png��6(   $ HighQuality=�6A   $��20��6o   �� 5J   "   $	��cut��6,   $��Center=�67   5K      5L      �� 5M      -   5        .��5N      �� $ Vertical=�6)   .+�5O   "   �� $��/Images/copy.png��6(   $ HighQuality=�6B   $��20��6p   �� 5P   "   $
��Copy��6,   $��Center=�68   5Q      5R      5S      5T      5U        5V      $
��Text��6   .@�5W      � .+�5X      �� -   5        $��80��5X   6   $��0,0,4,0q�6B   .��5Y      �� $ Vertical=�6%   .+�5Z      �� $��/Images/text.png��6$   $ HighQuality=�6>   $��40��6l   �� 5[      $
��Text��6(   $��Center=�64   5\      5]      � 5^      $ Vertical=�6    .+�5_      � $ 
Horizontal=�6$   .+�5`      �� $��Font Family��6(   $��0,0,4,0q�6;   �� 5a      -   5        $��fontFamilyComboBox��5a   '   $��20��6A   $	��195��6M    �� 
IsEditable$ False��6Z   $
��Left=�6m   5b      5c      � 5d      $ 
Horizontal=�6$   $��0,4,0,0q�6=   .+�5e      �� $
��Size��6(   $��0,0,4,0q�64   $��60��6E   �� 5f      -   5        $��fontSizeComboBox��5f   '   $��20��6?   $	��100��6K   $ False��6X   $
��Left=�6k   5g      5h      � 5i      $ 
Horizontal=�6$   $��0,3,0,0q�6=   .+�5j      �� -   5        $
��Bold��5j   %   $��5,0,5,0q�6K   .��5k   "   �� $��/Images/bold.png��6(   $��30��6B   $ HighQuality=�6N   6~   5l      �� 5m      -   5        $��Italic��5m   %   $��5,0,5,0q�6O   .��5n   "   �� $��/Images/italic.png��6(   $��30��6D   $ HighQuality=�6P   6�   5o      �� 5p      -   5        $��	Underline��5p   %   $��5,0,5,0q�6U   .��5q   "   �� $��/Images/underline.png��6(   $��30��6G   $ HighQuality=�6S   6�   5r      5s      5t      5u      5v        5w      $��Shapes��6   .@�5x      �� -   5        $��iconListView��5x      $	��200��6/   $��70��6;   $��8,8,8,0q�6G   $��Disabled=�5y      ��5z      �� 5{      .R�5|      �� $��25��6<   $��25��6G   $ HighQuality=�6S   ��6$   �� *Icon+6�   5}      ��5�      �� 5�      .R�5�      � 5�      ��5�      �� 5�       �� 
TargetType" ��6    .�5�      ��  �� Property �@�ToolTip �� Value 68   �� *Name+5�      5�      5�        5�      $��Stroke��6   .@�5�      � $ Vertical=�6   .+�5�      �� $
��Type��6    $��Center=�6,   $��35��6I   �� 5�      -   5         ��Name$ strokeComboBox��5�       $��25��68   $ False��6D   $��Center=�6W   .@�5�      �� 	 �� 
IsSelected$
	 True��6'   .��5�      �� $��
__________��6(   $��	ExtraBold"�6:   $��Center=�6Q   $��Center=�6n   5�      �� 5�      .��5�      �� $��_.._.._.._..��6(   $��	ExtraBold"�6<   $��Center=�6S   $��Center=�6p   5�      �� 5�      .��5�      �� $��.............��6(   $��	ExtraBold"�6=   $��Center=�6T   $��Center=�6q   5�      �� 5�      .��5�      �� $��_ _ _ _ _ _  ��6(   $��	ExtraBold"�6=   $��Center=�6T   $��Center=�6q   5�      5�      5�      5�        5�      $
��Size��6   .@�5�      � $ Vertical=�6   .+�5�      �� $��/Images/thickness.png��6   $	��1.5q�6;   �� 5�      -   5        $ thickComboBox��5�      $ False��66   $��Center=�6I   $��73��5�   G   .@�5�      �� $
	 True��6'   .��5�      � $ 
Horizontal=�6(   .+�5�   "   �� $��/Images/thin.png��6(   $ HighQuality=�6B   $��20��6p   �� 5�   "   $	��1px��6,   5�      5�      �� 5�      .��5�      � $ 
Horizontal=�6(   .+�5�   "   �� $��/Images/medium.png��6(   $ HighQuality=�6D   $��20��6r   �� 5�   "   $	��3px��6,   5�      5�      �� 5�      .��5�      � $ 
Horizontal=�6(   .+�5�   "   �� $��/Images/thick.png��6(   $ HighQuality=�6C   $��20��6q   �� 5�   "   $	��5px��6,   5�      5�      �� 5�      .��5�      � $ 
Horizontal=�6(   .+�5�   "   �� $��/Images/extrathick.png��6(   $ HighQuality=�6H   $��20��6v   �� 5�   "   $
��10px��6,   5�      5�      5�      5�      5�        5�      $
��Zoom��6   .@�5�      � .+�5�      �� -   5        .��5�      �� $ Vertical=�6%   .+�5�      �� $��/Images/zoom_in.png��6$   $ HighQuality=�6A   $��50��6o   �� 5�      $��Zoom in��6(   $��Center=�67   5�      5�      �� 5�      -   5        .��5�      �� $ Vertical=�6%   .+�5�      �� $��/Images/zoom_out.png��6$   $ HighQuality=�6B   $��50��6p   �� 5�      $��Zoom out��6(   $��Center=�68   5�      5�      �� 5�      -   5        .��5�      �� $ Vertical=�6%   .+�5�      �� $��/Images/100_origin.png��6$   $ HighQuality=�6D   $��50��6r   �� 5�      $��Origin��6(   $��Center=�66   5�      5�      5�      5�        5�      $��Color��6   .@�5�      � .+�5�      �� -   5        $��primaryColor��5�      $��PColor��61   $��70��6B   
���  ��6N   � 5�      $ Vertical=�6    .+�5�      �� -   5        $��redColor��5�   !   $��23��61   $��23��6=   
���  ��6Y   �� 5�      -   5        $��
brownColor��5�   !   $��24��63   $��23��6?   
���**��6]   �� 5�      -   5        $��
blackColor��5�   !   $��23��63   $��23��6?   
���   �6]   5�      � 5�      $ Vertical=�6    .+�5�      �� -    5        $��orangeColor��5�   !   $��23��64   $��23��6@   
��� ���6_   �� 5�      -!   5        $��yellowColor��5�   !   $��24��64   $��23��6@   
��� ���6_   �� 5�      -"   5        $��
greenColor��5�   !   $��23��63   $��23��6?   
��� � �6]   5�      � 5�      $ Vertical=�6    .+�5�      �� -#   5        $��	blueColor��5�   !   $��23��62   $��23��6>   
����  �6[   �� 5�      -$   5        $��indigoColor��5�   !   $��24��64   $��23��6@   
���� K�6_   �� 5�      -%   5        $��violetColor��5�   !   $��23��64   $��23��6@   
������6_   5�      5�      5�      5�      � 5�   
   -&   5        
 �Name$
 
whiteBoard��5�      
�������$
}�True��67    � ColumnDefinitions 5�      �� 5�      $	��59* �6#   �� 5�      $
��411* �6#   .+�5�      �� -'   5        
������  J� IsHitTestVisible$
 True��5�   .   $��2��5�   s   �� 5�      -(   5        $��drawingArea��5�      $ False��6(   $
}�True��6A   
�������$	��650��6h   $
��1410��6u   $��2��6�   5�      5�      5�      