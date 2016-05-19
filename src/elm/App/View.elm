module App.View exposing (..)

import App.Model exposing (Model)
import App.Msg exposing (Msg(..))

import Header.View as Header exposing (view)
import Authentication.View as Authentication exposing (view)

import Html exposing (Html, div)
import Html.App as App exposing (map)

view : Model -> Html Msg
view model =
  let
    content =
      [ App.map Header (Header.view model.header) ]
  in
    div []
      [ App.map Authentication (Authentication.view model.authentication content) ]
