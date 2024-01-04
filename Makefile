obj-m += src/main.o
all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
test:
	sudo dmesg -C
	sudo insmod main.ko
	sudo rmmod main.ko
	sudo dmesg
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
