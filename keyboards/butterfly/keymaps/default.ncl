let { tap, hold, td, combo, .. } = import "fak/keycode.ncl" in
let util = import "fak/util_functions.ncl" in

let TTTT = tap.trans & hold.trans in
let kc = tap.reg.kc in
let ks = tap.reg.ks in
let md = hold.reg.mod in
let MO = hold.reg.layer in

let cu = {
	SFTZ = td.make 100 [
		md.lsft & kc.Z & hold.reg.behavior {},
		tap.reg.mod.lsft & kc.Z,
	],
	SFTA = td.make 100 [
		md.lsft & kc.A & hold.reg.behavior {},
		tap.reg.mod.lsft & kc.A,
	],
	CTLX = td.make 100 [
		md.lctl & kc.X & hold.reg.behavior {},
		tap.reg.mod.lctl & kc.X,
	],
	GUIC = td.make 100 [
		md.lgui & kc.C & hold.reg.behavior {},
		tap.reg.mod.lgui & kc.C,
	],
	TH_DN = MO 1 & kc.BSPC & hold.reg.behavior {},
	TH_UP = MO 2 & kc.SPC & hold.reg.behavior {},
	TH_FM = MO 3 & kc.SPC & hold.reg.behavior {},
	TH_FN = MO 4 & kc.ENTER & hold.reg.behavior {},
} in

{
	layers = [
		[
			kc.A, kc.S, kc.H, kc.T,      kc.G,      kc.N, kc.E, kc.I, kc.O,
			      kc.D, kc.R, kc.M,   kc.G, kc.Y,   kc.L, kc.U, kc.P,
			          cu.TH_DN, cu.TH_UP, cu.TH_FM, cu.TH_FN,
		],
		[
			TTTT, ks.PERC, TTTT,    kc.PLUS,     kc.N1,     kc.N2, kc.N3, kc.N4, kc.N5,
			         TTTT, kc.BSLS, kc.MINS, kc.EQL, kc.N6, kc.N7, kc.N8, kc.N9,
				           TTTT,    TTTT,                   kc.N0, kc.DOT,
		],
		[
			ks.EXLM, ks.AT, ks.HASH, ks.DLR,      ks.CIRC,      ks.AMPR, ks.ASTR, ks.LPRN, ks.RPRN,
			       ks.TILD, ks.DQUO, ks.PIPE, ks.UNDS, ks.PLUS, ks.LCBR, ks.RCBR, ks.LABK,
			                   TTTT,    TTTT,             TTTT,    ks.RABK,
		],
		[
			kc.ESC, TTTT, TTTT, kc.DEL,    kc.PGUP,     kc.LEFT, kc.UP,    kc.RIGHT,    kc.ENTER,
			      kc.TAB, TTTT, TTTT,   TTTT,  kc.PGDN, kc.HOME, kc.DOWN,  kc.END,
			              TTTT, TTTT,                   TTTT,    TTTT,
		],
		[
			kc.A, kc.S, kc.H, kc.T,      kc.G,      kc.N, kc.E, kc.I, kc.O,
			      kc.D, kc.R, kc.M,   kc.G, kc.Y,   kc.L, kc.U, kc.P,
			          cu.TH_DN, cu.TH_UP, cu.TH_FN, cu.TH_FN,
		],
	]
}
