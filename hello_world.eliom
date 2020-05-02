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

let main_service = Eliom_content.Html.D.(
  Eliom_registration.Html.create
    ~path:(Eliom_service.Path [""])
    ~meth:(Eliom_service.Get Eliom_parameter.unit)
    (fun () () ->
      Lwt.return
        (html (head (title (txt "")) [])
           (body [h1 [txt "Hello"]])))
)

