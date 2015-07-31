#
# openwrt bb for wndr3800 v1 
# Changed by jefby
# Email : jef199006@gmail.com
#

# change the CC compiler to cross-compile
# change the LIBS to find the correct libpcap.so 
# delete the install 20140509 jefby


CC=mips-openwrt-linux-gcc
BIN=xdh3c
LIBS= -lm -lpcap -dynamic
CFLAGS=-Wall
RM=rm

all: $(BIN)

xd_h3c.o: xd_h3c.c
	$(CC) $(CFLAGS) -c $<

authenticate.o: authenticate.c authenticate.h
	$(CC) $(CFLAGS) -c $<

md5.o: ./md5/md5.c
	$(CC) $(CFLAGS) -c $<

$(BIN): xd_h3c.o authenticate.o md5.o
	$(CC) $(CFLAGS) $+ $(LIBS) -o $@

clean:
	@$(RM) -rf *.o $(BIN)

