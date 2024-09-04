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



module s1488 ( GND, VDD, RST, CLK, CLR, v0, v1, v13D10, v13D11, v13D12, 
        v13D13, v13D14, v13D15, v13D16, v13D17, v13D18, v13D19, 
        v13D20, v13D21, v13D22, v13D23, v13D24, v13D6, v13D7, 
        v13D8, v13D9, v2, v3, v4, v5, v6 );
  input GND, VDD, RST, CLK, CLR, v0, v1, v2, v3, v4, v5, v6;
  output v13D10, v13D11, v13D12, v13D13, v13D14, v13D15, v13D16,
         v13D17, v13D18, v13D19, v13D20, v13D21, v13D22, v13D23,
         v13D24, v13D6, v13D7, v13D8, v13D9;
  wire   DFF0N3, v12, DFF5N3, v7, DFF4N3, v8, DFF3N3, v9, DFF2N3,
         v10, DFF1N3, v11, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426,
         n427, n428, n429, n430, n431, n432, n433, n434, n435, n436, n437,
         n438, n439, n440, n441, n442, n443, n444, n445, n446, n447, n448,
         n449, n450, n451, n452, n453, n454, n455, n456, n457, n458, n459,
         n460, n461, n462, n463, n464, n465, n466, n467, n468, n469, n470,
         n471, n472, n473, n474, n475, n476, n477, n478, n479, n480, n481,
         n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492,
         n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
         n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514,
         n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525,
         n526, n527, n528, n529, n530, n531, n532, n533, n534, n535, n536,
         n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, n547,
         n548, n549, n550, n551, n552, n553, n554, n555, n556, n557, n558,
         n559, n560, n561, n562, n563, n564, n565, n566, n567, n568, n569,
         n570, n571, n572;

  dfxbp1 DFF0Qreg ( .D(DFF0N3), .CLK(CLK), .Q(v12), .QN(n288) );
  dfxbp1 DFF5Qreg ( .D(DFF5N3), .CLK(CLK), .Q(v7), .QN(n289) );
  dfxbp1 DFF4Qreg ( .D(DFF4N3), .CLK(CLK), .Q(v8), .QN(n287) );
  dfxbp1 DFF3Qreg ( .D(DFF3N3), .CLK(CLK), .Q(v9), .QN(n292) );
  dfxbp1 DFF2Qreg ( .D(DFF2N3), .CLK(CLK), .Q(v10), .QN(n290) );
  dfxbp1 DFF1Qreg ( .D(DFF1N3), .CLK(CLK), .Q(v11), .QN(n291) );
  o22ai1 U312 ( .A1(v12), .A2(n293), .B1(n294), .B2(n295), .Y(v13D9) );
  a21oi1 U313 ( .A1(n296), .A2(n297), .B1(n298), .Y(n294) );
  nor21 U314 ( .A(v9), .B(v7), .Y(n296) );
  a22oi1 U315 ( .A1(n299), .A2(n300), .B1(n301), .B2(n302), .Y(n293) );
  nand21 U316 ( .A(n303), .B(n304), .Y(v13D8) );
  nor41 U317 ( .A(n305), .B(n298), .C(n306), .D(n307), .Y(n304) );
  nor31 U318 ( .A(n308), .B(n309), .C(n310), .Y(n307) );
  a221oi1 U319 ( .A1(n311), .A2(n312), .B1(n313), .B2(n289), .C1(n314), .Y(
        n303) );
  o22ai1 U320 ( .A1(n315), .A2(n316), .B1(n317), .B2(n318), .Y(n314) );
  a21oi1 U321 ( .A1(v9), .A2(n291), .B1(n319), .Y(n317) );
  a21oi1 U322 ( .A1(v11), .A2(n320), .B1(n321), .Y(n315) );
  nand41 U323 ( .A(n322), .B(n323), .C(n324), .D(n325), .Y(n313) );
  a222oi1 U324 ( .A1(v9), .A2(n326), .B1(n327), .B2(v11), .C1(n328), .C2(n329), .Y(n325) );
  inv1 U325 ( .A(n330), .Y(n324) );
  o22ai1 U326 ( .A1(n331), .A2(n332), .B1(n333), .B2(n312), .Y(n330) );
  nand31 U327 ( .A(n334), .B(n335), .C(n336), .Y(v13D7) );
  a22oi1 U328 ( .A1(v7), .A2(n337), .B1(n338), .B2(n339), .Y(n336) );
  o32ai1 U329 ( .A1(n326), .A2(n340), .A3(n292), .B1(n341), .B2(n333), .Y(
        n337) );
  a22oi1 U330 ( .A1(n342), .A2(n288), .B1(n319), .B2(n290), .Y(n341) );
  o21ai0 U331 ( .A1(n343), .A2(n344), .B1(n320), .Y(n334) );
  inv1 U332 ( .A(n332), .Y(n320) );
  nor31 U333 ( .A(n345), .B(v0), .C(n290), .Y(n343) );
  o221ai1 U334 ( .A1(v10), .A2(n346), .B1(v7), .B2(n347), .C1(n348), .Y(
        v13D6) );
  a21oi1 U335 ( .A1(n349), .A2(n340), .B1(n350), .Y(n348) );
  mux2i1 U336 ( .A0(n351), .A1(n352), .S(n300), .Y(n350) );
  nand21 U337 ( .A(n319), .B(v8), .Y(n352) );
  nand21 U338 ( .A(v12), .B(n353), .Y(n351) );
  a211oi1 U339 ( .A1(v9), .A2(n326), .B1(n354), .C1(n355), .Y(n347) );
  mux2i1 U340 ( .A0(n356), .A1(n288), .S(n291), .Y(n355) );
  nand21 U341 ( .A(v8), .B(n331), .Y(n356) );
  o221ai1 U342 ( .A1(n332), .A2(n300), .B1(n328), .B2(n333), .C1(n357), .Y(
        n354) );
  nor21 U343 ( .A(n358), .B(v4), .Y(n332) );
  nand41 U344 ( .A(n359), .B(n360), .C(n361), .D(n362), .Y(v13D24) );
  a222oi1 U345 ( .A1(n306), .A2(n327), .B1(n363), .B2(n358), .C1(v7), .C2(
        n364), .Y(n362) );
  nand21 U346 ( .A(n365), .B(n366), .Y(n364) );
  nand41 U347 ( .A(n349), .B(n340), .C(n367), .D(n368), .Y(n366) );
  mux2i1 U348 ( .A0(n369), .A1(n370), .S(n371), .Y(n365) );
  o221ai1 U349 ( .A1(n345), .A2(n372), .B1(n373), .B2(n374), .C1(n375), .Y(
        n363) );
  nand31 U350 ( .A(n376), .B(n368), .C(n377), .Y(n375) );
  inv1 U351 ( .A(n378), .Y(n374) );
  nand21 U352 ( .A(n301), .B(n367), .Y(n372) );
  nand31 U353 ( .A(n379), .B(n368), .C(n380), .Y(n361) );
  nor21 U354 ( .A(n381), .B(n316), .Y(v13D23) );
  nor31 U355 ( .A(n382), .B(n383), .C(n384), .Y(n381) );
  nor31 U356 ( .A(n308), .B(n367), .C(n326), .Y(n384) );
  nor31 U357 ( .A(n385), .B(n386), .C(n300), .Y(n383) );
  nor31 U358 ( .A(n387), .B(n290), .C(n292), .Y(n382) );
  o211ai1 U359 ( .A1(n346), .A2(n322), .B1(n388), .C1(n389), .Y(v13D22) );
  nand31 U360 ( .A(n390), .B(n368), .C(n391), .Y(n388) );
  nand21 U361 ( .A(n392), .B(n393), .Y(v13D21) );
  nand31 U362 ( .A(n377), .B(v2), .C(n391), .Y(n393) );
  nor31 U363 ( .A(n394), .B(n395), .C(n396), .Y(v13D20) );
  nand31 U364 ( .A(n397), .B(n360), .C(n398), .Y(v13D19) );
  nand31 U365 ( .A(n328), .B(n309), .C(n399), .Y(n398) );
  nand31 U366 ( .A(n400), .B(n321), .C(n377), .Y(n360) );
  nand41 U367 ( .A(n401), .B(n402), .C(n327), .D(v12), .Y(n397) );
  o21ai0 U368 ( .A1(n326), .A2(n403), .B1(n392), .Y(v13D18) );
  o21ai0 U369 ( .A1(v5), .A2(v4), .B1(n404), .Y(n403) );
  o32ai1 U370 ( .A1(n331), .A2(v7), .A3(n287), .B1(n308), .B2(n405), .Y(n404)
         );
  nand41 U371 ( .A(n406), .B(n335), .C(n392), .D(n407), .Y(v13D17) );
  inv1 U372 ( .A(n408), .Y(n407) );
  o32ai1 U373 ( .A1(n409), .A2(n410), .A3(n326), .B1(n411), .B2(n368), .Y(
        n408) );
  a221oi1 U374 ( .A1(n370), .A2(v7), .B1(n399), .B2(n301), .C1(n412), .Y(n411) );
  a21oi1 U375 ( .A1(n367), .A2(n289), .B1(v9), .Y(n410) );
  nand21 U376 ( .A(n413), .B(n414), .Y(n392) );
  nand21 U377 ( .A(n415), .B(n416), .Y(v13D16) );
  nand41 U378 ( .A(n390), .B(n400), .C(v9), .D(n312), .Y(n416) );
  inv1 U379 ( .A(n417), .Y(n415) );
  nor31 U380 ( .A(n418), .B(v5), .C(n419), .Y(v13D15) );
  a21oi1 U381 ( .A1(n420), .A2(n421), .B1(n344), .Y(n419) );
  nand41 U382 ( .A(n422), .B(n423), .C(n424), .D(n425), .Y(v13D14) );
  a221oi1 U383 ( .A1(n426), .A2(n288), .B1(n427), .B2(n289), .C1(n428), .Y(
        n425) );
  o211ai1 U384 ( .A1(v5), .A2(v4), .B1(n429), .C1(n430), .Y(n427) );
  o221ai1 U385 ( .A1(v0), .A2(n308), .B1(v9), .B2(v11), .C1(n338), .Y(n424)
         );
  inv1 U386 ( .A(n431), .Y(n422) );
  nand41 U387 ( .A(n389), .B(n432), .C(n433), .D(n434), .Y(v13D13) );
  a221oi1 U388 ( .A1(n344), .A2(n435), .B1(n413), .B2(n291), .C1(n436), .Y(
        n434) );
  o22ai1 U389 ( .A1(n437), .A2(n308), .B1(v7), .B2(n438), .Y(n436) );
  nor21 U390 ( .A(n439), .B(n440), .Y(n438) );
  a221oi1 U391 ( .A1(v8), .A2(n441), .B1(n442), .B2(n288), .C1(n402), .Y(n437) );
  o22ai1 U392 ( .A1(v7), .A2(v1), .B1(n430), .B2(n405), .Y(n442) );
  o21ai0 U393 ( .A1(v1), .A2(n291), .B1(n387), .Y(n441) );
  nor41 U394 ( .A(n331), .B(n326), .C(n287), .D(v7), .Y(n344) );
  a21oi1 U395 ( .A1(n327), .A2(n443), .B1(n444), .Y(n433) );
  and31 U396 ( .A(v1), .B(v9), .C(n369), .X(n444) );
  o21ai0 U397 ( .A1(n309), .A2(n310), .B1(n445), .Y(n443) );
  inv1 U398 ( .A(n306), .Y(n445) );
  nor21 U399 ( .A(n387), .B(n316), .Y(n306) );
  nand21 U400 ( .A(n321), .B(n299), .Y(n389) );
  o211ai1 U401 ( .A1(v10), .A2(n446), .B1(n447), .C1(n448), .Y(v13D12) );
  inv1 U402 ( .A(n449), .Y(n448) );
  o211ai1 U403 ( .A1(n450), .A2(n346), .B1(n359), .C1(n423), .Y(n449) );
  inv1 U404 ( .A(n412), .Y(n423) );
  nand31 U405 ( .A(n402), .B(n292), .C(n451), .Y(n359) );
  nand21 U406 ( .A(v9), .B(n338), .Y(n346) );
  o211ai1 U407 ( .A1(v7), .A2(n452), .B1(n453), .C1(n454), .Y(v13D11) );
  a221oi1 U408 ( .A1(n402), .A2(v10), .B1(n370), .B2(n287), .C1(n428), .Y(
        n454) );
  o22ai1 U409 ( .A1(v7), .A2(n288), .B1(n455), .B2(n287), .Y(n428) );
  nor21 U410 ( .A(n414), .B(n292), .Y(n455) );
  a21oi1 U411 ( .A1(n390), .A2(n456), .B1(n298), .Y(n453) );
  nor31 U412 ( .A(n367), .B(n316), .C(n291), .Y(n298) );
  inv1 U413 ( .A(n400), .Y(n456) );
  nor21 U414 ( .A(n333), .B(v7), .Y(n390) );
  a221oi1 U415 ( .A1(n435), .A2(n333), .B1(n426), .B2(v11), .C1(n302), .Y(
        n452) );
  nand41 U416 ( .A(n446), .B(n335), .C(n457), .D(n458), .Y(v13D10) );
  inv1 U417 ( .A(n459), .Y(n458) );
  o221ai1 U418 ( .A1(n429), .A2(n345), .B1(n450), .B2(n323), .C1(n447), .Y(
        n459) );
  a221oi1 U419 ( .A1(n460), .A2(n376), .B1(v8), .B2(n380), .C1(n440), .Y(n447) );
  inv1 U420 ( .A(n406), .Y(n440) );
  nand31 U421 ( .A(n376), .B(n342), .C(n426), .Y(n406) );
  nor21 U422 ( .A(n368), .B(n287), .Y(n426) );
  o21ai0 U423 ( .A1(n342), .A2(v8), .B1(n461), .Y(n460) );
  nand31 U424 ( .A(v0), .B(n292), .C(n338), .Y(n461) );
  a22oi1 U425 ( .A1(n311), .A2(n462), .B1(n376), .B2(n463), .Y(n457) );
  o22ai1 U426 ( .A1(n371), .A2(n430), .B1(n327), .B2(n310), .Y(n463) );
  o21ai0 U427 ( .A1(v9), .A2(n451), .B1(n464), .Y(n462) );
  nand41 U428 ( .A(n349), .B(n328), .C(n291), .D(n289), .Y(n335) );
  inv1 U429 ( .A(n413), .Y(n446) );
  nor21 U430 ( .A(n430), .B(n345), .Y(n413) );
  nor21 U431 ( .A(n465), .B(n466), .Y(DFF5N3) );
  a211oi1 U432 ( .A1(n376), .A2(n467), .B1(n468), .C1(n469), .Y(n465) );
  o32ai1 U433 ( .A1(n373), .A2(v12), .A3(n331), .B1(n386), .B2(n470), .Y(n469) );
  o21ai0 U434 ( .A1(n471), .A2(n368), .B1(n379), .Y(n470) );
  inv1 U435 ( .A(n402), .Y(n373) );
  nor21 U436 ( .A(n316), .B(v11), .Y(n402) );
  o22ai1 U437 ( .A1(v7), .A2(n472), .B1(n473), .B2(n300), .Y(n468) );
  inv1 U438 ( .A(n299), .Y(n473) );
  nor21 U439 ( .A(n289), .B(n371), .Y(n299) );
  a222oi1 U440 ( .A1(n474), .A2(n329), .B1(v9), .B2(n475), .C1(n302), .C2(
        n476), .Y(n472) );
  o221ai1 U441 ( .A1(n312), .A2(n291), .B1(v3), .B2(n477), .C1(n478), .Y(n476) );
  o221ai1 U442 ( .A1(n479), .A2(n387), .B1(n288), .B2(n333), .C1(n322), .Y(
        n475) );
  nor21 U443 ( .A(n395), .B(n480), .Y(n479) );
  o32ai1 U444 ( .A1(n405), .A2(n308), .A3(n430), .B1(n396), .B2(n481), .Y(
        n467) );
  inv1 U445 ( .A(n377), .Y(n396) );
  nand21 U446 ( .A(n338), .B(n367), .Y(n405) );
  a21oi1 U447 ( .A1(n482), .A2(n483), .B1(n466), .Y(DFF4N3) );
  a222oi1 U448 ( .A1(n379), .A2(n484), .B1(n485), .B2(n486), .C1(n369), .C2(
        n297), .Y(n483) );
  o21ai0 U449 ( .A1(n480), .A2(n464), .B1(n386), .Y(n486) );
  o211ai1 U450 ( .A1(n328), .A2(n386), .B1(n450), .C1(n300), .Y(n484) );
  inv1 U451 ( .A(n369), .Y(n450) );
  a21oi1 U452 ( .A1(n487), .A2(n289), .B1(n488), .Y(n482) );
  o211ai1 U453 ( .A1(n489), .A2(n490), .B1(n491), .C1(n492), .Y(n487) );
  a21oi1 U454 ( .A1(n309), .A2(v9), .B1(n493), .Y(n492) );
  mux2i1 U455 ( .A0(n494), .A1(n495), .S(n287), .Y(n493) );
  nor41 U456 ( .A(n496), .B(n497), .C(n498), .D(n499), .Y(n495) );
  and31 U457 ( .A(n435), .B(n288), .C(n421), .X(n497) );
  o21ai0 U458 ( .A1(v0), .A2(n471), .B1(n300), .Y(n421) );
  o32ai1 U459 ( .A1(n357), .A2(v3), .A3(n368), .B1(n322), .B2(n500), .Y(n496)
         );
  a21oi1 U460 ( .A1(n501), .A2(n376), .B1(n378), .Y(n494) );
  o21ai0 U461 ( .A1(v2), .A2(n478), .B1(n302), .Y(n491) );
  a21oi1 U462 ( .A1(n502), .A2(n503), .B1(n466), .Y(DFF3N3) );
  nor41 U463 ( .A(n431), .B(n504), .C(n505), .D(n506), .Y(n503) );
  nor31 U464 ( .A(n507), .B(v3), .C(n342), .Y(n506) );
  mux2i1 U465 ( .A0(n508), .A1(v8), .S(n288), .Y(n507) );
  nor21 U466 ( .A(v6), .B(n316), .Y(n508) );
  and31 U467 ( .A(n399), .B(n409), .C(v11), .X(n505) );
  nor21 U468 ( .A(n310), .B(v9), .Y(n399) );
  nor31 U469 ( .A(n289), .B(n509), .C(n326), .Y(n431) );
  a222oi1 U470 ( .A1(n510), .A2(n289), .B1(n378), .B2(n485), .C1(n412), .C2(
        n300), .Y(n502) );
  nor21 U471 ( .A(n310), .B(v12), .Y(n412) );
  nor21 U472 ( .A(n342), .B(v12), .Y(n378) );
  nand31 U473 ( .A(n511), .B(n512), .C(n513), .Y(n510) );
  a21oi1 U474 ( .A1(n414), .A2(n514), .B1(n515), .Y(n513) );
  o32ai1 U475 ( .A1(n516), .A2(n387), .A3(n318), .B1(n288), .B2(n517), .Y(
        n515) );
  nand21 U476 ( .A(n353), .B(n471), .Y(n517) );
  inv1 U477 ( .A(n340), .Y(n318) );
  inv1 U478 ( .A(n489), .Y(n516) );
  xor21 U479 ( .A(v1), .B(n368), .X(n489) );
  o22ai1 U480 ( .A1(n518), .A2(n430), .B1(v12), .B2(n519), .Y(n514) );
  a221oi1 U481 ( .A1(v3), .A2(v8), .B1(v2), .B2(n302), .C1(n474), .Y(n519) );
  o21ai0 U482 ( .A1(n339), .A2(n520), .B1(n287), .Y(n512) );
  o32ai1 U483 ( .A1(n295), .A2(v9), .A3(n367), .B1(n435), .B2(n521), .Y(n520)
         );
  inv1 U484 ( .A(n522), .Y(n521) );
  inv1 U485 ( .A(v0), .Y(n367) );
  o21ai0 U486 ( .A1(n387), .A2(n342), .B1(n523), .Y(n339) );
  inv1 U487 ( .A(n439), .Y(n523) );
  inv1 U488 ( .A(n327), .Y(n342) );
  a21oi1 U489 ( .A1(n439), .A2(v2), .B1(n524), .Y(n511) );
  a21oi1 U490 ( .A1(n525), .A2(n526), .B1(n292), .Y(n524) );
  nand31 U491 ( .A(v11), .B(n481), .C(n340), .Y(n526) );
  inv1 U492 ( .A(n501), .Y(n481) );
  nor21 U493 ( .A(n478), .B(v9), .Y(n439) );
  inv1 U494 ( .A(n321), .Y(n478) );
  nor21 U495 ( .A(n295), .B(v11), .Y(n321) );
  inv1 U496 ( .A(n312), .Y(n295) );
  nor21 U497 ( .A(n290), .B(v12), .Y(n312) );
  a21oi1 U498 ( .A1(n527), .A2(n528), .B1(n466), .Y(DFF2N3) );
  nand21 U499 ( .A(n485), .B(n529), .Y(n528) );
  o22ai1 U500 ( .A1(n288), .A2(n308), .B1(v10), .B2(n319), .Y(n529) );
  mux2i1 U501 ( .A0(n530), .A1(n531), .S(n289), .Y(n527) );
  nand41 U502 ( .A(n532), .B(n533), .C(n534), .D(n535), .Y(n531) );
  a222oi1 U503 ( .A1(n340), .A2(n536), .B1(n353), .B2(n537), .C1(n380), .C2(
        n287), .Y(n535) );
  nor21 U504 ( .A(n386), .B(n471), .Y(n380) );
  inv1 U505 ( .A(n319), .Y(n386) );
  o32ai1 U506 ( .A1(n480), .A2(n538), .A3(n387), .B1(n400), .B2(n477), .Y(
        n537) );
  nor21 U507 ( .A(n385), .B(n480), .Y(n400) );
  inv1 U508 ( .A(n539), .Y(n538) );
  nand31 U509 ( .A(n387), .B(n368), .C(n435), .Y(n536) );
  a22oi1 U510 ( .A1(n327), .A2(n540), .B1(n302), .B2(n541), .Y(n534) );
  o21ai0 U511 ( .A1(v12), .A2(n409), .B1(n322), .Y(n541) );
  o21ai0 U512 ( .A1(n477), .A2(n430), .B1(n287), .Y(n540) );
  inv1 U513 ( .A(n329), .Y(n477) );
  nor21 U514 ( .A(v11), .B(v12), .Y(n329) );
  nor21 U515 ( .A(v10), .B(v9), .Y(n327) );
  or31 U516 ( .A(n288), .B(n401), .C(n300), .X(n533) );
  inv1 U517 ( .A(n414), .Y(n300) );
  nor21 U518 ( .A(n480), .B(v6), .Y(n401) );
  nand31 U519 ( .A(n368), .B(n292), .C(n485), .Y(n532) );
  nor21 U520 ( .A(n292), .B(n326), .Y(n530) );
  a21oi1 U521 ( .A1(n542), .A2(n543), .B1(n466), .Y(DFF1N3) );
  nor31 U522 ( .A(n544), .B(n305), .C(n417), .Y(n543) );
  nor41 U523 ( .A(n368), .B(n308), .C(n310), .D(n387), .Y(n417) );
  inv1 U524 ( .A(n379), .Y(n310) );
  nor21 U525 ( .A(n289), .B(n287), .Y(n379) );
  inv1 U526 ( .A(n432), .Y(n305) );
  o22ai1 U527 ( .A1(n471), .A2(n345), .B1(n333), .B2(n322), .Y(n544) );
  nand21 U528 ( .A(v12), .B(n290), .Y(n322) );
  inv1 U529 ( .A(n420), .Y(n345) );
  nor21 U530 ( .A(n518), .B(n316), .Y(n420) );
  a221oi1 U531 ( .A1(n545), .A2(n289), .B1(n370), .B2(n302), .C1(n546), .Y(
        n542) );
  mux2i1 U532 ( .A0(n547), .A1(n548), .S(n288), .Y(n546) );
  a21oi1 U533 ( .A1(n501), .A2(n377), .B1(n504), .Y(n548) );
  nor21 U534 ( .A(n549), .B(n308), .Y(n504) );
  nor21 U535 ( .A(n430), .B(v2), .Y(n501) );
  nand31 U536 ( .A(v3), .B(n539), .C(n377), .Y(n547) );
  nand21 U537 ( .A(n395), .B(v0), .Y(n539) );
  nand41 U538 ( .A(n550), .B(n525), .C(n551), .D(n552), .Y(n545) );
  a222oi1 U539 ( .A1(n474), .A2(n391), .B1(n340), .B2(n553), .C1(v9), .C2(
        n554), .Y(n552) );
  o211ai1 U540 ( .A1(n368), .A2(n464), .B1(n490), .C1(n429), .Y(n554) );
  nand21 U541 ( .A(v10), .B(n291), .Y(n429) );
  inv1 U542 ( .A(n499), .Y(n490) );
  nor21 U543 ( .A(n387), .B(v10), .Y(n499) );
  inv1 U544 ( .A(n309), .Y(n387) );
  inv1 U545 ( .A(n391), .Y(n464) );
  o21ai0 U546 ( .A1(v9), .A2(v3), .B1(n376), .Y(n553) );
  nor21 U547 ( .A(n287), .B(v10), .Y(n340) );
  nor21 U548 ( .A(v10), .B(v12), .Y(n391) );
  a21oi1 U549 ( .A1(v6), .A2(v1), .B1(n323), .Y(n474) );
  inv1 U550 ( .A(n302), .Y(n323) );
  nand31 U551 ( .A(n291), .B(n385), .C(n319), .Y(n551) );
  inv1 U552 ( .A(n498), .Y(n525) );
  nor21 U553 ( .A(n357), .B(v11), .Y(n498) );
  inv1 U554 ( .A(n451), .Y(n357) );
  nor21 U555 ( .A(n288), .B(n290), .Y(n451) );
  nand31 U556 ( .A(n297), .B(n288), .C(n509), .Y(n550) );
  a21oi1 U557 ( .A1(n555), .A2(n556), .B1(n466), .Y(DFF0N3) );
  nand21 U558 ( .A(CLR), .B(n557), .Y(n466) );
  inv1 U559 ( .A(RST), .Y(n557) );
  nor31 U560 ( .A(n558), .B(n559), .C(n560), .Y(n556) );
  nor31 U561 ( .A(n549), .B(v10), .C(n349), .Y(n560) );
  inv1 U562 ( .A(n311), .Y(n549) );
  nor21 U563 ( .A(n333), .B(n289), .Y(n311) );
  inv1 U564 ( .A(n485), .Y(n333) );
  nor21 U565 ( .A(n287), .B(v11), .Y(n485) );
  nor41 U566 ( .A(n561), .B(n331), .C(v12), .D(n316), .Y(n559) );
  inv1 U567 ( .A(n338), .Y(n316) );
  nor21 U568 ( .A(v7), .B(v8), .Y(n338) );
  nand21 U569 ( .A(v9), .B(n368), .Y(n331) );
  nand31 U570 ( .A(v6), .B(n414), .C(v1), .Y(n561) );
  o32ai1 U571 ( .A1(n471), .A2(v9), .A3(n562), .B1(v7), .B2(n563), .Y(n558)
         );
  a221oi1 U572 ( .A1(n522), .A2(n564), .B1(n301), .B2(n302), .C1(n565), .Y(
        n563) );
  mux2i1 U573 ( .A0(n566), .A1(n567), .S(n287), .Y(n565) );
  nand31 U574 ( .A(n319), .B(n500), .C(n414), .Y(n567) );
  nor21 U575 ( .A(v10), .B(v11), .Y(n414) );
  nand21 U576 ( .A(n385), .B(n480), .Y(n500) );
  inv1 U577 ( .A(v3), .Y(n480) );
  nor21 U578 ( .A(n288), .B(v9), .Y(n319) );
  a211oi1 U579 ( .A1(n435), .A2(n369), .B1(n568), .C1(n569), .Y(n566) );
  mux2i1 U580 ( .A0(n570), .A1(n571), .S(n395), .Y(n569) );
  nor21 U581 ( .A(n385), .B(v1), .Y(n395) );
  inv1 U582 ( .A(v6), .Y(n385) );
  or20 U583 ( .A(n394), .B(v0), .X(n571) );
  nand31 U584 ( .A(n309), .B(v10), .C(v3), .Y(n394) );
  nor21 U585 ( .A(n288), .B(n291), .Y(n309) );
  nand41 U586 ( .A(v3), .B(v12), .C(n301), .D(v0), .Y(n570) );
  o21ai0 U587 ( .A1(n326), .A2(n409), .B1(n308), .Y(n568) );
  inv1 U588 ( .A(n509), .Y(n308) );
  nor21 U589 ( .A(n290), .B(v9), .Y(n509) );
  inv1 U590 ( .A(n328), .Y(n409) );
  nor21 U591 ( .A(n368), .B(n290), .Y(n328) );
  inv1 U592 ( .A(v2), .Y(n368) );
  nor21 U593 ( .A(n292), .B(v8), .Y(n302) );
  o21ai0 U594 ( .A1(v0), .A2(n430), .B1(v11), .Y(n564) );
  inv1 U595 ( .A(n435), .Y(n430) );
  nor21 U596 ( .A(n418), .B(n358), .Y(n435) );
  inv1 U597 ( .A(v5), .Y(n358) );
  inv1 U598 ( .A(v4), .Y(n418) );
  inv1 U599 ( .A(n297), .Y(n562) );
  nor21 U600 ( .A(n287), .B(v2), .Y(n297) );
  inv1 U601 ( .A(n301), .Y(n471) );
  nor21 U602 ( .A(n291), .B(n290), .Y(n301) );
  a221oi1 U603 ( .A1(n522), .A2(v8), .B1(n377), .B2(n370), .C1(n488), .Y(n555) );
  nand21 U604 ( .A(n432), .B(n572), .Y(n488) );
  nand31 U605 ( .A(v7), .B(v9), .C(n369), .Y(n572) );
  nor21 U606 ( .A(n326), .B(n290), .Y(n369) );
  nand31 U607 ( .A(v7), .B(n287), .C(n370), .Y(n432) );
  nor21 U608 ( .A(n326), .B(v10), .Y(n370) );
  inv1 U609 ( .A(n376), .Y(n326) );
  nor21 U610 ( .A(n291), .B(v12), .Y(n376) );
  nor21 U611 ( .A(n371), .B(v7), .Y(n377) );
  inv1 U612 ( .A(n353), .Y(n371) );
  nor21 U613 ( .A(n292), .B(n287), .Y(n353) );
  nor21 U614 ( .A(n518), .B(n290), .Y(n522) );
  inv1 U615 ( .A(n349), .Y(n518) );
  nor21 U616 ( .A(v12), .B(v9), .Y(n349) );
endmodule



