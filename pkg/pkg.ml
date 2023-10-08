#!/usr/bin/env ocaml
#use "topfind"
#require "topkg"
open Topkg

let () =
  Pkg.describe "affect" @@ fun c ->
  Ok [ Pkg.mllib "src/affect.mllib" ~dst_dir:"eio_domainslib_interface";
       Pkg.mllib "src/affect_unix.mllib" ~dst_dir:"unix";
       Pkg.test "test/test";
       Pkg.test "test/ping";
       Pkg.test "test/mouse";
       Pkg.doc "test/ping.ml";
       Pkg.doc "test/mouse.ml";
       Pkg.doc "doc/index.mld" ~dst:"odoc-pages/index.mld"]
