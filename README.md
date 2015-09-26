Generate chamfers to smoothly join rectangle to polygon
=======================================================

This repository contains a Ruby script that generates
[OpenSCAD](http://www.openscad.org/)
source files that generates chamfers to join together a rectangle
and a polygon with smooth ramped surfaces.

The polygon surface is a restricted GMS MX lock keyway that I was
experimenting with duplicating via devious, non-locksmith approved ways.
Chamfering the keyway channels improves the appearance and strength of
the 3D printed key.

Algorithm
---------

The general technique is to create convex hulls joining together a
large, edge-aligned polygon on the rectangular side with a smaller
polygon that follows each polygon line segment.

First, find the points that are the "corners" of the polygon (the points
closest to the corners of the rectangle we are ramping up to). We use
these as marker points to figure out which wall of the rectangle we
should ramp up to.

Next, iterate through each edge of the keyway polygon in clockwise
order. We need a 2D shape, not a line, to use for one end of our convex
hull, so for each edge line segment, create a mini-triangle by finding
its midpoint, and extending inwards (by turning 90° to the right). On
the rectangle side, make a polygon from the points from the
mini-triangle as well as points on the edges of the rectangle.

This repository includes
[an exploded diagram showing the internal structure](blob/master/exploded.stl)
that you can inspect to see the internal structure.

Meta
----

* Home: <https://github.com/andrewgho/generate_chamfers>
* Authors: <https://github.com/andrewgho>
