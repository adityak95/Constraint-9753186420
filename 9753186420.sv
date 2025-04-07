class sample;
rand int data[$];
rand int a;
int a_old=9;

constraint a_c{
		a==a_old;
}

function void post_randomize();
	a_old=a-2;
	if(a_old==-1) a_old=8;
	if(a_old==-2) a_old=9;

endfunction
endclass
module top;

sample s=new();
initial begin
 repeat(50)begin 
	assert(s.randomize());
 end
	$write("data=%p",s.a);
end

endmodule
