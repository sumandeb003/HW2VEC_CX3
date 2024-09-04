/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/
module sky130fdschdudpmux2to1 (
    X ,
    A0,
    A1,
    S
);

    output X ;
    input  A0;
    input  A1;
    input  S ;
    assign X = (!S && A0) || (S && A1); 
    /*table
     
         0   0   ?  :  0   ;
         1   1   ?  :  1   ;
         0   ?   0  :  0   ;
         1   ?   0  :  1   ;
         ?   0   1  :  0   ;
         ?   1   1  :  1   ;
    endtable*/
endmodule
/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/
module sky130fdschdudpmux2to1N (
    Y ,
    A0,
    A1,
    S
);

    output Y ;
    input  A0;
    input  A1;
    input  S ;
    assign Y = !((!S && A0) || (S && A1)); 
    /*table
     
         0   ?   0  :  1   ;
         1   ?   0  :  0   ;
         ?   0   1  :  1   ;
         ?   1   1  :  0   ;
         0   0   ?  :  1   ;
         1   1   ?  :  0   ;
    endtable*/
endmodule
/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/
module sky130fdschdudpmux4to2 (
    X ,
    A0,
    A1,
    A2,
    A3,
    S0,
    S1
);

    output X ;
    input  A0;
    input  A1;
    input  A2;
    input  A3;
    input  S0;
    input  S1;
    assign X = (!S0 && !S1 && A0) || (S0 && !S1 && A1) || (!S0 && S1 && A2) || (S0 && S1 && A3);
    /*table
     
         0   ?   ?   ?   0   0  :  0   ;
         1   ?   ?   ?   0   0  :  1   ;
         ?   0   ?   ?   1   0  :  0   ;
         ?   1   ?   ?   1   0  :  1   ;
         ?   ?   0   ?   0   1  :  0   ;
         ?   ?   1   ?   0   1  :  1   ;
         ?   ?   ?   0   1   1  :  0   ;
         ?   ?   ?   1   1   1  :  1   ;
         0   0   0   0   ?   ?  :  0   ;
         1   1   1   1   ?   ?  :  1   ;
         0   0   ?   ?   ?   0  :  0   ;
         1   1   ?   ?   ?   0  :  1   ;
         ?   ?   0   0   ?   1  :  0   ;
         ?   ?   1   1   ?   1  :  1   ;
         0   ?   0   ?   0   ?  :  0   ;
         1   ?   1   ?   0   ?  :  1   ;
         ?   0   ?   0   1   ?  :  0   ;
         ?   1   ?   1   1   ?  :  1   ;
    endtable*/
endmodule
/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/
module sky130fdschdudpdff$NSR (
    Q    ,
    SET  ,
    RESET,
    CLKN,
    D
);

    output Q    ;
    input  SET  ;
    input  RESET;
    input  CLKN;
    input  D    ;

    reg Q;
    always @(negedge CLKN)
    begin
        if(SET == 1)
        begin
            Q<=1;
        end
        else if(RESET == 1 )
        begin
            Q<=0;
        end
        else
        begin
            Q<=D;
        end
    end
    /*table
     
         0    1     ?    ?  :  ?  :  0    ; 
         0    *     ?    ?  :  0  :  0    ; 
         1    ?     ?    ?  :  ?  :  1    ; 
         *    0     ?    ?  :  1  :  1    ; 
         0    ?    (01)  0  :  ?  :  0    ; 
         ?    0    (01)  1  :  ?  :  1    ; 
         0    ?     p    0  :  0  :  0    ; 
         ?    0     p    1  :  1  :  1    ; 
         0    0     n    ?  :  ?  :  -    ; 
         0    0     ?    *  :  ?  :  -    ; 
    endtable*/
endmodule
/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/
module sky130fdschdudpdff$P (
    Q  ,
    D  ,
    CLK
);

    output Q  ;
    input  D  ;
    input  CLK;

    reg Q;
    always @(posedge CLK)
    begin
       
      Q<=D;
 
    end
   /* table
     
         1  (01) :  ?  :  1    ; 
         0  (01) :  ?  :  0    ;
         1  (x1) :  1  :  1    ; 
         0  (x1) :  0  :  0    ;
         1  (0x) :  1  :  1    ;
         0  (0x) :  0  :  0    ;
         ?  (1x) :  ?  :  -    ; 
         ?  (?0) :  ?  :  -    ;
         *   ?   :  ?  :  -    ; 
    endtable*/
endmodule
/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/
module sky130fdschdudpdff$PS (
    Q  ,
    D  ,
    CLK,
    SET
);

    output Q  ;
    input  D  ;
    input  CLK;
    input  SET;

    reg Q;
    always @(posedge CLK, posedge SET)
    begin
        if(SET == 1)
        begin
            Q<=1;
        end
        else
        begin
            Q<=D;
        end
    end
    /*table
     
         *   b    0   :  ?  :  -    ; 
         ?  (?0)  0   :  ?  :  -    ; 
         ?   b   (?0) :  ?  :  -    ; 
         ?   ?    1   :  ?  :  1    ; 
         0   r    0   :  ?  :  0    ; 
         1   r    ?   :  ?  :  1    ; 
         0  (x1)  0   :  0  :  0    ; 
         1  (x1)  ?   :  1  :  1    ; 
         0   x    0   :  0  :  0    ; 
         1   x    ?   :  1  :  1    ; 
         ?   b   (?x) :  1  :  1    ; 
    endtable*/
endmodule
/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/
module sky130fdschdudpdff$PR (
    Q    ,
    D    ,
    CLK  ,
    RESET
);

    output Q    ;
    input  D    ;
    input  CLK  ;
    input  RESET;

    reg Q;
    always @(posedge CLK, posedge RESET)
    begin
        if(RESET == 1 )
        begin
            Q<=0;
        end
        else
        begin
            Q<=D;
        end
    end
    /*table
     
         *   b     0   :  ?  :  -    ; 
         ?  (?0)   0   :  ?  :  -    ; 
         ?   b    (?0) :  ?  :  -    ; 
         ?   ?     1   :  ?  :  0    ; 
         0   r     ?   :  ?  :  0    ; 
         1   r     0   :  ?  :  1    ; 
         0  (x1)   ?   :  0  :  0    ; 
         1  (x1)   0   :  1  :  1    ; 
         0   x     ?   :  0  :  0    ; 
         1   x     0   :  1  :  1    ; 
         ?   b    (?x) :  0  :  0    ; 
    endtable*/
endmodule
/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * dfrtp: Delay flop, inverted reset, single output.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps


`celldefine
module top (
    Q      ,
    CLK    ,
    D      ,
    RESETB
);

    
    output Q      ;
    input  CLK    ;
    input  D      ;
    input  RESETB;

    
    wire bufQ;
    wire RESET;

    
    not                                     not0 (RESET , RESETB        );
    sky130fdschdudpdff$PR 			 dff0 (bufQ , D, CLK, RESET  );
    buf                                     buf0 (Q     , bufQ          );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * dfrtp: Delay flop, inverted reset, single output.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps


`celldefine
module dfrtp2 (
    Q      ,
    CLK    ,
    D      ,
    RESETB
);

    
    output Q      ;
    input  CLK    ;
    input  D      ;
    input  RESETB;

    
    wire bufQ;
    wire RESET;

    
    not                                     not0 (RESET , RESETB        );
    sky130fdschdudpdff$PR 			 dff0 (bufQ , D, CLK, RESET  );
    buf                                     buf0 (Q     , bufQ          );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * dfrtp: Delay flop, inverted reset, single output.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps


`celldefine
module dfrtp4 (
    Q      ,
    CLK    ,
    D      ,
    RESETB
);

    
    output Q      ;
    input  CLK    ;
    input  D      ;
    input  RESETB;

    
    wire bufQ;
    wire RESET;

    
    not                                     not0 (RESET , RESETB        );
    sky130fdschdudpdff$PR 			 dff0 (bufQ , D, CLK, RESET  );
    buf                                     buf0 (Q     , bufQ          );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * edfxtp: Delay flop with loopback enable, non-inverted clock,
 *         single output.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps



`celldefine
module edfxtp1 (
    Q  ,
    CLK,
    D  ,
    DE
);

    
    output Q  ;
    input  CLK;
    input  D  ;
    input  DE ;

    
    wire bufQ  ;
    wire muxout;

    
    sky130fdschdudpmux2to1             mux2to10 (muxout, bufQ, D, DE   );
    sky130fdschdudpdff$P    			 dff0      (bufQ  , muxout, CLK   );
    buf                                       buf0      (Q      , bufQ          );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * a221oi: 2-input AND into first two inputs of 3-input NOR.
 *
 *         Y = !((A1 & A2) | (B1 & B2) | C1)
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module a221oi1 (
    Y ,
    A1,
    A2,
    B1,
    B2,
    C1
);

    
    output Y ;
    input  A1;
    input  A2;
    input  B1;
    input  B2;
    input  C1;

    
    wire and0out  ;
    wire and1out  ;
    wire nor0outY;

    
    and and0 (and0out  , B1, B2                );
    and and1 (and1out  , A1, A2                );
    nor nor0 (nor0outY, and0out, C1, and1out);
    buf buf0 (Y         , nor0outY            );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * a221oi: 2-input AND into first two inputs of 3-input NOR.
 *
 *         Y = !((A1 & A2) | (B1 & B2) | C1)
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module a221oi2 (
    Y ,
    A1,
    A2,
    B1,
    B2,
    C1
);

    
    output Y ;
    input  A1;
    input  A2;
    input  B1;
    input  B2;
    input  C1;

    
    wire and0out  ;
    wire and1out  ;
    wire nor0outY;

    
    and and0 (and0out  , B1, B2                );
    and and1 (and1out  , A1, A2                );
    nor nor0 (nor0outY, and0out, C1, and1out);
    buf buf0 (Y         , nor0outY            );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * a221oi: 2-input AND into first two inputs of 3-input NOR.
 *
 *         Y = !((A1 & A2) | (B1 & B2) | C1)
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module a221oi4 (
    Y ,
    A1,
    A2,
    B1,
    B2,
    C1
);

    
    output Y ;
    input  A1;
    input  A2;
    input  B1;
    input  B2;
    input  C1;

    
    wire and0out  ;
    wire and1out  ;
    wire nor0outY;

    
    and and0 (and0out  , B1, B2                );
    and and1 (and1out  , A1, A2                );
    nor nor0 (nor0outY, and0out, C1, and1out);
    buf buf0 (Y         , nor0outY            );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * sdfsbp: Scan delay flop, inverted set, non-inverted clock,
 *         complementary outputs.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps



