all:	clean simv wave

clean:	
	rm -rf wave.* simv
simv:
	iverilog -g2012 -o simv -I../RTL -I../TB ../RTL/adder.v ../TB/tb_adder.sv
wave:
	./simv
	gtkwave wave.vcd

