package org.flashsocket.utils {
	import flash.utils.ByteArray;
	
	public class StringUtil {
		public static function trim(input:String):String {
			return input.replace(/^\s\s*/, '').replace(/\s\s*$/, '');
		}
		
		public static function toBytes(input:String):ByteArray {
			var bytes:ByteArray = new ByteArray(),
				length:int = input.length,
				i:int = 0;
			
			bytes.length = length;
			
			while (i < length) {
				bytes[i] = input.charCodeAt(i++);
			}
			
			bytes.position = length;
			
			return bytes;
		}
	}
}