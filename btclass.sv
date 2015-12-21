// A class for the binary tree homework problem.
//

class btclass;//class named btclass is declared
 btclass lpt;
 btclass gpt;
 integer value;

 function automatic void add(input btclass nn);
   begin
     if(nn.value < value) begin
	$display("before: \t \t lpt= %d \t gpt=%d",lpt,gpt);
	if(lpt) lpt.add(nn); else lpt=nn;
	  $display("after :\t\t lpt= %d \t gpt=%d",lpt,gpt);
	end 
      else begin
	  $display("before: \t \t lpt= %d \t gpt=%d",lpt,gpt);
	    if(gpt) gpt.add(nn); else gpt=nn;
	    $display("after :\t\t lpt= %d \t gpt=%d",lpt,gpt);
	end
     return;
   end
 endfunction

 function automatic void printascending;
   begin
     
     if(lpt) lpt.printascending();
      $display(value);
     if(gpt) gpt.printascending();
     return;
   end
 endfunction
 
 function automatic void printdescending;
   begin
      if(gpt) gpt.printdescending();
      $display(value);
     if(lpt) lpt.printdescending();
     end
 endfunction


 function new(input integer vl);
   begin
     value=vl;
     lpt=null;
     gpt=null;
   end
 endfunction


endclass

