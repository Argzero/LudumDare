package azengine.structure.game;

// Flambe
import flambe.display.ImageSprite;

/**
 * @author Argzero
 */
class GameObject extends ImageSprite {
	private var _layer:String;
	public 	var layer(get, set):String;
	public function get_layer():String { return _layer; }
	public function set_layer(value:String):String { return _layer = value; }
	
	public function new(texture:String) {
		super();
	}
	
	public function update() : Void {
		
	}
}