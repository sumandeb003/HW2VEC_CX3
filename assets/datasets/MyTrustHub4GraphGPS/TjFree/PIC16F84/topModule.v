
module top (
  progdati,           
  progadro,           
  ramdati,            
  ramdato,            
  ramadro,            
  readramo,            
  writeramo,           
  existeepromi,        
  eepdati,            
  eepdato,            
  eepadro,            
  rdeepreqo,         
  rdeepacki,         
  wreepreqo,         
  wreepacki,         
  portai,              
  portao,              
  portadiro,          
  portbi,              
  portbo,              
  portbdiro,          
  rbpuo,               
  int0i,               
  int4i,               
  int5i,               
  int6i,               
  int7i,               
  t0ckii,              
  wdtenai,            
  wdtclki,            
  wdtfullo,           
  powerdowno,          
  startclko,           
  ponrstni,          
  mclrni,             
  clki,                
  clko                 
);


parameter STACKSIZEPP      = 8;   
parameter LOG2STACKSIZEPP = 3;   
parameter WDTSIZEPP        = 255; 
parameter WDTBITSPP        = 8;   

parameter QRESETPP = 3'b100; 
parameter Q1PP     = 3'b000; 
parameter Q2PP     = 3'b001; 
parameter Q3PP     = 3'b011; 
parameter Q4PP     = 3'b010; 



       
input  [13:0] progdati;   
output [12:0] progadro;   

       
input  [7:0] ramdati;     
output [7:0] ramdato;     
output [8:0] ramadro;     
output readramo;           
output writeramo;          

       
input  existeepromi;       
input  [7:0] eepdati;     
output [7:0] eepdato;     
output [7:0] eepadro;     
output rdeepreqo;        
input  rdeepacki;        
output wreepreqo;        
input  wreepacki;        

       
input  [4:0] portai;       
output [4:0] portao;       
output [4:0] portadiro;   
input  [7:0] portbi;       
output [7:0] portbo;       
output [7:0] portbdiro;   
output rbpuo;              

       
input  int0i;              
input  int4i;              
input  int5i;              
input  int6i;              
input  int7i;              

       
input  t0ckii;             

       
input  wdtenai;           
input  wdtclki;           
output wdtfullo;          

       
output powerdowno;         
                            
output startclko;          
                            
       
input  ponrstni;         
input  mclrni;            

       
input  clki;               
output clko;               



     
reg  [7:0] wreg;            
reg  [7:0] tmr0reg;         
reg  [12:0] pcreg;          
reg  [7:0] statusreg;       
reg  [7:0] fsrreg;          
reg  [4:0] portaisyncreg; 
reg  [4:0] portaoreg;      
reg  [7:0] portbisyncreg; 
reg  [7:0] portboreg;      
reg  [7:0] eepdatreg;      
reg  [7:0] eepadrreg;      
reg  [4:0] pclathreg;       
reg  [7:0] intconreg;       
reg  [7:0] optionreg;       
reg  [4:0] trisareg;        
reg  [7:0] trisbreg;        
reg  [4:0] eecon1reg;       

     
reg  [13:0] instreg;        
reg  [7:0] aluinp1reg;      
reg  [7:0] aluinp2reg;      
reg        cin;             
reg  [7:0] aluoutreg;       
reg  execopreg;            
reg  intstartreg;           
reg  sleepflagreg;          

     
                             
reg  [12:0] stackreg [STACKSIZEPP-1:0];
                             
reg  [LOG2STACKSIZEPP-1:0] stackpntreg;

     
reg  [WDTBITSPP-1:0] wdtreg;  
reg  wdtfullreg;               
                                 
reg  wdtfullnode;
wire wdtinit;                   
reg  [2:0] wdtfullsyncreg;    
reg  wdtclrreg;                
reg  wdtclrreqholdreg;        
                                 
reg  [1:0] wdtclrreqreg;      
wire wdtclrack;                
                                 
