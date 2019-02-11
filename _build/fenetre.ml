open Tsdl
open Result

let width = 480
let length = 272

(*
let () = Printf.printf "%d , %d \n" width length
*)

(*
Affichage de la fenetre
*)

let main () = match Sdl.init Sdl.Init.video with
| Error (`Msg e) -> Sdl.log "Init error: %s" e; exit 1
| Ok () ->
    match Sdl.create_window ~w:width ~h:length "SDL OpenGL" Sdl.Window.opengl with
    | Error (`Msg e) -> Sdl.log "Create window error: %s" e; exit 1
    | Ok w ->
        Sdl.delay 10000l;
        Sdl.destroy_window w;
        Sdl.quit ();
        exit 0

let () = main ()
