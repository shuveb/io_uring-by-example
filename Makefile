regular_cat: 01_regular_cat/main.c
		gcc -o $@ $<

cat_uring: 02_cat_uring/main.c
		gcc -o $@ $<

cat_liburing: 03_cat_liburing/main.c
		gcc -o $@ $< -luring

cp_liburing: 04_cp_liburing/main.c
		gcc -o $@ $< -luring

webserver_liburing: 05_webserver_liburing/main.c
		gcc -o $@ $< -luring

all: regular_cat cat_uring cat_liburing cp_liburing webserver_liburing

.PHONY: clean

clean:
	rm -f regular_cat cat_uring cat_liburing cp_liburing webserver_liburing
