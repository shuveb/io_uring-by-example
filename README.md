# io_uring By Example
This repository is a companion repo for the article series io_uring By Example on the [Unixism blog](https://unixism.net).

It features a set of example programs that serve as an example to illustrate the usage of Linux's io_uring subsystem. The examples build one on top of the other, becoming progressively complex.

Here are what the examples do:
- `01_regular_cat`: This is an example of a "cat" program equivalent that uses regular, synchronous I/O. This program is there to illustrate the difference between synchronous I/O and the asynchronous io_uring API.
- `02_cat_uring`: This example builds a version of cat with the raw interface provided by io_uring. This is done so that the user understands how the io_uring interface works at a low-level.
- `03_cat_liburing`: This example is functionally the same as the previous example, but uses the higher-level API provided by liburing.
- `04_cp_liburing`: This example is an implementation of a copy command that uses multiple requests in io_uring's submission queue.
- `05_webserver_liburing`: This is the final example in the series. This bulids a simple web server that is capable of serving static files. It illustrates the use of `accept()`, along with `readv()` and `writev()`.

Please note that you will need at least Linux kernel version 5.5 and above to get all these examples to work. Support for the `accept()` operation in io_uring was added in kernel v5.5.

## The example web server in action
![Zerohttpd](https://unixism.net/wp-content/uploads/2019/02/ZeroHTTPd_static.png)
