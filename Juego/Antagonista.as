package  {
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.utils.Timer; 
	import flash.events.TimerEvent; 
	
	public class Antagonista extends MovieClip{
		private var vel: Number=10;
		private var limite_der: int=520; 
		private var limite_izq: int=30; 
		private var dir: Number=1; 
		private var cambia: Timer = new Timer(200,0);
		private var tipos: Number; 

		public function Antagonista() {
			// constructor code
			addEventListener(Event.ENTER_FRAME, actualiza);
			cambia.addEventListener(TimerEvent.TIMER, cambio_dir);
			cambia.start(); 
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