reg  wdtclracksyncreg;       
reg  wdtfullclrreg;           
reg  [1:0] wdtfullclrreqreg;  

     
wire psclk;                  
reg  [7:0] pscalereg;        
reg  psfullreg;             
wire inctmrclk;             
reg  inctmrholdreg;        
reg  [7:0] rateval;           

     
reg  [4:0] intrisereg;       
reg  [4:0] intdownreg;       
                              
wire rb0int;
wire rb4int;
wire rb5int;
wire rb6int;
wire rb7int;

wire rbint;                   
wire inte;                    
reg  [4:0] intclrreg;        
wire intclr0;                 
wire intclr1;                 
wire intclr2;                 
wire intclr3;                 
wire intclr4;

     
reg  [2:0] statereg;

     
wire instaddlw;
wire instaddwf;
wire instandlw;
wire instandwf;
wire instbcf;
wire instbsf;
wire instbtfsc;
wire instbtfss;
wire instcall;
wire instclrf;
wire instclrw;
wire instclrwdt;
wire instcomf;
wire instdecf;
wire instdecfsz;
wire instgoto;
wire instincf;
wire instincfsz;
wire instiorlw;
wire instiorwf;
wire instmovlw;
wire instmovf;
wire instmovwf;
wire instretfie;
wire instretlw;
wire instret;
wire instrlf;
wire instrrf;
wire instsleep;
wire instsublw;
wire instsubwf;
wire instswapf;
wire instxorlw;
wire instxorwf;

     
wire [8:0] ramadrnode;      

     
     
wire addrtmr0;
wire addrpcl;
wire addrstat;
wire addrfsr;
wire addrporta;
wire addrportb;
wire addreepdat;
wire addreepadr;
wire addrpclath;
wire addrintcon;
wire addroption;
wire addrtrisa;
wire addrtrisb;
wire addreecon1;
wire addreecon2;
wire addrsram;

     
reg  writeramreg;      
reg  [8:0] ramadrreg; 
reg  clkoreg;         

     
reg  intesyncreg;
reg  rbintsyncreg;
reg  [1:0] inctmrsyncreg;
reg  rdeepsyncreg;
reg  wreepsyncreg;
reg  mclrsyncreg;
reg  poweronsyncreg;

     
     
reg  [7:0] raminode;   
reg  [12:0] incpcnode; 
wire [7:0] masknode;    
reg  [8:0] addnode;     
reg  [4:0] addlownode;  
wire temp;               
wire dtemp;              
reg  aluoutzeronode;   
reg  writewnode;        
reg  writeramnode;      
reg  intnode;           
reg  wdtrstnode;       
reg  resetcond;         






always @(posedge clki)
begin
  intesyncreg          <= inte;
  rbintsyncreg         <= rbint;
  wdtclracksyncreg   <= wdtclrack;
  mclrsyncreg          <= mclrni;
  poweronsyncreg       <= ponrstni;
  rdeepsyncreg        <= rdeepacki;
  wreepsyncreg        <= wreepacki;
  inctmrsyncreg[0]    <= inctmrclk;
  inctmrsyncreg[1]    <= inctmrsyncreg[0];
  if (~poweronsyncreg || ~mclrsyncreg)
    wdtfullsyncreg    <= 3'b0;
  else
  begin
    wdtfullsyncreg[0] <= wdtfullreg;
    wdtfullsyncreg[1] <= wdtfullsyncreg[0]; 
    wdtfullsyncreg[2] <= wdtfullsyncreg[1]; 
  end
end


