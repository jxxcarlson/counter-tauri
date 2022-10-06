module Main exposing(main)

import Browser
import Html exposing (Html, span, button, div, text)
import Html.Attributes as HA
import Html.Events exposing (onClick)

main =
  Browser.sandbox { init = 0, update = update, view = view }

type Msg = Increment | Decrement

update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1

view model =
  div [HA.style "padding" "48px"]
    [ button (onClick Decrement :: buttonStyle) [ text "-" ]
    , div displayStyle  [ text (String.fromInt model) ]
    , button (onClick Increment :: buttonStyle) [ text "+" ]
    ]


displayStyle = [ HA.style "background-color" "#999" 
               , HA.style "width" "80px"
               , HA.style "color" "#fff"
               , HA.style "text-align" "center" ]


buttonStyle = [ HA.style "background-color" "#444" 
               , HA.style "width" "80px"
               , HA.style "color" "#fff" ]
