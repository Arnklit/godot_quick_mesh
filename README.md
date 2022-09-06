# Quick Mesh
A Godot plugin to ease creation of meshes

[Discord Server](https://discord.gg/mjGvWwQwv2)

[Patreon](https://www.patreon.com/arnklit)

Note
----
This addon is early in development and mostly made as a tool for myself. I made the addon for Godot 4.0 as I'm beginning to move my work over there. If you need a version working in 3.x, it should be pretty easy to port the tool, log a bug if you need help with it.

Installation
-----------
Copy the folder addons/quick_mesh into your project and activate the add-on from the Project -> Project Settings... -> Plugins menu.

Purpose
-------
One of my few annoyances with Godot is that it is somewhat cumbersome to add meshes. This addons seeks to remedy that by adding MeshInstances, RigidBodies and StaticBodies of various types straight into the add node menu.

Usage
-----
Once the addon is active, additional nodes will be available in the add node menu.

<img width="451" src="https://user-images.githubusercontent.com/4955051/188564588-01987847-d48f-4c56-8edf-559616541273.png">

<img width="451" src="https://user-images.githubusercontent.com/4955051/188564922-153fca13-c0e3-469e-971e-853333256de9.png">

The `MeshInstance` sub-nodes simply add a `MeshInstance` with a mesh already assigned.

The `RigidBody`and `StaticBody` sub-nodes add a body with a mesh and collider as children. A script is also added that allows the collision shape to control the mesh shape (this option can be disabled in the project prefences under Plugins -> Quick Mesh -> Add Collision Syncronisers).

![Godot_v4 0-alpha15_win64_Gcw1nI57Wk](https://user-images.githubusercontent.com/4955051/188566289-7da4dae6-8442-4a4d-baf8-b7120cde8103.gif)

<img width="328" alt="Godot_v4 0-alpha15_win64_Eczv6skc7G" src="https://user-images.githubusercontent.com/4955051/188566498-767246f2-e5c8-4cca-a47a-33f8de5ca5ca.png">
