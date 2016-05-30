CC=../afl-gcc
DEPS=tif_config.h tif_dir.h tiffconf.h tiff.h tiffio.h tiffiop.h tiffvers.h
EXEC=test
OBJ_FILES=tif_dir.o tif_dirinfo.o $(EXEC).o
INC_DIR=./include
OBJ_DIR=./objs
OUT_DIR=./build
FLAGS=-I $(INC_DIR)

all:
	mkdir $(OBJ_DIR)
	$(EXEC)
	rm -rf $(OBJ_DIR)	

$(EXEC): $(OBJ_FILES)
	$(CC) -o $(OUT_DIR)/$@ $^ $(FLAGS)

%.o: %.c $(DEPS)
	$(CC) -c -o $(INC_DIR)/$@ $< $(FLAGS)

.PHONY: clean
clean:
	-rm $(OUT_DIR)/$(EXEC)
	-rm -rf $(OBJ_DIR)


