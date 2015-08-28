package azengine.structure.assets;

// Haxe Core
import haxe.ds.*;
import haxe.ds.StringMap;

// Flambe
import flambe.System;
import flambe.asset.AssetPack;
import flambe.asset.Manifest;

/**
 * @author Argzero
 */
class AssetManager {
	public static var loading:Bool = false;
	private static var last_pack : String = "";
	public static var core:AssetPack;
	public static var assets:StringMap<AssetPack>;
	public static function loadAssets(folder:String):Void {
		loading = true;
		// Load up the compiled pack in the assets directory named "bootstrap"
        var manifest = Manifest.fromAssets("bootstrap");
        var loader = System.loadAssetPack(manifest);
        loader.get(loadComplete);
	}
	
	private static function loadComplete(pack:AssetPack) {
		assets.set(last_pack, pack);
		last_pack = "";
		loading = false;
	}
	
	public static function clearAssets(folder:String) {
		assets.get(folder).dispose();
	}
	
	public static function init() {
		assets = new StringMap<AssetPack>();
	}
}