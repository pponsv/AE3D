BUILDPATH   = ../bin/

AENAME      = ae_solve_version*.f

# MKLFLAGS    = -lmkl_gf_lp64 -lmkl_core -lmkl_sequential -lpthread -lm
MKLFLAGS = -lpthread -lm -lopenblas
GFLAGS      = -O2 -ffixed-form

.PHONY: all clean

all: $(BUILDPATH)xae3d
	
$(BUILDPATH)xae3d: fourier_lib_module.o fourier_lib.mod ae_solve.o $(BUILDPATH)
	gfortran $(GFLAGS) fourier_lib_module.o ae_solve.o $(MKLFLAGS) -o $@

fourier_lib_module.o fourier_lib.mod: fourier_lib_module.f
	gfortran $(GFLAGS) -c fourier_lib_module.f

ae_solve.o: $(AENAME)
	gfortran $(GFLAGS) -c $(AENAME) -o ae_solve.o

clean:
	rm -f *.o *.mod x*

$(BUILDPATH):
	mkdir -p $(BUILDPATH)
