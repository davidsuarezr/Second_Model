OnlyLowEnergySPheno = True;


MINPAR={{1, Lambda1INPUT},
        {2, Lambda2INPUT},
        {3, Lambda3INPUT},
        {4, Lambda4INPUT},
        {5, Lambda5INPUT},
        {6, Lambda6INPUT},
        {7, Lambda7INPUT},
        {8, Lambda8INPUT},
        {10, g1pINPUT},
        {11, g1p1INPUT},
        {12, g11pINPUT},
        {20, vXinput},
        {21, Yxinput},
        {22, mEt2Input},
        {23, LamSHIN},
        {24, LamSIN},
        {25, MSinput},
        {26, lqINPUT}
        };

ParametersToSolveTadpoles = {MuP,mu2};

DEFINITION[MatchingConditions]= {
 {Ye, YeSM},
 {Yd, YdSM},
 {Yu, YuSM},
 {g1, g1SM},
 {g2, g2SM},
 {g3, g3SM},
 {vH, vSM}
 };


BoundaryLowScaleInput={
 {g1p,g1pINPUT},
 {g11p,g11pINPUT},
 {g1p1,g1p1INPUT},
 {L1, Lambda1INPUT},
 {L2, Lambda2INPUT},
 {L3, Lambda3INPUT},
 {L4, Lambda4INPUT},
 {L5, Lambda5INPUT},
 {L6, Lambda6INPUT},
 {L7, Lambda7INPUT},
 {L8, Lambda8INPUT},
 {vX,vXinput},
 {Yx,Yxinput},
 {mEt2,mEt2Input},
 {LamSH,LamSHIN},
 {LamS, LamSIN},
 {lq, lqINPUT},
 {MS2,MSinput},
 {y1, LHInput[y1]},
 {y2, LHInput[y2]}
};

AddTreeLevelUnitarityLimits=True;


ListDecayParticles = {Fu,Fe,Fd,Fv,hh,VZp, Chi, cs};
ListDecayParticles3B = {{Fv,"Fv.f90"},{Fu,"Fu.f90"},{Fe,"Fe.f90"},{Fd,"Fd.f90"}};
