/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
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



module s5378 ( GND, VDD, RST, CLK, n3065gat, n3066gat, n3067gat, n3068gat, 
        n3069gat, n3070gat, n3071gat, n3072gat, n3073gat, n3074gat, n3075gat, 
        n3076gat, n3077gat, n3078gat, n3079gat, n3080gat, n3081gat, n3082gat, 
        n3083gat, n3084gat, n3085gat, n3086gat, n3087gat, n3088gat, n3089gat, 
        n3090gat, n3091gat, n3092gat, n3093gat, n3094gat, n3095gat, n3097gat, 
        n3098gat, n3099gat, n3100gat, n3104gat, n3105gat, n3106gat, n3107gat, 
        n3108gat, n3109gat, n3110gat, n3111gat, n3112gat, n3113gat, n3114gat, 
        n3115gat, n3116gat, n3117gat, n3118gat, n3119gat, n3120gat, n3121gat, 
        n3122gat, n3123gat, n3124gat, n3125gat, n3126gat, n3127gat, n3128gat, 
        n3129gat, n3130gat, n3131gat, n3132gat, n3133gat, n3134gat, n3135gat, 
        n3136gat, n3137gat, n3138gat, n3139gat, n3140gat, n3141gat, n3142gat, 
        n3143gat, n3144gat, n3145gat, n3146gat, n3147gat, n3148gat, n3149gat, 
        n3150gat, n3151gat, n3152gat );
  input GND, VDD, RST, CLK, n3065gat, n3066gat, n3067gat, n3068gat, n3069gat,
         n3070gat, n3071gat, n3072gat, n3073gat, n3074gat, n3075gat, n3076gat,
         n3077gat, n3078gat, n3079gat, n3080gat, n3081gat, n3082gat, n3083gat,
         n3084gat, n3085gat, n3086gat, n3087gat, n3088gat, n3089gat, n3090gat,
         n3091gat, n3092gat, n3093gat, n3094gat, n3095gat, n3097gat, n3098gat,
         n3099gat, n3100gat;
  output n3104gat, n3105gat, n3106gat, n3107gat, n3108gat, n3109gat, n3110gat,
         n3111gat, n3112gat, n3113gat, n3114gat, n3115gat, n3116gat, n3117gat,
         n3118gat, n3119gat, n3120gat, n3121gat, n3122gat, n3123gat, n3124gat,
         n3125gat, n3126gat, n3127gat, n3128gat, n3129gat, n3130gat, n3131gat,
         n3132gat, n3133gat, n3134gat, n3135gat, n3136gat, n3137gat, n3138gat,
         n3139gat, n3140gat, n3141gat, n3142gat, n3143gat, n3144gat, n3145gat,
         n3146gat, n3147gat, n3148gat, n3149gat, n3150gat, n3151gat, n3152gat;
  wire   DFF33N3, n1892, DFF178N3, DFF177N3, DFF176N3, DFF174N3,
         DFF173N3, DFF171N3, DFF170N3, DFF167N3, DFF163N3, n1911,
         DFF162N3, DFF161N3, n1908, DFF160N3, DFF159N3, DFF158N3,
         DFF157N3, DFF156N3, n1893, DFF155N3, DFF154N3, n1888,
         DFF151N3, DFF150N3, DFF149N3, DFF147N3, DFF145N3,
         DFF143N3, DFF142N3, DFF141N3, DFF140N3, DFF139N3, n1007,
         DFF137N3, DFF134N3, DFF133N3, DFF131N3, DFF130N3,
         DFF128N3, DFF125N3, DFF124N3, DFF123N3, DFF121N3,
         DFF119N3, DFF118N3, DFF117N3, DFF115N3, DFF114N3,
         DFF113N3, DFF112N3, DFF111N3, DFF110N3, DFF109N3,
         DFF108N3, DFF107N3, DFF106N3, DFF105N3, DFF101N3,
         DFF100N3, DFF99N3, DFF98N3, DFF97N3, DFF96N3, DFF95N3,
         DFF93N3, n1900, DFF91N3, DFF90N3, DFF89N3, DFF88N3,
         DFF87N3, DFF86N3, DFF85N3, DFF84N3, DFF83N3, DFF82N3,
         n1901, DFF81N3, DFF80N3, DFF79N3, DFF78N3, DFF77N3,
         DFF76N3, DFF75N3, DFF74N3, DFF73N3, DFF72N3, DFF71N3,
         DFF70N3, DFF69N3, DFF67N3, DFF66N3, DFF65N3, DFF64N3,
         DFF63N3, DFF62N3, DFF60N3, DFF59N3, DFF58N3, n1898,
         DFF57N3, DFF56N3, DFF55N3, DFF54N3, DFF53N3, DFF52N3,
         DFF51N3, DFF50N3, DFF49N3, DFF48N3, n1899, DFF47N3,
         DFF46N3, DFF45N3, DFF44N3, DFF43N3, DFF42N3, n1896,
         DFF37N3, DFF36N3, DFF35N3, DFF34N3, DFF32N3, DFF31N3,
         DFF30N3, DFF29N3, DFF28N3, n1897, DFF27N3, DFF21N3,
         DFF19N3, n1876, DFF17N3, DFF16N3, n1902, DFF15N3, DFF9N3,
         DFF169N3, n1771gat, DFF168N3, DFF153N3, n2446gat, DFF138N3,
         DFF92N3, DFF126N3, n2021gat, DFF116N3, n2084gat, DFF104N3,
         DFF94N3, n2102gat, DFF175N3, n2458gat, DFF166N3, n2121gat,
         n2025gat, DFF146N3, n2044gat, DFF144N3, n1363gat, DFF129N3,
         n1433gat, DFF127N3, n2179gat, DFF122N3, n1332gat, DFF120N3,
         n2029gat, DFF20N3, DFF165N3, DFF164N3, n2266gat, DFF148N3, n6,
         n9, n10, n13, n15, n17, n19, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n177, n178, n187, n189, n200, n201, n205, n206, n226, n246, n251,
         n256, n258, n260, n261, n262, n606, n607, n614, n615, n616, n617,
         n618, n619, n620, n621, n622, n623, n624, n625, n626, n627, n628,
         n629, n630, n631, n632, n633, n634, n635, n636, n637, n638, n639,
         n640, n641, n642, n643, n644, n645, n646, n647, n648, n649, n650,
         n651, n652, n653, n654, n655, n656, n657, n658, n659, n660, n661,
         n662, n663, n664, n665, n666, n667, n668, n669, n670, n671, n672,
         n673, n674, n675, n676, n679, n680, n681, n682, n683, n684, n685,
         n686, n687, n688, n689, n690, n691, n692, n693, n694, n695, n696,
         n697, n698, n699, n700, n701, n702, n703, n704, n705, n706, n707,
         n708, n709, n710, n711, n712, n713, n714, n715, n716, n717, n718,
         n719, n720, n721, n722, n723, n724, n725, n726, n727, n728, n729,
         n730, n731, n732, n733, n734, n735, n736, n737, n738, n739, n740,
         n741, n742, n743, n744, n745, n746, n747, n748, n749, n750, n751,
         n752, n753, n754, n755, n756, n757, n758, n759, n760, n761, n762,
         n763, n764, n765, n766, n767, n768, n769, n770, n771, n772, n773,
         n774, n775, n776, n777, n778, n779, n780, n781, n782, n783, n784,
         n785, n786, n787, n788, n789, n790, n791, n792, n793, n794, n795,
         n796, n797, n798, n799, n800, n801, n802, n803, n804, n805, n806,
         n807, n808, n809, n810, n811, n812, n813, n814, n815, n816, n817,
         n818, n819, n820, n821, n822, n823, n824, n825, n826, n827, n828,
         n829, n830, n831, n832, n833, n834, n835, n836, n837, n838, n839,
         n840, n841, n842, n843, n844, n845, n846, n847, n848, n849, n850,
         n851, n852, n853, n854, n855, n856, n857, n858, n859, n860, n861,
         n862, n863, n864, n865, n866, n867, n868, n869, n870, n871, n872,
         n873, n874, n875, n876, n877, n878, n879, n880, n881, n882, n883,
         n884, n885, n886, n887, n888, n889, n890, n891, n892, n893, n894,
         n895, n896, n897, n898, n899, n900, n901, n902, n903, n904, n905,
         n906, n907, n908, n909, n910, n911, n912, n913, n914, n915, n916,
         n917, n918, n919, n920, n921, n922, n923, n924, n925, n926, n927,
         n928, n929, n930, n931, n932, n933, n934, n935, n936, n937, n938,
         n939, n940, n941, n942, n943, n944, n945, n946, n947, n948, n949,
         n950, n951, n952, n953, n954, n955, n956, n957, n958, n959, n960,
         n961, n962, n963, n964, n965, n966, n967, n968, n969, n970, n971,
         n972, n973, n974, n975, n976, n977, n978, n979, n980, n981, n982,
         n983, n984, n985, n986, n987, n988, n989, n990, n991, n992, n993,
         n994, n995, n996, n997, n998, n999, n1000, n1001, n1002, n1003, n1004,
         n1005, n1006, n1008, n1009, n1010, n1011, n1012, n1013, n1014, n1015,
         n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024, n1025,
         n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033, n1034, n1035,
         n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044, n1045,
         n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053, n1054, n1055,
         n1056, n1057, n1058, n1059, n1060, n1061, n1062, n1063, n1064, n1065,
         n1066, n1067, n1068, n1069, n1070, n1071, n1072, n1073, n1074, n1075,
         n1076, n1077, n1078, n1079, n1080, n1081, n1082, n1083, n1084, n1085,
         n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093, n1094, n1095,
         n1096, n1097, n1098, n1099, n1100, n1101, n1102, n1103, n1104, n1105,
         n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113, n1114, n1115,
         n1116, n1117, n1118, n1119, n1120, n1121, n1122, n1123, n1124, n1125,
         n1126, n1127, n1128, n1129, n1130, n1131, n1132, n1133, n1134, n1135,
         n1136, n1137, n1138, n1139, n1140, n1141, n1142, n1143, n1144, n1145,
         n1146, n1147, n1148, n1149, n1150, n1151, n1152, n1153, n1154, n1155,
         n1156, n1157, n1158, n1159, n1160, n1161, n1162, n1163, n1164, n1165,
         n1166, n1167, n1168, n1169, n1170, n1171, n1172, n1173, n1174, n1175,
         n1176, n1177, n1178, n1179, n1180, n1181, n1182, n1183, n1184, n1185,
         n1186, n1187, n1188, n1189, n1190, n1191, n1192, n1193, n1194, n1195,
         n1196, n1197, n1198, n1199, n1200, n1201, n1202, n1203, n1204, n1205,
         n1206, n1207, n1208, n1209, n1210, n1211, n1212, n1213, n1214, n1215,
         n1216, n1217, n1218, n1219, n1220, n1221, n1222, n1223, n1224, n1225,
         n1226, n1227, n1228;

  dfxbp1 DFF0Qreg ( .D(DFF33N3), .CLK(CLK), .Q(n656), .QN(n1146) );
  dfxbp1 DFF178Qreg ( .D(DFF178N3), .CLK(CLK), .QN(n1892) );
  dfxbp1 DFF177Qreg ( .D(DFF177N3), .CLK(CLK), .Q(n1147) );
  dfxbp1 DFF176Qreg ( .D(DFF176N3), .CLK(CLK), .Q(n1118), .QN(n674) );
  dfxbp1 DFF174Qreg ( .D(DFF174N3), .CLK(CLK), .Q(n1114) );
  dfxbp1 DFF173Qreg ( .D(DFF173N3), .CLK(CLK), .QN(n1148) );
  dfxbp1 DFF172Qreg ( .D(n30), .CLK(CLK), .Q(n1113) );
  dfxbp1 DFF171Qreg ( .D(DFF171N3), .CLK(CLK), .Q(n177) );
  dfxbp1 DFF170Qreg ( .D(DFF170N3), .CLK(CLK), .Q(n1111) );
  dfxbp1 DFF167Qreg ( .D(DFF167N3), .CLK(CLK), .Q(n178) );
  dfxbp1 DFF163Qreg ( .D(DFF163N3), .CLK(CLK), .QN(n1119) );
  dfxbp1 DFF162Qreg ( .D(DFF162N3), .CLK(CLK), .QN(n1911) );
  dfxbp1 DFF161Qreg ( .D(DFF161N3), .CLK(CLK), .QN(n1120) );
  dfxbp1 DFF160Qreg ( .D(DFF160N3), .CLK(CLK), .QN(n1908) );
  dfxbp1 DFF159Qreg ( .D(DFF159N3), .CLK(CLK), .QN(n1121) );
  dfxbp1 DFF158Qreg ( .D(DFF158N3), .CLK(CLK), .Q(n1122), .QN(n652) );
  dfxbp1 DFF157Qreg ( .D(DFF157N3), .CLK(CLK), .Q(n660), .QN(n1170) );
  dfxbp1 DFF156Qreg ( .D(DFF156N3), .CLK(CLK), .QN(n1169) );
  dfxbp1 DFF155Qreg ( .D(DFF155N3), .CLK(CLK), .QN(n1893) );
  dfxbp1 DFF154Qreg ( .D(DFF154N3), .CLK(CLK), .QN(n1228) );
  dfxbp1 DFF151Qreg ( .D(DFF151N3), .CLK(CLK), .QN(n1888) );
  dfxbp1 DFF150Qreg ( .D(DFF150N3), .CLK(CLK), .Q(n634) );
  dfxbp1 DFF149Qreg ( .D(DFF149N3), .CLK(CLK), .Q(n614) );
  dfxbp1 DFF147Qreg ( .D(DFF147N3), .CLK(CLK), .Q(n187) );
  dfxbp1 DFF145Qreg ( .D(DFF145N3), .CLK(CLK), .QN(n1222) );
  dfxbp1 DFF143Qreg ( .D(DFF143N3), .CLK(CLK), .Q(n189) );
  dfxbp1 DFF142Qreg ( .D(DFF142N3), .CLK(CLK), .Q(n650), .QN(n1117) );
  dfxbp1 DFF141Qreg ( .D(DFF141N3), .CLK(CLK), .Q(n617) );
  dfxbp1 DFF140Qreg ( .D(DFF140N3), .CLK(CLK), .Q(n657) );
  dfxbp1 DFF139Qreg ( .D(DFF139N3), .CLK(CLK), .QN(n1223) );
  dfxbp1 DFF137Qreg ( .D(DFF137N3), .CLK(CLK), .Q(n1007), .QN(n3148gat)
         );
  dfxbp1 DFF136Qreg ( .D(n33), .CLK(CLK), .Q(n1123) );
  dfxbp1 DFF135Qreg ( .D(n9), .CLK(CLK), .Q(n626) );
  dfxbp1 DFF134Qreg ( .D(DFF134N3), .CLK(CLK), .Q(n1115) );
  dfxbp1 DFF133Qreg ( .D(DFF133N3), .CLK(CLK), .Q(n633) );
  dfxbp1 DFF132Qreg ( .D(n6), .CLK(CLK), .Q(n621), .QN(n3106gat) );
  dfxbp1 DFF131Qreg ( .D(DFF131N3), .CLK(CLK), .Q(n1124), .QN(n655) );
  dfxbp1 DFF130Qreg ( .D(DFF130N3), .CLK(CLK), .QN(n1125) );
  dfxbp1 DFF128Qreg ( .D(DFF128N3), .CLK(CLK), .Q(n1126) );
  dfxbp1 DFF125Qreg ( .D(DFF125N3), .CLK(CLK), .Q(n665), .QN(n1151) );
  dfxbp1 DFF124Qreg ( .D(DFF124N3), .CLK(CLK), .Q(n1150) );
  dfxbp1 DFF123Qreg ( .D(DFF123N3), .CLK(CLK), .Q(n632), .QN(n1152) );
  dfxbp1 DFF121Qreg ( .D(DFF121N3), .CLK(CLK), .Q(n1127) );
  dfxbp1 DFF119Qreg ( .D(DFF119N3), .CLK(CLK), .Q(n200) );
  dfxbp1 DFF118Qreg ( .D(DFF118N3), .CLK(CLK), .Q(n201) );
  dfxbp1 DFF117Qreg ( .D(DFF117N3), .CLK(CLK), .Q(n644), .QN(n1204) );
  dfxbp1 DFF115Qreg ( .D(DFF115N3), .CLK(CLK), .Q(n1110) );
  dfxbp1 DFF114Qreg ( .D(DFF114N3), .CLK(CLK), .Q(n620), .QN(n1202) );
  dfxbp1 DFF113Qreg ( .D(DFF113N3), .CLK(CLK), .Q(n639), .QN(n1207) );
  dfxbp1 DFF112Qreg ( .D(DFF112N3), .CLK(CLK), .Q(n615), .QN(n1208) );
  dfxbp1 DFF111Qreg ( .D(DFF111N3), .CLK(CLK), .QN(n1205) );
  dfxbp1 DFF110Qreg ( .D(DFF110N3), .CLK(CLK), .Q(n638), .QN(n1200) );
  dfxbp1 DFF109Qreg ( .D(DFF109N3), .CLK(CLK), .QN(n1128) );
  dfxbp1 DFF108Qreg ( .D(DFF108N3), .CLK(CLK), .QN(n1221) );
  dfxbp1 DFF107Qreg ( .D(DFF107N3), .CLK(CLK), .Q(n645), .QN(n1129) );
  dfxbp1 DFF106Qreg ( .D(DFF106N3), .CLK(CLK), .Q(n637), .QN(n1220) );
  dfxbp1 DFF105Qreg ( .D(DFF105N3), .CLK(CLK), .QN(n1130) );
  dfxbp1 DFF103Qreg ( .D(n32), .CLK(CLK), .Q(n205) );
  dfxbp1 DFF102Qreg ( .D(n31), .CLK(CLK), .Q(n206) );
  dfxbp1 DFF101Qreg ( .D(DFF101N3), .CLK(CLK), .QN(n1224) );
  dfxbp1 DFF100Qreg ( .D(DFF100N3), .CLK(CLK), .QN(n1217) );
  dfxbp1 DFF99Qreg ( .D(DFF99N3), .CLK(CLK), .QN(n1225) );
  dfxbp1 DFF98Qreg ( .D(DFF98N3), .CLK(CLK), .QN(n3126gat) );
  dfxbp1 DFF97Qreg ( .D(DFF97N3), .CLK(CLK), .QN(n3127gat) );
  dfxbp1 DFF96Qreg ( .D(DFF96N3), .CLK(CLK), .QN(n3128gat) );
  dfxbp1 DFF95Qreg ( .D(DFF95N3), .CLK(CLK), .QN(n1198) );
  dfxbp1 DFF93Qreg ( .D(DFF93N3), .CLK(CLK), .QN(n1197) );
  dfxbp1 DFF91Qreg ( .D(DFF91N3), .CLK(CLK), .QN(n1900) );
  dfxbp1 DFF90Qreg ( .D(DFF90N3), .CLK(CLK), .QN(n623) );
  dfxbp1 DFF89Qreg ( .D(DFF89N3), .CLK(CLK), .QN(n1157) );
  dfxbp1 DFF88Qreg ( .D(DFF88N3), .CLK(CLK), .Q(n1131), .QN(n659) );
  dfxbp1 DFF87Qreg ( .D(DFF87N3), .CLK(CLK), .QN(n1154) );
  dfxbp1 DFF86Qreg ( .D(DFF86N3), .CLK(CLK), .QN(n1155) );
  dfxbp1 DFF85Qreg ( .D(DFF85N3), .CLK(CLK), .QN(n1158) );
  dfxbp1 DFF84Qreg ( .D(DFF84N3), .CLK(CLK), .QN(n1159) );
  dfxbp1 DFF83Qreg ( .D(DFF83N3), .CLK(CLK), .QN(n1156) );
  dfxbp1 DFF82Qreg ( .D(DFF82N3), .CLK(CLK), .Q(n1153) );
  dfxbp1 DFF81Qreg ( .D(DFF81N3), .CLK(CLK), .QN(n1901) );
  dfxbp1 DFF80Qreg ( .D(DFF80N3), .CLK(CLK), .Q(n1160) );
  dfxbp1 DFF79Qreg ( .D(DFF79N3), .CLK(CLK), .QN(n1132) );
  dfxbp1 DFF78Qreg ( .D(DFF78N3), .CLK(CLK), .Q(n1161), .QN(n636) );
  dfxbp1 DFF77Qreg ( .D(DFF77N3), .CLK(CLK), .QN(n1165) );
  dfxbp1 DFF76Qreg ( .D(DFF76N3), .CLK(CLK), .QN(n1133) );
  dfxbp1 DFF75Qreg ( .D(DFF75N3), .CLK(CLK), .Q(n1162), .QN(n663) );
  dfxbp1 DFF74Qreg ( .D(DFF74N3), .CLK(CLK), .Q(n1149), .QN(n666) );
  dfxbp1 DFF73Qreg ( .D(DFF73N3), .CLK(CLK), .Q(n648), .QN(n1164) );
  dfxbp1 DFF72Qreg ( .D(DFF72N3), .CLK(CLK), .Q(n672), .QN(n1163) );
  dfxbp1 DFF71Qreg ( .D(DFF71N3), .CLK(CLK), .QN(n1134) );
  dfxbp1 DFF70Qreg ( .D(DFF70N3), .CLK(CLK), .Q(n226) );
  dfxbp1 DFF69Qreg ( .D(DFF69N3), .CLK(CLK), .Q(n649) );
  dfxbp1 DFF67Qreg ( .D(DFF67N3), .CLK(CLK), .QN(n1218) );
  dfxbp1 DFF66Qreg ( .D(DFF66N3), .CLK(CLK), .QN(n1214) );
  dfxbp1 DFF65Qreg ( .D(DFF65N3), .CLK(CLK), .QN(n1219) );
  dfxbp1 DFF64Qreg ( .D(DFF64N3), .CLK(CLK), .QN(n1216) );
  dfxbp1 DFF63Qreg ( .D(DFF63N3), .CLK(CLK), .Q(n643), .QN(n1215) );
  dfxbp1 DFF62Qreg ( .D(DFF62N3), .CLK(CLK), .Q(n618), .QN(n1210) );
  dfxbp1 DFF61Qreg ( .D(n606), .CLK(CLK), .Q(n641), .QN(n1211) );
  dfxbp1 DFF60Qreg ( .D(DFF60N3), .CLK(CLK), .Q(n646), .QN(n1209) );
  dfxbp1 DFF59Qreg ( .D(DFF59N3), .CLK(CLK), .Q(n642), .QN(n1212) );
  dfxbp1 DFF58Qreg ( .D(DFF58N3), .CLK(CLK), .Q(n619), .QN(n1213) );
  dfxbp1 DFF57Qreg ( .D(DFF57N3), .CLK(CLK), .QN(n1898) );
  dfxbp1 DFF56Qreg ( .D(DFF56N3), .CLK(CLK), .QN(n1186) );
  dfxbp1 DFF55Qreg ( .D(DFF55N3), .CLK(CLK), .Q(n628), .QN(n1187) );
  dfxbp1 DFF54Qreg ( .D(DFF54N3), .CLK(CLK), .Q(n669), .QN(n1135) );
  dfxbp1 DFF53Qreg ( .D(DFF53N3), .CLK(CLK), .Q(n629), .QN(n1193) );
  dfxbp1 DFF52Qreg ( .D(DFF52N3), .CLK(CLK), .Q(n1188) );
  dfxbp1 DFF51Qreg ( .D(DFF51N3), .CLK(CLK), .QN(n1194) );
  dfxbp1 DFF50Qreg ( .D(DFF50N3), .CLK(CLK), .Q(n673), .QN(n1166) );
  dfxbp1 DFF49Qreg ( .D(DFF49N3), .CLK(CLK), .QN(n640) );
  dfxbp1 DFF48Qreg ( .D(DFF48N3), .CLK(CLK), .QN(n1136) );
  dfxbp1 DFF47Qreg ( .D(DFF47N3), .CLK(CLK), .QN(n1899) );
  dfxbp1 DFF46Qreg ( .D(DFF46N3), .CLK(CLK), .Q(n654), .QN(n1196) );
  dfxbp1 DFF45Qreg ( .D(DFF45N3), .CLK(CLK), .Q(n1184), .QN(n667) );
  dfxbp1 DFF44Qreg ( .D(DFF44N3), .CLK(CLK), .Q(n622), .QN(n1185) );
  dfxbp1 DFF43Qreg ( .D(DFF43N3), .CLK(CLK), .QN(n1195) );
  dfxbp1 DFF42Qreg ( .D(DFF42N3), .CLK(CLK), .QN(n1183) );
  dfxbp1 DFF41Qreg ( .D(n17), .CLK(CLK), .Q(n1167), .QN(n675) );
  dfxbp1 DFF40Qreg ( .D(n19), .CLK(CLK), .QN(n1137) );
  dfxbp1 DFF39Qreg ( .D(n13), .CLK(CLK), .QN(n1138) );
  dfxbp1 DFF38Qreg ( .D(n15), .CLK(CLK), .Q(n1168), .QN(n676) );
  dfxbp1 DFF37Qreg ( .D(DFF37N3), .CLK(CLK), .QN(n1896) );
  dfxbp1 DFF36Qreg ( .D(DFF36N3), .CLK(CLK), .QN(n1172) );
  dfxbp1 DFF35Qreg ( .D(DFF35N3), .CLK(CLK), .Q(n653), .QN(n1139) );
  dfxbp1 DFF34Qreg ( .D(DFF34N3), .CLK(CLK), .Q(n630), .QN(n1173) );
  dfxbp1 DFF33Qreg ( .D(DFF33N3), .CLK(CLK), .Q(n670), .QN(n1140) );
  dfxbp1 DFF32Qreg ( .D(DFF32N3), .CLK(CLK), .QN(n1174) );
  dfxbp1 DFF31Qreg ( .D(DFF31N3), .CLK(CLK), .Q(n668), .QN(n1175) );
  dfxbp1 DFF30Qreg ( .D(DFF30N3), .CLK(CLK), .Q(n631), .QN(n1141) );
  dfxbp1 DFF29Qreg ( .D(DFF29N3), .CLK(CLK), .Q(n647), .QN(n1171) );
  dfxbp1 DFF28Qreg ( .D(DFF28N3), .CLK(CLK), .QN(n1176) );
  dfxbp1 DFF27Qreg ( .D(DFF27N3), .CLK(CLK), .QN(n1897) );
  dfxbp1 DFF26Qreg ( .D(n25), .CLK(CLK), .Q(n1179), .QN(n664) );
  dfxbp1 DFF25Qreg ( .D(n26), .CLK(CLK), .QN(n1142) );
  dfxbp1 DFF24Qreg ( .D(n27), .CLK(CLK), .Q(n671), .QN(n1143) );
  dfxbp1 DFF23Qreg ( .D(n28), .CLK(CLK), .QN(n1177) );
  dfxbp1 DFF22Qreg ( .D(n29), .CLK(CLK), .QN(n1144) );
  dfxbp1 DFF21Qreg ( .D(DFF21N3), .CLK(CLK), .QN(n246) );
  dfxbp1 DFF19Qreg ( .D(DFF19N3), .CLK(CLK), .Q(n635), .QN(n1116) );
  dfxbp1 DFF18Qreg ( .D(DFF19N3), .CLK(CLK), .Q(n658) );
  dfxbp1 DFF17Qreg ( .D(DFF17N3), .CLK(CLK), .QN(n1876) );
  dfxbp1 DFF16Qreg ( .D(DFF16N3), .CLK(CLK), .Q(n1180) );
  dfxbp1 DFF15Qreg ( .D(DFF15N3), .CLK(CLK), .QN(n1902) );
  dfxbp1 DFF14Qreg ( .D(n25), .CLK(CLK), .Q(n1192) );
  dfxbp1 DFF13Qreg ( .D(n26), .CLK(CLK), .QN(n1189) );
  dfxbp1 DFF12Qreg ( .D(n27), .CLK(CLK), .Q(n616) );
  dfxbp1 DFF11Qreg ( .D(n28), .CLK(CLK), .Q(n1191) );
  dfxbp1 DFF10Qreg ( .D(n29), .CLK(CLK), .QN(n1190) );
  dfxbp1 DFF9Qreg ( .D(DFF9N3), .CLK(CLK), .Q(n251) );
  dfxbp1 DFF8Qreg ( .D(n19), .CLK(CLK), .Q(n625), .QN(n1145) );
  dfxbp1 DFF7Qreg ( .D(n17), .CLK(CLK), .Q(n627), .QN(n1206) );
  dfxbp1 DFF6Qreg ( .D(n15), .CLK(CLK), .Q(n624), .QN(n1181) );
  dfxbp1 DFF5Qreg ( .D(n13), .CLK(CLK), .QN(n1182) );
  dfxbp1 DFF4Qreg ( .D(n19), .CLK(CLK), .Q(n661), .QN(n1178) );
  dfxbp1 DFF3Qreg ( .D(n17), .CLK(CLK), .QN(n1203) );
  dfxbp1 DFF2Qreg ( .D(n15), .CLK(CLK), .Q(n662), .QN(n1201) );
  dfxbp1 DFF1Qreg ( .D(n13), .CLK(CLK), .Q(n651), .QN(n1199) );
  dfxbp1 DFF169Qreg ( .D(DFF169N3), .CLK(CLK), .Q(n1112) );
  dfxbp1 DFF168Qreg ( .D(DFF168N3), .CLK(CLK), .Q(n1771gat) );
  dfxbp1 DFF153Qreg ( .D(DFF153N3), .CLK(CLK), .QN(n256) );
  dfxbp1 DFF138Qreg ( .D(DFF138N3), .CLK(CLK), .Q(n2446gat) );
  dfxbp1 DFF92Qreg ( .D(DFF92N3), .CLK(CLK), .Q(n1226) );
  dfxbp1 DFF126Qreg ( .D(DFF126N3), .CLK(CLK), .QN(n258) );
  dfxbp1 DFF116Qreg ( .D(DFF116N3), .CLK(CLK), .Q(n2021gat) );
  dfxbp1 DFF104Qreg ( .D(DFF104N3), .CLK(CLK), .Q(n2084gat) );
  dfxbp1 DFF94Qreg ( .D(DFF94N3), .CLK(CLK), .Q(n1227) );
  dfxbp1 DFF68Qreg ( .D(n607), .CLK(CLK), .Q(n2102gat) );
  dfxbp1 DFF175Qreg ( .D(DFF175N3), .CLK(CLK), .QN(n260) );
  dfxbp1 DFF166Qreg ( .D(DFF166N3), .CLK(CLK), .Q(n2458gat) );
  dfxbp1 DFF152Qreg ( .D(n10), .CLK(CLK), .Q(n2121gat) );
  dfxbp1 DFF146Qreg ( .D(DFF146N3), .CLK(CLK), .Q(n2025gat) );
  dfxbp1 DFF144Qreg ( .D(DFF144N3), .CLK(CLK), .Q(n2044gat) );
  dfxbp1 DFF129Qreg ( .D(DFF129N3), .CLK(CLK), .Q(n1363gat) );
  dfxbp1 DFF127Qreg ( .D(DFF127N3), .CLK(CLK), .Q(n1433gat) );
  dfxbp1 DFF122Qreg ( .D(DFF122N3), .CLK(CLK), .Q(n2179gat) );
  dfxbp1 DFF120Qreg ( .D(DFF120N3), .CLK(CLK), .Q(n1332gat) );
  dfxbp1 DFF20Qreg ( .D(DFF20N3), .CLK(CLK), .Q(n2029gat) );
  dfxbp1 DFF165Qreg ( .D(DFF165N3), .CLK(CLK), .QN(n261) );
  dfxbp1 DFF164Qreg ( .D(DFF164N3), .CLK(CLK), .QN(n262) );
  dfxbp1 DFF148Qreg ( .D(DFF148N3), .CLK(CLK), .Q(n2266gat) );
  inv2 U711 ( .A(1'b0), .Y(n3152gat) );
  inv2 U713 ( .A(1'b0), .Y(n3115gat) );
  inv2 U715 ( .A(1'b0), .Y(n3112gat) );
  buf1 U717 ( .A(n3142gat), .X(n3141gat) );
  buf1 U718 ( .A(n3140gat), .X(n3139gat) );
  inv1 U719 ( .A(n679), .Y(n9) );
  inv1 U720 ( .A(n680), .Y(n607) );
  a211oi1 U721 ( .A1(n1124), .A2(n1125), .B1(n681), .C1(n682), .Y(n6) );
  inv1 U722 ( .A(DFF146N3), .Y(n681) );
  o211ai1 U723 ( .A1(n3085gat), .A2(n683), .B1(n684), .C1(n685), .Y(n3151gat)
         );
  o22ai1 U724 ( .A1(n650), .A2(n616), .B1(n686), .B2(n687), .Y(n3150gat) );
  nor41 U725 ( .A(n688), .B(n689), .C(n1222), .D(n1223), .Y(n3146gat) );
  nor21 U726 ( .A(n3106gat), .B(n690), .Y(n689) );
  nand41 U727 ( .A(n657), .B(n614), .C(n634), .D(n617), .Y(n688) );
  and20 U728 ( .A(n690), .B(n691), .X(n3145gat) );
  nand21 U729 ( .A(n692), .B(n178), .Y(n690) );
  or31 U730 ( .A(n693), .B(n694), .C(n695), .X(n3144gat) );
  or31 U731 ( .A(n695), .B(n694), .C(n696), .X(n3143gat) );
  o32ai1 U732 ( .A1(n697), .A2(n698), .A3(n644), .B1(n699), .B2(n700), .Y(
        n694) );
  nand21 U733 ( .A(n1210), .B(n701), .Y(n700) );
  mux2i1 U734 ( .A0(n702), .A1(n703), .S(n1209), .Y(n699) );
  nor21 U735 ( .A(n704), .B(n705), .Y(n703) );
  xor21 U736 ( .A(n1206), .B(n706), .X(n705) );
  o221ai1 U737 ( .A1(n707), .A2(n708), .B1(n619), .B2(n709), .C1(n710), .Y(
        n702) );
  a22oi1 U738 ( .A1(n1156), .A2(n711), .B1(n1158), .B2(n712), .Y(n710) );
  inv1 U739 ( .A(n713), .Y(n712) );
  inv1 U740 ( .A(n714), .Y(n709) );
  mux42 U741 ( .A0(n1155), .A1(n1154), .A2(n623), .A3(n1157), .S0(n1211), 
        .S1(n642), .X(n714) );
  mux2i1 U742 ( .A0(n1159), .A1(n659), .S(n1211), .Y(n708) );
  mux21 U743 ( .A0(n626), .A1(n1115), .S(n715), .X(n697) );
  o32ai1 U744 ( .A1(n656), .A2(n3106gat), .A3(n633), .B1(n716), .B2(n717), 
        .Y(n695) );
  nand21 U745 ( .A(n1110), .B(n618), .Y(n717) );
  mux2i1 U746 ( .A0(n718), .A1(n719), .S(n1209), .Y(n716) );
  o221ai1 U747 ( .A1(n704), .A2(n720), .B1(n1212), .B2(n721), .C1(n722), .Y(
        n719) );
  o21ai0 U748 ( .A1(n723), .A2(n724), .B1(n725), .Y(n722) );
  o22ai1 U749 ( .A1(n726), .A2(n622), .B1(n727), .B2(n671), .Y(n724) );
  inv1 U750 ( .A(n728), .Y(n723) );
  a22oi1 U751 ( .A1(n729), .A2(n1144), .B1(n730), .B2(n1183), .Y(n728) );
  mux2i1 U752 ( .A0(n731), .A1(n732), .S(n1213), .Y(n721) );
  o221ai1 U753 ( .A1(n1179), .A2(n727), .B1(n726), .B2(n654), .C1(n733), .Y(
        n732) );
  a22oi1 U754 ( .A1(n1195), .A2(n730), .B1(n1177), .B2(n729), .Y(n733) );
  o22ai1 U755 ( .A1(n726), .A2(n629), .B1(n727), .B2(n670), .Y(n731) );
  mux2i1 U756 ( .A0(n1175), .A1(n1194), .S(n698), .Y(n720) );
  o221ai1 U757 ( .A1(n713), .A2(n734), .B1(n704), .B2(n2084gat), .C1(n735), 
        .Y(n718) );
  a221oi1 U758 ( .A1(n725), .A2(n736), .B1(n737), .B2(n1213), .C1(n738), .Y(
        n735) );
  a21oi1 U759 ( .A1(n704), .A2(n713), .B1(n739), .Y(n738) );
  mux2i1 U760 ( .A0(n740), .A1(n741), .S(n1212), .Y(n737) );
  a221oi1 U761 ( .A1(n1186), .A2(n730), .B1(n1172), .B2(n729), .C1(n742), .Y(
        n741) );
  o22ai1 U762 ( .A1(n726), .A2(n628), .B1(n727), .B2(n653), .Y(n742) );
  a221oi1 U763 ( .A1(n730), .A2(n640), .B1(n1171), .B2(n729), .C1(n743), .Y(
        n740) );
  o22ai1 U764 ( .A1(n726), .A2(n669), .B1(n727), .B2(n630), .Y(n743) );
  o221ai1 U765 ( .A1(n727), .A2(n631), .B1(n726), .B2(n673), .C1(n744), .Y(
        n736) );
  a22oi1 U766 ( .A1(n1136), .A2(n730), .B1(n1176), .B2(n729), .Y(n744) );
  nor21 U767 ( .A(n1211), .B(n698), .Y(n729) );
  nor21 U768 ( .A(n3149gat), .B(n1211), .Y(n730) );
  nand21 U769 ( .A(n1211), .B(n698), .Y(n726) );
  nand21 U770 ( .A(n1211), .B(n3149gat), .Y(n727) );
  inv1 U771 ( .A(n707), .Y(n725) );
  inv1 U772 ( .A(n711), .Y(n704) );
  mux21 U773 ( .A0(n745), .A1(n746), .S(n747), .X(n3142gat) );
  o32ai1 U774 ( .A1(n177), .A2(n748), .A3(n644), .B1(n1111), .B2(n749), .Y(
        n746) );
  a211oi1 U775 ( .A1(n1112), .A2(n750), .B1(n3149gat), .C1(n701), .Y(n749) );
  inv1 U776 ( .A(n734), .Y(n701) );
  o22ai1 U777 ( .A1(n1113), .A2(n1148), .B1(n1114), .B2(n751), .Y(n745) );
  a21oi1 U778 ( .A1(n1148), .A2(n752), .B1(n3149gat), .Y(n751) );
  nand21 U779 ( .A(n753), .B(n754), .Y(n3140gat) );
  nand31 U780 ( .A(n621), .B(n655), .C(n755), .Y(n754) );
  a21oi1 U781 ( .A1(n635), .A2(n756), .B1(n3098gat), .Y(n755) );
  nand31 U782 ( .A(n757), .B(n758), .C(n3097gat), .Y(n756) );
  mux2i1 U783 ( .A0(n759), .A1(n760), .S(n747), .Y(n753) );
  nand21 U784 ( .A(n761), .B(n762), .Y(n760) );
  nand31 U785 ( .A(n750), .B(n260), .C(n1204), .Y(n762) );
  mux2i1 U786 ( .A0(n763), .A1(n1892), .S(n1147), .Y(n761) );
  a21oi1 U787 ( .A1(n1204), .A2(n734), .B1(n626), .Y(n763) );
  o22ai1 U788 ( .A1(n626), .A2(n674), .B1(n1115), .B2(n764), .Y(n759) );
  a21oi1 U789 ( .A1(n765), .A2(n1148), .B1(n766), .Y(n764) );
  nor31 U790 ( .A(n698), .B(n1118), .C(n1204), .Y(n766) );
  nor21 U791 ( .A(n691), .B(n767), .Y(n765) );
  nor41 U792 ( .A(n1211), .B(n707), .C(n646), .D(n618), .Y(n767) );
  nor41 U793 ( .A(n768), .B(n769), .C(n713), .D(n618), .Y(n3138gat) );
  or41 U794 ( .A(n646), .B(n770), .C(n1219), .D(n1214), .X(n768) );
  o22ai1 U795 ( .A1(n771), .A2(n772), .B1(n773), .B2(n774), .Y(n3137gat) );
  a222oi1 U796 ( .A1(n775), .A2(n675), .B1(n776), .B2(n1203), .C1(n1133), 
        .C2(n777), .Y(n774) );
  o22ai1 U797 ( .A1(n778), .A2(n772), .B1(n773), .B2(n779), .Y(n3136gat) );
  a222oi1 U798 ( .A1(n1137), .A2(n775), .B1(n776), .B2(n1178), .C1(n777), 
        .C2(n663), .Y(n779) );
  o22ai1 U799 ( .A1(n780), .A2(n772), .B1(n773), .B2(n781), .Y(n3135gat) );
  a222oi1 U800 ( .A1(n775), .A2(n676), .B1(n776), .B2(n1201), .C1(n777), .C2(
        n636), .Y(n781) );
  o22ai1 U801 ( .A1(n782), .A2(n772), .B1(n773), .B2(n783), .Y(n3134gat) );
  a222oi1 U802 ( .A1(n1138), .A2(n775), .B1(n1199), .B2(n776), .C1(n1132), 
        .C2(n777), .Y(n783) );
  o22ai1 U803 ( .A1(n784), .A2(n772), .B1(n773), .B2(n785), .Y(n3133gat) );
  a222oi1 U804 ( .A1(n775), .A2(n1196), .B1(n776), .B2(n664), .C1(n1165), 
        .C2(n777), .Y(n785) );
  o22ai1 U805 ( .A1(n786), .A2(n772), .B1(n773), .B2(n787), .Y(n3132gat) );
  a222oi1 U806 ( .A1(n775), .A2(n1195), .B1(n776), .B2(n1177), .C1(n1164), 
        .C2(n777), .Y(n787) );
  o22ai1 U807 ( .A1(n788), .A2(n772), .B1(n773), .B2(n789), .Y(n3131gat) );
  a222oi1 U808 ( .A1(n775), .A2(n1185), .B1(n776), .B2(n1143), .C1(n777), 
        .C2(n666), .Y(n789) );
  o22ai1 U809 ( .A1(n790), .A2(n772), .B1(n773), .B2(n791), .Y(n3130gat) );
  a222oi1 U810 ( .A1(n775), .A2(n1183), .B1(n776), .B2(n1144), .C1(n1163), 
        .C2(n777), .Y(n791) );
  o22ai1 U811 ( .A1(n792), .A2(n772), .B1(n773), .B2(n793), .Y(n3129gat) );
  a222oi1 U812 ( .A1(n775), .A2(n667), .B1(n1142), .B2(n776), .C1(n777), .C2(
        n3116gat), .Y(n793) );
  a21oi1 U813 ( .A1(n3088gat), .A2(n794), .B1(n795), .Y(n773) );
  mux2i1 U814 ( .A0(n794), .A1(n796), .S(n3088gat), .Y(n772) );
  nor31 U815 ( .A(n797), .B(n798), .C(n799), .Y(n796) );
  nor21 U816 ( .A(n800), .B(n801), .Y(n794) );
  o21ai0 U817 ( .A1(n792), .A2(n802), .B1(n803), .Y(n3125gat) );
  inv1 U818 ( .A(n804), .Y(n792) );
  o221ai1 U819 ( .A1(n706), .A2(n805), .B1(n1188), .B2(n806), .C1(n807), .Y(
        n804) );
  a222oi1 U820 ( .A1(n1174), .A2(n776), .B1(n808), .B2(n809), .C1(n1189), 
        .C2(n810), .Y(n807) );
  o21ai0 U821 ( .A1(n1146), .A2(n811), .B1(n812), .Y(n809) );
  inv1 U822 ( .A(n775), .Y(n806) );
  o21ai0 U823 ( .A1(n771), .A2(n802), .B1(n813), .Y(n3124gat) );
  xnor21 U824 ( .A(n1160), .B(n3116gat), .Y(n813) );
  a221oi1 U825 ( .A1(n1154), .A2(n777), .B1(n1193), .B2(n775), .C1(n814), .Y(
        n771) );
  inv1 U826 ( .A(n815), .Y(n814) );
  a21oi1 U827 ( .A1(n776), .A2(n1140), .B1(n816), .Y(n815) );
  o32ai1 U828 ( .A1(n817), .A2(n811), .A3(n656), .B1(n627), .B2(n818), .Y(
        n816) );
  o21ai0 U829 ( .A1(n778), .A2(n802), .B1(n819), .Y(n3123gat) );
  xor21 U830 ( .A(n1153), .B(n706), .X(n819) );
  a221oi1 U831 ( .A1(n1155), .A2(n777), .B1(n775), .B2(n1194), .C1(n820), .Y(
        n778) );
  o22ai1 U832 ( .A1(n818), .A2(n625), .B1(n668), .B2(n821), .Y(n820) );
  o21ai0 U833 ( .A1(n780), .A2(n802), .B1(n822), .Y(n3122gat) );
  a221oi1 U834 ( .A1(n1157), .A2(n777), .B1(n1187), .B2(n775), .C1(n823), .Y(
        n780) );
  o22ai1 U835 ( .A1(n818), .A2(n624), .B1(n821), .B2(n653), .Y(n823) );
  o21ai0 U836 ( .A1(n782), .A2(n802), .B1(n824), .Y(n3121gat) );
  a221oi1 U837 ( .A1(n623), .A2(n777), .B1(n1186), .B2(n775), .C1(n825), .Y(
        n782) );
  inv1 U838 ( .A(n826), .Y(n825) );
  a22oi1 U839 ( .A1(n810), .A2(n1182), .B1(n776), .B2(n1172), .Y(n826) );
  o21ai0 U840 ( .A1(n784), .A2(n802), .B1(n827), .Y(n3120gat) );
  a221oi1 U841 ( .A1(n659), .A2(n777), .B1(n1135), .B2(n775), .C1(n828), .Y(
        n784) );
  o22ai1 U842 ( .A1(n818), .A2(n1192), .B1(n821), .B2(n630), .Y(n828) );
  o21ai0 U843 ( .A1(n786), .A2(n802), .B1(n829), .Y(n3119gat) );
  a221oi1 U844 ( .A1(n1159), .A2(n777), .B1(n640), .B2(n775), .C1(n830), .Y(
        n786) );
  o22ai1 U845 ( .A1(n818), .A2(n1191), .B1(n821), .B2(n647), .Y(n830) );
  o21ai0 U846 ( .A1(n788), .A2(n802), .B1(n831), .Y(n3118gat) );
  xnor21 U847 ( .A(n832), .B(n833), .Y(n831) );
  a221oi1 U848 ( .A1(n1158), .A2(n777), .B1(n1166), .B2(n775), .C1(n834), .Y(
        n788) );
  o22ai1 U849 ( .A1(n818), .A2(n616), .B1(n821), .B2(n631), .Y(n834) );
  inv1 U850 ( .A(n776), .Y(n821) );
  o21ai0 U851 ( .A1(n790), .A2(n802), .B1(n835), .Y(n3117gat) );
  xnor21 U852 ( .A(n836), .B(n837), .Y(n835) );
  inv1 U853 ( .A(n795), .Y(n802) );
  a21oi1 U854 ( .A1(n799), .A2(n797), .B1(n798), .Y(n795) );
  a221oi1 U855 ( .A1(n1156), .A2(n777), .B1(n1136), .B2(n775), .C1(n838), .Y(
        n790) );
  inv1 U856 ( .A(n839), .Y(n838) );
  a22oi1 U857 ( .A1(n810), .A2(n1190), .B1(n776), .B2(n1176), .Y(n839) );
  nor21 U858 ( .A(n811), .B(n808), .Y(n776) );
  inv1 U859 ( .A(n818), .Y(n810) );
  nand31 U860 ( .A(n812), .B(n817), .C(n811), .Y(n818) );
  nor21 U861 ( .A(n812), .B(n808), .Y(n775) );
  inv1 U862 ( .A(n805), .Y(n777) );
  nand31 U863 ( .A(n811), .B(n812), .C(n808), .Y(n805) );
  inv1 U864 ( .A(n817), .Y(n808) );
  o22ai1 U865 ( .A1(n840), .A2(n841), .B1(n799), .B2(n842), .Y(n817) );
  o22ai1 U866 ( .A1(n840), .A2(n799), .B1(n842), .B2(n797), .Y(n812) );
  a21oi1 U867 ( .A1(n840), .A2(n843), .B1(n801), .Y(n811) );
  inv1 U868 ( .A(n844), .Y(n801) );
  inv1 U869 ( .A(n3095gat), .Y(n840) );
  nand21 U870 ( .A(n845), .B(n1162), .Y(n3114gat) );
  nand21 U871 ( .A(n1161), .B(n846), .Y(n3113gat) );
  or20 U872 ( .A(n847), .B(n1165), .X(n3111gat) );
  nand21 U873 ( .A(n848), .B(n648), .Y(n3110gat) );
  o21ai0 U874 ( .A1(n849), .A2(n850), .B1(n1149), .Y(n3109gat) );
  nand21 U875 ( .A(n851), .B(n672), .Y(n3108gat) );
  nor21 U876 ( .A(n3106gat), .B(n692), .Y(n3107gat) );
  and20 U877 ( .A(n1124), .B(n1771gat), .X(n692) );
  o221ai1 U878 ( .A1(n852), .A2(n853), .B1(n3087gat), .B2(n854), .C1(n855), 
        .Y(n3105gat) );
  nand21 U879 ( .A(n856), .B(n841), .Y(n853) );
  o221ai1 U880 ( .A1(n683), .A2(n857), .B1(n858), .B2(n684), .C1(n859), .Y(
        n3104gat) );
  nand31 U881 ( .A(n797), .B(n841), .C(n860), .Y(n684) );
  inv1 U882 ( .A(n3094gat), .Y(n858) );
  nand21 U883 ( .A(n861), .B(n843), .Y(n857) );
  inv1 U884 ( .A(n862), .Y(n30) );
  inv1 U885 ( .A(n863), .Y(n29) );
  inv1 U886 ( .A(n864), .Y(n28) );
  inv1 U887 ( .A(n865), .Y(n27) );
  inv1 U888 ( .A(n866), .Y(n25) );
  inv1 U889 ( .A(n867), .Y(n15) );
  inv1 U890 ( .A(n868), .Y(n10) );
  nor21 U891 ( .A(RST), .B(n869), .Y(DFF9N3) );
  xor21 U892 ( .A(n837), .B(n836), .X(n869) );
  xor21 U893 ( .A(n870), .B(n871), .X(n836) );
  a21oi1 U894 ( .A1(n3084gat), .A2(n3083gat), .B1(n872), .Y(n871) );
  or20 U895 ( .A(n873), .B(n874), .X(n870) );
  mux2i1 U896 ( .A0(n875), .A1(n876), .S(n3089gat), .Y(n837) );
  xor21 U897 ( .A(n3086gat), .B(n3085gat), .X(n876) );
  o21ai0 U898 ( .A1(n797), .A2(n843), .B1(n844), .Y(n875) );
  nand21 U899 ( .A(n843), .B(n797), .Y(n844) );
  inv1 U900 ( .A(n3086gat), .Y(n797) );
  and20 U901 ( .A(n33), .B(n803), .X(DFF99N3) );
  xor21 U902 ( .A(n877), .B(n878), .X(n803) );
  xor21 U903 ( .A(n1198), .B(n3128gat), .X(n878) );
  xnor21 U904 ( .A(n3127gat), .B(n3126gat), .Y(n877) );
  nor21 U905 ( .A(n879), .B(n846), .Y(DFF98N3) );
  xnor21 U906 ( .A(n880), .B(n1150), .Y(n846) );
  nand21 U907 ( .A(n1151), .B(n1152), .Y(n880) );
  nor21 U908 ( .A(n845), .B(n879), .Y(DFF97N3) );
  nor21 U909 ( .A(n1151), .B(n1152), .Y(n845) );
  a21oi1 U910 ( .A1(n881), .A2(n882), .B1(RST), .Y(DFF95N3) );
  xor21 U911 ( .A(n2266gat), .B(n883), .X(n882) );
  nand21 U912 ( .A(n1151), .B(n632), .Y(n883) );
  nor21 U913 ( .A(RST), .B(n693), .Y(DFF94N3) );
  xor21 U914 ( .A(n884), .B(n885), .X(n693) );
  xnor21 U915 ( .A(n641), .B(n886), .Y(n885) );
  xor21 U916 ( .A(n1209), .B(n1210), .X(n886) );
  mux2i1 U917 ( .A0(n887), .A1(n888), .S(n1197), .Y(n884) );
  o21ai0 U918 ( .A1(n1212), .A2(n619), .B1(n707), .Y(n888) );
  o21ai0 U919 ( .A1(n642), .A2(n619), .B1(n889), .Y(n887) );
  a21oi1 U920 ( .A1(n890), .A2(n891), .B1(RST), .Y(DFF93N3) );
  xor21 U921 ( .A(n1893), .B(n892), .X(n891) );
  nor31 U922 ( .A(n615), .B(n849), .C(n893), .Y(n892) );
  inv1 U923 ( .A(n894), .Y(n893) );
  nor21 U924 ( .A(n895), .B(n896), .Y(n890) );
  a21oi1 U925 ( .A1(n897), .A2(n898), .B1(RST), .Y(DFF92N3) );
  nor41 U926 ( .A(n3090gat), .B(n1899), .C(n1896), .D(n1897), .Y(n898) );
  nor41 U927 ( .A(n1902), .B(n1900), .C(n1901), .D(n1898), .Y(n897) );
  nor21 U928 ( .A(RST), .B(n899), .Y(DFF91N3) );
  xnor21 U929 ( .A(n1153), .B(n706), .Y(n899) );
  xnor21 U930 ( .A(n900), .B(n901), .Y(n706) );
  xor21 U931 ( .A(n902), .B(n903), .X(n901) );
  xor21 U932 ( .A(n1154), .B(n1155), .X(n903) );
  xnor21 U933 ( .A(n623), .B(n1131), .Y(n902) );
  xor21 U934 ( .A(n904), .B(n905), .X(n900) );
  xor21 U935 ( .A(n1156), .B(n1157), .X(n905) );
  xnor21 U936 ( .A(n1159), .B(n1158), .Y(n904) );
  nand21 U937 ( .A(n906), .B(n907), .Y(DFF90N3) );
  inv1 U938 ( .A(DFF36N3), .Y(n907) );
  nand21 U939 ( .A(n906), .B(n908), .Y(DFF89N3) );
  inv1 U940 ( .A(DFF35N3), .Y(n908) );
  nand21 U941 ( .A(n906), .B(n909), .Y(DFF88N3) );
  inv1 U942 ( .A(DFF34N3), .Y(n909) );
  nand21 U943 ( .A(n906), .B(n910), .Y(DFF87N3) );
  inv1 U944 ( .A(DFF33N3), .Y(n910) );
  nand21 U945 ( .A(n906), .B(n911), .Y(DFF86N3) );
  inv1 U946 ( .A(DFF31N3), .Y(n911) );
  nand21 U947 ( .A(n906), .B(n912), .Y(DFF85N3) );
  inv1 U948 ( .A(DFF30N3), .Y(n912) );
  nand21 U949 ( .A(n906), .B(n913), .Y(DFF84N3) );
  inv1 U950 ( .A(DFF29N3), .Y(n913) );
  nand21 U951 ( .A(n906), .B(n914), .Y(DFF83N3) );
  inv1 U952 ( .A(DFF28N3), .Y(n914) );
  nand21 U953 ( .A(n906), .B(n915), .Y(DFF82N3) );
  inv1 U954 ( .A(DFF32N3), .Y(n915) );
  nor21 U955 ( .A(RST), .B(n916), .Y(DFF81N3) );
  xor21 U956 ( .A(n1160), .B(n3116gat), .X(n916) );
  xnor21 U957 ( .A(n917), .B(n918), .Y(n3116gat) );
  xor21 U958 ( .A(n919), .B(n920), .X(n918) );
  xor21 U959 ( .A(n1149), .B(n1161), .X(n920) );
  xor21 U960 ( .A(n1132), .B(n1133), .X(n919) );
  xor21 U961 ( .A(n921), .B(n922), .X(n917) );
  xor21 U962 ( .A(n1162), .B(n1163), .X(n922) );
  xor21 U963 ( .A(n1165), .B(n648), .X(n921) );
  o21ai0 U964 ( .A1(n923), .A2(n924), .B1(n906), .Y(DFF80N3) );
  o21ai0 U965 ( .A1(n923), .A2(n925), .B1(n906), .Y(DFF79N3) );
  o21ai0 U966 ( .A1(n923), .A2(n867), .B1(n906), .Y(DFF78N3) );
  o21ai0 U967 ( .A1(n923), .A2(n866), .B1(n906), .Y(DFF77N3) );
  o21ai0 U968 ( .A1(n923), .A2(n926), .B1(n906), .Y(DFF76N3) );
  o21ai0 U969 ( .A1(n923), .A2(n927), .B1(n906), .Y(DFF75N3) );
  o21ai0 U970 ( .A1(n923), .A2(n865), .B1(n906), .Y(DFF74N3) );
  o21ai0 U971 ( .A1(n923), .A2(n864), .B1(n906), .Y(DFF73N3) );
  o21ai0 U972 ( .A1(n923), .A2(n863), .B1(n906), .Y(DFF72N3) );
  nand41 U973 ( .A(DFF119N3), .B(n1219), .C(n928), .D(n929), .Y(n906) );
  a211oi1 U974 ( .A1(n1209), .A2(n930), .B1(n618), .C1(n1214), .Y(n929) );
  o21ai0 U975 ( .A1(n1211), .A2(n707), .B1(n713), .Y(n930) );
  nand21 U976 ( .A(n1211), .B(n931), .Y(n713) );
  nand21 U977 ( .A(n1212), .B(n619), .Y(n707) );
  mux2i1 U978 ( .A0(n769), .A1(n932), .S(n1134), .Y(n928) );
  nand31 U979 ( .A(n1216), .B(n643), .C(n1218), .Y(n932) );
  inv1 U980 ( .A(n933), .Y(n769) );
  inv1 U981 ( .A(n934), .Y(n923) );
  o32ai1 U982 ( .A1(n852), .A2(n3088gat), .A3(n856), .B1(n683), .B2(n935), 
        .Y(n934) );
  nand41 U983 ( .A(n3086gat), .B(n936), .C(n874), .D(n621), .Y(n683) );
  nor21 U984 ( .A(n841), .B(n3087gat), .Y(n874) );
  inv1 U985 ( .A(n800), .Y(n936) );
  nor21 U986 ( .A(n937), .B(n680), .Y(DFF70N3) );
  nand31 U987 ( .A(n1190), .B(n33), .C(n1117), .Y(n680) );
  nor31 U988 ( .A(n256), .B(n938), .C(n868), .Y(DFF69N3) );
  nand21 U989 ( .A(n33), .B(n1888), .Y(n868) );
  inv1 U990 ( .A(n939), .Y(n938) );
  nor21 U991 ( .A(n855), .B(n940), .Y(DFF67N3) );
  xor21 U992 ( .A(n1130), .B(n941), .X(n855) );
  nor21 U993 ( .A(n859), .B(n940), .Y(DFF66N3) );
  a21oi1 U994 ( .A1(n942), .A2(n1128), .B1(n943), .Y(n859) );
  nor31 U995 ( .A(n940), .B(n686), .C(n687), .Y(DFF65N3) );
  and20 U996 ( .A(n637), .B(n944), .X(n687) );
  nor21 U997 ( .A(n685), .B(n940), .Y(DFF64N3) );
  inv1 U998 ( .A(n940), .Y(DFF63N3) );
  nand21 U999 ( .A(n945), .B(DFF96N3), .Y(n940) );
  inv1 U1000 ( .A(n879), .Y(DFF96N3) );
  nor21 U1001 ( .A(n851), .B(n946), .Y(DFF62N3) );
  xor21 U1002 ( .A(n639), .B(n849), .X(n851) );
  nor31 U1003 ( .A(n946), .B(n849), .C(n850), .Y(DFF60N3) );
  a21oi1 U1004 ( .A1(n1200), .A2(n947), .B1(n1202), .Y(n850) );
  nor31 U1005 ( .A(n638), .B(n620), .C(n948), .Y(n849) );
  nor21 U1006 ( .A(n949), .B(n946), .Y(DFF59N3) );
  nor21 U1007 ( .A(n848), .B(n946), .Y(DFF58N3) );
  inv1 U1008 ( .A(n606), .Y(n946) );
  nor21 U1009 ( .A(n879), .B(n895), .Y(n606) );
  nand21 U1010 ( .A(n881), .B(n33), .Y(n879) );
  xor21 U1011 ( .A(n948), .B(n1200), .X(n848) );
  and20 U1012 ( .A(n33), .B(n824), .X(DFF57N3) );
  xor21 U1013 ( .A(n640), .B(n950), .X(n824) );
  xor21 U1014 ( .A(n951), .B(n952), .X(n950) );
  xor21 U1015 ( .A(n953), .B(n954), .X(n952) );
  xor21 U1016 ( .A(n1193), .B(n1194), .X(n954) );
  xor21 U1017 ( .A(n1187), .B(n1188), .X(n953) );
  xor21 U1018 ( .A(n955), .B(n956), .X(n951) );
  xor21 U1019 ( .A(n1166), .B(n1186), .X(n956) );
  xor21 U1020 ( .A(n1135), .B(n1136), .X(n955) );
  o221ai1 U1021 ( .A1(n957), .A2(n958), .B1(n959), .B2(n960), .C1(n961), .Y(
        DFF56N3) );
  nand21 U1022 ( .A(n962), .B(n13), .Y(n961) );
  inv1 U1023 ( .A(n925), .Y(n13) );
  xor21 U1024 ( .A(n1911), .B(n963), .X(n958) );
  o221ai1 U1025 ( .A1(n964), .A2(n960), .B1(n867), .B2(n965), .C1(n966), .Y(
        DFF55N3) );
  nand31 U1026 ( .A(n967), .B(n963), .C(n968), .Y(n966) );
  nand31 U1027 ( .A(n969), .B(n652), .C(n1120), .Y(n963) );
  inv1 U1028 ( .A(n970), .Y(n967) );
  a21oi1 U1029 ( .A1(n652), .A2(n969), .B1(n1120), .Y(n970) );
  o22ai1 U1030 ( .A1(n866), .A2(n965), .B1(n971), .B2(n960), .Y(DFF54N3) );
  o221ai1 U1031 ( .A1(n972), .A2(n957), .B1(n973), .B2(n960), .C1(n974), .Y(
        DFF53N3) );
  nand21 U1032 ( .A(n962), .B(n17), .Y(n974) );
  inv1 U1033 ( .A(n926), .Y(n17) );
  xnor21 U1034 ( .A(n1121), .B(n975), .Y(n972) );
  o221ai1 U1035 ( .A1(n957), .A2(n976), .B1(n977), .B2(n960), .C1(n978), .Y(
        DFF52N3) );
  nand21 U1036 ( .A(n962), .B(n26), .Y(n978) );
  inv1 U1037 ( .A(n924), .Y(n26) );
  xor21 U1038 ( .A(n1908), .B(n979), .X(n976) );
  nand21 U1039 ( .A(n975), .B(n980), .Y(n979) );
  o21ai0 U1040 ( .A1(n1122), .A2(n1120), .B1(n1121), .Y(n980) );
  o221ai1 U1041 ( .A1(n957), .A2(n981), .B1(n982), .B2(n960), .C1(n983), .Y(
        DFF51N3) );
  nand21 U1042 ( .A(n962), .B(n19), .Y(n983) );
  inv1 U1043 ( .A(n927), .Y(n19) );
  xor21 U1044 ( .A(n1122), .B(n969), .X(n981) );
  and20 U1045 ( .A(n1121), .B(n975), .X(n969) );
  inv1 U1046 ( .A(n968), .Y(n957) );
  nor31 U1047 ( .A(n984), .B(RST), .C(n962), .Y(n968) );
  inv1 U1048 ( .A(n965), .Y(n962) );
  o22ai1 U1049 ( .A1(n865), .A2(n965), .B1(n985), .B2(n960), .Y(DFF50N3) );
  o22ai1 U1050 ( .A1(n864), .A2(n965), .B1(n986), .B2(n960), .Y(DFF49N3) );
  o22ai1 U1051 ( .A1(n863), .A2(n965), .B1(n987), .B2(n960), .Y(DFF48N3) );
  nand21 U1052 ( .A(n984), .B(n33), .Y(n960) );
  nand21 U1053 ( .A(n873), .B(n988), .Y(n965) );
  and20 U1054 ( .A(n33), .B(n822), .X(DFF47N3) );
  xnor21 U1055 ( .A(n622), .B(n989), .Y(n822) );
  xor21 U1056 ( .A(n990), .B(n991), .X(n989) );
  xor21 U1057 ( .A(n992), .B(n993), .X(n991) );
  xor21 U1058 ( .A(n1195), .B(n1196), .X(n993) );
  xor21 U1059 ( .A(n1183), .B(n1184), .X(n992) );
  xor21 U1060 ( .A(n994), .B(n995), .X(n990) );
  xor21 U1061 ( .A(n1167), .B(n1168), .X(n995) );
  xor21 U1062 ( .A(n1137), .B(n1138), .X(n994) );
  o22ai1 U1063 ( .A1(n996), .A2(n866), .B1(n997), .B2(n998), .Y(DFF46N3) );
  xnor21 U1064 ( .A(n999), .B(n1169), .Y(n997) );
  o22ai1 U1065 ( .A1(n996), .A2(n924), .B1(n998), .B2(n1000), .Y(DFF45N3)
         );
  xor21 U1066 ( .A(n262), .B(n1001), .X(n1000) );
  nand21 U1067 ( .A(n999), .B(n1002), .Y(n1001) );
  o21ai0 U1068 ( .A1(n1119), .A2(n660), .B1(n1169), .Y(n1002) );
  o22ai1 U1069 ( .A1(n996), .A2(n865), .B1(n1003), .B2(n998), .Y(DFF44N3)
         );
  xnor21 U1070 ( .A(n1004), .B(n1119), .Y(n1003) );
  o22ai1 U1071 ( .A1(n996), .A2(n864), .B1(n1005), .B2(n998), .Y(DFF43N3)
         );
  xor21 U1072 ( .A(n1006), .B(n1170), .X(n1005) );
  o22ai1 U1073 ( .A1(n996), .A2(n863), .B1(n998), .B2(n1008), .Y(DFF42N3)
         );
  xor21 U1074 ( .A(n261), .B(n1009), .X(n1008) );
  nand21 U1075 ( .A(n1004), .B(n1119), .Y(n1009) );
  nor21 U1076 ( .A(n1006), .B(n660), .Y(n1004) );
  nand21 U1077 ( .A(n999), .B(n1169), .Y(n1006) );
  nand21 U1078 ( .A(n996), .B(n33), .Y(n998) );
  a21oi1 U1079 ( .A1(n3087gat), .A2(n1010), .B1(n984), .Y(n996) );
  nor31 U1080 ( .A(n841), .B(n860), .C(n852), .Y(n984) );
  inv1 U1081 ( .A(n856), .Y(n860) );
  inv1 U1082 ( .A(n854), .Y(n1010) );
  nand21 U1083 ( .A(n988), .B(n3088gat), .Y(n854) );
  nor41 U1084 ( .A(n935), .B(n800), .C(n3086gat), .D(n3106gat), .Y(n988) );
  and20 U1085 ( .A(n33), .B(n829), .X(DFF37N3) );
  xor21 U1086 ( .A(n647), .B(n1011), .X(n829) );
  xor21 U1087 ( .A(n1012), .B(n1013), .X(n1011) );
  xor21 U1088 ( .A(n1014), .B(n1015), .X(n1013) );
  xor21 U1089 ( .A(n1175), .B(n1176), .X(n1015) );
  xor21 U1090 ( .A(n1173), .B(n1174), .X(n1014) );
  xor21 U1091 ( .A(n1016), .B(n1017), .X(n1012) );
  xor21 U1092 ( .A(n1141), .B(n1172), .X(n1017) );
  xor21 U1093 ( .A(n1139), .B(n1140), .X(n1016) );
  o22ai1 U1094 ( .A1(n842), .A2(n925), .B1(n1018), .B2(n959), .Y(DFF36N3)
         );
  inv1 U1095 ( .A(n3078gat), .Y(n959) );
  nand21 U1096 ( .A(n3069gat), .B(n33), .Y(n925) );
  o22ai1 U1097 ( .A1(n842), .A2(n867), .B1(n1018), .B2(n964), .Y(DFF35N3)
         );
  inv1 U1098 ( .A(n3079gat), .Y(n964) );
  nand21 U1099 ( .A(n3070gat), .B(n33), .Y(n867) );
  o22ai1 U1100 ( .A1(n1018), .A2(n971), .B1(n842), .B2(n866), .Y(DFF34N3)
         );
  nand21 U1101 ( .A(n3068gat), .B(n33), .Y(n866) );
  inv1 U1102 ( .A(n3077gat), .Y(n971) );
  o22ai1 U1103 ( .A1(n842), .A2(n926), .B1(n1018), .B2(n973), .Y(DFF33N3)
         );
  inv1 U1104 ( .A(n3081gat), .Y(n973) );
  nand21 U1105 ( .A(n3072gat), .B(n33), .Y(n926) );
  o22ai1 U1106 ( .A1(n1018), .A2(n977), .B1(n842), .B2(n924), .Y(DFF32N3)
         );
  nand21 U1107 ( .A(n3073gat), .B(n33), .Y(n924) );
  inv1 U1108 ( .A(n3082gat), .Y(n977) );
  o22ai1 U1109 ( .A1(n842), .A2(n927), .B1(n1018), .B2(n982), .Y(DFF31N3)
         );
  inv1 U1110 ( .A(n3080gat), .Y(n982) );
  nand21 U1111 ( .A(n3071gat), .B(n33), .Y(n927) );
  o22ai1 U1112 ( .A1(n1018), .A2(n985), .B1(n842), .B2(n865), .Y(DFF30N3)
         );
  nand21 U1113 ( .A(n3066gat), .B(n33), .Y(n865) );
  inv1 U1114 ( .A(n3075gat), .Y(n985) );
  o22ai1 U1115 ( .A1(n1018), .A2(n986), .B1(n842), .B2(n864), .Y(DFF29N3)
         );
  nand21 U1116 ( .A(n3067gat), .B(n33), .Y(n864) );
  inv1 U1117 ( .A(n3076gat), .Y(n986) );
  o22ai1 U1118 ( .A1(n842), .A2(n863), .B1(n1018), .B2(n987), .Y(DFF28N3)
         );
  inv1 U1119 ( .A(n3074gat), .Y(n987) );
  nand21 U1120 ( .A(n3095gat), .B(n33), .Y(n1018) );
  nand21 U1121 ( .A(n3065gat), .B(n33), .Y(n863) );
  inv1 U1122 ( .A(n3093gat), .Y(n842) );
  and20 U1123 ( .A(n33), .B(n827), .X(DFF27N3) );
  xor21 U1124 ( .A(n1177), .B(n1019), .X(n827) );
  xor21 U1125 ( .A(n1020), .B(n1021), .X(n1019) );
  xor21 U1126 ( .A(n1022), .B(n1023), .X(n1021) );
  xor21 U1127 ( .A(n1201), .B(n1203), .X(n1023) );
  xor21 U1128 ( .A(n1179), .B(n1199), .X(n1022) );
  xor21 U1129 ( .A(n1024), .B(n1025), .X(n1020) );
  xor21 U1130 ( .A(n1144), .B(n1178), .X(n1025) );
  xor21 U1131 ( .A(n1142), .B(n1143), .X(n1024) );
  nor21 U1132 ( .A(RST), .B(n2029gat), .Y(DFF21N3) );
  a21oi1 U1133 ( .A1(n635), .A2(n658), .B1(RST), .Y(DFF20N3) );
  nor31 U1134 ( .A(n1876), .B(n3099gat), .C(RST), .Y(DFF19N3) );
  nor21 U1135 ( .A(n1180), .B(RST), .Y(DFF17N3) );
  nor31 U1136 ( .A(n1026), .B(n1125), .C(n1027), .Y(DFF178N3) );
  nor31 U1137 ( .A(n1028), .B(n1029), .C(n941), .Y(DFF177N3) );
  nor21 U1138 ( .A(n1028), .B(n862), .Y(DFF176N3) );
  nand21 U1139 ( .A(n943), .B(n33), .Y(n862) );
  nand41 U1140 ( .A(n1200), .B(n1202), .C(n1030), .D(n1208), .Y(n1028) );
  nor21 U1141 ( .A(n1205), .B(n1207), .Y(n1030) );
  nor31 U1142 ( .A(n1026), .B(n1221), .C(n645), .Y(DFF175N3) );
  nor31 U1143 ( .A(n1031), .B(n1032), .C(n1033), .Y(DFF174N3) );
  nor41 U1144 ( .A(n1208), .B(n639), .C(n620), .D(n894), .Y(n1032) );
  nand21 U1145 ( .A(n1205), .B(n638), .Y(n894) );
  nor21 U1146 ( .A(n1034), .B(n679), .Y(DFF173N3) );
  nand31 U1147 ( .A(n1035), .B(n685), .C(n1220), .Y(n679) );
  nor21 U1148 ( .A(n1129), .B(n1221), .Y(n685) );
  nor31 U1149 ( .A(n1027), .B(n1029), .C(n637), .Y(DFF171N3) );
  nor31 U1150 ( .A(n941), .B(n1036), .C(n1029), .Y(DFF170N3) );
  inv1 U1151 ( .A(n686), .Y(n941) );
  and31 U1152 ( .A(n1037), .B(n33), .C(n1038), .X(DFF16N3) );
  nor41 U1153 ( .A(n1039), .B(n1219), .C(n1209), .D(n1214), .Y(DFF169N3) );
  nand31 U1154 ( .A(n933), .B(n711), .C(DFF113N3), .Y(n1039) );
  nor21 U1155 ( .A(n889), .B(n1211), .Y(n711) );
  inv1 U1156 ( .A(n931), .Y(n889) );
  nor21 U1157 ( .A(n1213), .B(n1212), .Y(n931) );
  nor31 U1158 ( .A(n1218), .B(n1216), .C(n643), .Y(n933) );
  nor21 U1159 ( .A(n937), .B(n1040), .Y(DFF168N3) );
  nor21 U1160 ( .A(RST), .B(n2458gat), .Y(DFF167N3) );
  nor21 U1161 ( .A(RST), .B(n633), .Y(DFF166N3) );
  and20 U1162 ( .A(n33), .B(n1183), .X(DFF165N3) );
  nor21 U1163 ( .A(n1184), .B(RST), .Y(DFF164N3) );
  nor21 U1164 ( .A(RST), .B(n622), .Y(DFF163N3) );
  and20 U1165 ( .A(n33), .B(n1186), .X(DFF162N3) );
  nor21 U1166 ( .A(RST), .B(n628), .Y(DFF161N3) );
  nor21 U1167 ( .A(n1188), .B(RST), .Y(DFF160N3) );
  nor21 U1168 ( .A(RST), .B(n1041), .Y(DFF15N3) );
  xor21 U1169 ( .A(n833), .B(n832), .X(n1041) );
  xor21 U1170 ( .A(n1191), .B(n1042), .X(n832) );
  xor21 U1171 ( .A(n1189), .B(n1190), .X(n1042) );
  xor21 U1172 ( .A(n1043), .B(n1044), .X(n833) );
  a21oi1 U1173 ( .A1(n1045), .A2(n1038), .B1(n1046), .Y(n1044) );
  mux2i1 U1174 ( .A0(n1047), .A1(n1048), .S(n1181), .Y(n1046) );
  xor21 U1175 ( .A(n1182), .B(n1045), .X(n1048) );
  nand21 U1176 ( .A(n1182), .B(n1049), .Y(n1047) );
  inv1 U1177 ( .A(n1045), .Y(n1049) );
  xor21 U1178 ( .A(n616), .B(n1192), .X(n1045) );
  a21oi1 U1179 ( .A1(n1145), .A2(n1206), .B1(n1037), .Y(n1043) );
  nor21 U1180 ( .A(RST), .B(n629), .Y(DFF159N3) );
  and20 U1181 ( .A(n33), .B(n1194), .X(DFF158N3) );
  and20 U1182 ( .A(n33), .B(n1195), .X(DFF157N3) );
  nor21 U1183 ( .A(RST), .B(n654), .Y(DFF156N3) );
  and20 U1184 ( .A(n33), .B(n1197), .X(DFF155N3) );
  and20 U1185 ( .A(n33), .B(n1217), .X(DFF154N3) );
  nor21 U1186 ( .A(RST), .B(n2121gat), .Y(DFF153N3) );
  nor21 U1187 ( .A(RST), .B(n634), .Y(DFF151N3) );
  nor21 U1188 ( .A(RST), .B(n614), .Y(DFF150N3) );
  and20 U1189 ( .A(n33), .B(n1222), .X(DFF149N3) );
  and20 U1190 ( .A(n33), .B(n1198), .X(DFF148N3) );
  nor21 U1191 ( .A(RST), .B(n2025gat), .Y(DFF147N3) );
  nor21 U1192 ( .A(n1033), .B(n757), .Y(DFF146N3) );
  inv1 U1193 ( .A(n1050), .Y(n757) );
  nor21 U1194 ( .A(RST), .B(n2044gat), .Y(DFF145N3) );
  nor31 U1195 ( .A(n189), .B(n1126), .C(n1051), .Y(DFF144N3) );
  nor41 U1196 ( .A(n1125), .B(n682), .C(n1033), .D(n617), .Y(DFF142N3) );
  or20 U1197 ( .A(n1036), .B(RST), .X(n1033) );
  and41 U1198 ( .A(n1207), .B(n1052), .C(n1053), .D(n3149gat), .X(n1036) );
  nand21 U1199 ( .A(n1054), .B(n1055), .Y(n1052) );
  nand31 U1200 ( .A(n1202), .B(n638), .C(n949), .Y(n1055) );
  mux2i1 U1201 ( .A0(n1056), .A1(n1057), .S(n1200), .Y(n1054) );
  nor31 U1202 ( .A(n1058), .B(n662), .C(n1059), .Y(n1057) );
  mux2i1 U1203 ( .A0(n1060), .A1(n1061), .S(n1178), .Y(n1059) );
  inv1 U1204 ( .A(n1062), .Y(n1061) );
  a21oi1 U1205 ( .A1(n1063), .A2(n615), .B1(n1205), .Y(n1060) );
  o211ai1 U1206 ( .A1(n1063), .A2(n615), .B1(n620), .C1(n651), .Y(n1058) );
  inv1 U1207 ( .A(n1064), .Y(n1063) );
  nor31 U1208 ( .A(n1065), .B(n1201), .C(n1202), .Y(n1056) );
  o21ai0 U1209 ( .A1(n1066), .A2(n661), .B1(n1067), .Y(n1065) );
  o32ai1 U1210 ( .A1(n1064), .A2(n1205), .A3(n615), .B1(n1199), .B2(n1068), 
        .Y(n1067) );
  a21oi1 U1211 ( .A1(n949), .A2(n1064), .B1(n1178), .Y(n1068) );
  a21oi1 U1212 ( .A1(n1208), .A2(n1064), .B1(n1062), .Y(n1066) );
  o21ai0 U1213 ( .A1(n947), .A2(n1064), .B1(n1205), .Y(n1062) );
  inv1 U1214 ( .A(n948), .Y(n947) );
  nand21 U1215 ( .A(n1208), .B(n1205), .Y(n948) );
  nand21 U1216 ( .A(n1203), .B(n651), .Y(n1064) );
  nor21 U1217 ( .A(RST), .B(n657), .Y(DFF141N3) );
  and20 U1218 ( .A(n33), .B(n1223), .X(DFF140N3) );
  a21oi1 U1219 ( .A1(n1069), .A2(n1070), .B1(RST), .Y(DFF139N3) );
  nand41 U1220 ( .A(n873), .B(n1071), .C(n1072), .D(n3086gat), .Y(n1070) );
  nor21 U1221 ( .A(n3106gat), .B(n800), .Y(n1072) );
  nand21 U1222 ( .A(n3093gat), .B(n872), .Y(n800) );
  inv1 U1223 ( .A(n935), .Y(n1071) );
  nand21 U1224 ( .A(n3085gat), .B(n861), .Y(n935) );
  or20 U1225 ( .A(n3091gat), .B(n3092gat), .X(n861) );
  nor21 U1226 ( .A(n799), .B(n3088gat), .Y(n873) );
  inv1 U1227 ( .A(n3087gat), .Y(n799) );
  or31 U1228 ( .A(n841), .B(n856), .C(n852), .X(n1069) );
  nand41 U1229 ( .A(n3094gat), .B(n3086gat), .C(n1073), .D(n621), .Y(n852) );
  nand31 U1230 ( .A(n1073), .B(n621), .C(n3087gat), .Y(n856) );
  inv1 U1231 ( .A(n798), .Y(n1073) );
  nand31 U1232 ( .A(n872), .B(n843), .C(n3095gat), .Y(n798) );
  inv1 U1233 ( .A(n3085gat), .Y(n843) );
  nor21 U1234 ( .A(n3083gat), .B(n3084gat), .Y(n872) );
  inv1 U1235 ( .A(n3088gat), .Y(n841) );
  nor21 U1236 ( .A(RST), .B(n1074), .Y(DFF138N3) );
  nor21 U1237 ( .A(n1123), .B(RST), .Y(DFF137N3) );
  nor41 U1238 ( .A(n1075), .B(n1027), .C(n1128), .D(n1220), .Y(DFF134N3) );
  nand21 U1239 ( .A(DFF71N3), .B(n1130), .Y(n1075) );
  nor21 U1240 ( .A(n747), .B(RST), .Y(DFF71N3) );
  inv1 U1241 ( .A(n1051), .Y(DFF133N3) );
  nand21 U1242 ( .A(n33), .B(n655), .Y(n1051) );
  nor21 U1243 ( .A(n937), .B(n1076), .Y(DFF131N3) );
  o211ai1 U1244 ( .A1(n1116), .A2(n758), .B1(n939), .C1(n1180), .Y(n937) );
  nand21 U1245 ( .A(n3147gat), .B(n1077), .Y(n939) );
  inv1 U1246 ( .A(n3100gat), .Y(n1077) );
  nand21 U1247 ( .A(n2446gat), .B(n1007), .Y(n3147gat) );
  nand21 U1248 ( .A(n246), .B(n658), .Y(n758) );
  nor21 U1249 ( .A(RST), .B(n1363gat), .Y(DFF130N3) );
  nor21 U1250 ( .A(n1126), .B(RST), .Y(DFF129N3) );
  nor21 U1251 ( .A(RST), .B(n1433gat), .Y(DFF128N3) );
  nor31 U1252 ( .A(n1078), .B(RST), .C(n945), .Y(DFF127N3) );
  o21ai0 U1253 ( .A1(n1079), .A2(n258), .B1(n895), .Y(n1078) );
  and31 U1254 ( .A(n1080), .B(n1202), .C(n1081), .X(n895) );
  nor31 U1255 ( .A(n639), .B(n1200), .C(n949), .Y(n1081) );
  mux2i1 U1256 ( .A0(n1208), .A1(n1205), .S(n747), .Y(n1080) );
  nor41 U1257 ( .A(n1150), .B(n632), .C(n665), .D(n2179gat), .Y(n1079) );
  a21oi1 U1258 ( .A1(n1082), .A2(n734), .B1(RST), .Y(DFF126N3) );
  and20 U1259 ( .A(n33), .B(n3128gat), .X(DFF125N3) );
  and20 U1260 ( .A(n33), .B(n3126gat), .X(DFF124N3) );
  and20 U1261 ( .A(n33), .B(n3127gat), .X(DFF123N3) );
  nor21 U1262 ( .A(RST), .B(n770), .Y(DFF122N3) );
  nor21 U1263 ( .A(RST), .B(n1332gat), .Y(DFF121N3) );
  nor31 U1264 ( .A(n1034), .B(n944), .C(n1026), .Y(DFF120N3) );
  nor21 U1265 ( .A(n748), .B(RST), .Y(DFF119N3) );
  nor21 U1266 ( .A(RST), .B(n644), .Y(DFF118N3) );
  nor41 U1267 ( .A(n1083), .B(n1026), .C(n1027), .D(n847), .Y(DFF117N3) );
  inv1 U1268 ( .A(n949), .Y(n847) );
  nor21 U1269 ( .A(n1205), .B(n1208), .Y(n949) );
  nand21 U1270 ( .A(n1035), .B(n637), .Y(n1026) );
  inv1 U1271 ( .A(n1029), .Y(n1035) );
  nand21 U1272 ( .A(n1084), .B(n33), .Y(n1029) );
  nand31 U1273 ( .A(n620), .B(n638), .C(n1207), .Y(n1083) );
  or31 U1274 ( .A(n32), .B(DFF143N3), .C(n31), .X(DFF116N3) );
  inv1 U1275 ( .A(n1040), .Y(n31) );
  nand21 U1276 ( .A(n1206), .B(n1085), .Y(n1040) );
  nor21 U1277 ( .A(n691), .B(RST), .Y(DFF143N3) );
  inv1 U1278 ( .A(n752), .Y(n691) );
  nand21 U1279 ( .A(n748), .B(n734), .Y(n752) );
  nand31 U1280 ( .A(n1145), .B(n1117), .C(n1038), .Y(n734) );
  inv1 U1281 ( .A(n750), .Y(n748) );
  nand21 U1282 ( .A(n770), .B(n1082), .Y(n750) );
  and20 U1283 ( .A(n739), .B(n1086), .X(n1082) );
  nand41 U1284 ( .A(n1206), .B(n1038), .C(n1117), .D(n625), .Y(n1086) );
  nor21 U1285 ( .A(n1182), .B(n1181), .Y(n1038) );
  nand41 U1286 ( .A(n1182), .B(n1037), .C(n1117), .D(n624), .Y(n739) );
  nor21 U1287 ( .A(n999), .B(n975), .Y(n770) );
  and20 U1288 ( .A(n1037), .B(n1087), .X(n975) );
  nor21 U1289 ( .A(n1206), .B(n1145), .Y(n1037) );
  and31 U1290 ( .A(n1087), .B(n625), .C(n1206), .X(n999) );
  inv1 U1291 ( .A(n1076), .Y(n32) );
  nand21 U1292 ( .A(n1085), .B(n627), .Y(n1076) );
  and31 U1293 ( .A(n1087), .B(n33), .C(n1145), .X(n1085) );
  nor31 U1294 ( .A(n650), .B(n1182), .C(n624), .Y(n1087) );
  nor31 U1295 ( .A(n1034), .B(RST), .C(n1088), .Y(DFF115N3) );
  inv1 U1296 ( .A(n1053), .Y(n1088) );
  nand21 U1297 ( .A(n1031), .B(n1089), .Y(n1053) );
  nand31 U1298 ( .A(n747), .B(n1084), .C(n686), .Y(n1089) );
  nand41 U1299 ( .A(n1200), .B(n1202), .C(n1090), .D(n1205), .Y(n1034) );
  nor21 U1300 ( .A(n1207), .B(n1208), .Y(n1090) );
  nor21 U1301 ( .A(RST), .B(n646), .Y(DFF114N3) );
  nor21 U1302 ( .A(n618), .B(RST), .Y(DFF113N3) );
  nor21 U1303 ( .A(RST), .B(n641), .Y(DFF112N3) );
  nor21 U1304 ( .A(RST), .B(n642), .Y(DFF111N3) );
  nor21 U1305 ( .A(RST), .B(n619), .Y(DFF110N3) );
  and20 U1306 ( .A(n33), .B(n1214), .X(DFF109N3) );
  nor21 U1307 ( .A(RST), .B(n643), .Y(DFF108N3) );
  and20 U1308 ( .A(n33), .B(n1216), .X(DFF107N3) );
  and20 U1309 ( .A(n33), .B(n1219), .X(DFF106N3) );
  and20 U1310 ( .A(n33), .B(n1218), .X(DFF105N3) );
  inv1 U1311 ( .A(RST), .Y(n33) );
  nor21 U1312 ( .A(RST), .B(n698), .Y(DFF104N3) );
  inv1 U1313 ( .A(n3149gat), .Y(n698) );
  nand31 U1314 ( .A(n205), .B(n206), .C(n649), .Y(n3149gat) );
  nor21 U1315 ( .A(RST), .B(n696), .Y(DFF101N3) );
  xnor21 U1316 ( .A(n1091), .B(n1092), .Y(n696) );
  xor21 U1317 ( .A(n1216), .B(n1093), .X(n1092) );
  xor21 U1318 ( .A(n1214), .B(n1215), .X(n1093) );
  xnor21 U1319 ( .A(n1219), .B(n1094), .Y(n1091) );
  xor21 U1320 ( .A(n1217), .B(n1218), .X(n1094) );
  a21oi1 U1321 ( .A1(n1095), .A2(n945), .B1(RST), .Y(DFF100N3) );
  inv1 U1322 ( .A(n1096), .Y(n945) );
  o21ai0 U1323 ( .A1(n1127), .A2(n1031), .B1(n1097), .Y(n1096) );
  mux2i1 U1324 ( .A0(n1098), .A1(n1099), .S(n747), .Y(n1097) );
  nor21 U1325 ( .A(n1100), .B(n1101), .Y(n1099) );
  inv1 U1326 ( .A(n1084), .Y(n1101) );
  nor21 U1327 ( .A(n1130), .B(n1128), .Y(n1084) );
  mux2i1 U1328 ( .A0(n686), .A1(n1102), .S(n1103), .Y(n1100) );
  nor21 U1329 ( .A(n201), .B(n200), .Y(n1103) );
  nor21 U1330 ( .A(n637), .B(n1027), .Y(n1102) );
  and20 U1331 ( .A(n943), .B(n1127), .X(n1098) );
  nor21 U1332 ( .A(n942), .B(n1128), .Y(n943) );
  nand31 U1333 ( .A(n1128), .B(n1104), .C(n1105), .Y(n1031) );
  nor31 U1334 ( .A(n747), .B(n1130), .C(n1220), .Y(n1105) );
  inv1 U1335 ( .A(n715), .Y(n747) );
  o21ai0 U1336 ( .A1(n649), .A2(n226), .B1(n2102gat), .Y(n715) );
  inv1 U1337 ( .A(n1027), .Y(n1104) );
  nand21 U1338 ( .A(n1221), .B(n645), .Y(n1027) );
  nor21 U1339 ( .A(n1106), .B(n896), .Y(n1095) );
  inv1 U1340 ( .A(n881), .Y(n896) );
  nor41 U1341 ( .A(n1107), .B(n682), .C(n1223), .D(n1222), .Y(n881) );
  a21oi1 U1342 ( .A1(n1074), .A2(n1123), .B1(n3100gat), .Y(n682) );
  and41 U1343 ( .A(n1226), .B(n1227), .C(n1108), .D(n251), .X(n1074) );
  nor21 U1344 ( .A(n1224), .B(n1225), .Y(n1108) );
  and20 U1345 ( .A(n1050), .B(n187), .X(n1107) );
  nand21 U1346 ( .A(n2021gat), .B(n649), .Y(n1050) );
  xor21 U1347 ( .A(n1109), .B(n1228), .X(n1106) );
  o211ai1 U1348 ( .A1(n1220), .A2(n645), .B1(n942), .C1(n1221), .Y(n1109) );
  nand21 U1349 ( .A(n1130), .B(n686), .Y(n942) );
  nor21 U1350 ( .A(n944), .B(n637), .Y(n686) );
  nand21 U1351 ( .A(n1129), .B(n1221), .Y(n944) );
endmodule



