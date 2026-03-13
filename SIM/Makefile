all:	clean simv wave

clean:	
	rm -rf wave.* simv
simv:
	iverilog -g2012 -o simv -I../RTL -I..RTL/TB ../RTL/adder.v \
       	../RTL/TB/tb_adder.sv
wave:
	./simv
	gtkwave wave.vcd

