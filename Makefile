KVER ?= $(shell uname -r)
obj-m += ideapad-laptop.o
 
all:
	make -C /lib/modules/$(KVER)/build M=$(PWD) modules
 
clean:
	make -C /lib/modules/$(KVER)/build M=$(PWD) clean
