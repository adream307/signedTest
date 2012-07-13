sig: SIG.v SIG_tb.v
	iverilog -o sig SIG.v SIG_tb.v
usig: USIG.v USIG_tb.v
	iverilog -o usig USIG.v USIG_tb.v
runsig:
	vvp sig
runusig:
	vvp usig
clean:
	rm -rf sig usig
