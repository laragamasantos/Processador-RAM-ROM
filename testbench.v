module testbench;
	reg Resetn, Clock, Run;
	wire Done;
	wire [15:0] r0, r1, r2, r3, r4, pc;

    proc2 proc(Resetn, Clock, Run, Done, r0, r1, r2, r3, r4, pc);

   initial begin
        Clock = 1'b0;
        Run = 1'b1;
        Resetn = 1'b1;
        $monitor("T%d | Done: %b | r0: %d | r1: %d | r2: %d | r3: %b | r4: %d | r5: %d | r6: %d | buswires: %d | pc: %d | pc_incr: %b\naddr: %d | addr_in: %b | DATA: %d | dout: %d | dout_in: %b | a: %d | g: %d | f: %d | F_in: %b | zero: %b | IR: %b | W: %b\n", proc.Tstep_Q, Done, proc.r0,proc.r1,proc.r2,proc.r3,proc.r4,proc.r5,proc.r6, proc.BusWires, proc.pc,proc.pc_incr, proc.addr, proc.ADDR_in, proc.DATA, proc.dout, proc.DOUT_in, proc.a,proc.g,proc.f, proc.F_in, proc.zero, proc.IR,proc.w);
    end

   initial begin
		  $display("-------------------------------------- MV --------------------------------------");
		  Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
		  
		  $display("-------------------------------------- MVT --------------------------------------");
		  Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
		  
		  
        $display("-------------------------------------- ADD --------------------------------------");
        Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
        Clock = ~Clock;
		  #1
        Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1

        $display("-------------------------------------- SUB --------------------------------------");
        Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
        Clock = ~Clock;
		  #1
		  Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
        Clock = ~Clock;
		  #1
        
		  $display("-------------------------------------- ADD --------------------------------------");
		  Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
		  Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
		  Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
		  Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
		  Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1
		  Clock = ~Clock;
        #1
        Clock = ~Clock;
        #1

        Clock = ~Clock;
        #1
        Clock = ~Clock;
    end
endmodule
 