assign instcall     = (instreg[13:11] ==  3'b100           );
assign instgoto     = (instreg[13:11] ==  3'b101           );
assign instbcf      = (instreg[13:10] ==  4'b0100          );
assign instbsf      = (instreg[13:10] ==  4'b0101          );
assign instbtfsc    = (instreg[13:10] ==  4'b0110          );
assign instbtfss    = (instreg[13:10] ==  4'b0111          );
assign instmovlw    = (instreg[13:10] ==  4'b1100          );
assign instretlw    = (instreg[13:10] ==  4'b1101          );
assign instsublw    = (instreg[13:9]  ==  5'b11110         );
assign instaddlw    = (instreg[13:9]  ==  5'b11111         );
assign instiorlw    = (instreg[13:8]  ==  6'b111000        );
assign instandlw    = (instreg[13:8]  ==  6'b111001        );
assign instxorlw    = (instreg[13:8]  ==  6'b111010        );
assign instsubwf    = (instreg[13:8]  ==  6'b000010        );
assign instdecf     = (instreg[13:8]  ==  6'b000011        );
assign instiorwf    = (instreg[13:8]  ==  6'b000100        );
assign instandwf    = (instreg[13:8]  ==  6'b000101        );
assign instxorwf    = (instreg[13:8]  ==  6'b000110        );
assign instaddwf    = (instreg[13:8]  ==  6'b000111        );
assign instmovf     = (instreg[13:8]  ==  6'b001000        );
assign instcomf     = (instreg[13:8]  ==  6'b001001        );
assign instincf     = (instreg[13:8]  ==  6'b001010        );
assign instdecfsz   = (instreg[13:8]  ==  6'b001011        );
assign instrrf      = (instreg[13:8]  ==  6'b001100        );
assign instrlf      = (instreg[13:8]  ==  6'b001101        );
assign instswapf    = (instreg[13:8]  ==  6'b001110        );
assign instincfsz   = (instreg[13:8]  ==  6'b001111        );
assign instmovwf    = (instreg[13:7]  ==  7'b0000001       );
assign instclrw     = (instreg[13:7]  ==  7'b0000010       );
assign instclrf     = (instreg[13:7]  ==  7'b0000011       );
assign instret      = (instreg[13:0]  == 14'b00000000001000);
assign instretfie   = (instreg[13:0]  == 14'b00000000001001);
assign instsleep    = (instreg[13:0]  == 14'b00000001100011);
assign instclrwdt   = (instreg[13:0]  == 14'b00000001100100);



    
    
    
assign ramadrnode = (instreg[6:0]==0)?{statusreg[7],fsrreg[7:0]}:
                               {statusreg[6:5],instreg[6:0]};

    
assign addrsram   = (ramadrnode[6:0] > 7'b0001011); 

    
    
assign addrtmr0    = (ramadrnode[7:0] == 8'b00000001); 
assign addrpcl     = (ramadrnode[6:0] ==  7'b0000010); 
assign addrstat    = (ramadrnode[6:0] ==  7'b0000011); 
assign addrfsr     = (ramadrnode[6:0] ==  7'b0000100); 
assign addrporta   = (ramadrnode[7:0] == 8'b00000101); 
assign addrportb   = (ramadrnode[7:0] == 8'b00000110); 
assign addreepdat = (ramadrnode[7:0] == 8'b00001000); 
assign addreepadr = (ramadrnode[7:0] == 8'b00001001); 
assign addrpclath  = (ramadrnode[6:0] ==  7'b0001010); 
assign addrintcon  = (ramadrnode[6:0] ==  7'b0001011); 
assign addroption  = (ramadrnode[7:0] == 8'b10000001); 
assign addrtrisa   = (ramadrnode[7:0] == 8'b10000101); 
assign addrtrisb   = (ramadrnode[7:0] == 8'b10000110); 
assign addreecon1  = (ramadrnode[7:0] == 8'b10001000); 
assign addreecon2  = (ramadrnode[7:0] == 8'b10001001); 

assign masknode = 1 << instreg[9:7];

always @(posedge clki)
begin
  

  
  
  
  if (addrsram)         raminode <= ramdati;   
  else if (addreepdat) raminode <= eepdatreg; 
  else if (addrtmr0)    raminode <= tmr0reg;    
  else if (addrpcl)     raminode <= pcreg[7:0]; 
  else if (addrstat)    raminode <= statusreg;  
  else if (addrfsr)     raminode <= fsrreg;     
  else if (addrporta)
  begin
    
    raminode[4:0] <= (
                           (~trisareg[4:0] & portaoreg[4:0])
                        || ( trisareg[4:0] & portaisyncreg[4:0])
                        );
    raminode[7:5] <= 3'b0;
  end
  else if (addrportb)
  begin
    
    raminode[7:0] <= (
                           (~trisbreg[7:0] & portboreg[7:0])
                        || ( trisbreg[7:0] & portbisyncreg[7:0])
                        );
  end
  else if (addreepadr) raminode <= eepadrreg;       
  else if (addrpclath)  raminode <= {3'b0,pclathreg}; 
  else if (addrintcon)  raminode <= intconreg;        
  else if (addroption)  raminode <= optionreg;        
  else if (addrtrisa)   raminode <= {3'b0,trisareg};  
  else if (addrtrisb)   raminode <= trisbreg;         
  else if (addreecon1)  raminode <= {3'b0,eecon1reg}; 
  else raminode <= 0;


  
  incpcnode  <= pcreg + 1;


  
  
  {addnode,temp}     <=    {1'b0,aluinp1reg,1'b1}
                          + {1'b0,aluinp2reg,cin};
  
  {addlownode,dtemp} <=    {1'b0,aluinp1reg[3:0],1'b1}
                          + {1'b0,aluinp2reg[3:0],cin};

  
  aluoutzeronode <= (aluoutreg == 0)?1:0;

  
  if (intstartreg)
  begin
    writewnode     <= 0;
    writeramnode   <= 0;
  end
  else if (instmovwf || instbcf || instbsf || instclrf)
  begin
    writewnode     <= 0;
    writeramnode   <= 1;
  end
  else if (   instmovlw || instaddlw || instsublw || instandlw
           || instiorlw || instxorlw || instretlw || instclrw)
  begin
    writewnode     <= 1;
    writeramnode   <= 0;
  end
  else if (   instmovf   || instswapf || instaddwf || instsubwf
           || instandwf  || instiorwf || instxorwf || instdecf
           || instincf   || instrlf   || instrrf   || instdecfsz
           || instincfsz || instcomf)
  begin
    writewnode     <= ~instreg[7];  
    writeramnode   <=  instreg[7];  
  end
  else
  begin
    writewnode     <= 0;
    writeramnode   <= 0;
  end

  
  intnode <= intconreg[7]        
              && (
                     (intconreg[3] && intconreg[0]) 
                  || (intconreg[4] && intconreg[1]) 
                  || (intconreg[5] && intconreg[2]) 
                  || (intconreg[6] && eecon1reg[4]) 
                  );

  
  wdtrstnode <= wdtfullsyncreg[1] && ~wdtfullsyncreg[2];  

  
  if (~poweronsyncreg || ~mclrsyncreg || wdtrstnode) resetcond  <= 1;
  else resetcond  <= 0;

  
  case (statereg)

    
    QRESETPP :
    begin
      pcreg          <= 0;     
      statusreg[7:5] <= 3'b0;
      pclathreg      <= 0;     
      intconreg[7:1] <= 7'b0;
      optionreg      <= -1;    
      trisareg       <= -1;    
      trisbreg       <= -1;    
      tmr0reg        <= 0;     
      execopreg     <= 0;
      intclrreg      <= -1;    
      intstartreg    <= 0;
      writeramreg    <= 0;
      sleepflagreg   <= 0;

      
      
      if (~poweronsyncreg)      
      begin
        statusreg[4] <= 1;       
        statusreg[3] <= 1;       
        stackpntreg <= 0;       
      end
      else if (~mclrsyncreg)    
      begin
        statusreg[4]       <= 1;                  
        
        statusreg[3]       <= ~sleepflagreg;
      end
      else if (wdtrstnode)    
      begin
        statusreg[4]       <= 0;                  
        
        statusreg[3]       <= ~sleepflagreg;
      end

      
      eecon1reg[4]    <= 0;
      eecon1reg[2:0]  <= 3'b0;
      
      
      
      if (~poweronsyncreg) eecon1reg[3] <= 0; 
      else eecon1reg[3] <= eecon1reg[1];       

      
      if (~resetcond) statereg <= Q1PP;

    end  


    
    Q1PP :
    begin
      
      if (intconreg[7]) intclrreg <= 0;
      else intclrreg <= 1;     

      
      portaisyncreg    <= portai;
      portbisyncreg    <= portbi;

      
      if (~intstartreg)
      begin
        if (eecon1reg[0] && rdeepsyncreg) 
        begin
          eepdatreg    <= eepdati;
          eecon1reg[0] <= 0;                 
        end
        if (eecon1reg[1] && wreepsyncreg) 
        begin
          if (intconreg[7] && intconreg[6])
            eecon1reg[4] <= 1;         
          eecon1reg[1]   <= 0;         
        end
        if (execopreg) ramadrreg <= ramadrnode; 
      end

      
      if (inctmrsyncreg == 2'b01) inctmrholdreg <= 1;


      
      if (resetcond) statereg <= QRESETPP;
      else
        
        if (sleepflagreg && ~intstartreg)
        begin
          if (intesyncreg || rbintsyncreg)
          begin
          
          
            sleepflagreg <= 0;
            statereg     <= Q2PP;
          end
        end
        
        else statereg   <= Q2PP;

    end   

    
    Q2PP :
    begin
      
      if (execopreg && ~intstartreg)  
      begin
        
        if (   instmovf   || instswapf || instaddwf || instsubwf
            || instandwf  || instiorwf || instxorwf || instdecf
            || instincf   || instrlf   || instrrf   || instbcf
            || instbsf    || instbtfsc || instbtfss || instdecfsz
            || instincfsz || instcomf)

            aluinp1reg <= raminode;       
        else
        if (   instmovlw || instaddlw || instsublw || instandlw
            || instiorlw || instxorlw || instretlw)

            aluinp1reg <= instreg[7:0];    
        else
        if (   instclrf  || instclrw) aluinp1reg <= 0; 
        else aluinp1reg <= wreg;                        

        
        if      (instdecf || instdecfsz) aluinp2reg <= -1; 
        else if (instincf || instincfsz) aluinp2reg <=  1; 
                
        else if (instsublw || instsubwf) aluinp2reg <= ~wreg + 1;
                
                
        else if (instbcf) aluinp2reg <= ~masknode;
                
                
        else if (instbtfsc || instbtfss || instbsf)
                                      aluinp2reg <= masknode;
        else aluinp2reg <= wreg; 

        
        if (instret || instretlw || instretfie)
             stackpntreg   <= stackpntreg - 1; 

        
        ramadrreg  <= ramadrnode;     
      end

      
      clkoreg  <= 1;

      
      if (inctmrsyncreg == 2'b01) inctmrholdreg <= 1;

      
      if (resetcond) statereg <= QRESETPP;
      else statereg <= Q3PP;
    end   

    
    Q3PP :
    begin
      
      if (execopreg && ~intstartreg) 
      begin
        
                
        if      (instrlf)
                aluoutreg <= {aluinp1reg[6:0],statusreg[0]};
                
        else if (instrrf)
                aluoutreg  <= {statusreg[0],aluinp1reg[7:1]};
                
        else if (instswapf)
                aluoutreg <= {aluinp1reg[3:0],aluinp1reg[7:4]};
                
        else if (instcomf)
                aluoutreg  <= ~aluinp1reg;
                
        else if (   instandlw || instandwf || instbcf || instbtfsc
                 || instbtfss)
                aluoutreg  <= (aluinp1reg & aluinp2reg);
                
        else if (instbsf || instiorlw || instiorwf)
                aluoutreg  <= (aluinp1reg | aluinp2reg);
                
        else if (instxorlw || instxorwf)
                aluoutreg  <= (aluinp1reg ^ aluinp2reg);
                
        else if (  instaddlw || instaddwf  || instsublw || instsubwf
                 || instdecf || instdecfsz || instincf  || instincfsz)
                aluoutreg  <= addnode[7:0];
                
        else aluoutreg  <= aluinp1reg;

        
        if (instaddlw || instaddwf || instsublw || instsubwf)
        begin
          statusreg[1]   <= addlownode[4];          
          statusreg[0]   <= addnode[8];             
        end
        else if (instrlf) statusreg[0] <= aluinp1reg[7];  
        else if (instrrf) statusreg[0] <= aluinp1reg[0];  

        
        if (writeramnode && addrsram) writeramreg <= 1;
        else writeramreg <= 0;

      end
      else writeramreg <= 0; 

      
      if (~intstartreg && intconreg[7]) 
      begin
        
        if (intesyncreg)
        begin
          intconreg[1] <= 1;     
          intclrreg[0] <= 1;     
                                  
        end
        
        if (rbintsyncreg)
        begin
          intconreg[0]   <= 1;   
          intclrreg[4:1] <= -1;  
                                  
        end
      end

      
      if (inctmrholdreg || (inctmrsyncreg == 2'b01)) 
      begin
        tmr0reg          <= tmr0reg + 1;   
        inctmrholdreg  <= 0;

        
        if (
               ~intstartreg
            && intconreg[7]
            && intconreg[5]
            && (tmr0reg == -1)
            )
              intconreg[2] <= 1;             
      end

      
      if (resetcond) statereg   <= QRESETPP;
      else            statereg   <= Q4PP;

    end    


    
    Q4PP :
    begin
      
      instreg    <= progdati;

      if (~execopreg && ~intstartreg)      
      begin
        pcreg          <= incpcnode; 
        execopreg     <= 1;           
      end
      else  
      begin
        
        
        
        

        
        

        
        if (writewnode) wreg   <= aluoutreg;    

        
        
        if (writeramnode)
        begin
          if (addrstat)
          begin
            statusreg[7:5] <= aluoutreg[7:5];      
            
            statusreg[1:0] <= aluoutreg[1:0];      
          end
          if (addrfsr)         fsrreg <= aluoutreg;      
          if (addrporta)   portaoreg <= aluoutreg[4:0]; 
          if (addrportb)   portboreg <= aluoutreg;      
          if (addreepdat) eepdatreg <= aluoutreg;      
          if (addreepadr) eepadrreg <= aluoutreg;      
          if (addrpclath)   pclathreg <= aluoutreg[4:0]; 
          if (addrintcon) intconreg[6:0] <= aluoutreg[6:0];
                           
                           
          if (addroption)   optionreg <= aluoutreg;      
          if (addrtrisa)     trisareg <= aluoutreg[4:0]; 
          if (addrtrisb)     trisbreg <= aluoutreg;      
          if (addrtmr0)       tmr0reg <= aluoutreg;      
          if (addreecon1)                                  
          begin
            eecon1reg[4:3] <= aluoutreg[4:3];
            eecon1reg[2]   <= aluoutreg[2] && existeepromi;
            
            if (aluoutreg[2:0] == 3'b110) eecon1reg[1]   <= 1;
            
            
            if (aluoutreg[1:0] == 2'b01) eecon1reg[0]   <= 1;
            
            
          end
        end

        
        if (~intstartreg)
        begin
          if (addrstat) statusreg[2] <= aluoutreg[2]; 
          else if (   instaddlw || instaddwf || instandlw || instandwf
                   || instclrf  || instclrw  || instcomf  || instdecf
                   || instincf  || instmovf  || instsublw || instsubwf
                   || instxorlw || instxorwf)
                  statusreg[2] <= aluoutzeronode; 
          else if (instiorlw || instiorwf)
                  
                                                                                
                  statusreg[2] <= ~aluoutzeronode;
                  
              
                  
        end

        
        
        if (intstartreg)
        begin
          pcreg      <= 4;     
          execopreg <= 0;     
        end
        else if (instret || instretlw || instretfie) 
        begin
          pcreg      <= stackreg[stackpntreg];
          execopreg <= 0;              
        end
        else if (instgoto || instcall) 
        begin
          
          pcreg      <= {pclathreg[4:3],instreg[10:0]};
          execopreg <= 0;
        end
        else if ( (   (instbtfsc || instdecfsz || instincfsz)
                       && aluoutzeronode)
                   || (instbtfss && ~aluoutzeronode)
                   ) 
        begin
          pcreg      <= incpcnode;
          execopreg <= 0;
          
        end
        else if (writeramnode && addrpcl) 
        begin
          
          pcreg      <= pclathreg[4:0] & aluoutreg;
          execopreg <= 0;
        end
        else
        begin
          
          
          if (~intnode) pcreg <= incpcnode;
          
          else pcreg <= pcreg;
          
          
          execopreg <= 1;
        end

        
        if (instcall || intstartreg)
        
        begin
          stackreg[stackpntreg] <= pcreg;  
          stackpntreg <= stackpntreg + 1;  
        end

        
        if (~intstartreg)
        begin
          if (intnode) 
          begin
            intconreg[7] <= 0; 
            intstartreg  <= 1; 
          end
          else if (instretfie) 
          begin
            intconreg[7] <= 1;
            intstartreg  <= 0;
          end
          else if (writeramnode && addrintcon) 
          begin
            intconreg[7] <= aluoutreg[7];
            intstartreg  <= 0;
          end
          else intstartreg <= 0;
        end
        else intstartreg <= 0;

        
        if (~intstartreg)
          if (    instclrwdt
              || (instsleep && (~wdtrstnode && ~intstartreg)) )
              
              
             if (instsleep)
             begin
               sleepflagreg <= 1;
               statusreg[4:3] <= 2'b10;    
             end
             else statusreg[4:3] <= 2'b11; 

      end 

      
      writeramreg <= 0;

      
      clkoreg <= 0;

      
      if (inctmrsyncreg == 2'b01) inctmrholdreg  <= 1;

      
      if (resetcond) statereg   <= QRESETPP;
      else statereg   <= Q1PP;
    end    

    
    default : statereg   <= QRESETPP;      
    endcase
end  


assign psclk = optionreg[5]?(t0ckii ^ optionreg[4]):clkoreg;

always @(posedge psclk or negedge ponrstni)
begin
  if (~ponrstni)
  begin
    pscalereg  <= 0;
    psfullreg <= 0;
  end
  else 
  begin
    case (optionreg[2:0])  
      3'b000 : rateval <= 1;
      3'b001 : rateval <= 3;
      3'b010 : rateval <= 7;
      3'b011 : rateval <= 15;
      3'b100 : rateval <= 31;
      3'b101 : rateval <= 63;
      3'b110 : rateval <= 127;
      3'b111 : rateval <= 255;
      default: rateval <= 1;
    endcase

    if (pscalereg >= rateval)
    begin
      pscalereg  <= 0;
      psfullreg <= 1;
    end
    else
    begin
      pscalereg  <= pscalereg + 1;
      psfullreg <= 0;
    end
  end
end 

assign inctmrclk =  optionreg[3]?psclk:psfullreg;


assign wdtinit = ~ponrstni || ~mclrni;
always @(posedge clki)
begin
  if (wdtclki || wdtinit)
  begin

  if (wdtinit) 
  begin
    wdtreg              <= 0;
    wdtfullreg         <= 0;
    wdtclrreqreg      <= 2'b0;
    wdtfullclrreqreg  <= 2'b0;
  end
  else 
  begin
    
    
    
    
    wdtclrreqreg[0]     <= wdtclrreg;
    wdtclrreqreg[1]     <= wdtclrreqreg[0];
    
    wdtfullclrreqreg[0] <= wdtfullclrreg && ~sleepflagreg;
    wdtfullclrreqreg[1] <= wdtfullclrreqreg[0];

    
    if (wdtreg >= WDTSIZEPP) wdtfullnode <= 1;  
    else wdtfullnode    <= 0;     

    
    if ((wdtclrreqreg == 2'b01) || ~wdtenai) wdtreg <= 0;
    else if (wdtfullnode) wdtreg <= 0;
    else wdtreg <= wdtreg + 1;

    
    if ((wdtfullclrreqreg == 2'b01) || ~wdtenai) wdtfullreg <= 0;
    else if (wdtfullnode) wdtfullreg <= 1;
  end
   end
end 
assign wdtclrack = wdtclrreqreg[1]; 
assign wdtfullo = wdtfullreg;        


always @(posedge clki)
begin
  if (~poweronsyncreg || ~mclrsyncreg)
  begin
    wdtclrreg         <= 0; 
    wdtclrreqholdreg <= 0; 
                              
    wdtfullclrreg    <= 0; 
  end
  else
  begin
    
    
    if (wdtclrreg) 
      
      if (wdtclracksyncreg) wdtclrreg <= 0;
    else if (    wdtclrreqholdreg
             || ( (statereg == Q4PP)
                   && execopreg && ~intstartreg
                   && (instclrwdt || instsleep)) ) 
    begin
      if (~wdtclracksyncreg) 
      begin
        wdtclrreg         <= 1;
        wdtclrreqholdreg <= 0;
      end
        
    end

    
    
    if (wdtfullclrreg) wdtfullclrreg <= wdtfullsyncreg[1];
  end
end 


assign intclr0 = intclrreg[0];
assign intclr1 = intclrreg[1];
assign intclr2 = intclrreg[2];
assign intclr3 = intclrreg[3];
assign intclr4 = intclrreg[4];

always @(posedge clki)
if (int0i || intclr0)
begin
  if (intclr0) intrisereg[0]  <= 0;
  else intrisereg[0] <= 1; 
end 

else if (int0i || intclr0)
begin
  if (intclr0) intdownreg[0] <= 0;
  else intdownreg[0]  <= 1; 
end 

else if (int4i || intclr1)
begin
  if (intclr1) intrisereg[1]  <= 0;
  else intrisereg[1] <= 1; 
end 

else if (int4i || intclr1)
begin
  if (intclr1) intdownreg[1] <= 0;
  else intdownreg[1]  <= 1; 
end 

else if (int5i || intclr2)
begin
  if (intclr2) intrisereg[2]  <= 0;
  else intrisereg[2] <= 1; 
end 

else if (int5i || intclr2)
begin
  if (intclr2) intdownreg[2] <= 0;
  else intdownreg[2]  <= 1; 
end 

else if (int6i || intclr3)
begin
  if (intclr3) intrisereg[3]  <= 0;
  else intrisereg[3] <= 1; 
end 

else if (int7i || intclr3)
begin
  if (intclr3) intdownreg[3] <= 0;
  else intdownreg[3]  <= 1; 
end 

else if (int7i || intclr4)
begin
  if (intclr4) intrisereg[4]  <= 0;
  else intrisereg[4] <= 1; 
end 

else if (int7i || intclr4)
begin
  if (intclr4) intdownreg[4] <= 0;
  else intdownreg[4]  <= 1; 
end 
assign rb0int = optionreg[6]?intrisereg[0]:intdownreg[0];
assign rb4int = intrisereg[1] || intdownreg[1];
assign rb5int = intrisereg[2] || intdownreg[2];
assign rb6int = intrisereg[3] || intdownreg[3];
assign rb7int = intrisereg[4] || intdownreg[4];


assign inte  = intconreg[4] && rb0int;                                       
assign rbint = intconreg[3] && (rb4int || rb5int || rb6int || rb7int);    

assign progadro   = pcreg;        
assign ramadro    = ramadrreg;   
assign ramdato    = aluoutreg;    
assign readramo    = (statereg[1:0] == Q2PP[1:0]); 
                                                
assign writeramo   = writeramreg;  

assign eepadro    = eepadrreg;   
assign eepdato    = eepdatreg;   
assign rdeepreqo = eecon1reg[0]; 
assign wreepreqo = eecon1reg[1]; 

assign portao      = portaoreg;   
assign portadiro  = trisareg;     

assign portbo      = portboreg;   
assign portbdiro  = trisbreg;     
assign rbpuo       = optionreg[7]; 

assign clko        = clkoreg;     

assign powerdowno  = sleepflagreg;                                                       
assign startclko   = inte || rbint || wdtfullreg
                      || ~mclrni || ~ponrstni;
                     


endmodule



