package react.native.component.props;

import haxe.Constraints;
import haxe.extern.EitherType;
import enums.Enums;
import react.ReactComponent.ReactFragment;

typedef ImageProps = {
	> Props,
	?onError:Function,
	?onLayout:Function,
	?onLoad:Function,
	?onLoadEnd:Function,
	?onLoadStart:Function,
	?resizeMode:ResizeMode,
	?source:ImageSource,
	?style:ImageStyle,
	?testID:String,
	?borderRadius:Int,
	// android
	?resizeMethod:Enums<'auto', 'resize', 'scale'>,
	// ios
	?accessibilityLabel:ReactFragment,
	?accessible:Bool,
	?blurRadius:Float,
	?capInsets:{top:Float, left:Float, bottom:Float, right:Float},
	?defaultSource:{uri:String, width:Int, height:Int, scale:Float}, // TODO: number - Opaque type returned by something like require('./image.jpg')
	?onPartialLoad:Function,
	?onProgress:Function,
}

typedef ResizeMode = Enums<'cover', 'contain', 'stretch', 'repeat', 'center'>;