`celldefine
module sdfsbp1 (
    Q    ,
    QN  ,
    CLK  ,
    D    ,
    SCD  ,
    SCE  ,
    SETB
);

    
    output Q    ;
    output QN  ;
    input  CLK  ;
    input  D    ;
    input  SCD  ;
    input  SCE  ;
    input  SETB;

    
    wire bufQ  ;
    wire SET    ;
    wire muxout;

    
    not                                       not0      (SET    , SETB            );
    sky130fdschdudpmux2to1             mux2to10 (muxout, D, SCD, SCE      );
    sky130fdschdudpdff$PS   			 dff0      (bufQ  , muxout, CLK, SET);
    buf                                       buf0      (Q      , bufQ            );
    not                                       not1      (QN    , bufQ            );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * sdfsbp: Scan delay flop, inverted set, non-inverted clock,
 *         complementary outputs.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps



`celldefine
module sdfsbp2 (
    Q    ,
    QN  ,
    CLK  ,
    D    ,
    SCD  ,
    SCE  ,
    SETB
);

    
    output Q    ;
    output QN  ;
    input  CLK  ;
    input  D    ;
    input  SCD  ;
    input  SCE  ;
    input  SETB;

    
    wire bufQ  ;
    wire SET    ;
    wire muxout;

    
    not                                       not0      (SET    , SETB            );
    sky130fdschdudpmux2to1             mux2to10 (muxout, D, SCD, SCE      );
    sky130fdschdudpdff$PS   			 dff0      (bufQ  , muxout, CLK, SET);
    buf                                       buf0      (Q      , bufQ            );
    not                                       not1      (QN    , bufQ            );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * nor4: 4-input NOR.
 *
 *       Y = !(A | B | C | D)
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module nor41 (
    Y,
    A,
    B,
    C,
    D
);

    
    output Y;
    input  A;
    input  B;
    input  C;
    input  D;

    
    wire nor0outY;

    
    nor nor0 (nor0outY, A, B, C, D     );
    buf buf0 (Y         , nor0outY     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * nor4: 4-input NOR.
 *
 *       Y = !(A | B | C | D)
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module nor42 (
    Y,
    A,
    B,
    C,
    D
);

    
    output Y;
    input  A;
    input  B;
    input  C;
    input  D;

    
    wire nor0outY;

    
    nor nor0 (nor0outY, A, B, C, D     );
    buf buf0 (Y         , nor0outY     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * nor4: 4-input NOR.
 *
 *       Y = !(A | B | C | D)
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module nor44 (
    Y,
    A,
    B,
    C,
    D
);

    
    output Y;
    input  A;
    input  B;
    input  C;
    input  D;

    
    wire nor0outY;

    
    nor nor0 (nor0outY, A, B, C, D     );
    buf buf0 (Y         , nor0outY     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * sdfxtp: Scan delay flop, non-inverted clock, single output.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps



`celldefine
module sdfxtp1 (
    Q  ,
    CLK,
    D  ,
    SCD,
    SCE
);

    
    output Q  ;
    input  CLK;
    input  D  ;
    input  SCD;
    input  SCE;

    
    wire bufQ  ;
    wire muxout;

    
    sky130fdschdudpmux2to1             mux2to10 (muxout, D, SCD, SCE    );
    sky130fdschdudpdff$P    			 dff0      (bufQ  , muxout, CLK   );
    buf                                       buf0      (Q      , bufQ          );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * sdfxtp: Scan delay flop, non-inverted clock, single output.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps



`celldefine
module sdfxtp2 (
    Q  ,
    CLK,
    D  ,
    SCD,
    SCE
);

    
    output Q  ;
    input  CLK;
    input  D  ;
    input  SCD;
    input  SCE;

    
    wire bufQ  ;
    wire muxout;

    
    sky130fdschdudpmux2to1             mux2to10 (muxout, D, SCD, SCE    );
    sky130fdschdudpdff$P    			 dff0      (bufQ  , muxout, CLK   );
    buf                                       buf0      (Q      , bufQ          );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * sdfxtp: Scan delay flop, non-inverted clock, single output.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps



`celldefine
module sdfxtp4 (
    Q  ,
    CLK,
    D  ,
    SCD,
    SCE
);

    
    output Q  ;
    input  CLK;
    input  D  ;
    input  SCD;
    input  SCE;

    
    wire bufQ  ;
    wire muxout;

    
    sky130fdschdudpmux2to1             mux2to10 (muxout, D, SCD, SCE    );
    sky130fdschdudpdff$P    			 dff0      (bufQ  , muxout, CLK   );
    buf                                       buf0      (Q      , bufQ          );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * o211ai: 2-input OR into first input of 3-input NAND.
 *
 *         Y = !((A1 | A2) & B1 & C1)
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module o211ai1 (
    Y ,
    A1,
    A2,
    B1,
    C1
);

    
    output Y ;
    input  A1;
    input  A2;
    input  B1;
    input  C1;

    
    wire or0out    ;
    wire nand0outY;

    
    or   or0   (or0out    , A2, A1         );
    nand nand0 (nand0outY, C1, or0out, B1);
    buf  buf0  (Y          , nand0outY    );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * o211ai: 2-input OR into first input of 3-input NAND.
 *
 *         Y = !((A1 | A2) & B1 & C1)
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module o211ai2 (
    Y ,
    A1,
    A2,
    B1,
    C1
);

    
    output Y ;
    input  A1;
    input  A2;
    input  B1;
    input  C1;

    
    wire or0out    ;
    wire nand0outY;

    
    or   or0   (or0out    , A2, A1         );
    nand nand0 (nand0outY, C1, or0out, B1);
    buf  buf0  (Y          , nand0outY    );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * o211ai: 2-input OR into first input of 3-input NAND.
 *
 *         Y = !((A1 | A2) & B1 & C1)
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module o211ai4 (
    Y ,
    A1,
    A2,
    B1,
    C1
);

    
    output Y ;
    input  A1;
    input  A2;
    input  B1;
    input  C1;

    
    wire or0out    ;
    wire nand0outY;

    
    or   or0   (or0out    , A2, A1         );
    nand nand0 (nand0outY, C1, or0out, B1);
    buf  buf0  (Y          , nand0outY    );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * or4: 4-input OR.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module or41 (
    X,
    A,
    B,
    C,
    D
);

    
    output X;
    input  A;
    input  B;
    input  C;
    input  D;

    
    wire or0outX;

    
    or  or0  (or0outX, D, C, B, A     );
    buf buf0 (X        , or0outX      );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * or4: 4-input OR.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module or42 (
    X,
    A,
    B,
    C,
    D
);

    
    output X;
    input  A;
    input  B;
    input  C;
    input  D;

    
    wire or0outX;

    
    or  or0  (or0outX, D, C, B, A     );
    buf buf0 (X        , or0outX      );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * or4: 4-input OR.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module or44 (
    X,
    A,
    B,
    C,
    D
);

    
    output X;
    input  A;
    input  B;
    input  C;
    input  D;

    
    wire or0outX;

    
    or  or0  (or0outX, D, C, B, A     );
    buf buf0 (X        , or0outX      );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * buf: Buffer.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module buf1 (
    X,
    A
);

    
    output X;
    input  A;

    
    wire buf0outX;

    
    buf buf0 (buf0outX, A              );
    buf buf1 (X         , buf0outX     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * buf: Buffer.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module buf12 (
    X,
    A
);

    
    output X;
    input  A;

    
    wire buf0outX;

    
    buf buf0 (buf0outX, A              );
    buf buf1 (X         , buf0outX     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * buf: Buffer.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module buf16 (
    X,
    A
);

    
    output X;
    input  A;

    
    wire buf0outX;

    
    buf buf0 (buf0outX, A              );
    buf buf1 (X         , buf0outX     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * buf: Buffer.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module buf2 (
    X,
    A
);

    
    output X;
    input  A;

    
    wire buf0outX;

    
    buf buf0 (buf0outX, A              );
    buf buf1 (X         , buf0outX     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * buf: Buffer.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module buf4 (
    X,
    A
);

    
    output X;
    input  A;

    
    wire buf0outX;

    
    buf buf0 (buf0outX, A              );
    buf buf1 (X         , buf0outX     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * buf: Buffer.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module buf6 (
    X,
    A
);

    
    output X;
    input  A;

    
    wire buf0outX;

    
    buf buf0 (buf0outX, A              );
    buf buf1 (X         , buf0outX     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * buf: Buffer.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module buf8 (
    X,
    A
);

    
    output X;
    input  A;

    
    wire buf0outX;

    
    buf buf0 (buf0outX, A              );
    buf buf1 (X         , buf0outX     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * sdfbbp: Scan delay flop, inverted set, inverted reset, non-inverted
 *         clock, complementary outputs.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps



`celldefine
module sdfbbp1 (
    Q      ,
    QN    ,
    D      ,
    SCD    ,
    SCE    ,
    CLK    ,
    SETB  ,
    RESETB
);

    
    output Q      ;
    output QN    ;
    input  D      ;
    input  SCD    ;
    input  SCE    ;
    input  CLK    ;
    input  SETB  ;
    input  RESETB;

    
    wire RESET  ;
    wire SET    ;
    wire bufQ  ;
    wire muxout;

    
    not                                       not0      (RESET  , RESETB                 );
    not                                       not1      (SET    , SETB                   );
    sky130fdschdudpmux2to1             mux2to10 (muxout, D, SCD, SCE             );
    sky130fdschdudpdff$NSR  			 dff0      (bufQ  , SET, RESET, CLK, muxout);
    buf                                       buf0      (Q      , bufQ                   );
    not                                       not2      (QN    , bufQ                   );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * sdfrtp: Scan delay flop, inverted reset, non-inverted clock,
 *         single output.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps



`celldefine
module stop (
    Q      ,
    CLK    ,
    D      ,
    SCD    ,
    SCE    ,
    RESETB
);

    
    output Q      ;
    input  CLK    ;
    input  D      ;
    input  SCD    ;
    input  SCE    ;
    input  RESETB;

    
    wire bufQ  ;
    wire RESET  ;
    wire muxout;

    
    not                                       not0      (RESET  , RESETB            );
    sky130fdschdudpmux2to1             mux2to10 (muxout, D, SCD, SCE        );
    sky130fdschdudpdff$PR   			 dff0      (bufQ  , muxout, CLK, RESET);
    buf                                       buf0      (Q      , bufQ              );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * sdfrtp: Scan delay flop, inverted reset, non-inverted clock,
 *         single output.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps



`celldefine
module sdfrtp2 (
    Q      ,
    CLK    ,
    D      ,
    SCD    ,
    SCE    ,
    RESETB
);

    
    output Q      ;
    input  CLK    ;
    input  D      ;
    input  SCD    ;
    input  SCE    ;
    input  RESETB;

    
    wire bufQ  ;
    wire RESET  ;
    wire muxout;

    
    not                                       not0      (RESET  , RESETB            );
    sky130fdschdudpmux2to1             mux2to10 (muxout, D, SCD, SCE        );
    sky130fdschdudpdff$PR   			 dff0      (bufQ  , muxout, CLK, RESET);
    buf                                       buf0      (Q      , bufQ              );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * sdfrtp: Scan delay flop, inverted reset, non-inverted clock,
 *         single output.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps



`celldefine
module sdfrtp4 (
    Q      ,
    CLK    ,
    D      ,
    SCD    ,
    SCE    ,
    RESETB
);

    
    output Q      ;
    input  CLK    ;
    input  D      ;
    input  SCD    ;
    input  SCE    ;
    input  RESETB;

    
    wire bufQ  ;
    wire RESET  ;
    wire muxout;

    
    not                                       not0      (RESET  , RESETB            );
    sky130fdschdudpmux2to1             mux2to10 (muxout, D, SCD, SCE        );
    sky130fdschdudpdff$PR   			 dff0      (bufQ  , muxout, CLK, RESET);
    buf                                       buf0      (Q      , bufQ              );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * dfrbp: Delay flop, inverted reset, complementary outputs.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps


`celldefine
module dfrbp1 (
    Q      ,
    QN    ,
    CLK    ,
    D      ,
    RESETB
);

    
    output Q      ;
    output QN    ;
    input  CLK    ;
    input  D      ;
    input  RESETB;

    
    wire bufQ;
    wire RESET;

    
    not                                     not0 (RESET , RESETB        );
    sky130fdschdudpdff$PR 			 dff0 (bufQ , D, CLK, RESET  );
    buf                                     buf0 (Q     , bufQ          );
    not                                     not1 (QN   , bufQ          );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * dfrbp: Delay flop, inverted reset, complementary outputs.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps


`celldefine
module dfrbp2 (
    Q      ,
    QN    ,
    CLK    ,
    D      ,
    RESETB
);

    
    output Q      ;
    output QN    ;
    input  CLK    ;
    input  D      ;
    input  RESETB;

    
    wire bufQ;
    wire RESET;

    
    not                                     not0 (RESET , RESETB        );
    sky130fdschdudpdff$PR 			 dff0 (bufQ , D, CLK, RESET  );
    buf                                     buf0 (Q     , bufQ          );
    not                                     not1 (QN   , bufQ          );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * a22oi: 2-input AND into both inputs of 2-input NOR.
 *
 *        Y = !((A1 & A2) | (B1 & B2))
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module a22oi1 (
    Y ,
    A1,
    A2,
    B1,
    B2
);

    
    output Y ;
    input  A1;
    input  A2;
    input  B1;
    input  B2;

    
    wire nand0out ;
    wire nand1out ;
    wire and0outY;

    
    nand nand0 (nand0out , A2, A1              );
    nand nand1 (nand1out , B2, B1              );
    and  and0  (and0outY, nand0out, nand1out);
    buf  buf0  (Y         , and0outY          );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * a22oi: 2-input AND into both inputs of 2-input NOR.
 *
 *        Y = !((A1 & A2) | (B1 & B2))
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module a22oi2 (
    Y ,
    A1,
    A2,
    B1,
    B2
);

    
    output Y ;
    input  A1;
    input  A2;
    input  B1;
    input  B2;

    
    wire nand0out ;
    wire nand1out ;
    wire and0outY;

    
    nand nand0 (nand0out , A2, A1              );
    nand nand1 (nand1out , B2, B1              );
    and  and0  (and0outY, nand0out, nand1out);
    buf  buf0  (Y         , and0outY          );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * a22oi: 2-input AND into both inputs of 2-input NOR.
 *
 *        Y = !((A1 & A2) | (B1 & B2))
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module a22oi4 (
    Y ,
    A1,
    A2,
    B1,
    B2
);

    
    output Y ;
    input  A1;
    input  A2;
    input  B1;
    input  B2;

    
    wire nand0out ;
    wire nand1out ;
    wire and0outY;

    
    nand nand0 (nand0out , A2, A1              );
    nand nand1 (nand1out , B2, B1              );
    and  and0  (and0outY, nand0out, nand1out);
    buf  buf0  (Y         , and0outY          );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * or2: 2-input OR.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module or20 (
    X,
    A,
    B
);

    
    output X;
    input  A;
    input  B;

    
    wire or0outX;

    
    or  or0  (or0outX, B, A           );
    buf buf0 (X        , or0outX      );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * or2: 2-input OR.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module or21 (
    X,
    A,
    B
);

    
    output X;
    input  A;
    input  B;

    
    wire or0outX;

    
    or  or0  (or0outX, B, A           );
    buf buf0 (X        , or0outX      );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * or2: 2-input OR.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module or22 (
    X,
    A,
    B
);

    
    output X;
    input  A;
    input  B;

    
    wire or0outX;

    
    or  or0  (or0outX, B, A           );
    buf buf0 (X        , or0outX      );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * or2: 2-input OR.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module or24 (
    X,
    A,
    B
);

    
    output X;
    input  A;
    input  B;

    
    wire or0outX;

    
    or  or0  (or0outX, B, A           );
    buf buf0 (X        , or0outX      );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * sdfrbp: Scan delay flop, inverted reset, non-inverted clock,
 *         complementary outputs.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps



`celldefine
module sdfrbp1 (
    Q      ,
    QN    ,
    CLK    ,
    D      ,
    SCD    ,
    SCE    ,
    RESETB
);

    
    output Q      ;
    output QN    ;
    input  CLK    ;
    input  D      ;
    input  SCD    ;
    input  SCE    ;
    input  RESETB;

    
    wire bufQ  ;
    wire RESET  ;
    wire muxout;

    
    not                                       not0      (RESET  , RESETB            );
    sky130fdschdudpmux2to1             mux2to10 (muxout, D, SCD, SCE        );
    sky130fdschdudpdff$PR   			 dff0      (bufQ  , muxout, CLK, RESET);
    buf                                       buf0      (Q      , bufQ              );
    not                                       not1      (QN    , bufQ              );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * sdfrbp: Scan delay flop, inverted reset, non-inverted clock,
 *         complementary outputs.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps



`celldefine
module sdfrbp2 (
    Q      ,
    QN    ,
    CLK    ,
    D      ,
    SCD    ,
    SCE    ,
    RESETB
);

    
    output Q      ;
    output QN    ;
    input  CLK    ;
    input  D      ;
    input  SCD    ;
    input  SCE    ;
    input  RESETB;

    
    wire bufQ  ;
    wire RESET  ;
    wire muxout;

    
    not                                       not0      (RESET  , RESETB            );
    sky130fdschdudpmux2to1             mux2to10 (muxout, D, SCD, SCE        );
    sky130fdschdudpdff$PR   			 dff0      (bufQ  , muxout, CLK, RESET);
    buf                                       buf0      (Q      , bufQ              );
    not                                       not1      (QN    , bufQ              );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * xnor2: 2-input exclusive NOR.
 *
 *        Y = !(A ^ B)
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module xnor21 (
    Y,
    A,
    B
);

    
    output Y;
    input  A;
    input  B;

    
    wire xnor0outY;

    
    xnor xnor0 (xnor0outY, A, B           );
    buf  buf0  (Y          , xnor0outY    );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * xnor2: 2-input exclusive NOR.
 *
 *        Y = !(A ^ B)
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module xnor22 (
    Y,
    A,
    B
);

    
    output Y;
    input  A;
    input  B;

    
    wire xnor0outY;

    
    xnor xnor0 (xnor0outY, A, B           );
    buf  buf0  (Y          , xnor0outY    );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * xnor2: 2-input exclusive NOR.
 *
 *        Y = !(A ^ B)
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module xnor24 (
    Y,
    A,
    B
);

    
    output Y;
    input  A;
    input  B;

    
    wire xnor0outY;

    
    xnor xnor0 (xnor0outY, A, B           );
    buf  buf0  (Y          , xnor0outY    );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * nand3: 3-input NAND.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module nand31 (
    Y,
    A,
    B,
    C
);

    
    output Y;
    input  A;
    input  B;
    input  C;

    
    wire nand0outY;

    
    nand nand0 (nand0outY, B, A, C        );
    buf  buf0  (Y          , nand0outY    );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * nand3: 3-input NAND.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module nand32 (
    Y,
    A,
    B,
    C
);

    
    output Y;
    input  A;
    input  B;
    input  C;

    
    wire nand0outY;

    
    nand nand0 (nand0outY, B, A, C        );
    buf  buf0  (Y          , nand0outY    );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * nand3: 3-input NAND.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module nand34 (
    Y,
    A,
    B,
    C
);

    
    output Y;
    input  A;
    input  B;
    input  C;

    
    wire nand0outY;

    
    nand nand0 (nand0outY, B, A, C        );
    buf  buf0  (Y          , nand0outY    );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * dfxtp: Delay flop, single output.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps


`celldefine
module dfxtp1 (
    Q  ,
    CLK,
    D
);

    
    output Q  ;
    input  CLK;
    input  D  ;

    
    wire bufQ;

    
    sky130fdschdudpdff$P 			 dff0 (bufQ , D, CLK         );
    buf                                    buf0 (Q     , bufQ          );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * dfxtp: Delay flop, single output.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps


`celldefine
module dfxtp2 (
    Q  ,
    CLK,
    D
);

    
    output Q  ;
    input  CLK;
    input  D  ;

    
    wire bufQ;

    
    sky130fdschdudpdff$P 			 dff0 (bufQ , D, CLK         );
    buf                                    buf0 (Q     , bufQ          );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * dfxtp: Delay flop, single output.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps


`celldefine
module dfxtp4 (
    Q  ,
    CLK,
    D
);

    
    output Q  ;
    input  CLK;
    input  D  ;

    
    wire bufQ;

    
    sky130fdschdudpdff$P 			 dff0 (bufQ , D, CLK         );
    buf                                    buf0 (Q     , bufQ          );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * dfbbp: Delay flop, inverted set, inverted reset,
 *        complementary outputs.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps


`celldefine
module dfbbp1 (
    Q      ,
    QN    ,
    D      ,
    CLK    ,
    SETB  ,
    RESETB
);

    
    output Q      ;
    output QN    ;
    input  D      ;
    input  CLK    ;
    input  SETB  ;
    input  RESETB;

    
    wire RESET;
    wire SET  ;
    wire bufQ;

    
    not                                      not0 (RESET , RESETB           );
    not                                      not1 (SET   , SETB             );
    sky130fdschdudpdff$NSR 			 dff0 (bufQ , SET, RESET, CLK, D);
    buf                                      buf0 (Q     , bufQ             );
    not                                      not2 (QN   , bufQ             );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * dfstp: Delay flop, inverted set, single output.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps


`celldefine
module dfstp1 (
    Q    ,
    CLK  ,
    D    ,
    SETB
);

    
    output Q    ;
    input  CLK  ;
    input  D    ;
    input  SETB;

    
    wire bufQ;
    wire SET  ;

    
    not                                     not0 (SET   , SETB          );
    sky130fdschdudpdff$PS 			 dff0 (bufQ , D, CLK, SET    );
    buf                                     buf0 (Q     , bufQ          );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * dfstp: Delay flop, inverted set, single output.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps


`celldefine
module dfstp2 (
    Q    ,
    CLK  ,
    D    ,
    SETB
);

    
    output Q    ;
    input  CLK  ;
    input  D    ;
    input  SETB;

    
    wire bufQ;
    wire SET  ;

    
    not                                     not0 (SET   , SETB          );
    sky130fdschdudpdff$PS 			 dff0 (bufQ , D, CLK, SET    );
    buf                                     buf0 (Q     , bufQ          );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * dfstp: Delay flop, inverted set, single output.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps


`celldefine
module dfstp4 (
    Q    ,
    CLK  ,
    D    ,
    SETB
);

    
    output Q    ;
    input  CLK  ;
    input  D    ;
    input  SETB;

    
    wire bufQ;
    wire SET  ;

    
    not                                     not0 (SET   , SETB          );
    sky130fdschdudpdff$PS 			 dff0 (bufQ , D, CLK, SET    );
    buf                                     buf0 (Q     , bufQ          );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * dfxbp: Delay flop, complementary outputs.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps


`celldefine
module dfxbp1 (
    Q  ,
    QN,
    CLK,
    D
);

    
    output Q  ;
    output QN;
    input  CLK;
    input  D  ;

    
    wire bufQ;

    
    sky130fdschdudpdff$P 			 dff0 (bufQ , D, CLK         );
    buf                                    buf0 (Q     , bufQ          );
    not                                    not0 (QN   , bufQ          );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * dfxbp: Delay flop, complementary outputs.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps


`celldefine
module dfxbp2 (
    Q  ,
    QN,
    CLK,
    D
);

    
    output Q  ;
    output QN;
    input  CLK;
    input  D  ;

    
    wire bufQ;

    
    sky130fdschdudpdff$P 			 dff0 (bufQ , D, CLK         );
    buf                                    buf0 (Q     , bufQ          );
    not                                    not0 (QN   , bufQ          );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * xor3: 3-input exclusive OR.
 *
 *       X = A ^ B ^ C
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module xor31 (
    X,
    A,
    B,
    C
);

    
    output X;
    input  A;
    input  B;
    input  C;

    
    wire xor0outX;

    
    xor xor0 (xor0outX, A, B, C        );
    buf buf0 (X         , xor0outX     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * xor3: 3-input exclusive OR.
 *
 *       X = A ^ B ^ C
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module xor32 (
    X,
    A,
    B,
    C
);

    
    output X;
    input  A;
    input  B;
    input  C;

    
    wire xor0outX;

    
    xor xor0 (xor0outX, A, B, C        );
    buf buf0 (X         , xor0outX     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * and3: 3-input AND.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module and31 (
    X,
    A,
    B,
    C
);

    
    output X;
    input  A;
    input  B;
    input  C;

    
    wire and0outX;

    
    and and0 (and0outX, C, A, B        );
    buf buf0 (X         , and0outX     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * and3: 3-input AND.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module and32 (
    X,
    A,
    B,
    C
);

    
    output X;
    input  A;
    input  B;
    input  C;

    
    wire and0outX;

    
    and and0 (and0outX, C, A, B        );
    buf buf0 (X         , and0outX     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * and3: 3-input AND.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module and34 (
    X,
    A,
    B,
    C
);

    
    output X;
    input  A;
    input  B;
    input  C;

    
    wire and0outX;

    
    and and0 (and0outX, C, A, B        );
    buf buf0 (X         , and0outX     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * sdfxbp: Scan delay flop, non-inverted clock, complementary outputs.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps



`celldefine
module sdfxbp1 (
    Q  ,
    QN,
    CLK,
    D  ,
    SCD,
    SCE
);

    
    output Q  ;
    output QN;
    input  CLK;
    input  D  ;
    input  SCD;
    input  SCE;

    
    wire bufQ  ;
    wire muxout;

    
    sky130fdschdudpmux2to1             mux2to10 (muxout, D, SCD, SCE    );
    sky130fdschdudpdff$P    			 dff0      (bufQ  , muxout, CLK   );
    buf                                       buf0      (Q      , bufQ          );
    not                                       not0      (QN    , bufQ          );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * sdfxbp: Scan delay flop, non-inverted clock, complementary outputs.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps



`celldefine
module sdfxbp2 (
    Q  ,
    QN,
    CLK,
    D  ,
    SCD,
    SCE
);

    
    output Q  ;
    output QN;
    input  CLK;
    input  D  ;
    input  SCD;
    input  SCE;

    
    wire bufQ  ;
    wire muxout;

    
    sky130fdschdudpmux2to1             mux2to10 (muxout, D, SCD, SCE    );
    sky130fdschdudpdff$P    			 dff0      (bufQ  , muxout, CLK   );
    buf                                       buf0      (Q      , bufQ          );
    not                                       not0      (QN    , bufQ          );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * o32ai: 3-input OR and 2-input OR into 2-input NAND.
 *
 *        Y = !((A1 | A2 | A3) & (B1 | B2))
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module o32ai1 (
    Y ,
    A1,
    A2,
    A3,
    B1,
    B2
);

    
    output Y ;
    input  A1;
    input  A2;
    input  A3;
    input  B1;
    input  B2;

    
    wire nor0out ;
    wire nor1out ;
    wire or0outY;

    
    nor nor0 (nor0out , A3, A1, A2        );
    nor nor1 (nor1out , B1, B2            );
    or  or0  (or0outY, nor1out, nor0out);
    buf buf0 (Y        , or0outY         );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * o32ai: 3-input OR and 2-input OR into 2-input NAND.
 *
 *        Y = !((A1 | A2 | A3) & (B1 | B2))
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module o32ai2 (
    Y ,
    A1,
    A2,
    A3,
    B1,
    B2
);

    
    output Y ;
    input  A1;
    input  A2;
    input  A3;
    input  B1;
    input  B2;

    
    wire nor0out ;
    wire nor1out ;
    wire or0outY;

    
    nor nor0 (nor0out , A3, A1, A2        );
    nor nor1 (nor1out , B1, B2            );
    or  or0  (or0outY, nor1out, nor0out);
    buf buf0 (Y        , or0outY         );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * o32ai: 3-input OR and 2-input OR into 2-input NAND.
 *
 *        Y = !((A1 | A2 | A3) & (B1 | B2))
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module o32ai4 (
    Y ,
    A1,
    A2,
    A3,
    B1,
    B2
);

    
    output Y ;
    input  A1;
    input  A2;
    input  A3;
    input  B1;
    input  B2;

    
    wire nor0out ;
    wire nor1out ;
    wire or0outY;

    
    nor nor0 (nor0out , A3, A1, A2        );
    nor nor1 (nor1out , B1, B2            );
    or  or0  (or0outY, nor1out, nor0out);
    buf buf0 (Y        , or0outY         );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * a21oi: 2-input AND into first input of 2-input NOR.
 *
 *        Y = !((A1 & A2) | B1)
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module a21oi1 (
    Y ,
    A1,
    A2,
    B1
);

    
    output Y ;
    input  A1;
    input  A2;
    input  B1;

    
    wire and0out  ;
    wire nor0outY;

    
    and and0 (and0out  , A1, A2         );
    nor nor0 (nor0outY, B1, and0out   );
    buf buf0 (Y         , nor0outY     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * a21oi: 2-input AND into first input of 2-input NOR.
 *
 *        Y = !((A1 & A2) | B1)
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module a21oi2 (
    Y ,
    A1,
    A2,
    B1
);

    
    output Y ;
    input  A1;
    input  A2;
    input  B1;

    
    wire and0out  ;
    wire nor0outY;

    
    and and0 (and0out  , A1, A2         );
    nor nor0 (nor0outY, B1, and0out   );
    buf buf0 (Y         , nor0outY     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * a21oi: 2-input AND into first input of 2-input NOR.
 *
 *        Y = !((A1 & A2) | B1)
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module a21oi4 (
    Y ,
    A1,
    A2,
    B1
);

    
    output Y ;
    input  A1;
    input  A2;
    input  B1;

    
    wire and0out  ;
    wire nor0outY;

    
    and and0 (and0out  , A1, A2         );
    nor nor0 (nor0outY, B1, and0out   );
    buf buf0 (Y         , nor0outY     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * xnor3: 3-input exclusive NOR.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module xnor31 (
    X,
    A,
    B,
    C
);

    
    output X;
    input  A;
    input  B;
    input  C;

    
    wire xnor0outX;

    
    xnor xnor0 (xnor0outX, A, B, C        );
    buf  buf0  (X          , xnor0outX    );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * xnor3: 3-input exclusive NOR.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module xnor32 (
    X,
    A,
    B,
    C
);

    
    output X;
    input  A;
    input  B;
    input  C;

    
    wire xnor0outX;

    
    xnor xnor0 (xnor0outX, A, B, C        );
    buf  buf0  (X          , xnor0outX    );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * xnor3: 3-input exclusive NOR.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module xnor34 (
    X,
    A,
    B,
    C
);

    
    output X;
    input  A;
    input  B;
    input  C;

    
    wire xnor0outX;

    
    xnor xnor0 (xnor0outX, A, B, C        );
    buf  buf0  (X          , xnor0outX    );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * nor2: 2-input NOR.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module nor21 (
    Y,
    A,
    B
);

    
    output Y;
    input  A;
    input  B;

    
    wire nor0outY;

    
    nor nor0 (nor0outY, A, B           );
    buf buf0 (Y         , nor0outY     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * nor2: 2-input NOR.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module nor22 (
    Y,
    A,
    B
);

    
    output Y;
    input  A;
    input  B;

    
    wire nor0outY;

    
    nor nor0 (nor0outY, A, B           );
    buf buf0 (Y         , nor0outY     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * nor2: 2-input NOR.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module nor24 (
    Y,
    A,
    B
);

    
    output Y;
    input  A;
    input  B;

    
    wire nor0outY;

    
    nor nor0 (nor0outY, A, B           );
    buf buf0 (Y         , nor0outY     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * nor2: 2-input NOR.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module nor28 (
    Y,
    A,
    B
);

    
    output Y;
    input  A;
    input  B;

    
    wire nor0outY;

    
    nor nor0 (nor0outY, A, B           );
    buf buf0 (Y         , nor0outY     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * bufinv: Buffer followed by inverter.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module bufinv16 (
    Y,
    A
);

    
    output Y;
    input  A;

    
    wire not0outY;

    
    not not0 (not0outY, A              );
    buf buf0 (Y         , not0outY     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * bufinv: Buffer followed by inverter.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module bufinv8 (
    Y,
    A
);

    
    output Y;
    input  A;

    
    wire not0outY;

    
    not not0 (not0outY, A              );
    buf buf0 (Y         , not0outY     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * bufbuf: Double buffer.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module bufbuf16 (
    X,
    A
);

    
    output X;
    input  A;

    
    wire buf0outX;

    
    buf buf0 (buf0outX, A              );
    buf buf1 (X         , buf0outX     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * bufbuf: Double buffer.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module bufbuf8 (
    X,
    A
);

    
    output X;
    input  A;

    
    wire buf0outX;

    
    buf buf0 (buf0outX, A              );
    buf buf1 (X         , buf0outX     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * a211oi: 2-input AND into first input of 3-input NOR.
 *
 *         Y = !((A1 & A2) | B1 | C1)
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module a211oi1 (
    Y ,
    A1,
    A2,
    B1,
    C1
);

    
    output Y ;
    input  A1;
    input  A2;
    input  B1;
    input  C1;

    
    wire and0out  ;
    wire nor0outY;

    
    and and0 (and0out  , A1, A2          );
    nor nor0 (nor0outY, and0out, B1, C1);
    buf buf0 (Y         , nor0outY      );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * a211oi: 2-input AND into first input of 3-input NOR.
 *
 *         Y = !((A1 & A2) | B1 | C1)
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module a211oi2 (
    Y ,
    A1,
    A2,
    B1,
    C1
);

    
    output Y ;
    input  A1;
    input  A2;
    input  B1;
    input  C1;

    
    wire and0out  ;
    wire nor0outY;

    
    and and0 (and0out  , A1, A2          );
    nor nor0 (nor0outY, and0out, B1, C1);
    buf buf0 (Y         , nor0outY      );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * a211oi: 2-input AND into first input of 3-input NOR.
 *
 *         Y = !((A1 & A2) | B1 | C1)
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module a211oi4 (
    Y ,
    A1,
    A2,
    B1,
    C1
);

    
    output Y ;
    input  A1;
    input  A2;
    input  B1;
    input  C1;

    
    wire and0out  ;
    wire nor0outY;

    
    and and0 (and0out  , A1, A2          );
    nor nor0 (nor0outY, and0out, B1, C1);
    buf buf0 (Y         , nor0outY      );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * o221ai: 2-input OR into first two inputs of 3-input NAND.
 *
 *         Y = !((A1 | A2) & (B1 | B2) & C1)
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module o221ai1 (
    Y ,
    A1,
    A2,
    B1,
    B2,
    C1
);

    
    output Y ;
    input  A1;
    input  A2;
    input  B1;
    input  B2;
    input  C1;

    
    wire or0out    ;
    wire or1out    ;
    wire nand0outY;

    
    or   or0   (or0out    , B2, B1              );
    or   or1   (or1out    , A2, A1              );
    nand nand0 (nand0outY, or1out, or0out, C1);
    buf  buf0  (Y          , nand0outY         );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * o221ai: 2-input OR into first two inputs of 3-input NAND.
 *
 *         Y = !((A1 | A2) & (B1 | B2) & C1)
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module o221ai2 (
    Y ,
    A1,
    A2,
    B1,
    B2,
    C1
);

    
    output Y ;
    input  A1;
    input  A2;
    input  B1;
    input  B2;
    input  C1;

    
    wire or0out    ;
    wire or1out    ;
    wire nand0outY;

    
    or   or0   (or0out    , B2, B1              );
    or   or1   (or1out    , A2, A1              );
    nand nand0 (nand0outY, or1out, or0out, C1);
    buf  buf0  (Y          , nand0outY         );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * o221ai: 2-input OR into first two inputs of 3-input NAND.
 *
 *         Y = !((A1 | A2) & (B1 | B2) & C1)
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module o221ai4 (
    Y ,
    A1,
    A2,
    B1,
    B2,
    C1
);

    
    output Y ;
    input  A1;
    input  A2;
    input  B1;
    input  B2;
    input  C1;

    
    wire or0out    ;
    wire or1out    ;
    wire nand0outY;

    
    or   or0   (or0out    , B2, B1              );
    or   or1   (or1out    , A2, A1              );
    nand nand0 (nand0outY, or1out, or0out, C1);
    buf  buf0  (Y          , nand0outY         );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * o22ai: 2-input OR into both inputs of 2-input NAND.
 *
 *        Y = !((A1 | A2) & (B1 | B2))
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module o22ai1 (
    Y ,
    A1,
    A2,
    B1,
    B2
);

    
    output Y ;
    input  A1;
    input  A2;
    input  B1;
    input  B2;

    
    wire nor0out ;
    wire nor1out ;
    wire or0outY;

    
    nor nor0 (nor0out , B1, B2            );
    nor nor1 (nor1out , A1, A2            );
    or  or0  (or0outY, nor1out, nor0out);
    buf buf0 (Y        , or0outY         );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * o22ai: 2-input OR into both inputs of 2-input NAND.
 *
 *        Y = !((A1 | A2) & (B1 | B2))
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module o22ai2 (
    Y ,
    A1,
    A2,
    B1,
    B2
);

    
    output Y ;
    input  A1;
    input  A2;
    input  B1;
    input  B2;

    
    wire nor0out ;
    wire nor1out ;
    wire or0outY;

    
    nor nor0 (nor0out , B1, B2            );
    nor nor1 (nor1out , A1, A2            );
    or  or0  (or0outY, nor1out, nor0out);
    buf buf0 (Y        , or0outY         );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * o22ai: 2-input OR into both inputs of 2-input NAND.
 *
 *        Y = !((A1 | A2) & (B1 | B2))
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module o22ai4 (
    Y ,
    A1,
    A2,
    B1,
    B2
);

    
    output Y ;
    input  A1;
    input  A2;
    input  B1;
    input  B2;

    
    wire nor0out ;
    wire nor1out ;
    wire or0outY;

    
    nor nor0 (nor0out , B1, B2            );
    nor nor1 (nor1out , A1, A2            );
    or  or0  (or0outY, nor1out, nor0out);
    buf buf0 (Y        , or0outY         );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * a222oi: 2-input AND into all inputs of 3-input NOR.
 *
 *         Y = !((A1 & A2) | (B1 & B2) | (C1 & C2))
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module a222oi1 (
    Y ,
    A1,
    A2,
    B1,
    B2,
    C1,
    C2
);

    
    output Y ;
    input  A1;
    input  A2;
    input  B1;
    input  B2;
    input  C1;
    input  C2;

    
    wire nand0out ;
    wire nand1out ;
    wire nand2out ;
    wire and0outY;

    
    nand nand0 (nand0out , A2, A1                         );
    nand nand1 (nand1out , B2, B1                         );
    nand nand2 (nand2out , C2, C1                         );
    and  and0  (and0outY, nand0out, nand1out, nand2out);
    buf  buf0  (Y         , and0outY                     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * nand2: 2-input NAND.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module nand21 (
    Y,
    A,
    B
);

    
    output Y;
    input  A;
    input  B;

    
    wire nand0outY;

    
    nand nand0 (nand0outY, B, A           );
    buf  buf0  (Y          , nand0outY    );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * nand2: 2-input NAND.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module nand22 (
    Y,
    A,
    B
);

    
    output Y;
    input  A;
    input  B;

    
    wire nand0outY;

    
    nand nand0 (nand0outY, B, A           );
    buf  buf0  (Y          , nand0outY    );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * nand2: 2-input NAND.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module nand24 (
    Y,
    A,
    B
);

    
    output Y;
    input  A;
    input  B;

    
    wire nand0outY;

    
    nand nand0 (nand0outY, B, A           );
    buf  buf0  (Y          , nand0outY    );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * nand2: 2-input NAND.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module nand28 (
    Y,
    A,
    B
);

    
    output Y;
    input  A;
    input  B;

    
    wire nand0outY;

    
    nand nand0 (nand0outY, B, A           );
    buf  buf0  (Y          , nand0outY    );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * sedfxbp: Scan delay flop, data enable, non-inverted clock,
 *          complementary outputs.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps



`celldefine
module sedfxbp1 (
    Q  ,
    QN,
    CLK,
    D  ,
    DE ,
    SCD,
    SCE
);

    
    output Q  ;
    output QN;
    input  CLK;
    input  D  ;
    input  DE ;
    input  SCD;
    input  SCE;

    
    wire bufQ  ;
    wire muxout;
    wire ded   ;

    
    sky130fdschdudpmux2to1             mux2to10 (muxout, ded, SCD, SCE );
    sky130fdschdudpmux2to1             mux2to11 (ded   , bufQ, D, DE   );
    sky130fdschdudpdff$P    			 dff0      (bufQ  , muxout, CLK   );
    buf                                       buf0      (Q      , bufQ          );
    not                                       not0      (QN    , bufQ          );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * sedfxbp: Scan delay flop, data enable, non-inverted clock,
 *          complementary outputs.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps



`celldefine
module sedfxbp2 (
    Q  ,
    QN,
    CLK,
    D  ,
    DE ,
    SCD,
    SCE
);

    
    output Q  ;
    output QN;
    input  CLK;
    input  D  ;
    input  DE ;
    input  SCD;
    input  SCE;

    
    wire bufQ  ;
    wire muxout;
    wire ded   ;

    
    sky130fdschdudpmux2to1             mux2to10 (muxout, ded, SCD, SCE );
    sky130fdschdudpmux2to1             mux2to11 (ded   , bufQ, D, DE   );
    sky130fdschdudpdff$P    			 dff0      (bufQ  , muxout, CLK   );
    buf                                       buf0      (Q      , bufQ          );
    not                                       not0      (QN    , bufQ          );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * mux4: 4-input multiplexer.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps


`celldefine
module mux41 (
    X ,
    A0,
    A1,
    A2,
    A3,
    S0,
    S1
);

    
    output X ;
    input  A0;
    input  A1;
    input  A2;
    input  A3;
    input  S0;
    input  S1;

    
    wire mux4to20outX;

    
    sky130fdschdudpmux4to2 mux4to20 (mux4to20outX, A0, A1, A2, A3, S0, S1);
    buf                           buf0      (X              , mux4to20outX       );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * mux4: 4-input multiplexer.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps


`celldefine
module mux42 (
    X ,
    A0,
    A1,
    A2,
    A3,
    S0,
    S1
);

    
    output X ;
    input  A0;
    input  A1;
    input  A2;
    input  A3;
    input  S0;
    input  S1;

    
    wire mux4to20outX;

    
    sky130fdschdudpmux4to2 mux4to20 (mux4to20outX, A0, A1, A2, A3, S0, S1);
    buf                           buf0      (X              , mux4to20outX       );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * mux4: 4-input multiplexer.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps


`celldefine
module mux44 (
    X ,
    A0,
    A1,
    A2,
    A3,
    S0,
    S1
);

    
    output X ;
    input  A0;
    input  A1;
    input  A2;
    input  A3;
    input  S0;
    input  S1;

    
    wire mux4to20outX;

    
    sky130fdschdudpmux4to2 mux4to20 (mux4to20outX, A0, A1, A2, A3, S0, S1);
    buf                           buf0      (X              , mux4to20outX       );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * and4: 4-input AND.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module and41 (
    X,
    A,
    B,
    C,
    D
);

    
    output X;
    input  A;
    input  B;
    input  C;
    input  D;

    
    wire and0outX;

    
    and and0 (and0outX, A, B, C, D     );
    buf buf0 (X         , and0outX     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * and4: 4-input AND.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module and42 (
    X,
    A,
    B,
    C,
    D
);

    
    output X;
    input  A;
    input  B;
    input  C;
    input  D;

    
    wire and0outX;

    
    and and0 (and0outX, A, B, C, D     );
    buf buf0 (X         , and0outX     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * and4: 4-input AND.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module and44 (
    X,
    A,
    B,
    C,
    D
);

    
    output X;
    input  A;
    input  B;
    input  C;
    input  D;

    
    wire and0outX;

    
    and and0 (and0outX, A, B, C, D     );
    buf buf0 (X         , and0outX     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * sedfxtp: Scan delay flop, data enable, non-inverted clock,
 *          single output.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps



`celldefine
module sedfxtp1 (
    Q  ,
    CLK,
    D  ,
    DE ,
    SCD,
    SCE
);

    
    output Q  ;
    input  CLK;
    input  D  ;
    input  DE ;
    input  SCD;
    input  SCE;

    
    wire bufQ  ;
    wire muxout;
    wire ded   ;

    
    sky130fdschdudpmux2to1             mux2to10 (muxout, ded, SCD, SCE );
    sky130fdschdudpmux2to1             mux2to11 (ded   , bufQ, D, DE   );
    sky130fdschdudpdff$P    			 dff0      (bufQ  , muxout, CLK   );
    buf                                       buf0      (Q      , bufQ          );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * sedfxtp: Scan delay flop, data enable, non-inverted clock,
 *          single output.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps



`celldefine
module sedfxtp2 (
    Q  ,
    CLK,
    D  ,
    DE ,
    SCD,
    SCE
);

    
    output Q  ;
    input  CLK;
    input  D  ;
    input  DE ;
    input  SCD;
    input  SCE;

    
    wire bufQ  ;
    wire muxout;
    wire ded   ;

    
    sky130fdschdudpmux2to1             mux2to10 (muxout, ded, SCD, SCE );
    sky130fdschdudpmux2to1             mux2to11 (ded   , bufQ, D, DE   );
    sky130fdschdudpdff$P    			 dff0      (bufQ  , muxout, CLK   );
    buf                                       buf0      (Q      , bufQ          );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * sedfxtp: Scan delay flop, data enable, non-inverted clock,
 *          single output.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps



`celldefine
module sedfxtp4 (
    Q  ,
    CLK,
    D  ,
    DE ,
    SCD,
    SCE
);

    
    output Q  ;
    input  CLK;
    input  D  ;
    input  DE ;
    input  SCD;
    input  SCE;

    
    wire bufQ  ;
    wire muxout;
    wire ded   ;

    
    sky130fdschdudpmux2to1             mux2to10 (muxout, ded, SCD, SCE );
    sky130fdschdudpmux2to1             mux2to11 (ded   , bufQ, D, DE   );
    sky130fdschdudpdff$P    			 dff0      (bufQ  , muxout, CLK   );
    buf                                       buf0      (Q      , bufQ          );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * inv: Inverter.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module inv1 (
    Y,
    A
);

    
    output Y;
    input  A;

    
    wire not0outY;

    
    not not0 (not0outY, A              );
    buf buf0 (Y         , not0outY     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * inv: Inverter.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module inv12 (
    Y,
    A
);

    
    output Y;
    input  A;

    
    wire not0outY;

    
    not not0 (not0outY, A              );
    buf buf0 (Y         , not0outY     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * inv: Inverter.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module inv16 (
    Y,
    A
);

    
    output Y;
    input  A;

    
    wire not0outY;

    
    not not0 (not0outY, A              );
    buf buf0 (Y         , not0outY     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * inv: Inverter.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module inv2 (
    Y,
    A
);

    
    output Y;
    input  A;

    
    wire not0outY;

    
    not not0 (not0outY, A              );
    buf buf0 (Y         , not0outY     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * inv: Inverter.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module inv4 (
    Y,
    A
);

    
    output Y;
    input  A;

    
    wire not0outY;

    
    not not0 (not0outY, A              );
    buf buf0 (Y         , not0outY     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * inv: Inverter.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module inv6 (
    Y,
    A
);

    
    output Y;
    input  A;

    
    wire not0outY;

    
    not not0 (not0outY, A              );
    buf buf0 (Y         , not0outY     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * inv: Inverter.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module inv8 (
    Y,
    A
);

    
    output Y;
    input  A;

    
    wire not0outY;

    
    not not0 (not0outY, A              );
    buf buf0 (Y         , not0outY     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * and2: 2-input AND.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module and20 (
    X,
    A,
    B
);

    
    output X;
    input  A;
    input  B;

    
    wire and0outX;

    
    and and0 (and0outX, A, B           );
    buf buf0 (X         , and0outX     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * and2: 2-input AND.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module and21 (
    X,
    A,
    B
);

    
    output X;
    input  A;
    input  B;

    
    wire and0outX;

    
    and and0 (and0outX, A, B           );
    buf buf0 (X         , and0outX     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * and2: 2-input AND.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module and22 (
    X,
    A,
    B
);

    
    output X;
    input  A;
    input  B;

    
    wire and0outX;

    
    and and0 (and0outX, A, B           );
    buf buf0 (X         , and0outX     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * and2: 2-input AND.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module and24 (
    X,
    A,
    B
);

    
    output X;
    input  A;
    input  B;

    
    wire and0outX;

    
    and and0 (and0outX, A, B           );
    buf buf0 (X         , and0outX     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * sdfstp: Scan delay flop, inverted set, non-inverted clock,
 *         single output.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps



`celldefine
module sdfstp1 (
    Q    ,
    CLK  ,
    D    ,
    SCD  ,
    SCE  ,
    SETB
);

    
    output Q    ;
    input  CLK  ;
    input  D    ;
    input  SCD  ;
    input  SCE  ;
    input  SETB;

    
    wire bufQ  ;
    wire SET    ;
    wire muxout;

    
    not                                       not0      (SET    , SETB            );
    sky130fdschdudpmux2to1             mux2to10 (muxout, D, SCD, SCE      );
    sky130fdschdudpdff$PS   			 dff0      (bufQ  , muxout, CLK, SET);
    buf                                       buf0      (Q      , bufQ            );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * sdfstp: Scan delay flop, inverted set, non-inverted clock,
 *         single output.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps



`celldefine
module sdfstp2 (
    Q    ,
    CLK  ,
    D    ,
    SCD  ,
    SCE  ,
    SETB
);

    
    output Q    ;
    input  CLK  ;
    input  D    ;
    input  SCD  ;
    input  SCE  ;
    input  SETB;

    
    wire bufQ  ;
    wire SET    ;
    wire muxout;

    
    not                                       not0      (SET    , SETB            );
    sky130fdschdudpmux2to1             mux2to10 (muxout, D, SCD, SCE      );
    sky130fdschdudpdff$PS   			 dff0      (bufQ  , muxout, CLK, SET);
    buf                                       buf0      (Q      , bufQ            );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * sdfstp: Scan delay flop, inverted set, non-inverted clock,
 *         single output.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps



`celldefine
module sdfstp4 (
    Q    ,
    CLK  ,
    D    ,
    SCD  ,
    SCE  ,
    SETB
);

    
    output Q    ;
    input  CLK  ;
    input  D    ;
    input  SCD  ;
    input  SCE  ;
    input  SETB;

    
    wire bufQ  ;
    wire SET    ;
    wire muxout;

    
    not                                       not0      (SET    , SETB            );
    sky130fdschdudpmux2to1             mux2to10 (muxout, D, SCD, SCE      );
    sky130fdschdudpdff$PS   			 dff0      (bufQ  , muxout, CLK, SET);
    buf                                       buf0      (Q      , bufQ            );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * dfsbp: Delay flop, inverted set, complementary outputs.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps


`celldefine
module dfsbp1 (
    Q    ,
    QN  ,
    CLK  ,
    D    ,
    SETB
);

    
    output Q    ;
    output QN  ;
    input  CLK  ;
    input  D    ;
    input  SETB;

    
    wire bufQ;
    wire SET  ;

    
    not                                     not0 (SET   , SETB          );
    sky130fdschdudpdff$PS 			 dff0 (bufQ , D, CLK, SET    );
    buf                                     buf0 (Q     , bufQ          );
    not                                     not1 (QN   , bufQ          );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * dfsbp: Delay flop, inverted set, complementary outputs.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps


`celldefine
module dfsbp2 (
    Q    ,
    QN  ,
    CLK  ,
    D    ,
    SETB
);

    
    output Q    ;
    output QN  ;
    input  CLK  ;
    input  D    ;
    input  SETB;

    
    wire bufQ;
    wire SET  ;

    
    not                                     not0 (SET   , SETB          );
    sky130fdschdudpdff$PS 			 dff0 (bufQ , D, CLK, SET    );
    buf                                     buf0 (Q     , bufQ          );
    not                                     not1 (QN   , bufQ          );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * xor2: 2-input exclusive OR.
 *
 *       X = A ^ B
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module xor21 (
    X,
    A,
    B
);

    
    output X;
    input  A;
    input  B;

    
    wire xor0outX;

    
    xor xor0 (xor0outX, B, A           );
    buf buf0 (X         , xor0outX     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * xor2: 2-input exclusive OR.
 *
 *       X = A ^ B
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module xor22 (
    X,
    A,
    B
);

    
    output X;
    input  A;
    input  B;

    
    wire xor0outX;

    
    xor xor0 (xor0outX, B, A           );
    buf buf0 (X         , xor0outX     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * xor2: 2-input exclusive OR.
 *
 *       X = A ^ B
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module xor24 (
    X,
    A,
    B
);

    
    output X;
    input  A;
    input  B;

    
    wire xor0outX;

    
    xor xor0 (xor0outX, B, A           );
    buf buf0 (X         , xor0outX     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * nor3: 3-input NOR.
 *
 *       Y = !(A | B | C | !D)
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module nor31 (
    Y,
    A,
    B,
    C
);

    
    output Y;
    input  A;
    input  B;
    input  C;

    
    wire nor0outY;

    
    nor nor0 (nor0outY, C, A, B        );
    buf buf0 (Y         , nor0outY     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * nor3: 3-input NOR.
 *
 *       Y = !(A | B | C | !D)
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module nor32 (
    Y,
    A,
    B,
    C
);

    
    output Y;
    input  A;
    input  B;
    input  C;

    
    wire nor0outY;

    
    nor nor0 (nor0outY, C, A, B        );
    buf buf0 (Y         , nor0outY     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * nor3: 3-input NOR.
 *
 *       Y = !(A | B | C | !D)
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module nor34 (
    Y,
    A,
    B,
    C
);

    
    output Y;
    input  A;
    input  B;
    input  C;

    
    wire nor0outY;

    
    nor nor0 (nor0outY, C, A, B        );
    buf buf0 (Y         , nor0outY     );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * mux2: 2-input multiplexer.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps


`celldefine
module mux21 (
    X ,
    A0,
    A1,
    S
);

    
    output X ;
    input  A0;
    input  A1;
    input  S ;

    
    wire mux2to10outX;

    
    sky130fdschdudpmux2to1 mux2to10 (mux2to10outX, A0, A1, S      );
    buf                           buf0      (X              , mux2to10outX);

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * mux2: 2-input multiplexer.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps


`celldefine
module mux22 (
    X ,
    A0,
    A1,
    S
);

    
    output X ;
    input  A0;
    input  A1;
    input  S ;

    
    wire mux2to10outX;

    
    sky130fdschdudpmux2to1 mux2to10 (mux2to10outX, A0, A1, S      );
    buf                           buf0      (X              , mux2to10outX);

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * mux2: 2-input multiplexer.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps


`celldefine
module mux24 (
    X ,
    A0,
    A1,
    S
);

    
    output X ;
    input  A0;
    input  A1;
    input  S ;

    
    wire mux2to10outX;

    
    sky130fdschdudpmux2to1 mux2to10 (mux2to10outX, A0, A1, S      );
    buf                           buf0      (X              , mux2to10outX);

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * mux2: 2-input multiplexer.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps


`celldefine
module mux28 (
    X ,
    A0,
    A1,
    S
);

    
    output X ;
    input  A0;
    input  A1;
    input  S ;

    
    wire mux2to10outX;

    
    sky130fdschdudpmux2to1 mux2to10 (mux2to10outX, A0, A1, S      );
    buf                           buf0      (X              , mux2to10outX);

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * o21ai: 2-input OR into first input of 2-input NAND.
 *
 *        Y = !((A1 | A2) & B1)
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module o21ai0 (
    Y ,
    A1,
    A2,
    B1
);

    
    output Y ;
    input  A1;
    input  A2;
    input  B1;

    
    wire or0out    ;
    wire nand0outY;

    
    or   or0   (or0out    , A2, A1         );
    nand nand0 (nand0outY, B1, or0out    );
    buf  buf0  (Y          , nand0outY    );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * o21ai: 2-input OR into first input of 2-input NAND.
 *
 *        Y = !((A1 | A2) & B1)
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module o21ai1 (
    Y ,
    A1,
    A2,
    B1
);

    
    output Y ;
    input  A1;
    input  A2;
    input  B1;

    
    wire or0out    ;
    wire nand0outY;

    
    or   or0   (or0out    , A2, A1         );
    nand nand0 (nand0outY, B1, or0out    );
    buf  buf0  (Y          , nand0outY    );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * o21ai: 2-input OR into first input of 2-input NAND.
 *
 *        Y = !((A1 | A2) & B1)
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module o21ai2 (
    Y ,
    A1,
    A2,
    B1
);

    
    output Y ;
    input  A1;
    input  A2;
    input  B1;

    
    wire or0out    ;
    wire nand0outY;

    
    or   or0   (or0out    , A2, A1         );
    nand nand0 (nand0outY, B1, or0out    );
    buf  buf0  (Y          , nand0outY    );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * o21ai: 2-input OR into first input of 2-input NAND.
 *
 *        Y = !((A1 | A2) & B1)
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module o21ai4 (
    Y ,
    A1,
    A2,
    B1
);

    
    output Y ;
    input  A1;
    input  A2;
    input  B1;

    
    wire or0out    ;
    wire nand0outY;

    
    or   or0   (or0out    , A2, A1         );
    nand nand0 (nand0outY, B1, or0out    );
    buf  buf0  (Y          , nand0outY    );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * or3: 3-input OR.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module or31 (
    X,
    A,
    B,
    C
);

    
    output X;
    input  A;
    input  B;
    input  C;

    
    wire or0outX;

    
    or  or0  (or0outX, B, A, C        );
    buf buf0 (X        , or0outX      );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * or3: 3-input OR.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module or32 (
    X,
    A,
    B,
    C
);

    
    output X;
    input  A;
    input  B;
    input  C;

    
    wire or0outX;

    
    or  or0  (or0outX, B, A, C        );
    buf buf0 (X        , or0outX      );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * or3: 3-input OR.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module or34 (
    X,
    A,
    B,
    C
);

    
    output X;
    input  A;
    input  B;
    input  C;

    
    wire or0outX;

    
    or  or0  (or0outX, B, A, C        );
    buf buf0 (X        , or0outX      );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * nand4: 4-input NAND.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module nand41 (
    Y,
    A,
    B,
    C,
    D
);

    
    output Y;
    input  A;
    input  B;
    input  C;
    input  D;

    
    wire nand0outY;

    
    nand nand0 (nand0outY, D, C, B, A     );
    buf  buf0  (Y          , nand0outY    );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * nand4: 4-input NAND.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module nand42 (
    Y,
    A,
    B,
    C,
    D
);

    
    output Y;
    input  A;
    input  B;
    input  C;
    input  D;

    
    wire nand0outY;

    
    nand nand0 (nand0outY, D, C, B, A     );
    buf  buf0  (Y          , nand0outY    );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * nand4: 4-input NAND.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`celldefine
module nand44 (
    Y,
    A,
    B,
    C,
    D
);

    
    output Y;
    input  A;
    input  B;
    input  C;
    input  D;

    
    wire nand0outY;

    
    nand nand0 (nand0outY, D, C, B, A     );
    buf  buf0  (Y          , nand0outY    );

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * mux2i: 2-input multiplexer, output inverted.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps


`celldefine
module mux2i1 (
    Y ,
    A0,
    A1,
    S
);

    
    output Y ;
    input  A0;
    input  A1;
    input  S ;

    
    wire mux2to1n0outY;

    
    sky130fdschdudpmux2to1N mux2to1n0 (mux2to1n0outY, A0, A1, S        );
    buf                             buf0        (Y                , mux2to1n0outY);

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * mux2i: 2-input multiplexer, output inverted.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps


`celldefine
module mux2i2 (
    Y ,
    A0,
    A1,
    S
);

    
    output Y ;
    input  A0;
    input  A1;
    input  S ;

    
    wire mux2to1n0outY;

    
    sky130fdschdudpmux2to1N mux2to1n0 (mux2to1n0outY, A0, A1, S        );
    buf                             buf0        (Y                , mux2to1n0outY);

endmodule
`endcelldefine

/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/



/**
 * mux2i: 2-input multiplexer, output inverted.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps


`celldefine
module mux2i4 (
    Y ,
    A0,
    A1,
    S
);

    
    output Y ;
    input  A0;
    input  A1;
    input  S ;

    
    wire mux2to1n0outY;

    
    sky130fdschdudpmux2to1N mux2to1n0 (mux2to1n0outY, A0, A1, S        );
    buf                             buf0        (Y                , mux2to1n0outY);

endmodule
`endcelldefine



module s1196 ( GND, VDD, RST, CLK, G0, G1, G10, G11, G12, G13, G2, G3, G4, G45, 
        G5, G530, G532, G535, G537, G539, G542, G546, G547, G548, G549, G550, 
        G551, G552, G6, G7, G8, G9 );
  input GND, VDD, RST, CLK, G0, G1, G10, G11, G12, G13, G2, G3, G4, G5, G6, G7,
         G8, G9;
  output G45, G530, G532, G535, G537, G539, G542, G546, G547, G548, G549, G550,
         G551, G552;
  wire   n990, n497, n986, n498, n496, G46, G39, G35, G32, G29, G44, G43, G40,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n499, n500, n501, n502,
         n503, n504, n505, n506, n507, n508, n509, n510, n511, n512, n513,
         n514, n515, n516, n517, n518, n519, n520, n521, n522, n523, n524,
         n525, n526, n527, n528, n529, n530, n531, n532, n533, n534, n535,
         n536, n537, n538, n539, n540, n541, n542;

  dfxbp1 DFF13Qreg ( .D(n275), .CLK(CLK), .Q(n541) );
  dfxbp1 DFF9Qreg ( .D(n274), .CLK(CLK), .Q(n542) );
  dfxbp1 DFF8Qreg ( .D(n273), .CLK(CLK), .Q(n540) );
  dfxbp1 DFF7Qreg ( .D(n272), .CLK(CLK), .QN(n990) );
  dfxtp1 DFF17Qreg ( .D(n267), .CLK(CLK), .Q(G46) );
  dfxtp1 DFF10Qreg ( .D(n266), .CLK(CLK), .Q(G39) );
  dfxtp1 DFF6Qreg ( .D(n265), .CLK(CLK), .Q(G35) );
  dfxtp1 DFF3Qreg ( .D(n264), .CLK(CLK), .Q(G32) );
  dfxbp1 DFF4Qreg ( .D(n270), .CLK(CLK), .QN(n986) );
  dfxtp1 DFF0Qreg ( .D(n263), .CLK(CLK), .Q(G29) );
  dfxtp1 DFF15Qreg ( .D(n262), .CLK(CLK), .Q(G44) );
  dfxtp1 DFF14Qreg ( .D(n261), .CLK(CLK), .Q(G43) );
  dfxtp1 DFF11Qreg ( .D(n260), .CLK(CLK), .Q(G40) );
  dfxbp1 DFF12Qreg ( .D(n259), .CLK(CLK), .QN(G546) );
  dfxtp1 DFF16Qreg ( .D(n258), .CLK(CLK), .Q(G45) );
  dfxtp1 DFF5Qreg ( .D(n271), .CLK(CLK), .Q(n497) );
  dfxtp1 DFF2Qreg ( .D(n269), .CLK(CLK), .Q(n498) );
  dfxtp1 DFF1Qreg ( .D(n268), .CLK(CLK), .Q(n496) );
  nor31 U291 ( .A(n276), .B(RST), .C(n277), .Y(n275) );
  nor31 U292 ( .A(n278), .B(n279), .C(n280), .Y(n277) );
  o32ai1 U293 ( .A1(n281), .A2(n278), .A3(n282), .B1(n283), .B2(n284), .Y(
        n276) );
  a21oi1 U294 ( .A1(n285), .A2(n286), .B1(n287), .Y(n283) );
  nor31 U295 ( .A(n288), .B(G6), .C(n289), .Y(n287) );
  nor21 U296 ( .A(RST), .B(n290), .Y(n274) );
  nor21 U297 ( .A(RST), .B(n291), .Y(n273) );
  xnor21 U298 ( .A(G9), .B(G6), .Y(n291) );
  nor21 U299 ( .A(RST), .B(n292), .Y(n272) );
  a21oi1 U300 ( .A1(n293), .A2(n294), .B1(n295), .Y(n292) );
  a21oi1 U301 ( .A1(n296), .A2(n297), .B1(RST), .Y(n271) );
  nor21 U302 ( .A(RST), .B(n298), .Y(n270) );
  mux2i1 U303 ( .A0(n299), .A1(n300), .S(n301), .Y(n298) );
  nand21 U304 ( .A(n302), .B(n303), .Y(n300) );
  nand41 U305 ( .A(G0), .B(n304), .C(G1), .D(n305), .Y(n299) );
  nor21 U306 ( .A(RST), .B(n306), .Y(n269) );
  a22oi1 U307 ( .A1(G10), .A2(n280), .B1(G11), .B2(n284), .Y(n306) );
  a21oi1 U308 ( .A1(n307), .A2(n282), .B1(RST), .Y(n268) );
  inv1 U309 ( .A(n285), .Y(n282) );
  nor41 U310 ( .A(RST), .B(n308), .C(n309), .D(n310), .Y(n267) );
  a211oi1 U311 ( .A1(n496), .A2(G7), .B1(G6), .C1(n279), .Y(n310) );
  a211oi1 U312 ( .A1(G4), .A2(n311), .B1(n312), .C1(n313), .Y(n309) );
  mux2i1 U313 ( .A0(n314), .A1(n294), .S(n315), .Y(n312) );
  nor21 U314 ( .A(n316), .B(n317), .Y(n314) );
  a21oi1 U315 ( .A1(n318), .A2(G0), .B1(G1), .Y(n308) );
  mux2i1 U316 ( .A0(n319), .A1(n320), .S(n321), .Y(n318) );
  nor21 U317 ( .A(RST), .B(n322), .Y(n266) );
  xnor21 U318 ( .A(n323), .B(G2), .Y(n322) );
  nor21 U319 ( .A(RST), .B(n324), .Y(n265) );
  mux2i1 U320 ( .A0(n325), .A1(n326), .S(n278), .Y(n324) );
  nor21 U321 ( .A(G8), .B(n327), .Y(n326) );
  a21oi1 U322 ( .A1(n328), .A2(n329), .B1(RST), .Y(n264) );
  a22oi1 U323 ( .A1(n319), .A2(n330), .B1(n331), .B2(n332), .Y(n328) );
  a211oi1 U324 ( .A1(n315), .A2(n333), .B1(RST), .C1(n334), .Y(n263) );
  o21ai0 U325 ( .A1(n335), .A2(n336), .B1(n337), .Y(n333) );
  inv1 U326 ( .A(n338), .Y(n337) );
  nor41 U327 ( .A(RST), .B(n339), .C(n340), .D(n341), .Y(n262) );
  and31 U328 ( .A(n295), .B(n342), .C(n278), .X(n341) );
  and41 U329 ( .A(n278), .B(n294), .C(n305), .D(n293), .X(n340) );
  nor41 U330 ( .A(RST), .B(n343), .C(n344), .D(n345), .Y(n261) );
  mux2i1 U331 ( .A0(n346), .A1(n347), .S(n278), .Y(n345) );
  nand31 U332 ( .A(G2), .B(n348), .C(G3), .Y(n347) );
  nand21 U333 ( .A(n319), .B(G1), .Y(n346) );
  mux2i1 U334 ( .A0(n349), .A1(n350), .S(n315), .Y(n344) );
  or20 U335 ( .A(n335), .B(n351), .X(n350) );
  nand31 U336 ( .A(G3), .B(G6), .C(n352), .Y(n349) );
  nor21 U337 ( .A(n353), .B(n354), .Y(n343) );
  nor31 U338 ( .A(n355), .B(RST), .C(n356), .Y(n260) );
  a21oi1 U339 ( .A1(n357), .A2(n358), .B1(n286), .Y(n356) );
  o21ai0 U340 ( .A1(n359), .A2(n498), .B1(G6), .Y(n358) );
  nor31 U341 ( .A(n284), .B(G11), .C(n342), .Y(n359) );
  nor31 U342 ( .A(n360), .B(G10), .C(n278), .Y(n355) );
  nor41 U343 ( .A(n361), .B(n362), .C(RST), .D(n363), .Y(n259) );
  o221ai1 U344 ( .A1(G9), .A2(n364), .B1(n365), .B2(n366), .C1(n367), .Y(n361) );
  inv1 U345 ( .A(n368), .Y(n367) );
  a22oi1 U346 ( .A1(n369), .A2(n279), .B1(n497), .B2(n370), .Y(n364) );
  a21oi1 U347 ( .A1(n371), .A2(n372), .B1(RST), .Y(n258) );
  o221ai1 U348 ( .A1(n373), .A2(n278), .B1(G40), .B2(n374), .C1(n375), .Y(
        G552) );
  a21oi1 U349 ( .A1(n353), .A2(n376), .B1(n377), .Y(n375) );
  nor31 U350 ( .A(n297), .B(n378), .C(n379), .Y(n377) );
  o22ai1 U351 ( .A1(n331), .A2(n296), .B1(n380), .B2(n297), .Y(n376) );
  a21oi1 U352 ( .A1(n381), .A2(n382), .B1(n383), .Y(n373) );
  inv1 U353 ( .A(n384), .Y(n383) );
  o21ai0 U354 ( .A1(n334), .A2(n302), .B1(n385), .Y(n384) );
  nor21 U355 ( .A(n386), .B(n352), .Y(n334) );
  o21ai0 U356 ( .A1(n348), .A2(n313), .B1(n311), .Y(n382) );
  nand31 U357 ( .A(n387), .B(n388), .C(n389), .Y(G551) );
  a22oi1 U358 ( .A1(G5), .A2(n390), .B1(n381), .B2(n391), .Y(n389) );
  nand31 U359 ( .A(n321), .B(n392), .C(n393), .Y(n391) );
  a21oi1 U360 ( .A1(n394), .A2(n315), .B1(n395), .Y(n393) );
  a21oi1 U361 ( .A1(G5), .A2(n396), .B1(n386), .Y(n395) );
  inv1 U362 ( .A(n319), .Y(n386) );
  o32ai1 U363 ( .A1(n397), .A2(n305), .A3(n380), .B1(n374), .B2(n398), .Y(
        n390) );
  o21ai0 U364 ( .A1(n320), .A2(n317), .B1(G1), .Y(n398) );
  nand31 U365 ( .A(n323), .B(n396), .C(n399), .Y(n388) );
  nand31 U366 ( .A(n385), .B(G4), .C(G39), .Y(n387) );
  o221ai1 U367 ( .A1(n335), .A2(n400), .B1(G29), .B2(n397), .C1(n401), .Y(
        G550) );
  a211oi1 U368 ( .A1(n402), .A2(n381), .B1(n403), .C1(n404), .Y(n401) );
  nor31 U369 ( .A(n297), .B(n394), .C(n311), .Y(n404) );
  inv1 U370 ( .A(n405), .Y(n403) );
  mux2i1 U371 ( .A0(n406), .A1(n379), .S(n396), .Y(n402) );
  nand21 U372 ( .A(G2), .B(n294), .Y(n406) );
  nand41 U373 ( .A(n405), .B(n400), .C(n407), .D(n408), .Y(G549) );
  a22oi1 U374 ( .A1(n409), .A2(n335), .B1(n338), .B2(n385), .Y(n408) );
  nor21 U375 ( .A(n379), .B(G4), .Y(n338) );
  o22ai1 U376 ( .A1(n396), .A2(n374), .B1(n379), .B2(n297), .Y(n409) );
  inv1 U377 ( .A(n385), .Y(n297) );
  nor31 U378 ( .A(G12), .B(G13), .C(n410), .Y(n385) );
  inv1 U379 ( .A(n331), .Y(n379) );
  nand31 U380 ( .A(G1), .B(n411), .C(n381), .Y(n407) );
  nand31 U381 ( .A(n412), .B(n413), .C(n329), .Y(n411) );
  a21oi1 U382 ( .A1(G5), .A2(n319), .B1(n302), .Y(n329) );
  nor21 U383 ( .A(n321), .B(n313), .Y(n302) );
  o21ai0 U384 ( .A1(n414), .A2(G5), .B1(n305), .Y(n412) );
  nand31 U385 ( .A(n348), .B(n317), .C(n369), .Y(n400) );
  nand31 U386 ( .A(n415), .B(n986), .C(G3), .Y(n405) );
  o22ai1 U387 ( .A1(n541), .A2(n374), .B1(n416), .B2(n417), .Y(G548) );
  a21oi1 U388 ( .A1(n279), .A2(n285), .B1(n418), .Y(n416) );
  o32ai1 U389 ( .A1(n280), .A2(n370), .A3(n284), .B1(n419), .B2(n420), .Y(
        n418) );
  nand21 U390 ( .A(G11), .B(n421), .Y(n420) );
  o22ai1 U391 ( .A1(n422), .A2(n342), .B1(n423), .B2(n366), .Y(G547) );
  a21oi1 U392 ( .A1(n424), .A2(n286), .B1(n425), .Y(n423) );
  mux2i1 U393 ( .A0(n426), .A1(n421), .S(n419), .Y(n425) );
  mux2i1 U394 ( .A0(G9), .A1(G11), .S(n307), .Y(n426) );
  nor31 U395 ( .A(n427), .B(n362), .C(n368), .Y(n422) );
  nor31 U396 ( .A(n428), .B(G6), .C(n374), .Y(n368) );
  nor31 U397 ( .A(n281), .B(G7), .C(n417), .Y(n362) );
  nor31 U398 ( .A(n417), .B(n370), .C(n284), .Y(n427) );
  o221ai1 U399 ( .A1(n417), .A2(n429), .B1(n430), .B2(n366), .C1(n431), .Y(
        G542) );
  inv1 U400 ( .A(n363), .Y(n431) );
  nor31 U401 ( .A(n365), .B(n286), .C(n417), .Y(n363) );
  inv1 U402 ( .A(n432), .Y(n365) );
  nand21 U403 ( .A(n369), .B(G6), .Y(n366) );
  nor41 U404 ( .A(n433), .B(n432), .C(n434), .D(n435), .Y(n430) );
  nor21 U405 ( .A(G7), .B(n281), .Y(n435) );
  a21oi1 U406 ( .A1(G8), .A2(n281), .B1(G9), .Y(n434) );
  inv1 U407 ( .A(n370), .Y(n281) );
  o21ai0 U408 ( .A1(n342), .A2(n286), .B1(n279), .Y(n429) );
  inv1 U409 ( .A(n497), .Y(n417) );
  mux2i1 U410 ( .A0(n436), .A1(n437), .S(n415), .Y(G539) );
  mux2i1 U411 ( .A0(n438), .A1(n439), .S(n301), .Y(n437) );
  nor21 U412 ( .A(n303), .B(n440), .Y(n439) );
  inv1 U413 ( .A(n410), .Y(n303) );
  nor21 U414 ( .A(n304), .B(n441), .Y(n438) );
  inv1 U415 ( .A(n442), .Y(n304) );
  nand31 U416 ( .A(n443), .B(n301), .C(n444), .Y(n436) );
  o22ai1 U417 ( .A1(n445), .A2(n313), .B1(n446), .B2(n447), .Y(G537) );
  a221oi1 U418 ( .A1(n352), .A2(n293), .B1(n448), .B2(n325), .C1(n449), .Y(
        n446) );
  inv1 U419 ( .A(n450), .Y(n449) );
  a21oi1 U420 ( .A1(n305), .A2(n295), .B1(n339), .Y(n450) );
  nor31 U421 ( .A(n413), .B(G7), .C(n451), .Y(n339) );
  nor41 U422 ( .A(n452), .B(G10), .C(G11), .D(G5), .Y(n295) );
  a222oi1 U423 ( .A1(n453), .A2(n454), .B1(n455), .B2(G8), .C1(n456), .C2(
        n457), .Y(n445) );
  a21oi1 U424 ( .A1(n428), .A2(n458), .B1(n354), .Y(n456) );
  nand31 U425 ( .A(G6), .B(n342), .C(n542), .Y(n458) );
  nor21 U426 ( .A(n371), .B(n459), .Y(n455) );
  a21oi1 U427 ( .A1(n460), .A2(G6), .B1(n323), .Y(n459) );
  nor21 U428 ( .A(n461), .B(n332), .Y(n453) );
  or31 U429 ( .A(n462), .B(n463), .C(n464), .X(G535) );
  o21ai0 U430 ( .A1(G44), .A2(n465), .B1(n466), .Y(n464) );
  o21ai0 U431 ( .A1(n460), .A2(n289), .B1(n467), .Y(n466) );
  o32ai1 U432 ( .A1(n447), .A2(n288), .A3(n332), .B1(n321), .B2(n468), .Y(
        n467) );
  and41 U433 ( .A(n469), .B(n540), .C(n542), .D(n457), .X(n463) );
  inv1 U434 ( .A(n372), .Y(n457) );
  nand41 U435 ( .A(G12), .B(n441), .C(n442), .D(n415), .Y(n372) );
  o22ai1 U436 ( .A1(n315), .A2(n470), .B1(n471), .B2(n472), .Y(n441) );
  nand31 U437 ( .A(n469), .B(G2), .C(n540), .Y(n472) );
  or31 U438 ( .A(n286), .B(n288), .C(n290), .X(n471) );
  nand41 U439 ( .A(G7), .B(n317), .C(n307), .D(n305), .Y(n290) );
  mux2i1 U440 ( .A0(n473), .A1(n474), .S(n317), .Y(n470) );
  nor41 U441 ( .A(n475), .B(n380), .C(n452), .D(n378), .Y(n474) );
  inv1 U442 ( .A(n414), .Y(n380) );
  nand31 U443 ( .A(G10), .B(n294), .C(n285), .Y(n475) );
  o211ai1 U444 ( .A1(G43), .A2(n296), .B1(n476), .C1(n477), .Y(G532) );
  a221oi1 U445 ( .A1(n478), .A2(n479), .B1(n480), .B2(n481), .C1(n462), .Y(
        n477) );
  nor31 U446 ( .A(n461), .B(n371), .C(n378), .Y(n462) );
  nor21 U447 ( .A(n371), .B(n278), .Y(n480) );
  and20 U448 ( .A(n468), .B(n447), .X(n371) );
  o21ai0 U449 ( .A1(n327), .A2(n413), .B1(G4), .Y(n479) );
  a22oi1 U450 ( .A1(n433), .A2(n482), .B1(n399), .B2(n483), .Y(n476) );
  o221ai1 U451 ( .A1(n484), .A2(n305), .B1(G3), .B2(n321), .C1(n485), .Y(n483) );
  mux2i1 U452 ( .A0(n486), .A1(n394), .S(n315), .Y(n485) );
  or20 U453 ( .A(n316), .B(n320), .X(n486) );
  a21oi1 U454 ( .A1(n323), .A2(n313), .B1(n414), .Y(n484) );
  o21ai0 U455 ( .A1(n332), .A2(n447), .B1(n468), .Y(n482) );
  inv1 U456 ( .A(n454), .Y(n468) );
  nor31 U457 ( .A(n444), .B(G12), .C(n415), .Y(n454) );
  inv1 U458 ( .A(n487), .Y(n444) );
  o22ai1 U459 ( .A1(n315), .A2(n488), .B1(n489), .B2(n313), .Y(n487) );
  a21oi1 U460 ( .A1(n490), .A2(n294), .B1(n491), .Y(n489) );
  and31 U461 ( .A(n481), .B(n469), .C(n353), .X(n491) );
  nand31 U462 ( .A(n492), .B(n493), .C(n494), .Y(n490) );
  or31 U463 ( .A(n495), .B(G7), .C(n451), .X(n494) );
  nand31 U464 ( .A(n448), .B(n499), .C(n500), .Y(n493) );
  nor31 U465 ( .A(n280), .B(G10), .C(G1), .Y(n500) );
  inv1 U466 ( .A(n424), .Y(n280) );
  nand31 U467 ( .A(n460), .B(G11), .C(n501), .Y(n492) );
  mux2i1 U468 ( .A0(n495), .A1(n502), .S(n286), .Y(n501) );
  nand31 U469 ( .A(n315), .B(n278), .C(n316), .Y(n502) );
  mux2i1 U470 ( .A0(n503), .A1(n448), .S(n315), .Y(n495) );
  nor21 U471 ( .A(n335), .B(n378), .Y(n503) );
  inv1 U472 ( .A(n330), .Y(n378) );
  inv1 U473 ( .A(n448), .Y(n332) );
  inv1 U474 ( .A(n451), .Y(n433) );
  nand31 U475 ( .A(G10), .B(n286), .C(n424), .Y(n451) );
  inv1 U476 ( .A(n381), .Y(n296) );
  nor31 U477 ( .A(n443), .B(G12), .C(n415), .Y(n381) );
  o21ai0 U478 ( .A1(n504), .A2(n505), .B1(n506), .Y(n443) );
  o32ai1 U479 ( .A1(n313), .A2(G6), .A3(n396), .B1(n353), .B2(n354), .Y(n505)
         );
  inv1 U480 ( .A(n469), .Y(n354) );
  nor21 U481 ( .A(n311), .B(n315), .Y(n469) );
  inv1 U482 ( .A(n348), .Y(n396) );
  nor21 U483 ( .A(n305), .B(n315), .Y(n348) );
  mux2i1 U484 ( .A0(n507), .A1(n351), .S(n315), .Y(n504) );
  a21oi1 U485 ( .A1(G2), .A2(n330), .B1(n331), .Y(n351) );
  nor21 U486 ( .A(n278), .B(G4), .Y(n330) );
  a221oi1 U487 ( .A1(n353), .A2(n311), .B1(n352), .B2(n335), .C1(n508), .Y(
        n507) );
  mux2i1 U488 ( .A0(n509), .A1(n510), .S(n278), .Y(n508) );
  nand21 U489 ( .A(G5), .B(n305), .Y(n510) );
  nor21 U490 ( .A(n319), .B(n414), .Y(n509) );
  nor21 U491 ( .A(n313), .B(G3), .Y(n414) );
  nor21 U492 ( .A(n335), .B(G2), .Y(n319) );
  o221ai1 U493 ( .A1(n511), .A2(n512), .B1(n513), .B2(n397), .C1(n465), .Y(
        G530) );
  inv1 U494 ( .A(n478), .Y(n465) );
  nor21 U495 ( .A(n447), .B(G3), .Y(n478) );
  nand41 U496 ( .A(n440), .B(n410), .C(n301), .D(n415), .Y(n447) );
  inv1 U497 ( .A(G13), .Y(n415) );
  nand21 U498 ( .A(G32), .B(n506), .Y(n410) );
  inv1 U499 ( .A(n514), .Y(n506) );
  a221oi1 U500 ( .A1(n360), .A2(n279), .B1(n499), .B2(n496), .C1(n432), .Y(
        n514) );
  nor21 U501 ( .A(n421), .B(n284), .Y(n432) );
  nand31 U502 ( .A(n515), .B(n516), .C(n517), .Y(n440) );
  a21oi1 U503 ( .A1(n320), .A2(n518), .B1(n473), .Y(n517) );
  inv1 U504 ( .A(n488), .Y(n473) );
  nand41 U505 ( .A(n353), .B(n323), .C(G2), .D(n293), .Y(n488) );
  nor21 U506 ( .A(n428), .B(n360), .Y(n293) );
  nand21 U507 ( .A(G8), .B(n424), .Y(n360) );
  nor21 U508 ( .A(n342), .B(n288), .Y(n424) );
  inv1 U509 ( .A(n279), .Y(n428) );
  nor21 U510 ( .A(n284), .B(n307), .Y(n279) );
  o32ai1 U511 ( .A1(n413), .A2(n461), .A3(n288), .B1(G6), .B2(n990), .Y(n518)
         );
  inv1 U512 ( .A(n325), .Y(n461) );
  nand21 U513 ( .A(n353), .B(G5), .Y(n413) );
  nor21 U514 ( .A(G2), .B(G3), .Y(n320) );
  nand31 U515 ( .A(G11), .B(n294), .C(n519), .Y(n516) );
  mux2i1 U516 ( .A0(n520), .A1(n521), .S(n313), .Y(n519) );
  o21ai0 U517 ( .A1(n522), .A2(n325), .B1(n448), .Y(n521) );
  o21ai0 U518 ( .A1(n286), .A2(n327), .B1(n523), .Y(n325) );
  inv1 U519 ( .A(n460), .Y(n327) );
  nor31 U520 ( .A(G10), .B(G9), .C(n284), .Y(n460) );
  inv1 U521 ( .A(G7), .Y(n284) );
  nor21 U522 ( .A(n421), .B(n419), .Y(n522) );
  nand21 U523 ( .A(G35), .B(n316), .Y(n520) );
  nand31 U524 ( .A(n448), .B(n331), .C(n481), .Y(n515) );
  nor31 U525 ( .A(n452), .B(G11), .C(n421), .Y(n481) );
  inv1 U526 ( .A(n289), .Y(n421) );
  nor21 U527 ( .A(n342), .B(G10), .Y(n289) );
  inv1 U528 ( .A(n524), .Y(n452) );
  nor21 U529 ( .A(n392), .B(n335), .Y(n448) );
  inv1 U530 ( .A(n353), .Y(n392) );
  nor21 U531 ( .A(n305), .B(n278), .Y(n353) );
  inv1 U532 ( .A(n399), .Y(n397) );
  nor21 U533 ( .A(n374), .B(n317), .Y(n399) );
  inv1 U534 ( .A(n369), .Y(n374) );
  a21oi1 U535 ( .A1(n331), .A2(n315), .B1(n525), .Y(n513) );
  mux2i1 U536 ( .A0(n526), .A1(n336), .S(n311), .Y(n525) );
  inv1 U537 ( .A(n323), .Y(n311) );
  nor21 U538 ( .A(n294), .B(n335), .Y(n323) );
  inv1 U539 ( .A(n394), .Y(n336) );
  nor21 U540 ( .A(n313), .B(n305), .Y(n394) );
  nand21 U541 ( .A(G2), .B(n305), .Y(n526) );
  inv1 U542 ( .A(G1), .Y(n315) );
  nor21 U543 ( .A(n294), .B(n313), .Y(n331) );
  inv1 U544 ( .A(G2), .Y(n313) );
  nand21 U545 ( .A(n369), .B(G2), .Y(n512) );
  nor31 U546 ( .A(n442), .B(G13), .C(n301), .Y(n369) );
  inv1 U547 ( .A(G12), .Y(n301) );
  nand31 U548 ( .A(n527), .B(G46), .C(n528), .Y(n442) );
  a222oi1 U549 ( .A1(n524), .A2(n285), .B1(n529), .B2(n530), .C1(n531), .C2(
        n321), .Y(n528) );
  inv1 U550 ( .A(n352), .Y(n321) );
  nor21 U551 ( .A(n305), .B(G5), .Y(n352) );
  inv1 U552 ( .A(G4), .Y(n305) );
  o22ai1 U553 ( .A1(G5), .A2(G3), .B1(G0), .B2(n532), .Y(n531) );
  inv1 U554 ( .A(n316), .Y(n532) );
  nor21 U555 ( .A(n335), .B(G4), .Y(n316) );
  inv1 U556 ( .A(G3), .Y(n335) );
  o32ai1 U557 ( .A1(G10), .A2(G9), .A3(G11), .B1(n533), .B2(n286), .Y(n530)
         );
  a21oi1 U558 ( .A1(n370), .A2(G11), .B1(n285), .Y(n533) );
  nor21 U559 ( .A(n286), .B(n307), .Y(n370) );
  inv1 U560 ( .A(G10), .Y(n307) );
  nor21 U561 ( .A(n498), .B(n534), .Y(n529) );
  nor21 U562 ( .A(n288), .B(G9), .Y(n285) );
  mux2i1 U563 ( .A0(n535), .A1(n536), .S(n288), .Y(n527) );
  inv1 U564 ( .A(G11), .Y(n288) );
  nand21 U565 ( .A(n537), .B(n523), .Y(n536) );
  nand31 U566 ( .A(G10), .B(G9), .C(n524), .Y(n523) );
  nor21 U567 ( .A(G7), .B(G8), .Y(n524) );
  mux2i1 U568 ( .A0(n538), .A1(n539), .S(n342), .Y(n537) );
  inv1 U569 ( .A(G9), .Y(n342) );
  nor31 U570 ( .A(n534), .B(G8), .C(G10), .Y(n539) );
  inv1 U571 ( .A(n357), .Y(n534) );
  nand31 U572 ( .A(G7), .B(n278), .C(n496), .Y(n357) );
  inv1 U573 ( .A(G6), .Y(n278) );
  nor21 U574 ( .A(n498), .B(n419), .Y(n538) );
  inv1 U575 ( .A(n499), .Y(n419) );
  nor21 U576 ( .A(n286), .B(G7), .Y(n499) );
  inv1 U577 ( .A(G8), .Y(n286) );
  nor21 U578 ( .A(n496), .B(G6), .Y(n535) );
  o21ai0 U579 ( .A1(n294), .A2(n317), .B1(G1), .Y(n511) );
  inv1 U580 ( .A(G0), .Y(n317) );
  inv1 U581 ( .A(G5), .Y(n294) );
endmodule



