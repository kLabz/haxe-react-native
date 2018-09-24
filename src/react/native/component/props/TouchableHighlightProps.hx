package react.native.component.props;

import haxe.Constraints;

typedef TouchableHighlightProps = {
	> TouchableProps,
	?activeOpacity:Float,
	?onHideUnderlay:Function,
	?onShowUnderlay:Function,
	?underlayColor:String,
	?hasTVPreferredFocus:Bool,
	?tvParallaxProperties:Dynamic,
}
