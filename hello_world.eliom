[%%shared
    open Eliom_content
    open Eliom_content.Html.D
    (*open Tyxml.Html*)
]

let content =
  fun () () ->
    Lwt.return
      (html
        (head (title (txt "Hello, World!")) [])
        (body
          [p [txt "Hello, World!"]]
        )
      )

(*let main_service =
  Eliom_registration.Html.create_attached_get ~path:[] ~get_params:Eliom_parameter.unit content
*)
