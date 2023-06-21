package  {
	import flash.display.MovieClip;
	import flash.events.Event;

	
	public class Setup extends MovieClip {
		private var piso_new: piso= new piso();  
		static var protagonista_new: Protagonista = new Protagonista(); 
		static var antagonista_new: Antagonista = new Antagonista();
		static var puntos: Number = 0; 
		static var puntos_box_new: puntos_box = new puntos_box(); 
		static var vidas: Number = 3; 
		static var vidas_box_new: vidas_box = new vidas_box(); 
		static var fin: String = ("Fin del Juego"); 
		static var fin_box_new: fin_box = new fin_box(); 
		static var numero: Number = 0;


		public function Setup() {
			// constructor code
			///trace("hola mundo");
			
			
			addChild(piso_new);
			addChild(protagonista_new); 
			addChild(antagonista_new);
			addChild(puntos_box_new); 
			addChild(vidas_box_new);
			addChild(fin_box_new); 
			
			piso_new.y =388; 
			piso_new.x =275; 
			
			protagonista_new.y=350;
			protagonista_new.x=275;
			
			antagonista_new.y=80
			antagonista_new.x=275;
			
			puntos_box_new.y=15;
			puntos_box_new.x=180; 
			puntos_box_new.puntostxt.text = String(puntos); 
			this.addEventListener(Event.ENTER_FRAME, atualiza_puntos);
			
			vidas_box_new.y= 16;
			vidas_box_new.x= 500;
			vidas_box_new.vidastxt.text = String(vidas); 
			this.addEventListener(Event.ENTER_FRAME, actualiza_vidas);
			
			fin_box_new.y=200
			fin_box_new.x=250
			this.addEventListener(Event.ENTER_FRAME, actualiza_vidas);
			
		
			}
			public function atualiza_puntos(e: Event) {
    		if (vidas > 0) {
        	puntos_box_new.puntostxt.text = String(puntos);
    		}
    		if (numero % 5 == 0 && Antagonista.vel < puntos / 5 * 2) {
        	Antagonista.vel += 2;
    			}
			}

			public function actualiza_vidas(e: Event){
				
			vidas_box_new.vidastxt.text = String(vidas);
			
			if (vidas <= 0 ) {
    		
			removeEventListener(Event.ENTER_FRAME, actualiza_vidas);
    		
			fin_box_new.fintxt.text = fin;
			}
    }
  }
}
