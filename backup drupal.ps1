 [ s t r i n g ] $ D a t e   =   G e t - D a t e   - f o r m a t   " y y y y M M d d " ;  
 [ s t r i n g ] $ P a t h t o T e r a c o p y E x e   =   " C : \ P r o g r a m   F i l e s \ T e r a C o p y \ T e r a C o p y . e x e "   ;  
 [ s t r i n g ] $ O r i g e n   =   " W : \ d r u p a l \ " ;  
 [ s t r i n g ] $ D e s t i n o   =   " D : \ b a c k u p \ "   +   $ D a t e   +   " d r u p a l \ " ;  
 [ A r r a y ] $ a r g u m e n t s   =   " C o p y " ,   $ O r i g e n   ,   $ D e s t i n o ;  
 &   $ P a t h t o T e r a c o p y E x e   $ a r g u m e n t s ;