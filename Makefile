# changer les valeurs par dÃ©faut de RPI et DIR
RPI?=24
DIR?=IDDIR_BELMILOUD
APP=lcd_user

CFLAGS=-Wall -Wfatal-errors -O2
LDFLAGS=-static -L$(LIB) -lgpio

KERNELDIR       = /dsk/l1/misc/linux-rpi-3.18.y
CROSSDIR        = /users/enseig/franck/IOC
CROSS_COMPILE   = $(CROSSDIR)/arm-bcm2708hardfp-linux-gnueabi/bin/bcm2708hardfp-

all:  $(APP).x $(APP)_berbere.x upload

$(APP).x: $(APP).c
	$(CROSS_COMPILE)gcc -o $@ $< -I$(INC) -O2 -static

$(APP)_berbere.x: $(APP)_berbere.c
	$(CROSS_COMPILE)gcc -o $@ $< -I$(INC) -O2 -static

upload: 
	scp -P 622$(RPI) $(APP).x pi@peri:$(DIR)
	scp -P 622$(RPI) $(APP)_berbere.x pi@peri:$(DIR)

clean:
	rm -f *.o *.x *~
