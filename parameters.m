ParameterDefinitions = { 

{g1,        { Description -> "Hypercharge-Coupling"}},

{g11p,        {Description -> "Mixed Gauge Coupling 2"}},
{g1p1,        {Description -> "Mixed Gauge Coupling 1"}},
{g1p,       {   Description -> "B-L-Coupling"}},

{MZp,       {   Description -> "Z' mass"}},


{g2,        { Description -> "Left-Coupling"}},
{g3,        { Description -> "Strong-Coupling"}},    
{AlphaS,    {Description -> "Alpha Strong"}},	
{e,         { Description -> "electric charge"}},
{Gf,        { Description -> "Fermi's constant"}},
{aEWinv,    { Description -> "inverse weak coupling constant at mZ"}},
 

{Yu,        { Description -> "Up-Yukawa-Coupling",
			 DependenceNum ->  Sqrt[2]/vH* {{Mass[Fu,1],0,0},
             									{0, Mass[Fu,2],0},
             									{0, 0, Mass[Fu,3]}}}}, 
             									
{Yd,        { Description -> "Down-Yukawa-Coupling",
			  DependenceNum ->  Sqrt[2]/vH* {{Mass[Fd,1],0,0},
             									{0, Mass[Fd,2],0},
             									{0, 0, Mass[Fd,3]}}}},
             									
{Ye,        { Description -> "Lepton-Yukawa-Coupling",
			  DependenceNum ->  Sqrt[2]/vH* {{Mass[Fe,1],0,0},
             									{0, Mass[Fe,2],0},
             									{0, 0, Mass[Fe,3]}}}}, 
                                                                            
                                                                           
{Mu,         { Description -> "SM Mu Parameter"}},                                        
{\[Lambda],  { Description -> "SM Higgs Selfcouplings"}},
{vH,          { Description -> "EW-VEV",
               DependenceSPheno -> None }},
{vX,      {  LaTeX -> "x",
             Dependence ->  None, 
             OutputName -> vX,
             Real -> True,
             LesHouches -> {BL,43} }},

{ThetaW,    { Description -> "Weinberg-Angle"}},
{ThetaWp,  { Description -> "Theta'", DependenceNum -> None  }},

{ZZ, {Description ->   "Photon-Z-Z' Mixing Matrix"}},
{ZW, {Description -> "W Mixing Matrix"}},

{Yx, {OutputName -> Yx,
      LaTeX -> "Y_x",
      LesHouches -> YX}},

{L1, {OutputName -> lam1,
      LaTeX -> "\\lambda_1",
      LesHouches -> {BL,1}}},

{L2, {OutputName -> lam2,
      LaTeX -> "\\lambda_2",
      LesHouches -> {BL,2}}},

{L3, {OutputName -> lam3,
      LaTeX -> "\\lambda_3",
      LesHouches -> {BL,3}}},

{L4, {OutputName -> lam4,
      LaTeX -> "\\lambda_4",
      LesHouches -> {BL,4}}},

{L5, {OutputName -> lam5,
      LaTeX -> "\\lambda_5",
      LesHouches -> {BL,5}}},

{L6, {OutputName -> lam6,
      LaTeX -> "\\lambda_6",
      LesHouches -> {BL,6}}},

{L7, {OutputName -> lam7,
      LaTeX -> "\\lambda_7",
      LesHouches -> {BL,7}}},

{L8, {OutputName -> lam8,
      LaTeX -> "\\lambda_8",
      LesHouches -> {BL,8}}},

{MuP, {OutputName -> MUP,
      LaTeX -> "\\mu'",
      LesHouches -> {BL,10}}},

{mu2, {OutputName -> mu,
      LaTeX -> "\\mu_2",
      LesHouches -> {BL,11}}},

{mH2, {OutputName -> mH2,
      LaTeX -> "\\m^2_H",
      LesHouches -> {BL,20}}},

{mchi2, {OutputName -> mX2,
      LaTeX -> "\\m^2_\\chi",
      LesHouches -> {BL,21}}},

{MUS, {OutputName -> muS,
      LaTeX -> "\\mu_s",
      LesHouches -> {BL,30}}},

{mEt2, {LaTeX -> "m_{\\eta}^2",
	LesHouches -> {BL,31},
	OutputName-> mEt2 }},

{MS2, {Description -> "Softbreaking Up-Higgs Mass",
       LaTeX -> "M_S^2",
       LesHouches -> {BL,32},
	   OutputName-> MS2}},

{lq,     {OutputName ->"LQ",
             LaTeX -> "\\lambda_Q",
             LesHouches -> {BL,33}}},

{LamSH,     {OutputName ->"LSH",
             LaTeX -> "\\lambda_{SH}",
             LesHouches -> {BL,34}}},

{LamS,     {OutputName ->"LS",
             LaTeX -> "\\lambda_S",
             LesHouches -> {BL,35}}},

{y1, {OutputName -> Y1,
      LaTeX -> "Y_1",
      LesHouches -> Y1}},

{y2, {OutputName -> Y2,
      LaTeX -> "Y_2",
      LesHouches -> Y2}},

{Vu,        {Description ->"Left-Up-Mixing-Matrix"}},
{Vd,        {Description ->"Left-Down-Mixing-Matrix"}},
{Uu,        {Description ->"Right-Up-Mixing-Matrix"}},
{Ud,        {Description ->"Right-Down-Mixing-Matrix"}}, 
{Ve,        {Description ->"Left-Lepton-Mixing-Matrix"}},
{Ue,        {Description ->"Right-Lepton-Mixing-Matrix"}},

{ZM,	    {Description -> "Neutrino-Mixing-Matrix"}},

{ZH,        { Description->"Scalar-Mixing-Matrix", 
               Dependence -> None,
               DependenceOptional -> None,
               DependenceNum -> None   }},
{ZA,        { Description->"Pseudo-Scalar-Mixing-Matrix", 
                Dependence -> None,
               DependenceOptional -> None,
               DependenceNum -> None   }},
{ZC,        { Description->"Charged-Scalar-Mixing-Matrix",
               Dependence -> None,
               DependenceOptional -> None,
               DependenceNum -> None,
               LesHouches -> CHARGEDSCALARMIX,
               OutputName ->"ZC" }}



 }; 
 

