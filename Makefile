CC = gcc
CFLAGS = -g -pedantic-errors -Wall -Werror 


scanner: scanner.o socket.o
	$(CC) $(CFLAGS) scanner.c -0 scanner


clean:
	@-/bin/rm *.o core xd xx


allclean:	clean
	@-/bin/rm coins
	
# DO NOT DELETE

coins.o: /usr/include/stdio.h /usr/include/features.h
coins.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
coins.o: /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h
coins.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
coins.o: /usr/include/libio.h /usr/include/_G_config.h /usr/include/wchar.h
coins.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
coins.o: /usr/include/stdlib.h /usr/include/bits/waitflags.h
coins.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
coins.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
coins.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
coins.o: /usr/include/time.h /usr/include/sys/select.h
coins.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
coins.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
coins.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
coins.o: /usr/include/bits/stdlib-float.h /usr/include/unistd.h
coins.o: /usr/include/bits/posix_opt.h /usr/include/bits/environments.h
coins.o: /usr/include/bits/confname.h /usr/include/getopt.h
coins.o: /usr/include/errno.h /usr/include/bits/errno.h
coins.o: /usr/include/linux/errno.h /usr/include/asm/errno.h
coins.o: /usr/include/asm-generic/errno.h
coins.o: /usr/include/asm-generic/errno-base.h /usr/include/signal.h
coins.o: /usr/include/bits/signum.h /usr/include/bits/siginfo.h
coins.o: /usr/include/bits/sigaction.h /usr/include/bits/sigcontext.h
coins.o: /usr/include/bits/sigstack.h /usr/include/sys/ucontext.h
coins.o: /usr/include/bits/sigthread.h /usr/include/fcntl.h
coins.o: /usr/include/bits/fcntl.h /usr/include/bits/fcntl-linux.h
coins.o: /usr/include/bits/stat.h /usr/include/arpa/inet.h
coins.o: /usr/include/netinet/in.h /usr/include/stdint.h
coins.o: /usr/include/bits/wchar.h /usr/include/sys/socket.h
coins.o: /usr/include/sys/uio.h /usr/include/bits/uio.h
coins.o: /usr/include/bits/socket.h /usr/include/bits/socket_type.h
coins.o: /usr/include/bits/sockaddr.h /usr/include/asm/socket.h
coins.o: /usr/include/asm-generic/socket.h /usr/include/asm/sockios.h
coins.o: /usr/include/asm-generic/sockios.h /usr/include/bits/in.h socket.h
coins.o: /usr/include/sys/time.h
