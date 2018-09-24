package react.native.api;

import haxe.macro.Context;
import haxe.macro.Expr;
import react.native.component.props.*;
using haxe.macro.Tools;

@:jsRequire("react-native", "StyleSheet")
extern class StyleSheet {

	static var hairlineWidth:Dynamic;
	static var absoluteFill:Dynamic;
	static var absoluteFillObject:Dynamic;

	@:native('create') @:noCompletion static function _create<T>(obj:T):T;

	static inline macro function create(e:Expr):ExprOf<Dynamic<Int>> {

		var exprs = new Map<String, Expr>();
		switch e.expr {
			case EObjectDecl(fields):
				for(field in fields) {
					var ct = switch field.expr {
						case {expr: EMeta({name: ':type', params:[{expr: EConst(CIdent(name))}]}, e)}:
							field.expr = e;
							TPath({name: name, pack: 'react.native.component.props'.split('.')});
						case {expr: EMeta({pos: pos}, _)}:
							Context.error('Only supports @:type(StyleType)', pos);
						case {expr: EParenthesis({expr: ECheckType({expr: EObjectDecl(_)}, ct)})}:
							ct;
						case {expr: EObjectDecl(_) | EBlock([])}:
							macro:react.native.component.props.Style;
						case e:
							Context.error('Expected object literal', e.pos);
					}
					var expr = macro @:pos(field.expr.pos) (${field.expr}:$ct);
					exprs[field.field] = field.expr = expr;

					// HACK: this makes quick-enums ready
					try Context.typeof(expr) catch(e:Dynamic) {}
				}
			case _:
				Context.error('Expected object literal', e.pos);
		}


		return macro react.native.api.StyleSheet._create($e);
	}
}
