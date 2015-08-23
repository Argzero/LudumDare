package azengine.structure.scene;

// AZEngine
import azengine.structure.graphics.Layer;

// HAXE CORE
import haxe.ds.*;

// Flambe
import flambe.Entity;

/**
 * @author Argzero
 */
class Scene extends Entity {
	private var _layers : Array<Layer>;
	public var layers(get, set):Array<Layer>;
	public function new() {
		layers = new Array<Layer>();
		layers.push(new Layer("Background"));
		layers.push(new Layer("Rear Foreground"));
		layers.push(new Layer("Mid Ground"));
		layers.push(new Layer("Foreground"));
	}
	
	public override function dispose() : Void {
		
	}
}