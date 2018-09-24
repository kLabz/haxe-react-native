package react.native.component.props;

import haxe.Constraints;
import react.ReactComponent.ReactSingleFragment;

typedef TouchableProps = {
	> Props,
	?children:ReactSingleFragment,
	?onPress:Function,
	?style:ViewStyle,
}
