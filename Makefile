# Changer les valeurs par défaut de IPadr, DIR et CROSSDIR
IPadr?	=				# Adresse IP de votre Raspberry Pi sur votre réseau local			
DIR?	=				# Dossier sur votre Raspberry Pi devant contenir votre éxecutable 
APP	= lcd_user_berber

CROSSDIR        = 
CROSS_COMPILE   = $(CROSSDIR)/arm-bcm2708hardfp-linux-gnueabi/bin/bcm2708hardfp-

all:  $(APP).x upload


$(APP).x: $(APP).c
	$(CROSS_COMPILE)gcc -o $@ $< -I$(INC) -O2 -static

upload: 
	scp  $(APP).x pi@$(IPadr):$(DIR)

clean:
	rm -f *.o *.x *~
