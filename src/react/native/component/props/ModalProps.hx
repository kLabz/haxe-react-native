package react.native.component.props;

import haxe.Constraints;
import enums.Enums;

typedef ModalProps = {
	> Props,
	?animated:Bool,
	?animationType:Enums<'none', 'slide', 'fade'>,
	?onShow:Function,
	?transparent:Bool,
	?visible:Bool,
	// android
	?hardwareAccelerated:Bool,
	?onRequestClose:Void->Void,
	// ios
	?onOrientationChange:String->Void,
	?supportedOrientations:Array<Enums<'portrait', 'portrait-upside-down', 'landscape', 'landscape-left', 'landscape-right'>>,
}
