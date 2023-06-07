package  {
	import flash.display.MovieClip;
	
	public class Setup extends MovieClip {
		private var piso_new: piso= new piso();  
		private var protagonista_new: Protagonista = new Protagonista(); 
		private var antagonista_new: Antagonista = new Antagonista();

		public function Setup() {
			// constructor code
			///trace("hola mundo");
			
			
			addChild(piso_new);
			addChild(protagonista_new); 
			addChild(antagonista_new);
			
			piso_new.y =388; 
			piso_new.x = 275; 
			
			protagonista_new.y=350;
			protagonista_new.x=275;
			
			antagonista_new.y=80
			antagonista_new.x=275;
		
		}

	}
	
}
