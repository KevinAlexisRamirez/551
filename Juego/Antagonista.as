package  {
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.utils.Timer; 
	import flash.events.TimerEvent; 
	
	public class Antagonista extends MovieClip{
		static var vel: Number=16;
		private var limite_der: int=520; 
		private var limite_izq: int=30; 
		private var dir: Number=1; 
		private var cambia: Timer = new Timer(200,0);
		private var tipos: Number; 
		
		private var lanzar: Timer= new Timer (2000,0); 
		
		private var lanzar_en: Timer = new Timer (5000,0);

		public function Antagonista() {
			// constructor code
			addEventListener(Event.ENTER_FRAME, actualiza);
			cambia.addEventListener(TimerEvent.TIMER, cambio_dir);
			cambia.start();
			lanzar.addEventListener(TimerEvent.TIMER, lanza_bala);
			lanzar.start();
			lanzar_en.addEventListener(TimerEvent.TIMER, lanza_bala_en);
			lanzar_en.start();
			
		}
		public function lanza_bala(e: TimerEvent){
			
			//trace("lanza bala");
			var bala_nueva = new bala(x,y);
			stage.addChild(bala_nueva); 
			
			
		}
		public function lanza_bala_en(e: TimerEvent){
			var bala_en_nueva = new bala_en(x,y); 
			stage.addChild(bala_en_nueva);
		}
		
		
		public function cambio_dir(e: TimerEvent){
			tipos=Math.floor(Math.random()*8);
			//trace(tipos ); 
			switch(tipos) {
				case 1: 
				dir=1; 
				break; 
				case 2: 
				dir=-1; 
				break; 
			}
		}
		
	public function actualiza (e: Event){
		x+=vel * dir; 
		if(x>=limite_der){
			dir=-1;
		}
		if(x<=limite_izq){
			dir=1;
			
		}
	}

	}
	
}
