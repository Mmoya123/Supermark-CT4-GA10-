
importar  Java . yo _ IOExcepción ;
importar  Java . sql . fecha ;
importar  Java . útil _ escáner ;

 Registro de clase  pública {

	public  static  void  main ( String [] args ) lanza  IOException {
		
		CRUDprducto crud = new CRUDproducto();
    Fecha  fecha = nueva  Fecha ( 101 , 8 , 28 );

		Usuario  user = new  Usuario ( "Santiago" , "Ruiz" , "ybn3421" , "santiruiz2001@outlook.com" , 43640893 , fecha );{

		}
basura_producto (producto);
}

}
