Getting Started
===============

Install
-------

First, you need the :code:`threadpool.hpp` header file. You can simply copy it
into your source tree, or you can install it. To install run the following
commands:

.. code-block:: bash
  :linenos:

  $ git clone git@github.com:reyreaud-l/threadpool.git
  $ cd threadpool
  $ mkdir build
  $ cd build
  $ cmake ..
  $ make install

This will make the header available in your system.

First Pool
----------

Let's see a simple use of the threadpool

.. literalinclude:: examples/simple.cpp
  :language: c++
  :linenos:

Note that we instantiate a task and wait for it to make sure the task is ran.
With such a short program, it is possible that mypool will be deleted before a
worker is woke up to pick the task and run it. Waiting for the result ensure the
task is ran. It is possible to use this syntax if you don't care about the
return value or don't want to wait for a task to end:

.. code-block:: c++
  :linenos:

  ...
  mypool.run([]() { std::cout << "Hello there!" << std::endl; });
  ...

This concludes a very basic example to set up the threadpool!
