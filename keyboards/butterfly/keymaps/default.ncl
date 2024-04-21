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
	BOOT = tap.custom.fak.BOOT,
} in

{
	virtual_keys = [
		# Top Row Combos	
    	combo.make 50 [0, 1],
    	combo.make 50 [1, 2],
    	combo.make 50 [2, 3],
    	combo.make 50 [3, 4],
    	combo.make 50 [4, 5],
    	combo.make 50 [5, 6],
    	combo.make 50 [6, 7],
    	combo.make 50 [7, 8],
		# Second Row Combos
    	combo.make 50 [9, 10],
    	combo.make 50 [10, 11],
    	combo.make 50 [11, 12],
    	combo.make 50 [13, 14],
    	combo.make 50 [14, 15],
    	combo.make 50 [15, 16],
		# Boot Mode
		combo.make 50 [0, 8],
	],
	layers = [
		[
#			kc.A, kc.S & md.lctl, kc.H & md.lsft, kc.T & md.lalt,      kc.M,      kc.N & md.lalt, kc.E & md.lsft, kc.O & md.lctl, kc.I,
			kc.A, kc.S, kc.H, kc.T,      kc.M,      kc.N, kc.E, kc.O, kc.I,
			      kc.D, kc.R, kc.C,   kc.G, kc.Y,   kc.L, kc.U, kc.P,
			          cu.TH_UP, cu.TH_DN, cu.TH_FM, cu.TH_FN,
			# Virtual Combos
				kc.Q, kc.V, kc.W, kc.TAB,        kc.BSPC, kc.F, kc.J, kc.BSPC,
				      kc.Z, kc.X, kc.TAB,        kc.BSPC, kc.K, kc.B,
				cu.BOOT,
		],
		[
			TTTT, ks.PERC, TTTT,    ks.PLUS,     kc.N1,     kc.N2, kc.N3, kc.N4, kc.N5,
			         TTTT, kc.BSLS, kc.MINS, kc.EQL, kc.N6, kc.N7, kc.N8, kc.N9,
				           TTTT,    TTTT,                   kc.N0, kc.DOT,
			# Virtual Combos
			  TTTT, TTTT, TTTT, TTTT,                   TTTT,    TTTT,    TTTT,     TTTT,
			  		TTTT, TTTT, TTTT,                   TTTT,    TTTT,    TTTT,
			  TTTT,
		],
		[
			ks.EXLM, ks.AT, ks.HASH, ks.DLR,      ks.CIRC,      ks.AMPR, ks.ASTR, ks.LPRN, ks.RPRN,
			       ks.TILD, ks.DQUO, ks.PIPE, ks.UNDS, ks.PLUS, ks.LCBR, ks.RCBR, ks.LABK,
			                   TTTT,    TTTT,             TTTT,    ks.RABK,
			  TTTT, TTTT, TTTT, TTTT,                   TTTT,    TTTT,    TTTT,     TTTT,
			  		TTTT, TTTT, TTTT,                   TTTT,    TTTT,    TTTT,
			  TTTT,
		],
		[
			kc.ESC, TTTT, TTTT, kc.DEL,    kc.PGUP,     kc.LEFT, kc.UP,   kc.RIGHT, kc.ENTER,
			      kc.TAB, TTTT, TTTT,   TTTT,  kc.PGDN, kc.HOME, kc.DOWN, kc.END,
			              TTTT, TTTT,                   TTTT,    TTTT,
			# Virtual Combos
			  TTTT, TTTT, TTTT, TTTT,                   TTTT,    TTTT,    TTTT,     TTTT,
			  		TTTT, TTTT, TTTT,                   TTTT,    TTTT,    TTTT,
			  TTTT,
		],
		[
			kc.A, kc.S, kc.H, kc.T,      kc.F1,      kc.F2, kc.F3, kc.F4, kc.F5,
			      kc.D, kc.R, kc.M,   kc.G, kc.F6,   kc.F7, kc.F8, kc.F9,
			          cu.TH_DN, cu.TH_UP, cu.TH_FN, cu.TH_FN,
			# Virtual Combos
			  TTTT, TTTT, TTTT, TTTT,                   kc.F10, kc.F11, kc.F12, TTTT,
			  		TTTT, TTTT, TTTT,                   TTTT,   TTTT,    TTTT,
			  TTTT,
		],
	]
}
