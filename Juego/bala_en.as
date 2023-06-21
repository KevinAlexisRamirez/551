package  {
	import flash.display.MovieClip;
	import flash.events.Event; 
	
	public class bala_en extends MovieClip {
		private var vel: Number = 10; 

		public function bala_en(pos_x, pos_y) {
			// constructor code
			x = pos_x; 
			y = pos_y+30;
			this.addEventListener(Event.ENTER_FRAME, moverb);
		}
		public function moverb(e: Event){
			y += vel;
			if(y>=385){
				vel=0; 
				this.removeEventListener(Event.ENTER_FRAME, moverb); 
				stage.removeChild(this); 
			}
			if(this.hitTestObject(Setup.protagonista_new)){
				vel=0; 
				stage.removeChild(this); 
				this.removeEventListener(Event.ENTER_FRAME, moverb);
				Setup.vidas-=1;
				//trace(Setup.vidas);
				
				
				
			}
			
			
		}

	}
	
}