Off[General::spell]


Model`Name = "MDEO";
Model`NameLaTeX ="Mutli Component Dirac Effective operator";
Model`Authors = "David Suarez";
Model`Date = "2022-23-03";

(*-------------------------------------------*)
(*   Particle Content*)
(*-------------------------------------------*)

Global[[1]] = {Z[2], Z2};

(* Gauge Superfields *)

Gauge[[1]]={B,   U[1], hypercharge,  g1, False, 1};
Gauge[[2]]={WB, SU[2], left,         g2,  True, 1};
Gauge[[3]]={G,  SU[3], color,        g3, False, 1};
Gauge[[4]]={Bp,  U[1], BminusL,     g1p, False, 1};


(* Chiral Superfields *)

FermionFields[[1]] = { q, 3, {uL, dL},   1/6, 2,  3,  1/3,  1};
FermionFields[[2]] = { l, 3, {vL, eL},  -1/2, 2,  1,   -1,  1};
FermionFields[[3]] = { d, 3, conj[dR],   1/3, 1, -3, -1/3,  1};
FermionFields[[4]] = { u, 3, conj[uR],  -2/3, 1, -3, -1/3,  1};
FermionFields[[5]] = { e, 3, conj[eR],     1, 1,  1,    1,  1};
FermionFields[[6]] = { v, 2, conj[vR],     0, 1,  1,  5/3,  1};
FermionFields[[7]] = {CL, 1,       cl,     0, 1,  1,  7/3, -1};
FermionFields[[8]] = {CR, 1, conj[cr],     0, 1,  1, -8/3, -1};

ScalarFields[[1]] = {H,    1, {H0, Hm},    -1/2, 2, 1,    0,  1};
ScalarFields[[2]] = {bi,   1,      BiD,       0, 1, 1,  1/3,  1};
ScalarFields[[3]] = {Et,   1,       et,       1, 1, 1,    2,  1};
ScalarFields[[4]] = {S,    1,       ss,      -1, 1, 1, -8/3,  1};

(*----------------------------------------------*)
(*   DEFINITION                                 *)
(*----------------------------------------------*)

NameOfStates={GaugeES, EWSB};

(* ----- Before EWSB ----- *)

DEFINITION[GaugeES][Additional]= {
	{LagSMHC, {AddHC->True}},
	{LagSMNoHC,{ AddHC->False}},
	{LagBSMHC, {AddHC->True}},
	{LagBSMNoHC,{ AddHC->False}}
};

LagSMNoHC = -(mu2 conj[H].H - L1 conj[H].H.conj[H].H);

LagSMHC = - (+ Yd H.d.q + Ye H.e.l - Yu conj[H].u.q);

LagBSMNoHC = -( MuP conj[bi].bi - L2 conj[bi].bi.conj[bi].bi - L3 conj[bi].bi.conj[H].H + mEt2  conj[Et].Et - L4 conj[Et].Et.conj[Et].Et - L5 conj[H].H.conj[Et].Et - L6 conj[bi].bi.conj[Et].Et + MS2 conj[S].S - LamSH conj[S].S.conj[H].H  - LamS conj[S].S.conj[S].S   - L7 conj[S].S.conj[bi].bi  - L8 conj[Et].Et.conj[S].S  );

LagBSMHC =  - Yx bi.CL.CR - y1 S.v.e - y2 Et.l.l - lq Et.S.bi.bi;




(* Gauge Sector *)

DEFINITION[EWSB][GaugeSector] =
{
  {{VB,VWB[3],VBp},{VP,VZ,VZp},ZZ},
  {{VWB[1],VWB[2]},{VWm,conj[VWm]},ZW}
};



(* ----- VEVs ---- *)

DEFINITION[EWSB][VEVs]=
{    {H0, {vH, 1/Sqrt[2]}, {sigmaH, \[ImaginaryI]/Sqrt[2]},{phiH, 1/Sqrt[2]}},
     {BiD,{vX, 1/Sqrt[2]}, {sigmaB, \[ImaginaryI]/Sqrt[2]},{phiB, 1/Sqrt[2]}}     };


DEFINITION[EWSB][MatterSector]=
    {
     {{phiH,phiB},{hh,ZH}},
     {{sigmaH,sigmaB},{Ah,ZA}},
     {{et,conj[ss]},{cs,ZC}},
     {{{dL}, {conj[dR]}}, {{DL,Vd}, {DR,Ud}}},
     {{{uL}, {conj[uR]}}, {{UL,Vu}, {UR,Uu}}},
     {{{eL}, {conj[eR]}}, {{EL,Ve}, {ER,Ue}}},
     {{vL,conj[vR]}, {VL,ZM}}
};


(*------------------------------------------------------*)
(* Dirac-Spinors *)
(*------------------------------------------------------*)

DEFINITION[EWSB][DiracSpinors]={
 Fd ->{  DL, conj[DR]},
 Fe ->{  EL, conj[ER]},
 Fu ->{  UL, conj[UR]},
 Fv ->{  VL, conj[VL]},
 Chi ->{  cl,  cr}};

DEFINITION[EWSB][GaugeES]={
 Fd1 ->{  FdL, 0},
 Fd2 ->{  0, FdR},
 Fu1 ->{  Fu1, 0},
 Fu2 ->{  0, Fu2},
 Fe1 ->{  Fe1, 0},
 Fe2 ->{  0, Fe2}};


