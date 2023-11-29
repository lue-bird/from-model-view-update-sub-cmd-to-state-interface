module BrowserApp.Svg exposing (element)

{-| Helpers for svg [DOM node types](BrowserApp#DomNode)

@docs element

for text, attributes etc use the re

-}

import BrowserApp exposing (DomNode)
import BrowserApp.Dom exposing (Modifier)


{-| Create an SVG element [`DomNode`](BrowserApp#DomNode).
with a given tag, [`Modifier`](BrowserApp-Dom#Modifier)s and sub-nodes.
-}
element : String -> List (Modifier state) -> List (DomNode state) -> DomNode state
element tag modifiers subs =
    BrowserApp.Dom.elementNamespaced "http://www.w3.org/2000/svg" tag modifiers subs
