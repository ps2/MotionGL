# Using GLKit in RubyMotion

Experiments using GLKit

This is basically a port of Ray Wenderlich's code in his nice [GLKit tutorial](http://www.raywenderlich.com/5223/beginning-opengl-es-2-0-with-glkit-part-1).

One of the more interesting parts are the use of Pointer objects to pass vertex buffers. It's not beautiful (a bit ugly, actually), but at least RubyMotion does provide a mechanism to interface with pointer based C apis like this.  It'd be interesting to see what kinds of nice ruby abstractions we could build on this.

-Pete

