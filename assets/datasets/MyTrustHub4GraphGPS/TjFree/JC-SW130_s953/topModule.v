/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https:
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



module s953 ( GND, VDD, RST, CLK, FullIIHS1, FullOHS1, IInDoneHS1, OutAvHS1, 
        OutputHS1, Prog0, Prog1, Prog2, Rdy1BmHS1, Rdy1RtHS1, Rdy2BmHS1, 
        Rdy2RtHS1, RtTSHS1, TpArrayHS1, WantBmHS1, WantRtHS1, ActBmHS1, 
        ActRtHS1, DumpIIHS1, GoBmHS1, GoRtHS1, LdProgHS1, LoadIIHHS1, 
        LoadOHHS1, LxHIInHS1, Mode0HS1, Mode1HS1, Mode2HS1, NewLineHS1, 
        NewTrHS1, ReRtTSHS1, ReWhBufHS1, SeFullIIHS1, SeFullOHS1, SeOutAvHS1, 
        ShftIIRHS1, ShftORHS1, TgWhBufHS1, TxHIInHS1 );
  input GND, VDD, RST, CLK, FullIIHS1, FullOHS1, IInDoneHS1, OutAvHS1,
         OutputHS1, Prog0, Prog1, Prog2, Rdy1BmHS1, Rdy1RtHS1, Rdy2BmHS1,
         Rdy2RtHS1, RtTSHS1, TpArrayHS1, WantBmHS1, WantRtHS1;
  output ActBmHS1, ActRtHS1, DumpIIHS1, GoBmHS1, GoRtHS1, LdProgHS1,
         LoadIIHHS1, LoadOHHS1, LxHIInHS1, Mode0HS1, Mode1HS1, Mode2HS1,
         NewLineHS1, NewTrHS1, ReRtTSHS1, ReWhBufHS1, SeFullIIHS1, SeFullOHS1,
         SeOutAvHS1, ShftIIRHS1, ShftORHS1, TgWhBufHS1, TxHIInHS1;
  wire   DFF0N3, DFF5N3, DFF4N3, DFF3N3, DFF2N3, DFF1N3, DFF28N3,
         DFF27N3, DFF26N3, DFF24N3, DFF23N3, DFF21N3, DFF19N3,
         DFF15N3, DFF13N3, DFF12N3, DFF9N3, DFF25N3, DFF22N3,
         DFF20N3, DFF18N3, DFF16N3, DFF11N3, DFF8N3, DFF6N3,
         DFF7N3, n1, n2, n5, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n410,
         n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, n421,
         n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432,
         n433, n434, n435, n436;

  dfxbp1 DFF0Qreg ( .D(DFF0N3), .CLK(CLK), .QN(n435) );
  dfxbp1 DFF5Qreg ( .D(DFF5N3), .CLK(CLK), .Q(n431), .QN(n216) );
  dfxbp1 DFF4Qreg ( .D(DFF4N3), .CLK(CLK), .Q(n433), .QN(n220) );
  dfxbp1 DFF3Qreg ( .D(DFF3N3), .CLK(CLK), .Q(n218), .QN(n436) );
  dfxbp1 DFF2Qreg ( .D(DFF2N3), .CLK(CLK), .Q(n434), .QN(n219) );
  dfxbp1 DFF1Qreg ( .D(DFF1N3), .CLK(CLK), .Q(n432), .QN(n217) );
  dfxbp1 DFF28Qreg ( .D(DFF28N3), .CLK(CLK), .Q(DumpIIHS1) );
  dfxbp1 DFF27Qreg ( .D(DFF27N3), .CLK(CLK), .Q(LdProgHS1) );
  dfxbp1 DFF26Qreg ( .D(DFF26N3), .CLK(CLK), .Q(ReWhBufHS1) );
  dfxbp1 DFF24Qreg ( .D(DFF24N3), .CLK(CLK), .Q(SeFullIIHS1) );
  dfxbp1 DFF23Qreg ( .D(DFF23N3), .CLK(CLK), .Q(SeFullOHS1) );
  dfxbp1 DFF21Qreg ( .D(DFF21N3), .CLK(CLK), .Q(LoadIIHHS1) );
  dfxbp1 DFF19Qreg ( .D(DFF19N3), .CLK(CLK), .Q(TxHIInHS1) );
  dfxbp1 DFF17Qreg ( .D(n1), .CLK(CLK), .Q(ShftIIRHS1) );
  dfxbp1 DFF15Qreg ( .D(DFF15N3), .CLK(CLK), .Q(NewLineHS1) );
  dfxbp1 DFF13Qreg ( .D(DFF13N3), .CLK(CLK), .Q(Mode1HS1) );
  dfxbp1 DFF12Qreg ( .D(DFF12N3), .CLK(CLK), .Q(Mode0HS1) );
  dfxbp1 DFF9Qreg ( .D(DFF9N3), .CLK(CLK), .Q(GoBmHS1) );
  dfxbp1 DFF25Qreg ( .D(DFF25N3), .CLK(CLK), .Q(TgWhBufHS1) );
  dfxbp1 DFF22Qreg ( .D(DFF22N3), .CLK(CLK), .Q(SeOutAvHS1) );
  dfxbp1 DFF20Qreg ( .D(DFF20N3), .CLK(CLK), .Q(LoadOHHS1) );
  dfxbp1 DFF18Qreg ( .D(DFF18N3), .CLK(CLK), .Q(LxHIInHS1) );
  dfxbp1 DFF16Qreg ( .D(DFF16N3), .CLK(CLK), .Q(ShftORHS1) );
  dfxbp1 DFF14Qreg ( .D(n2), .CLK(CLK), .Q(Mode2HS1) );
  dfxbp1 DFF11Qreg ( .D(DFF11N3), .CLK(CLK), .Q(ReRtTSHS1) );
  dfxbp1 DFF10Qreg ( .D(n5), .CLK(CLK), .Q(NewTrHS1) );
  dfxbp1 DFF8Qreg ( .D(DFF8N3), .CLK(CLK), .Q(GoRtHS1) );
  dfxbp1 DFF6Qreg ( .D(DFF6N3), .CLK(CLK), .Q(ActRtHS1) );
  dfxbp1 DFF7Qreg ( .D(DFF7N3), .CLK(CLK), .Q(ActBmHS1) );
  nand21 U240 ( .A(n221), .B(n222), .Y(n1) );
  nand31 U241 ( .A(n436), .B(n223), .C(n224), .Y(n222) );
  a21oi1 U242 ( .A1(n225), .A2(n226), .B1(RST), .Y(DFF9N3) );
  a21oi1 U243 ( .A1(n227), .A2(n228), .B1(n229), .Y(n226) );
  inv1 U244 ( .A(n230), .Y(n228) );
  a21oi1 U245 ( .A1(n231), .A2(n232), .B1(n233), .Y(n227) );
  a21oi1 U246 ( .A1(WantBmHS1), .A2(n234), .B1(n235), .Y(n225) );
  nand41 U247 ( .A(n236), .B(n237), .C(n238), .D(n239), .Y(DFF8N3) );
  nand41 U248 ( .A(n240), .B(n241), .C(n242), .D(n243), .Y(n238) );
  nand31 U249 ( .A(n244), .B(n219), .C(n245), .Y(n237) );
  o21ai0 U250 ( .A1(n246), .A2(n229), .B1(n223), .Y(n236) );
  and41 U251 ( .A(n247), .B(WantRtHS1), .C(n248), .D(n249), .X(n246) );
  or31 U252 ( .A(n5), .B(n2), .C(n250), .X(DFF7N3) );
  o32ai1 U253 ( .A1(n251), .A2(n252), .A3(n253), .B1(n254), .B2(n255), .Y(
        n250) );
  a21oi1 U254 ( .A1(n256), .A2(n436), .B1(n257), .Y(n252) );
  a21oi1 U255 ( .A1(n258), .A2(n259), .B1(RST), .Y(n5) );
  o211ai1 U256 ( .A1(n220), .A2(n218), .B1(n260), .C1(n216), .Y(n259) );
  nand31 U257 ( .A(n221), .B(n261), .C(n262), .Y(DFF6N3) );
  a22oi1 U258 ( .A1(n263), .A2(n256), .B1(n264), .B2(n224), .Y(n262) );
  inv1 U259 ( .A(n265), .Y(n224) );
  or31 U260 ( .A(n266), .B(n267), .C(n268), .X(DFF5N3) );
  o32ai1 U261 ( .A1(n269), .A2(FullOHS1), .A3(n270), .B1(RST), .B2(n271), .Y(
        n268) );
  nor31 U262 ( .A(n272), .B(n273), .C(n274), .Y(n271) );
  nor31 U263 ( .A(n275), .B(n276), .C(n277), .Y(n274) );
  inv1 U264 ( .A(n278), .Y(n273) );
  o21ai0 U265 ( .A1(n279), .A2(n254), .B1(n280), .Y(n272) );
  a21oi1 U266 ( .A1(n281), .A2(n253), .B1(n282), .Y(n279) );
  nor41 U267 ( .A(n283), .B(n284), .C(Rdy1RtHS1), .D(n285), .Y(n267) );
  nand21 U268 ( .A(Rdy2RtHS1), .B(n286), .Y(n283) );
  o221ai1 U269 ( .A1(RST), .A2(n287), .B1(IInDoneHS1), .B2(n288), .C1(n289), 
        .Y(DFF4N3) );
  nor31 U270 ( .A(n290), .B(n266), .C(n291), .Y(n289) );
  nor41 U271 ( .A(n292), .B(n293), .C(n436), .D(n244), .Y(n291) );
  nand31 U272 ( .A(n217), .B(n216), .C(n219), .Y(n292) );
  nor41 U273 ( .A(n293), .B(n294), .C(n216), .D(n295), .Y(n266) );
  nor31 U274 ( .A(n296), .B(n270), .C(n269), .Y(n290) );
  a22oi1 U275 ( .A1(n297), .A2(n264), .B1(n298), .B2(n299), .Y(n270) );
  nor31 U276 ( .A(n300), .B(n301), .C(n302), .Y(n287) );
  nor31 U277 ( .A(n303), .B(n304), .C(n305), .Y(n302) );
  nor31 U278 ( .A(n306), .B(n307), .C(n308), .Y(n304) );
  and41 U279 ( .A(n220), .B(Rdy1RtHS1), .C(n248), .D(n309), .X(n306) );
  o22ai1 U280 ( .A1(n310), .A2(n232), .B1(n311), .B2(n312), .Y(n300) );
  a21oi1 U281 ( .A1(n313), .A2(n253), .B1(n282), .Y(n311) );
  o21ai0 U282 ( .A1(n314), .A2(n315), .B1(n436), .Y(n282) );
  nor21 U283 ( .A(Prog2), .B(n316), .Y(n315) );
  nand31 U284 ( .A(n317), .B(n239), .C(n318), .Y(DFF3N3) );
  a22oi1 U285 ( .A1(n319), .A2(n223), .B1(n301), .B2(n286), .Y(n318) );
  o221ai1 U286 ( .A1(n320), .A2(n321), .B1(IInDoneHS1), .B2(n322), .C1(n323), 
        .Y(n319) );
  inv1 U287 ( .A(n235), .Y(n323) );
  o21ai0 U288 ( .A1(n231), .A2(n310), .B1(n324), .Y(n235) );
  nand31 U289 ( .A(n325), .B(n431), .C(n314), .Y(n310) );
  and20 U290 ( .A(n219), .B(RtTSHS1), .X(n320) );
  nand31 U291 ( .A(n249), .B(n314), .C(n286), .Y(n239) );
  inv1 U292 ( .A(n285), .Y(n314) );
  o21ai0 U293 ( .A1(n432), .A2(n295), .B1(n253), .Y(n285) );
  o21ai0 U294 ( .A1(RST), .A2(n326), .B1(n288), .Y(DFF2N3) );
  inv1 U295 ( .A(n327), .Y(n326) );
  o221ai1 U296 ( .A1(n258), .A2(TpArrayHS1), .B1(n328), .B2(n329), .C1(n280), 
        .Y(n327) );
  a21oi1 U297 ( .A1(n260), .A2(n330), .B1(n331), .Y(n280) );
  o22ai1 U298 ( .A1(RST), .A2(n332), .B1(n251), .B2(n278), .Y(DFF28N3) );
  nand31 U299 ( .A(WantRtHS1), .B(n303), .C(n307), .Y(n278) );
  nor41 U300 ( .A(RST), .B(n219), .C(n218), .D(n333), .Y(DFF27N3) );
  nor21 U301 ( .A(FullIIHS1), .B(n334), .Y(DFF26N3) );
  nor21 U302 ( .A(n335), .B(n334), .Y(DFF25N3) );
  nor21 U303 ( .A(RST), .B(n336), .Y(DFF24N3) );
  nor31 U304 ( .A(n337), .B(n338), .C(n339), .Y(n336) );
  nor31 U305 ( .A(n316), .B(n218), .C(n265), .Y(n339) );
  nor31 U306 ( .A(n232), .B(n230), .C(n296), .Y(n338) );
  nand31 U307 ( .A(n340), .B(n341), .C(n342), .Y(DFF23N3) );
  o21ai0 U308 ( .A1(n343), .A2(n344), .B1(n223), .Y(n342) );
  o32ai1 U309 ( .A1(n232), .A2(FullOHS1), .A3(n230), .B1(n345), .B2(n316), 
        .Y(n344) );
  inv1 U310 ( .A(IInDoneHS1), .Y(n316) );
  inv1 U311 ( .A(n346), .Y(n345) );
  or20 U312 ( .A(n305), .B(Rdy1BmHS1), .X(n232) );
  nand31 U313 ( .A(n240), .B(Rdy2RtHS1), .C(n347), .Y(n341) );
  nand31 U314 ( .A(n2), .B(IInDoneHS1), .C(OutputHS1), .Y(n340) );
  inv1 U315 ( .A(n221), .Y(n2) );
  nor21 U316 ( .A(n295), .B(n334), .Y(DFF22N3) );
  or20 U317 ( .A(RST), .B(OutAvHS1), .X(n334) );
  o21ai0 U318 ( .A1(RST), .A2(n348), .B1(n349), .Y(DFF21N3) );
  nand41 U319 ( .A(n350), .B(n240), .C(n351), .D(n352), .Y(n349) );
  o21ai0 U320 ( .A1(n276), .A2(n353), .B1(n354), .Y(n352) );
  o21ai0 U321 ( .A1(RST), .A2(n355), .B1(n251), .Y(n351) );
  inv1 U322 ( .A(n337), .Y(n348) );
  nand21 U323 ( .A(n332), .B(n356), .Y(n337) );
  nand41 U324 ( .A(n357), .B(Rdy2RtHS1), .C(n358), .D(n359), .Y(n356) );
  nor21 U325 ( .A(n431), .B(n433), .Y(n358) );
  mux2i1 U326 ( .A0(n360), .A1(n361), .S(Prog2), .Y(n357) );
  nand41 U327 ( .A(WantRtHS1), .B(n295), .C(n354), .D(n303), .Y(n361) );
  inv1 U328 ( .A(WantBmHS1), .Y(n303) );
  nand31 U329 ( .A(Prog0), .B(n362), .C(n350), .Y(n360) );
  inv1 U330 ( .A(n296), .Y(n350) );
  nand21 U331 ( .A(FullOHS1), .B(n335), .Y(n296) );
  nand41 U332 ( .A(n363), .B(n308), .C(WantBmHS1), .D(Rdy2BmHS1), .Y(n332) );
  xor21 U333 ( .A(n364), .B(Prog0), .X(n363) );
  o21ai0 U334 ( .A1(RST), .A2(n365), .B1(n366), .Y(DFF20N3) );
  nand41 U335 ( .A(n240), .B(n241), .C(n243), .D(n367), .Y(n366) );
  inv1 U336 ( .A(FullOHS1), .Y(n367) );
  nand21 U337 ( .A(n362), .B(n368), .Y(n243) );
  inv1 U338 ( .A(Rdy1RtHS1), .Y(n362) );
  nor41 U339 ( .A(n369), .B(n370), .C(n371), .D(n234), .Y(n365) );
  and41 U340 ( .A(n248), .B(n298), .C(n325), .D(n372), .X(n234) );
  nand21 U341 ( .A(WantRtHS1), .B(n355), .Y(n372) );
  inv1 U342 ( .A(n231), .Y(n298) );
  nor41 U343 ( .A(FullOHS1), .B(n353), .C(n276), .D(n230), .Y(n370) );
  nand31 U344 ( .A(n373), .B(n354), .C(n374), .Y(n230) );
  nor21 U345 ( .A(Rdy2BmHS1), .B(Rdy1BmHS1), .Y(n276) );
  o21ai0 U346 ( .A1(WantBmHS1), .A2(n375), .B1(n376), .Y(n369) );
  inv1 U347 ( .A(n343), .Y(n376) );
  o21ai0 U348 ( .A1(n377), .A2(n378), .B1(n379), .Y(n343) );
  a21oi1 U349 ( .A1(TpArrayHS1), .A2(n301), .B1(n380), .Y(n378) );
  nor31 U350 ( .A(n329), .B(n433), .C(n436), .Y(n380) );
  a21oi1 U351 ( .A1(n249), .A2(n248), .B1(n308), .Y(n375) );
  inv1 U352 ( .A(n381), .Y(n308) );
  nor21 U353 ( .A(n355), .B(n284), .Y(n249) );
  o221ai1 U354 ( .A1(RST), .A2(n382), .B1(IInDoneHS1), .B2(n221), .C1(n383), 
        .Y(DFF1N3) );
  nand31 U355 ( .A(n264), .B(n247), .C(n307), .Y(n383) );
  inv1 U356 ( .A(n275), .Y(n307) );
  nand31 U357 ( .A(n248), .B(n373), .C(Rdy2RtHS1), .Y(n275) );
  a21oi1 U358 ( .A1(n432), .A2(n384), .B1(n385), .Y(n382) );
  a21oi1 U359 ( .A1(n381), .A2(n386), .B1(n387), .Y(n385) );
  a21oi1 U360 ( .A1(Rdy2BmHS1), .A2(n388), .B1(n247), .Y(n387) );
  nand21 U361 ( .A(WantBmHS1), .B(n231), .Y(n247) );
  xor21 U362 ( .A(Prog1), .B(Prog0), .X(n388) );
  nand31 U363 ( .A(n248), .B(n373), .C(n297), .Y(n386) );
  inv1 U364 ( .A(n355), .Y(n297) );
  nand31 U365 ( .A(n373), .B(n277), .C(n248), .Y(n381) );
  and31 U366 ( .A(n295), .B(n217), .C(Prog2), .X(n248) );
  inv1 U367 ( .A(WantRtHS1), .Y(n277) );
  o221ai1 U368 ( .A1(Rdy2BmHS1), .A2(n254), .B1(Rdy2RtHS1), .B2(n312), .C1(
        n322), .Y(n384) );
  o32ai1 U369 ( .A1(n284), .A2(Prog2), .A3(n389), .B1(RST), .B2(n390), .Y(
        DFF19N3) );
  nor31 U370 ( .A(n391), .B(n301), .C(n392), .Y(n390) );
  nor31 U371 ( .A(n294), .B(Rdy1BmHS1), .C(n216), .Y(n391) );
  a221oi1 U372 ( .A1(n393), .A2(n335), .B1(n394), .B2(n299), .C1(n347), .Y(
        n389) );
  nor31 U373 ( .A(FullOHS1), .B(Rdy1RtHS1), .C(n395), .Y(n347) );
  nor21 U374 ( .A(FullOHS1), .B(n305), .Y(n394) );
  inv1 U375 ( .A(FullIIHS1), .Y(n335) );
  o22ai1 U376 ( .A1(n368), .A2(n395), .B1(Rdy1BmHS1), .B2(n251), .Y(n393) );
  o22ai1 U377 ( .A1(RST), .A2(n396), .B1(n233), .B2(n397), .Y(DFF18N3) );
  a21oi1 U378 ( .A1(n398), .A2(n264), .B1(n399), .Y(n397) );
  nor31 U379 ( .A(n251), .B(Rdy2BmHS1), .C(n400), .Y(n399) );
  nor21 U380 ( .A(Rdy2RtHS1), .B(n284), .Y(n398) );
  inv1 U381 ( .A(n242), .Y(n233) );
  nand21 U382 ( .A(FullOHS1), .B(FullIIHS1), .Y(n242) );
  a211oi1 U383 ( .A1(Prog2), .A2(n401), .B1(n301), .C1(n392), .Y(n396) );
  o221ai1 U384 ( .A1(Rdy2RtHS1), .A2(n284), .B1(Rdy2BmHS1), .B2(n400), .C1(
        n402), .Y(n401) );
  nand41 U385 ( .A(n330), .B(n219), .C(n217), .D(n216), .Y(n402) );
  o211ai1 U386 ( .A1(RST), .A2(n403), .B1(n221), .C1(n288), .Y(DFF16N3) );
  nand21 U387 ( .A(n245), .B(n434), .Y(n288) );
  inv1 U388 ( .A(n317), .Y(n245) );
  nand21 U389 ( .A(n404), .B(n286), .Y(n317) );
  inv1 U390 ( .A(n293), .Y(n286) );
  nand21 U391 ( .A(n433), .B(n223), .Y(n293) );
  a211oi1 U392 ( .A1(n330), .A2(n260), .B1(n346), .C1(n301), .Y(n403) );
  inv1 U393 ( .A(n258), .Y(n301) );
  nand31 U394 ( .A(n436), .B(n260), .C(n431), .Y(n258) );
  o22ai1 U395 ( .A1(n253), .A2(n254), .B1(n432), .B2(n322), .Y(n346) );
  inv1 U396 ( .A(n329), .Y(n260) );
  nand31 U397 ( .A(n435), .B(n217), .C(n434), .Y(n329) );
  nor21 U398 ( .A(n218), .B(n433), .Y(n330) );
  o22ai1 U399 ( .A1(n405), .A2(n406), .B1(RST), .B2(n407), .Y(DFF15N3) );
  nor41 U400 ( .A(n240), .B(n371), .C(n408), .D(n229), .Y(n407) );
  inv1 U401 ( .A(n379), .Y(n229) );
  nand41 U402 ( .A(n359), .B(n433), .C(n295), .D(n409), .Y(n379) );
  nor31 U403 ( .A(n216), .B(Rdy1RtHS1), .C(Rdy1BmHS1), .Y(n409) );
  inv1 U404 ( .A(n324), .Y(n408) );
  nand21 U405 ( .A(n331), .B(n219), .Y(n324) );
  and41 U406 ( .A(n353), .B(n392), .C(n295), .D(n436), .X(n331) );
  inv1 U407 ( .A(n333), .Y(n392) );
  nand21 U408 ( .A(n410), .B(n220), .Y(n333) );
  inv1 U409 ( .A(n281), .Y(n353) );
  and41 U410 ( .A(Prog2), .B(n295), .C(n359), .D(n411), .X(n371) );
  o22ai1 U411 ( .A1(n231), .A2(n328), .B1(n412), .B2(n355), .Y(n411) );
  nand21 U412 ( .A(Rdy1RtHS1), .B(n368), .Y(n355) );
  inv1 U413 ( .A(Rdy2RtHS1), .Y(n368) );
  nand21 U414 ( .A(Rdy1BmHS1), .B(n305), .Y(n231) );
  inv1 U415 ( .A(Rdy2BmHS1), .Y(n305) );
  inv1 U416 ( .A(n269), .Y(n240) );
  nand31 U417 ( .A(n374), .B(n220), .C(n309), .Y(n269) );
  o22ai1 U418 ( .A1(n364), .A2(n221), .B1(RST), .B2(n413), .Y(DFF13N3) );
  a21oi1 U419 ( .A1(n414), .A2(n217), .B1(n415), .Y(n413) );
  inv1 U420 ( .A(Prog1), .Y(n364) );
  o221ai1 U421 ( .A1(n265), .A2(n251), .B1(n354), .B2(n221), .C1(n416), .Y(
        DFF12N3) );
  a21oi1 U422 ( .A1(n417), .A2(n263), .B1(n418), .Y(n416) );
  inv1 U423 ( .A(n261), .Y(n418) );
  nand41 U424 ( .A(n377), .B(n264), .C(n359), .D(n405), .Y(n261) );
  inv1 U425 ( .A(n395), .Y(n264) );
  inv1 U426 ( .A(n255), .Y(n263) );
  nand21 U427 ( .A(n223), .B(n218), .Y(n255) );
  nor21 U428 ( .A(n432), .B(n312), .Y(n417) );
  nand41 U429 ( .A(n419), .B(n221), .C(n420), .D(n421), .Y(DFF0N3) );
  a21oi1 U430 ( .A1(n241), .A2(n309), .B1(n422), .Y(n421) );
  a21oi1 U431 ( .A1(n423), .A2(n424), .B1(RST), .Y(n422) );
  a221oi1 U432 ( .A1(Prog2), .A2(n373), .B1(n359), .B2(n425), .C1(n414), .Y(
        n424) );
  inv1 U433 ( .A(n322), .Y(n414) );
  o211ai1 U434 ( .A1(n426), .A2(n377), .B1(n218), .C1(n427), .Y(n322) );
  o22ai1 U435 ( .A1(Rdy1RtHS1), .A2(Rdy1BmHS1), .B1(n295), .B2(n428), .Y(n425) );
  nor21 U436 ( .A(Prog2), .B(n431), .Y(n428) );
  nor21 U437 ( .A(FullOHS1), .B(FullIIHS1), .Y(n295) );
  inv1 U438 ( .A(n294), .Y(n359) );
  nand21 U439 ( .A(n429), .B(n217), .Y(n294) );
  a221oi1 U440 ( .A1(n257), .A2(n281), .B1(n256), .B2(n313), .C1(n415), .Y(
        n423) );
  o21ai0 U441 ( .A1(n253), .A2(n254), .B1(n265), .Y(n415) );
  nand21 U442 ( .A(n256), .B(n374), .Y(n265) );
  inv1 U443 ( .A(n253), .Y(n374) );
  nand21 U444 ( .A(n217), .B(n405), .Y(n253) );
  inv1 U445 ( .A(Prog2), .Y(n405) );
  inv1 U446 ( .A(n312), .Y(n256) );
  nand21 U447 ( .A(n426), .B(n427), .Y(n312) );
  inv1 U448 ( .A(n412), .Y(n426) );
  nand21 U449 ( .A(n433), .B(n216), .Y(n412) );
  inv1 U450 ( .A(n254), .Y(n257) );
  nand21 U451 ( .A(n377), .B(n427), .Y(n254) );
  inv1 U452 ( .A(n328), .Y(n377) );
  nand21 U453 ( .A(n431), .B(n220), .Y(n328) );
  inv1 U454 ( .A(n284), .Y(n309) );
  nand21 U455 ( .A(n429), .B(n216), .Y(n284) );
  nor21 U456 ( .A(n395), .B(n244), .Y(n241) );
  inv1 U457 ( .A(n313), .Y(n244) );
  nand21 U458 ( .A(Rdy2RtHS1), .B(Rdy1RtHS1), .Y(n313) );
  nand21 U459 ( .A(Prog0), .B(n223), .Y(n395) );
  o21ai0 U460 ( .A1(Prog1), .A2(Prog2), .B1(DFF11N3), .Y(n420) );
  inv1 U461 ( .A(n406), .Y(DFF11N3) );
  nand31 U462 ( .A(RtTSHS1), .B(n404), .C(n430), .Y(n406) );
  nor31 U463 ( .A(RST), .B(n433), .C(n434), .Y(n430) );
  inv1 U464 ( .A(n321), .Y(n404) );
  nand21 U465 ( .A(n410), .B(n218), .Y(n321) );
  and31 U466 ( .A(n217), .B(n216), .C(n435), .X(n410) );
  nand31 U467 ( .A(n373), .B(n223), .C(n432), .Y(n221) );
  nor21 U468 ( .A(n400), .B(n431), .Y(n373) );
  nand31 U469 ( .A(n325), .B(n281), .C(n299), .Y(n419) );
  inv1 U470 ( .A(n251), .Y(n299) );
  nand21 U471 ( .A(n223), .B(n354), .Y(n251) );
  inv1 U472 ( .A(Prog0), .Y(n354) );
  inv1 U473 ( .A(RST), .Y(n223) );
  nand21 U474 ( .A(Rdy2BmHS1), .B(Rdy1BmHS1), .Y(n281) );
  inv1 U475 ( .A(n400), .Y(n325) );
  nand21 U476 ( .A(n429), .B(n220), .Y(n400) );
  and20 U477 ( .A(n427), .B(n436), .X(n429) );
  nor21 U478 ( .A(n435), .B(n434), .Y(n427) );
endmodule



