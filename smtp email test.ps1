 f u n c t i o n   s e n d M a i l   ( $ t o ,   $ s u b j e c t ,   $ b o d y ) {  
  
           W r i t e - H o s t   " S e n d i n g   E m a i l . . . "  
  
           # S M T P   s e r v e r   n a m e  
           $ s m t p S e r v e r   =   " s m t p . s e r v e r . c o m "  
            
           # C r e a t i n g   a   M a i l   o b j e c t  
           $ m s g   =   n e w - o b j e c t   N e t . M a i l . M a i l M e s s a g e  
            
           # E m a i l   s t r u c t u r e  
           $ m s g . F r o m   =   " n o - r e p l y @ d o m a i n . o r g "  
           $ m s g . R e p l y T o   =   " n o - r e p l y @ d o m a i n . o r g "  
           $ m s g . T o . A d d ( $ t o )  
           $ m s g . s u b j e c t   =   $ s u b j e c t  
           $ m s g . b o d y   =   $ b o d y  
  
  
  
  
           # C r e a t i n g   S M T P   s e r v e r   o b j e c t  
           $ s m t p   =   n e w - o b j e c t   N e t . M a i l . S m t p C l i e n t ( $ s m t p S e r v e r ,   5 8 7 )  
           $ s m t p . E n a b l e S s l   =   $ t r u e  
           $ s m t p . C r e d e n t i a l s   =   N e w - O b j e c t   S y s t e m . N e t . N e t w o r k C r e d e n t i a l ( " n o - r e p l y @ d o m a i n . o r g " , " p a s s w o r d " )  
            
  
           # S e n d i n g   e m a i l  
           $ s m t p . S e n d ( $ m s g )  
            
           W r i t e - H o s t   " E m a i l   s e n t . "  
    
 }  
  
 # C a l l i n g   f u n c t i o n  
 s e n d M a i l   " d e s t i n a t i o n @ d o m a i n . o r g "   " T e s t "   " T h i s   i s   a n   a u t o m a t i c   t e s t "