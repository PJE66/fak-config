let { tap, hold, td, combo, .. } = import "fak/keycode.ncl" in
let util = import "fak/util_functions.ncl" in

let TTTT = tap.trans & hold.trans in
let kc = tap.reg.kc in
let ks = tap.reg.ks in
let km = tap.reg.mod in
let md = hold.reg.mod in
let MO = hold.reg.layer in
let hrb = hold.reg.behavior in
let cu = {
	SftH = td.make 100 [ md.lsft & kc.H & hrb {}, km.lsft & kc.H, ],
	SftE = td.make 100 [ md.lsft & kc.E & hrb {}, km.lsft & kc.E, ],
	CtlT = td.make 100 [ md.lctl & kc.T & hrb {}, km.lctl & kc.T, ],
	CtlN = td.make 100 [ md.lctl & kc.N & hrb {}, km.lctl & kc.N, ],
	AltS = td.make 100 [ md.lalt & kc.S & hrb {}, km.lalt & kc.S, ],
	AltO = td.make 100 [ md.lalt & kc.O & hrb {}, km.lalt & kc.O, ],
	TH_DN = MO 1 & kc.SPC & hrb {},
	TH_UP = MO 2 & kc.BSPC & hrb {},
	TH_FM = MO 3 & kc.SPC & hrb {},
	TH_FN = MO 4 & kc.ENTER & hrb {},
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
			kc.A, cu.AltS, cu.SftH, cu.CtlT,      kc.M,      cu.CtlN, cu.SftE, cu.AltO, kc.I,
			      kc.D, kc.R, kc.C,   kc.G, kc.Y,   kc.L, kc.U, kc.P,
			          cu.TH_UP, cu.TH_DN, cu.TH_FM, cu.TH_FN,
			# Virtual Combos
				kc.Q, kc.V, kc.W, kc.TAB,        kc.BSPC, kc.F, kc.J, kc.BSPC,
				      kc.Z, kc.X, kc.TAB,        kc.BSPC, kc.K, kc.B,
				cu.BOOT,
		],
		[	# a%h+12345  d\-=6789  ??0.+
			TTTT, ks.PERC, TTTT,    ks.PLUS,     kc.N1,     kc.N2, kc.N3, kc.N4, kc.N5,
			         TTTT, kc.BSLS, kc.MINS, kc.EQL, kc.N6, kc.N7, kc.N8, kc.N9,
				           TTTT,    TTTT,                   kc.N0, kc.DOT,
			# Virtual Combos
			  TTTT, TTTT, TTTT, TTTT,                   TTTT,    TTTT,    TTTT,     TTTT,
			  		TTTT, TTTT, TTTT,                   TTTT,    TTTT,    TTTT,
			  TTTT,
		],
		[	# !@#$^&*()   ~"|_+{}<  ...>
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
