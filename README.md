# Inline Css

Css helpers for inline usage.

```elm
import Html exposing (Html, Attribute, div, text)
import InlineCss exposing (..)

example : Html a
example =
    div
        [ myStyle ]
        [ text "Foo" ]

myStyle : Attribute a
myStyle =
	style
        [ padding (px 50)
        , background "#f00"
        , color "#000"
        , display.flex
        ]
```

