module InlineCss
    exposing
        ( mixin
        , element
        , bloc
        , styles
        , url
        , rgba
        , transparent
        , Element
        , CssProperty
        , Size
        , zero
        , px
        , pr
        , em
        , auto
        , Duration
        , sec
        , ms
        , opacity
        , color
        , background
        , backgroundAttachment
        , backgroundColor
        , backgroundImage
        , backgroundPosition
        , backgroundRepeat
        , backgroundClip
        , backgroundOrigin
        , backgroundSize
        , backgroundSizes
        , border
        , borderTop
        , borderRight
        , borderBottom
        , borderLeft
        , borderColor
        , borderTopColor
        , borderBottomColor
        , borderRightColor
        , borderLeftColor
        , borderWidth
        , borderTopWidth
        , borderRightWidth
        , borderBottomWidth
        , borderLeftWidth
        , borderStyle
        , borderTopStyle
        , borderRightStyle
        , borderBottomStyle
        , borderLeftStyle
        , borderImage
        , borderImageSource
        , borderImageOutset
        , borderImageRepeat
        , borderImageSlice
        , borderImageWidth
        , borderRadius
        , borderTopLeftRadius
        , borderTopRightRadius
        , borderBottomRightRadius
        , borderBottomLeftRadius
        , boxShadow
        , boxShadows
        , top
        , right
        , bottom
        , left
        , width
        , minWidth
        , maxWidth
        , height
        , minHeight
        , maxHeight
        , clear
        , clip
        , display
        , float
        , overflow
        , overflowX
        , overflowY
        , margin
        , margin2
        , margin3
        , margin4
        , marginBottom
        , marginLeft
        , marginRight
        , marginTop
        , padding
        , padding2
        , padding3
        , padding4
        , paddingBottom
        , paddingLeft
        , paddingRight
        , paddingTop
        , position
        , visibility
        , verticalAlign
        , zIndex
        , alignContent
        , alignItems
        , alignSelf
        , flex
        , flexDirection
        , flexWith
        , flexFlow
        , flexGrow
        , flexShrink
        , flexBasis
        , flexWrap
        , justifyContent
        , order
        , letterSpacing
        , lineHeight
        , tabSize
        , textAlign
        , textAlignLast
        , textIndent
        , textJustify
        , textTransform
        , whiteSpace
        , wordBreak
        , wordSpacing
        , wordWrap
        , textDecoration
        , textDecorationColor
        , textDecorationLine
        , textDecorationStyle
        , textShadow
        , font
        , fonts
        , fontFamily
        , fontSize
        , fontSizes
        , fontStyle
        , fontVariant
        , fontWeight
        , fontWeights
        , fontSizeAdjust
        , fontStretch
        , direction
        , unicodeBidi
        , borderCollapse
        , borderSpacing
        , captionSide
        , emptyCells
        , tableLayout
        , counterIncrement
        , counterReset
        , counterResetAt
        , listStyle
        , listStyleImage
        , listStylePosition
        , listStyleType
        , animation
        , animationDelay
        , animationDirection
        , animationDuration
        , animationFillMode
        , animationIterationCount
        , animationInfinite
        , animationName
        , animationTimingFunction
        , animationPlayState
        , backfaceVisibility
        , perspective
        , perspectiveOrigin
        , transform
        , transformOrigin
        , transformStyle
        , transition
        , transitionProperty
        , transitionAll
        , transitionDuration
        , transitionTimingFunction
        , transitionDelay
        , boxSizing
        , cursor
        , outline
        , outlineColor
        , outlineInvert
        , outlineOffset
        , outlineStyle
        , outlineWidth
        , outlineWidths
        , resize
        , textOverflow
        , columnRule
        , columnCount
        , columnGap
        , columnRuleColor
        , columnRuleStyle
        , columnRuleWidth
        , columnRuleWidths
        , columnSpan
        , columnWidth
        , columns
        , quotes
        , userSelect
        , pointerEvents
        )

{-| A set of helpers to create CSS properties.

    import Html exposing (Html, div, text)
    import Css.Properties exposing (..)

    example : Html
    example state =
        div
            [ styles
                [ height (px 50)
                , background "#1C1F26"
                , color "#7A8092"
                ]
            ]
            [ text "Foo" ]


# Basics

@docs CssProperty,Element,element,bloc,styles,mixin


# Misc

@docs opacity, url,transparent,rgba


# Units

@docs Size,Duration,px,pr,em,sec,ms,zero,auto


# Functions


## Background

@docs background,backgroundAttachment,backgroundColor,backgroundImage,backgroundPosition,backgroundRepeat,backgroundClip,backgroundOrigin,backgroundSize,backgroundSizes


## Border

@docs border,borderTop,borderRight,borderBottom,borderLeft,borderColor,borderTopColor,borderBottomColor,borderRightColor,borderLeftColor,borderWidth,borderTopWidth,borderRightWidth,borderBottomWidth,borderLeftWidth,borderStyle,borderTopStyle,borderRightStyle,borderBottomStyle,borderLeftStyle,borderImage,borderImageOutset,borderImageRepeat,borderImageSlice,borderImageSource,borderImageWidth


## Border Radius

@docs borderRadius,borderTopLeftRadius,borderTopRightRadius,borderBottomRightRadius,borderBottomLeftRadius


## Box Shadow/Decoration

@docs boxShadow,boxShadows


## Box

@docs top,right,bottom,left,width,minWidth,maxWidth,height,minHeight,maxHeight,clear,clip,display,float,overflow,overflowX,overflowY,margin,marginBottom,marginLeft,marginRight,marginTop,margin2,margin3,margin4,padding,paddingBottom,paddingLeft,paddingRight,paddingTop,padding2,padding3,padding4,position,visibility,verticalAlign,zIndex


## Flex Box Model

@docs alignContent,alignItems,alignSelf,flex,flexWith,flexDirection,flexFlow,flexGrow,flexShrink,flexWrap,flexBasis,justifyContent,order

@docs letterSpacing,lineHeight,tabSize,textAlign,textAlignLast,textIndent,textJustify,textTransform,whiteSpace,wordBreak,wordWrap,textDecoration,textDecorationColor,textDecorationLine,textDecorationStyle,textShadow


## Fonts

@docs font,fonts,color,fontFamily,fontSize,fontSizes,fontStyle,fontVariant,fontWeight,fontWeights,fontSizeAdjust,fontStretch,wordSpacing

@docs direction,unicodeBidi


## Tables

@docs borderCollapse,borderSpacing,captionSide,emptyCells,tableLayout


## Lists and Counters Properties

@docs counterIncrement,counterReset,counterResetAt,listStyle,listStyleImage,listStylePosition,listStyleType


## Animation Properties

@docs animation,animationDelay,animationDirection,animationDuration,animationFillMode,animationIterationCount,animationName,animationTimingFunction,animationPlayState,animationInfinite


## Transform Properties

@docs backfaceVisibility,perspective,perspectiveOrigin,transform,transformOrigin,transformStyle


## Transitions Properties

@docs transition,transitionProperty,transitionDuration,transitionTimingFunction,transitionDelay,transitionAll


## Basic User Interface Properties

@docs boxSizing,cursor,outline,outlineColor,outlineOffset,outlineStyle,outlineWidth,resize,textOverflow,outlineInvert,outlineWidths,userSelect, pointerEvents


## Multi-column Layout Properties

@docs columnCount,columnGap,columnRule,columnRuleColor,columnRuleStyle,columnRuleWidth,columnRuleWidths,columnSpan,columnWidth,columns


## Generated Content for Paged Media

@docs quotes

-}

import Html
import Html.Attributes
import Json.Encode as Encode


{-| Css Property

Using List to be able to make mixins

-}
type alias CssProperty =
    List ( String, String )


{-| Html ctor
-}
type alias Element msg =
    List (Html.Attribute msg)
    -> List (Html.Html msg)
    -> Html.Html msg


{-| Css Property
Using List to be able to make mixins
-}
mixin : List CssProperty -> CssProperty
mixin =
    List.concat


{-| Use your styles in Html.Attribute
-}
element : Element a -> List CssProperty -> Element a
element n stls =
    let
        cachedStyles =
            stylesToAttributes stls
    in
        n << (++) cachedStyles


{-| Styled div
-}
bloc : List CssProperty -> Element a
bloc =
    element Html.div


stylesToAttributes : List CssProperty -> List (Html.Attribute a)
stylesToAttributes =
    List.concat
        >> List.map
            (\( x, y ) ->
                Html.Attributes.style x y
            )


{-| Use your styles in Html.Attribute
-}
styles : List CssProperty -> Html.Attribute a
styles stylesList =
    let
        stylesStr =
            List.map
                (\( k, v ) -> k ++ ": " ++ v ++ ";")
                (List.concat stylesList)
                |> String.join " "
    in
        Html.Attributes.property "style" (Encode.string stylesStr)


prop : String -> String -> CssProperty
prop p v =
    [ ( p, v ) ]



{-
   ## Utils
-}


{-| url
-}
url : String -> String
url u =
    "url(" ++ u ++ ")"


{-| rgba
-}
rgba : Int -> Int -> Int -> Float -> String
rgba r g b a =
    "rgba(" ++ (String.fromInt r) ++ "," ++ (String.fromInt g) ++ "," ++ (String.fromInt b) ++ "," ++ (String.fromFloat a) ++ ")"


{-| transparent
-}
transparent : String
transparent =
    "transparent"


{-| zero
-}
zero : Size
zero =
    px 0



---- Units ----


{-| Size units
-}
type Size
    = Pixel Int
    | Percent Float
    | Em Float
    | Rem Float
    | Auto



-- | Ex Float | Ch Float | Rem Float
-- | Mm Float | Cm Float | In Float | Pt Float | Pc Float


{-| Duration units
-}
type Duration
    = MSec Float
    | Sec Float


{-| Pixel size
-}
px : Int -> Size
px i =
    Pixel i


{-| Percent size
-}
pr : Float -> Size
pr i =
    Percent i


{-| Em size
-}
em : Float -> Size
em i =
    Em i


{-| Rem size
-}
rem : Float -> Size
rem i =
    Rem i


{-| Auto size
-}
auto : Size
auto =
    Auto


{-| Seconds for transitions and animations
-}
sec : Float -> Duration
sec i =
    Sec i


{-| Milli-Seconds for transitions and animations
-}
ms : Float -> Duration
ms i =
    MSec i


sizeToString : Size -> String
sizeToString s =
    case s of
        Pixel p ->
            (String.fromInt p) ++ "px"

        Percent p ->
            (String.fromFloat p) ++ "%"

        Em e ->
            (String.fromFloat e) ++ "em"

        Rem r ->
            (String.fromFloat r) ++ "rem"

        Auto ->
            "auto"



-- Ex  s     -> (String.fromInt s) ++ "ex"
-- Ch  s     -> (String.fromInt s) ++ "ch"
-- Mm  s     -> (String.fromInt s) ++ "mm"
-- Cm  s     -> (String.fromInt s) ++ "cm"
-- In  s     -> (String.fromInt s) ++ "in"
-- Pt  s     -> (String.fromInt s) ++ "pt"
-- Pc  s     -> (String.fromInt s) ++ "pc"


durationToString : Duration -> String
durationToString t =
    case t of
        MSec p ->
            (String.fromFloat p) ++ "ms"

        Sec p ->
            (String.fromFloat p) ++ "s"


{-| Opacity (Float between 0 and 1)
-}
opacity : Float -> CssProperty
opacity i =
    prop "opacity" <| String.fromFloat i



---- COLORS ----


{-| Color alias
-}
type alias CssColor =
    String


{-| Sets the background color of an element CSS#1
-}
color : CssColor -> CssProperty
color =
    prop "color"



---- BACKGROUND ----


{-| Sets all the background properties in one declaration CSS#1
-}
background : String -> CssProperty
background =
    prop "background"


{-| Sets whether a background image is fixed or scrolls with the rest of the page CSS#1
-}
backgroundAttachment :
    { fixed : CssProperty
    , local : CssProperty
    , scroll : CssProperty
    }
backgroundAttachment =
    { scroll = prop "background-attachment" "scroll"
    , fixed = prop "background-attachment" "fixed"
    , local = prop "background-attachment" "local"
    }


{-| Sets the background color of an element CSS#1
-}
backgroundColor : CssColor -> CssProperty
backgroundColor =
    prop "background-color"


{-| Sets the background image for an element - CSS#1
-}
backgroundImage : String -> CssProperty
backgroundImage =
    prop "background-image" << url


{-| Sets the starting position of a background image - CSS#1
-}
backgroundPosition :
    { bottomCenter : CssProperty
    , bottomLeft : CssProperty
    , bottomRight : CssProperty
    , center : CssProperty
    , centerLeft : CssProperty
    , centerRight : CssProperty
    , custom : String -> CssProperty
    , topCenter : CssProperty
    , topLeft : CssProperty
    , topRight : CssProperty
    }
backgroundPosition =
    { center = prop "background-position" "center"
    , centerLeft = prop "background-position" "left center"
    , centerRight = prop "background-position" "right center"
    , topLeft = prop "background-position" "left top"
    , topRight = prop "background-position" "right top"
    , topCenter = prop "background-position" "center top"
    , bottomLeft = prop "background-position" "left bottom"
    , bottomRight = prop "background-position" "right bottom"
    , bottomCenter = prop "background-position" "center bottom"
    , custom = prop "background-position"
    }


{-| Sets how a background image will be repeated - CSS#1
-}
backgroundRepeat :
    { noRepeat : CssProperty
    , repeat : CssProperty
    , repeatX : CssProperty
    , repeatY : CssProperty
    }
backgroundRepeat =
    { repeat = prop "background-repeat" "repeat"
    , repeatX = prop "background-repeat" "repeat-x"
    , repeatY = prop "background-repeat" "repeat-y"
    , noRepeat = prop "background-repeat" "no-repeat"
    }


{-| Specifies the painting area of the background - CSS#3
-}
backgroundClip :
    { borderBox : CssProperty
    , contentBox : CssProperty
    , paddingBox : CssProperty
    }
backgroundClip =
    { borderBox = prop "background-clip" "border-box"
    , paddingBox = prop "background-clip" "padding-box"
    , contentBox = prop "background-clip" "content-box"
    }


{-| Specifies the positioning area of the background images - CSS#3
-}
backgroundOrigin :
    { borderBox : CssProperty
    , contentBox : CssProperty
    , paddingBox : CssProperty
    }
backgroundOrigin =
    { paddingBox = prop "background-origin" "padding-box"
    , borderBox = prop "background-origin" "border-box"
    , contentBox = prop "background-origin" "content-box"
    }


{-| Specifies the size of the background images - CSS#3
-}
backgroundSize : Size -> CssProperty
backgroundSize s =
    prop "background-size" (sizeToString s)


{-| Predefined background sizes - CSS#3
-}
backgroundSizes :
    { auto : CssProperty
    , contain : CssProperty
    , cover : CssProperty
    }
backgroundSizes =
    { auto = prop "background-size" "auto"
    , cover = prop "background-size" "cover"
    , contain = prop "background-size" "contain"
    }



---- BORDER ----


{-| Sets all the border properties in one declaration CSS#1
-}
border : Int -> CssColor -> CssProperty
border s c =
    prop "border" (String.fromInt s ++ "px solid " ++ c)


{-| Sets all the top border properties in one declaration CSS#1
-}
borderTop : Int -> CssColor -> CssProperty
borderTop s c =
    prop "border-top" (String.fromInt s ++ "px solid " ++ c)


{-| Sets all the right border properties in one declaration CSS#1
-}
borderRight : Int -> CssColor -> CssProperty
borderRight s c =
    prop "border-right" (String.fromInt s ++ "px solid " ++ c)


{-| Sets all the bottom border properties in one declaration - CSS#1
-}
borderBottom : Int -> CssColor -> CssProperty
borderBottom s c =
    prop "border-bottom" (String.fromInt s ++ "px solid " ++ c)


{-| Sets all the left border properties in one declaration - CSS#1
-}
borderLeft : Int -> CssColor -> CssProperty
borderLeft s c =
    prop "border-left" (String.fromInt s ++ "px solid " ++ c)


{-| Sets the color of the four borders - CSS#1
-}
borderColor : CssColor -> CssProperty
borderColor =
    prop "border-color"


{-| Sets the color of the top border - CSS#1
-}
borderTopColor : CssColor -> CssProperty
borderTopColor =
    prop "border-top-color"


{-| Sets the color of the bottom border CSS#1
-}
borderBottomColor : CssColor -> CssProperty
borderBottomColor =
    prop "border-bottom-color"


{-| Sets the color of the right border - CSS#1
-}
borderRightColor : CssColor -> CssProperty
borderRightColor =
    prop "border-right-color"


{-| Sets the color of the left border CSS#1
-}
borderLeftColor : CssColor -> CssProperty
borderLeftColor =
    prop "border-left-color"


{-| Sets the width of the four borders - CSS#1
-}
borderWidth : Size -> CssProperty
borderWidth s =
    prop "border-width" (sizeToString s)


{-| Sets the width of the top border - CSS#1
-}
borderTopWidth : Size -> CssProperty
borderTopWidth s =
    prop "border-top-width" (sizeToString s)


{-| Sets the width of the right border - CSS#1
-}
borderRightWidth : Size -> CssProperty
borderRightWidth s =
    prop "border-right-width" (sizeToString s)


{-| Sets the width of the bottom border CSS#1
-}
borderBottomWidth : Size -> CssProperty
borderBottomWidth s =
    prop "border-bottom-width" (sizeToString s)


{-| Sets the width of the left border CSS#1
-}
borderLeftWidth : Size -> CssProperty
borderLeftWidth s =
    prop "border-left-width" (sizeToString s)


{-| Alias
-}
type alias BorderStyle =
    { dashed : CssProperty
    , none : CssProperty
    , dotted : CssProperty
    , double : CssProperty
    , groove : CssProperty
    , hidden : CssProperty
    , inset : CssProperty
    , outset : CssProperty
    , ridge : CssProperty
    , solid : CssProperty
    }


bdStyles : String -> BorderStyle
bdStyles p =
    { none = prop p "none"
    , hidden = prop p "hidden"
    , dotted = prop p "dotted"
    , dashed = prop p "dashed"
    , solid = prop p "solid"
    , double = prop p "double"
    , groove = prop p "groove"
    , ridge = prop p "ridge"
    , inset = prop p "inset"
    , outset = prop p "outset"
    }


{-| Sets the style of the four borders - CSS#1
-}
borderStyle : BorderStyle
borderStyle =
    bdStyles "border-style"


{-| Sets the style of the top border - CSS#1
-}
borderTopStyle : BorderStyle
borderTopStyle =
    bdStyles "border-top-style"


{-| Sets the style of the right border - CSS#1
-}
borderRightStyle : BorderStyle
borderRightStyle =
    bdStyles "border-right-style"


{-| Sets the style of the bottom border CSS#1
-}
borderBottomStyle : BorderStyle
borderBottomStyle =
    bdStyles "border-bottom-style"


{-| Sets the style of the left border CSS#1
-}
borderLeftStyle : BorderStyle
borderLeftStyle =
    bdStyles "border-left-style"


{-| A shorthand property for setting all the border-image-* properties - CSS#3
-}
borderImage : String -> CssProperty
borderImage =
    prop "border-image"


{-| Specifies an image to be used as a border - CSS#3
-}
borderImageSource : String -> CssProperty
borderImageSource =
    prop "border-image-source" << url


{-| Specifies the amount by which the border image area extends beyond the border box - CSS#3
-}
borderImageOutset : Size -> CssProperty
borderImageOutset s =
    prop "border-image-outset" (sizeToString s)


{-| Specifies whether the image-border should be repeated, rounded or stretched - CSS#3
-}
borderImageRepeat :
    { repeat : CssProperty
    , round : CssProperty
    , stretch : CssProperty
    }
borderImageRepeat =
    { stretch = prop "border-image-repeat" "stretch"
    , repeat = prop "border-image-repeat" "repeat"
    , round = prop "border-image-repeat" "round"
    }


{-| Specifies the inward offsets of the image-border - CSS#3
-}
borderImageSlice : Int -> CssProperty
borderImageSlice =
    prop "border-image-slice" << String.fromInt


{-| Specifies the widths of the image-border - CSS#3
-}
borderImageWidth : Size -> CssProperty
borderImageWidth s =
    prop "border-image-width" (sizeToString s)



---- BORDER RADIUS ----


{-| A shorthand property for setting all the four border-*-radius properties - CSS#3
-}
borderRadius : Size -> CssProperty
borderRadius s =
    prop "border-radius" (sizeToString s)


{-| Defines the shape of the border of the top-left corner - CSS#3
-}
borderTopLeftRadius : Size -> CssProperty
borderTopLeftRadius s =
    prop "border-top-left-radius" (sizeToString s)


{-| Defines the shape of the border of the top-right corner - CSS#3
-}
borderTopRightRadius : Size -> CssProperty
borderTopRightRadius s =
    prop "border-top-right-radius" (sizeToString s)


{-| Defines the shape of the border of the bottom-right corner - CSS#3
-}
borderBottomRightRadius : Size -> CssProperty
borderBottomRightRadius s =
    prop "border-bottom-right-radius" (sizeToString s)


{-| Defines the shape of the border of the bottom-left corner - CSS#3
-}
borderBottomLeftRadius : Size -> CssProperty
borderBottomLeftRadius s =
    prop "border-bottom-left-radius" (sizeToString s)



---- BOX SHADOW ----


{-| Attaches one drop-shadow to the box - CSS#3
-}
boxShadow : Size -> Size -> Size -> CssColor -> CssProperty
boxShadow x y w c =
    prop "box-shadow" (shadowToString (Shadow x y w c False))


type alias Shadow =
    { x : Size
    , y : Size
    , width : Size
    , color : CssColor
    , inset : Bool
    }


{-| Attaches multiple drop-shadowZ to the box - CSS#3
-}
boxShadows : List Shadow -> CssProperty
boxShadows l =
    prop "box-shadow" (String.join ", " (List.map shadowToString l))


{-| Utils
-}
shadowToString : Shadow -> String
shadowToString s =
    (sizeToString s.x)
        ++ " "
        ++ (sizeToString s.y)
        ++ " "
        ++ (sizeToString s.width)
        ++ " "
        ++ s.color
        ++ (if s.inset then
                " inset"
            else
                ""
           )



---- BOX ----


{-| Specifies the top position of a positioned element - CSS#2
-}
top : Size -> CssProperty
top s =
    prop "top" (sizeToString s)


{-| Specifies the right position of a positioned element - CSS#2
-}
right : Size -> CssProperty
right s =
    prop "right" (sizeToString s)


{-| Specifies the bottom position of a positioned element - CSS#2
-}
bottom : Size -> CssProperty
bottom s =
    prop "bottom" (sizeToString s)


{-| Specifies the left position of a positioned element - CSS#2
-}
left : Size -> CssProperty
left s =
    prop "left" (sizeToString s)


{-| Sets the width of an element - CSS#1
-}
width : Size -> CssProperty
width s =
    prop "width" (sizeToString s)


{-| Sets the minimum width of an element - CSS#2
-}
minWidth : Size -> CssProperty
minWidth s =
    prop "min-width" (sizeToString s)


{-| Sets the maximum width of an element - CSS#2
-}
maxWidth : Size -> CssProperty
maxWidth s =
    prop "max-width" (sizeToString s)


{-| Sets the height of an element CSS#1
-}
height : Size -> CssProperty
height s =
    prop "height" (sizeToString s)


{-| Sets the minimum height of an element - CSS#2
-}
minHeight : Size -> CssProperty
minHeight s =
    prop "min-height" (sizeToString s)


{-| Sets the maximum height of an element - CSS#2
-}
maxHeight : Size -> CssProperty
maxHeight s =
    prop "max-height" (sizeToString s)


{-| Specifies which sides of an element where other floating elements are not allowed CSS#1
-}
clear :
    { both : CssProperty
    , left : CssProperty
    , none : CssProperty
    , right : CssProperty
    }
clear =
    { none = prop "clear" "none"
    , left = prop "clear" "left"
    , right = prop "clear" "right"
    , both = prop "clear" "both"
    }


{-| Clips an absolutely positioned element - CSS#2
-}
clip : Size -> Size -> Size -> Size -> CssProperty
clip t r b l =
    prop "clip" ("rect(" ++ (String.join "," (List.map sizeToString [ t, r, b, l ])) ++ ")")


{-| Specifies how a certain HTML element should be displayed - CSS#1
-}
display :
    { block : CssProperty
    , flex : CssProperty
    , inline : CssProperty
    , inlineBlock : CssProperty
    , inlineFlex : CssProperty
    , inlineTable : CssProperty
    , listItem : CssProperty
    , none : CssProperty
    , runIn : CssProperty
    , table : CssProperty
    , tableCaption : CssProperty
    , tableCell : CssProperty
    , tableColumn : CssProperty
    , tableColumnGroup : CssProperty
    , tableFooterGroup : CssProperty
    , tableHeaderGroup : CssProperty
    , tableRow : CssProperty
    , tableRowGroup : CssProperty
    }
display =
    { inline = prop "display" "inline"
    , block = prop "display" "block"
    , flex = prop "display" "flex"
    , inlineBlock = prop "display" "inline-block"
    , inlineFlex = prop "display" "inline-flex"
    , inlineTable = prop "display" "inline-table"
    , listItem = prop "display" "list-item"
    , runIn = prop "display" "run-in"
    , table = prop "display" "table"
    , tableCaption = prop "display" "table-caption"
    , tableColumnGroup = prop "display" "table-column-group"
    , tableHeaderGroup = prop "display" "table-header-group"
    , tableFooterGroup = prop "display" "table-footer-group"
    , tableRowGroup = prop "display" "table-row-group"
    , tableCell = prop "display" "table-cell"
    , tableColumn = prop "display" "table-column"
    , tableRow = prop "display" "table-row"
    , none = prop "display" "none"
    }


{-| Specifies whether or not a box should float CSS#1
-}
float :
    { left : CssProperty
    , none : CssProperty
    , right : CssProperty
    }
float =
    { none = prop "float" "none"
    , left = prop "float" "left"
    , right = prop "float" "right"
    }


type alias OverflowStyles =
    { auto : CssProperty
    , hidden : CssProperty
    , scroll : CssProperty
    , visible : CssProperty
    }


{-| Utils
-}
ovStytles : String -> OverflowStyles
ovStytles p =
    { visible = prop p "visible"
    , hidden = prop p "hidden"
    , scroll = prop p "scroll"
    , auto = prop p "auto"
    }


{-| Specifies what happens if content overflows an element's box - CSS#2
-}
overflow : OverflowStyles
overflow =
    ovStytles "overflow"


{-| Specifies whether or not to clip the left/right edges of the content,
if it overflows the element's content area - CSS#3
-}
overflowX : OverflowStyles
overflowX =
    ovStytles "overflow-x"


{-| Specifies whether or not to clip the top/bottom edges of the content,
if it overflows the element's content area - CSS#3
-}
overflowY : OverflowStyles
overflowY =
    ovStytles "overflow-y"


{-| Sets all the margin properties in one declaration - CSS#1
-}
margin : Size -> CssProperty
margin s =
    prop "margin" (sizeToString s)


{-| margin: top/bottom left/right
-}
margin2 : Size -> Size -> CssProperty
margin2 x y =
    prop "margin" (String.join " " (List.map sizeToString [ x, y ]))


{-| margin : top left/right bottom
-}
margin3 : Size -> Size -> Size -> CssProperty
margin3 x y z =
    prop "margin" (String.join " " (List.map sizeToString [ x, y, z ]))


{-| margin : top bottom left right
-}
margin4 : Size -> Size -> Size -> Size -> CssProperty
margin4 w x y z =
    prop "margin" (String.join " " (List.map sizeToString [ w, x, y, z ]))


{-| Sets the bottom margin of an element CSS#1
-}
marginBottom : Size -> CssProperty
marginBottom s =
    prop "margin-bottom" (sizeToString s)


{-| Sets the left margin of an element CSS#1
-}
marginLeft : Size -> CssProperty
marginLeft s =
    prop "margin-left" (sizeToString s)


{-| Sets the right margin of an element - CSS#1
-}
marginRight : Size -> CssProperty
marginRight s =
    prop "margin-right" (sizeToString s)


{-| Sets the top margin of an element - CSS#1
-}
marginTop : Size -> CssProperty
marginTop s =
    prop "margin-top" (sizeToString s)


{-| Sets all the padding properties in one declaration - CSS#1
-}
padding : Size -> CssProperty
padding x =
    prop "padding" (sizeToString x)


{-| padding: top/bottom left/right
-}
padding2 : Size -> Size -> CssProperty
padding2 x y =
    prop "padding" (String.join " " (List.map sizeToString [ x, y ]))


{-| padding : top left/right bottom
-}
padding3 : Size -> Size -> Size -> CssProperty
padding3 x y z =
    prop "padding" (String.join " " (List.map sizeToString [ x, y, z ]))


{-| padding : top bottom left right
-}
padding4 : Size -> Size -> Size -> Size -> CssProperty
padding4 w x y z =
    prop "padding" (String.join " " (List.map sizeToString [ w, x, y, z ]))


{-| Sets the bottom padding of an element CSS#1
-}
paddingBottom : Size -> CssProperty
paddingBottom s =
    prop "padding-bottom" (sizeToString s)


{-| Sets the left padding of an element CSS#1
-}
paddingLeft : Size -> CssProperty
paddingLeft s =
    prop "padding-left" (sizeToString s)


{-| Sets the right padding of an element - CSS#1
-}
paddingRight : Size -> CssProperty
paddingRight s =
    prop "padding-right" (sizeToString s)


{-| Sets the top padding of an element - CSS#1
-}
paddingTop : Size -> CssProperty
paddingTop s =
    prop "padding-top" (sizeToString s)


{-| Specifies the type of positioning method used for an element
(static, relative, absolute or fixed) - CSS#2
-}
position :
    { absolute : CssProperty
    , fixed : CssProperty
    , relative : CssProperty
    , static : CssProperty
    }
position =
    { static = prop "position" "static"
    , absolute = prop "position" "absolute"
    , fixed = prop "position" "fixed"
    , relative = prop "position" "relative"
    }


{-| Specifies whether or not an element is visible - CSS#2
-}
visibility :
    { collapse : CssProperty
    , hidden : CssProperty
    , visible : CssProperty
    }
visibility =
    { visible = prop "visibility" "visible"
    , hidden = prop "visibility" "hidden"
    , collapse = prop "visibility" "collapse"
    }


{-| Sets the vertical alignment of an element CSS#1
-}
verticalAlign :
    { baseline : CssProperty
    , bottom : CssProperty
    , length : CssProperty
    , middle : CssProperty
    , sub : CssProperty
    , super : CssProperty
    , textBottom : CssProperty
    , textTop : CssProperty
    , top : CssProperty
    }
verticalAlign =
    { baseline = prop "vertical-align" "baseline"
    , length = prop "vertical-align" "length"
    , sub = prop "vertical-align" "sub"
    , super = prop "vertical-align" "super"
    , top = prop "vertical-align" "top"
    , textTop = prop "vertical-align" "text-top"
    , middle = prop "vertical-align" "middle"
    , bottom = prop "vertical-align" "bottom"
    , textBottom = prop "vertical-align" "text-bottom"
    }


{-| Sets the stack order of a positioned element - CSS#2
-}
zIndex : Int -> CssProperty
zIndex =
    prop "z-index" << String.fromInt



---- FLEX BOX MODEL ----


{-| Specifies the alignment between the lines inside a flexible container
when the items do not use all available space. - CSS#3
-}
alignContent :
    { center : CssProperty
    , flexEnd : CssProperty
    , flexStart : CssProperty
    , spaceAround : CssProperty
    , spaceBetween : CssProperty
    , stretch : CssProperty
    }
alignContent =
    { stretch = prop "align-content" "stretch"
    , center = prop "align-content" "center"
    , flexStart = prop "align-content" "flex-start"
    , flexEnd = prop "align-content" "flex-end"
    , spaceBetween = prop "align-content" "space-between"
    , spaceAround = prop "align-content" "space-around"
    }


{-| Specifies the alignment for items inside a flexible container. - CSS#3
-}
alignItems :
    { baseline : CssProperty
    , center : CssProperty
    , flexEnd : CssProperty
    , flexStart : CssProperty
    , stretch : CssProperty
    }
alignItems =
    { stretch = prop "align-items" "stretch"
    , center = prop "align-items" "center"
    , flexStart = prop "align-items" "flex-start"
    , flexEnd = prop "align-items" "flex-end"
    , baseline = prop "align-items" "baseline"
    }


{-| Specifies the alignment for selected items inside a flexible container. - CSS#3
-}
alignSelf :
    { auto : CssProperty
    , baseline : CssProperty
    , center : CssProperty
    , flexEnd : CssProperty
    , flexStart : CssProperty
    , stretch : CssProperty
    }
alignSelf =
    { auto = prop "align-self" "auto"
    , stretch = prop "align-self" "stretch"
    , center = prop "align-self" "center"
    , flexStart = prop "align-self" "flex-start"
    , flexEnd = prop "align-self" "flex-end"
    , baseline = prop "align-self" "baseline"
    }


{-| Specifies the length of the item, relative to the rest - CSS#3
-}
flex :
    { auto : CssProperty
    , flexBasis : Int -> CssProperty
    , flexGrow : Int -> CssProperty
    , flexShrink : Int -> CssProperty
    , none : CssProperty
    }
flex =
    { flexGrow = \i -> prop "flex" ("flex-grow(" ++ (String.fromInt i) ++ ")")
    , flexShrink = \i -> prop "flex" ("flex-shrink(" ++ (String.fromInt i) ++ ")")
    , flexBasis = \i -> prop "flex" ("flex-basis(" ++ (String.fromInt i) ++ ")")
    , auto = prop "flex" "auto"
    , none = prop "flex" "none"
    }


{-| Specifies the direction of the flexible items - CSS#3
-}
flexDirection :
    { column : CssProperty
    , columnReverse : CssProperty
    , row : CssProperty
    , rowReverse : CssProperty
    }
flexDirection =
    { row = prop "flex-direction" "row"
    , rowReverse = prop "flex-direction" "row-reverse"
    , column = prop "flex-direction" "column"
    , columnReverse = prop "flex-direction" "column-reverse"
    }


{-| A shorthand property for the flex-grow and the flex-shrink properties - CSS#3
-}
flexWith : Int -> Int -> CssProperty
flexWith i j =
    prop "flex" ((String.fromInt i) ++ " " ++ (String.fromInt j))


{-| A shorthand property for the flex-direction and the flex-wrap properties - CSS#3
-}
flexFlow : String -> CssProperty
flexFlow =
    prop "flex-flow"


{-| Specifies how much the item will grow relative to the rest - CSS#3
-}
flexGrow : Int -> CssProperty
flexGrow =
    prop "flex-grow" << String.fromInt


{-| Specifies how the item will shrink relative to the rest - CSS#3
-}
flexShrink : Int -> CssProperty
flexShrink =
    prop "flex-shrink" << String.fromInt


{-| Specifies how the item will shrink relative to the rest - CSS#3
-}
flexBasis : Size -> CssProperty
flexBasis s =
    prop "flex-basis" (sizeToString s)


{-| Specifies whether the flexible items should wrap or not - CSS#3
-}
flexWrap :
    { nowrap : CssProperty
    , wrap : CssProperty
    , wrapReverse : CssProperty
    }
flexWrap =
    { nowrap = prop "flex-wrap" "nowrap"
    , wrap = prop "flex-wrap" "wrap"
    , wrapReverse = prop "flex-wrap" "wrap-reverse"
    }


{-| Specifies the alignment between the items inside a flexible container
when the items do not use all available space. - CSS#3
-}
justifyContent :
    { center : CssProperty
    , flexEnd : CssProperty
    , flexStart : CssProperty
    , spaceAround : CssProperty
    , spaceBetween : CssProperty
    }
justifyContent =
    { flexStart = prop "justify-content" "flex-start"
    , flexEnd = prop "justify-content" "flex-end"
    , center = prop "justify-content" "center"
    , spaceBetween = prop "justify-content" "space-between"
    , spaceAround = prop "justify-content" "space-around"
    }


{-| Sets the order of the flexible item, relative to the rest - CSS#3
-}
order : Int -> CssProperty
order =
    prop "order" << String.fromInt



---- FONTS & TEXT ----


{-| Increases or decreases the space between characters in a text CSS#1
-}
letterSpacing : Size -> CssProperty
letterSpacing s =
    prop "letter-spacing" (sizeToString s)


{-| Specifies the length of the tab-character - CSS#3
-}
lineHeight : Size -> CssProperty
lineHeight s =
    prop "line-height" (sizeToString s)


{-| Specifies the horizontal alignment of text (number of chars) - CSS#1
-}
tabSize : Int -> CssProperty
tabSize =
    prop "tab-size" << String.fromInt


{-| Describes how the last line of a block or a line right before
-}
textAlign :
    { center : CssProperty
    , justify : CssProperty
    , left : CssProperty
    , right : CssProperty
    }
textAlign =
    { left = prop "text-align" "left"
    , right = prop "text-align" "right"
    , center = prop "text-align" "center"
    , justify = prop "text-align" "justify"
    }


{-| a forced line break is aligned when text-align is "justify" - CSS#3
-}
textAlignLast :
    { auto : CssProperty
    , center : CssProperty
    , end : CssProperty
    , justify : CssProperty
    , left : CssProperty
    , right : CssProperty
    , start : CssProperty
    }
textAlignLast =
    { auto = prop "text-align-last" "auto"
    , left = prop "text-align-last" "left"
    , right = prop "text-align-last" "right"
    , center = prop "text-align-last" "center"
    , justify = prop "text-align-last" "justify"
    , start = prop "text-align-last" "start"
    , end = prop "text-align-last" "end"
    }


{-| Specifies the indentation of the first line in a text-block CSS#1
-}
textIndent : Int -> CssProperty
textIndent =
    prop "text-indent" << String.fromInt


{-| Specifies the justification method used when text-align is "justify" - CSS#3
-}
textJustify :
    { auto : CssProperty
    , distribute : CssProperty
    , interCluster : CssProperty
    , interIdeograph : CssProperty
    , interWord : CssProperty
    , kashida : CssProperty
    , trim : CssProperty
    }
textJustify =
    { auto = prop "text-justify" "auto"
    , interWord = prop "text-justify" "inter-word"
    , interIdeograph = prop "text-justify" "inter-ideograph"
    , interCluster = prop "text-justify" "inter-cluster"
    , distribute = prop "text-justify" "distribute"
    , kashida = prop "text-justify" "kashida"
    , trim = prop "text-justify" "trim"
    }


{-| Controls the capitalization of text CSS#1
-}
textTransform :
    { capitalize : CssProperty
    , lowercase : CssProperty
    , none : CssProperty
    , uppercase : CssProperty
    }
textTransform =
    { none = prop "text-transform" "none"
    , capitalize = prop "text-transform" "capitalize"
    , uppercase = prop "text-transform" "uppercase"
    , lowercase = prop "text-transform" "lowercase"
    }


{-| Specifies how white-space inside an element is handled - CSS#1
-}
whiteSpace :
    { normal : CssProperty
    , nowrap : CssProperty
    , pre : CssProperty
    , preLine : CssProperty
    , preWrap : CssProperty
    }
whiteSpace =
    { normal = prop "white-space" "normal"
    , nowrap = prop "white-space" "nowrap"
    , pre = prop "white-space" "pre"
    , preLine = prop "white-space" "pre-line"
    , preWrap = prop "white-space" "pre-wrap"
    }


{-| Specifies line breaking rules for non-CJK scripts - CSS#3
-}
wordBreak :
    { breakAll : CssProperty
    , keepAll : CssProperty
    , normal : CssProperty
    }
wordBreak =
    { normal = prop "word-break" "normal"
    , breakAll = prop "word-break" "break-all"
    , keepAll = prop "word-break" "keep-all"
    }


{-| Increases or decreases the space between words in a text - CSS#1
-}
wordSpacing : Size -> CssProperty
wordSpacing s =
    prop "word-spacing" (sizeToString s)


{-| Allows long, unbreakable words to be broken and wrap to the next line - CSS#3
-}
wordWrap : { breakWord : CssProperty, normal : CssProperty }
wordWrap =
    { normal = prop "word-wrap" "normal"
    , breakWord = prop "word-wrap" "break-word"
    }


{-| Specifies the decoration added to text - CSS#1
-}
textDecoration :
    { lineThrough : CssProperty
    , none : CssProperty
    , overline : CssProperty
    , underline : CssProperty
    }
textDecoration =
    { none = prop "text-decoration" "none"
    , underline = prop "text-decoration" "underline"
    , overline = prop "text-decoration" "overline"
    , lineThrough = prop "text-decoration" "line-through"
    }


{-| Specifies the color of the text-decoration - CSS#3
-}
textDecorationColor : CssColor -> CssProperty
textDecorationColor =
    prop "text-decoration-color"


{-| Specifies the type of line in a text-decoration - CSS#3
-}
textDecorationLine :
    { lineThrough : CssProperty
    , none : CssProperty
    , overline : CssProperty
    , underline : CssProperty
    }
textDecorationLine =
    { none = prop "text-decoration-line" "none"
    , underline = prop "text-decoration-line" "underline"
    , overline = prop "text-decoration-line" "overline"
    , lineThrough = prop "text-decoration-line" "line-through"
    }


{-| Specifies the style of the line in a text decoration - CSS#3
-}
textDecorationStyle :
    { dashed : CssProperty
    , dotted : CssProperty
    , double : CssProperty
    , solid : CssProperty
    , wavy : CssProperty
    }
textDecorationStyle =
    { solid = prop "text-decoration-style" "solid"
    , double = prop "text-decoration-style" "double"
    , dotted = prop "text-decoration-style" "dotted"
    , dashed = prop "text-decoration-style" "dashed"
    , wavy = prop "text-decoration-style" "wavy"
    }


{-| Adds shadow to text - CSS#3
-}
textShadow : Size -> Size -> Size -> CssColor -> CssProperty
textShadow x y b c =
    prop "text-shadow" ((sizeToString x) ++ " " ++ (sizeToString y) ++ " " ++ (sizeToString b) ++ " " ++ c)


{-| Sets all the font properties in one declaration CSS#1
-}
font : String -> CssProperty
font =
    prop "font"


{-| Predifined fonts CSS#1
-}
fonts :
    { caption : CssProperty
    , icon : CssProperty
    , menu : CssProperty
    , messageBox : CssProperty
    , smallCaption : CssProperty
    , statusBar : CssProperty
    }
fonts =
    { caption = prop "font" "caption"
    , icon = prop "font" "icon"
    , menu = prop "font" "menu"
    , messageBox = prop "font" "message-box"
    , smallCaption = prop "font" "small-caption"
    , statusBar = prop "font" "status-bar"
    }


{-| Specifies the font family for text - CSS#1
-}
fontFamily : String -> CssProperty
fontFamily =
    prop "font-family"


{-| Specifies the font size of text CSS#1
-}
fontSize : Size -> CssProperty
fontSize s =
    prop "font-size" (sizeToString s)


{-| Predefined sizes for the font CSS#1
-}
fontSizes :
    { large : CssProperty
    , larger : CssProperty
    , medium : CssProperty
    , small : CssProperty
    , smaller : CssProperty
    , xLarge : CssProperty
    , xSmall : CssProperty
    , xxLarge : CssProperty
    , xxSmall : CssProperty
    }
fontSizes =
    { medium = prop "font-size" "medium"
    , xxSmall = prop "font-size" "xx-small"
    , xSmall = prop "font-size" "x-small"
    , small = prop "font-size" "small"
    , large = prop "font-size" "large"
    , xLarge = prop "font-size" "x-large"
    , xxLarge = prop "font-size" "xx-large"
    , smaller = prop "font-size" "smaller"
    , larger = prop "font-size" "larger"
    }


{-| Specifies the font style for text CSS#1
-}
fontStyle :
    { italic : CssProperty
    , normal : CssProperty
    , oblique : CssProperty
    }
fontStyle =
    { normal = prop "font-style" "normal"
    , italic = prop "font-style" "italic"
    , oblique = prop "font-style" "oblique"
    }


{-| Specifies whether or not a text should be displayed in a small-caps font - CSS#1
-}
fontVariant : { normal : CssProperty, smallCaps : CssProperty }
fontVariant =
    { normal = prop "font-variant" "normal"
    , smallCaps = prop "font-variant" "small-caps"
    }


{-| Specifies the weight of a font - CSS#1
-}
fontWeight : Int -> CssProperty
fontWeight =
    prop "font-weight" << String.fromInt


{-| Predifined font weights - CSS#1
-}
fontWeights :
    { bold : CssProperty
    , bolder : CssProperty
    , lighter : CssProperty
    , normal : CssProperty
    }
fontWeights =
    { normal = prop "font-weight" "500"
    , bold = prop "font-weight" "600"
    , bolder = prop "font-weight" "700"
    , lighter = prop "font-weight" "400"
    }


{-| Preserves the readability of text when font fallback occurs - CSS#3
-}
fontSizeAdjust : Size -> CssProperty
fontSizeAdjust s =
    prop "font-size-adjust" (sizeToString s)


{-| Selects a normal, condensed, or expanded face from a font family - CSS#3
-}
fontStretch :
    { condensed : CssProperty
    , expanded : CssProperty
    , extraCondensed : CssProperty
    , extraExpanded : CssProperty
    , normal : CssProperty
    , semiCondensed : CssProperty
    , semiExpanded : CssProperty
    , ultraCondensed : CssProperty
    , ultraExpanded : CssProperty
    }
fontStretch =
    { ultraCondensed = prop "font-stretch" "ultra-condensed"
    , extraCondensed = prop "font-stretch" "extra-condensed"
    , condensed = prop "font-stretch" "condensed"
    , semiCondensed = prop "font-stretch" "semi-condensed"
    , normal = prop "font-stretch" "normal"
    , semiExpanded = prop "font-stretch" "semi-expanded"
    , expanded = prop "font-stretch" "expanded"
    , extraExpanded = prop "font-stretch" "extra-expanded"
    , ultraExpanded = prop "font-stretch" "ultra-expanded"
    }


{-| Specifies the text direction/writing direction - CSS#2
-}
direction : { ltr : CssProperty, rtl : CssProperty }
direction =
    { ltr = prop "direction" "ltr"
    , rtl = prop "direction" "rtl"
    }


{-| Used together with the direction property to set or return whether
the text should be overridden to support multiple languages in the same document - CSS#2
-}
unicodeBidi :
    { bidiOverride : CssProperty
    , embed : CssProperty
    , normal : CssProperty
    }
unicodeBidi =
    { normal = prop "unicode-bidi" "normal"
    , embed = prop "unicode-bidi" "embed"
    , bidiOverride = prop "unicode-bidi" "bidi-override"
    }



---- TABLES ----


{-| Specifies whether or not table borders should be collapsed - CSS#2
-}
borderCollapse : { collapse : CssProperty, separate : CssProperty }
borderCollapse =
    { separate = prop "border-collapse" "separate"
    , collapse = prop "border-collapse" "collapse"
    }


{-| Specifies the distance between the borders of adjacent cells - CSS#2
-}
borderSpacing : Size -> CssProperty
borderSpacing s =
    prop "border-spacing" (sizeToString s)


{-| Specifies the placement of a table caption - CSS#2
-}
captionSide : { bottom : CssProperty, top : CssProperty }
captionSide =
    { top = prop "caption-side" "top"
    , bottom = prop "caption-side" "bottom"
    }


{-| Specifies whether or not to display borders and background on empty cells in a table - CSS#2
-}
emptyCells : { hide : CssProperty, show : CssProperty }
emptyCells =
    { show = prop "empty-cells" "show"
    , hide = prop "empty-cells" "hide"
    }


{-| Sets the layout algorithm to be used for a table - CSS#2
-}
tableLayout : { auto : CssProperty, fixed : CssProperty }
tableLayout =
    { auto = prop "table-layout" "auto"
    , fixed = prop "table-layout" "fixed"
    }



---- LIST TYPES ----


{-| Increments one or more counters - CSS#2
-}
counterIncrement : String -> CssProperty
counterIncrement =
    prop "counter-increment"


{-| Creates or resets one or more counters - CSS#2
-}
counterReset : String -> CssProperty
counterReset =
    prop "counter-reset"


{-| Creates or resets a counter with an id - CSS#2
-}
counterResetAt : String -> Int -> CssProperty
counterResetAt id num =
    prop "counter-reset" (id ++ " " ++ (String.fromInt num))


{-| Sets all the properties for a list in one declaration CSS#1
-}
listStyle : String -> CssProperty
listStyle =
    prop "list-style"


{-| Specifies an image as the list-item marker - CSS#1
-}
listStyleImage : String -> CssProperty
listStyleImage =
    prop "list-style-image" << url


{-| Specifies if the list-item markers should appear inside or outside the content flow CSS#1
-}
listStylePosition : { inside : CssProperty, outside : CssProperty }
listStylePosition =
    { inside = prop "list-style-position" "inside"
    , outside = prop "list-style-position" "outside"
    }


{-| Specifies the type of list-item marker - CSS#1
-}
listStyleType :
    { armenian : CssProperty
    , circle : CssProperty
    , cjkIdeographic : CssProperty
    , decimal : CssProperty
    , decimalLeadingZero : CssProperty
    , disc : CssProperty
    , georgian : CssProperty
    , hebrew : CssProperty
    , hiragana : CssProperty
    , hiraganaIroha : CssProperty
    , katakana : CssProperty
    , katakanaIroha : CssProperty
    , lowerAlpha : CssProperty
    , lowerGreek : CssProperty
    , lowerLatin : CssProperty
    , lowerRoman : CssProperty
    , none : CssProperty
    , square : CssProperty
    , upperAlpha : CssProperty
    , upperLatin : CssProperty
    , upperRoman : CssProperty
    }
listStyleType =
    { disc = prop "list-style-type" "disc"
    , armenian = prop "list-style-type" "armenian"
    , circle = prop "list-style-type" "circle"
    , cjkIdeographic = prop "list-style-type" "cjk-ideographic"
    , decimal = prop "list-style-type" "decimal"
    , decimalLeadingZero = prop "list-style-type" "decimal-leading-zero"
    , georgian = prop "list-style-type" "georgian"
    , hebrew = prop "list-style-type" "hebrew"
    , hiragana = prop "list-style-type" "hiragana"
    , hiraganaIroha = prop "list-style-type" "hiragana-iroha"
    , katakana = prop "list-style-type" "katakana"
    , katakanaIroha = prop "list-style-type" "katakana-iroha"
    , lowerAlpha = prop "list-style-type" "lower-alpha"
    , lowerGreek = prop "list-style-type" "lower-greek"
    , lowerLatin = prop "list-style-type" "lower-latin"
    , lowerRoman = prop "list-style-type" "lower-roman"
    , none = prop "list-style-type" "none"
    , square = prop "list-style-type" "square"
    , upperAlpha = prop "list-style-type" "upper-alpha"
    , upperLatin = prop "list-style-type" "upper-latin"
    , upperRoman = prop "list-style-type" "upper-roman"
    }



---- ANIMATIONS & TRANSITIONS ----


{-| A shorthand property for all the animation properties below,
except the animation-play-state property - CSS#3
-}
animation : String -> CssProperty
animation =
    prop "animation"


{-| Specifies when the animation will start - CSS#3
-}
animationDelay : Duration -> CssProperty
animationDelay =
    prop "animation-delay" << durationToString


{-| Specifies whether or not the animation should play in reverse on alternate cycles - CSS#3
-}
animationDirection :
    { alternate : CssProperty
    , alternateReverse : CssProperty
    , normal : CssProperty
    , reverse : CssProperty
    }
animationDirection =
    { normal = prop "animation-direction" "normal"
    , reverse = prop "animation-direction" "reverse"
    , alternate = prop "animation-direction" "alternate"
    , alternateReverse = prop "animation-direction" "alternate-reverse"
    }


{-| Specifies how many seconds or milliseconds an animation takes to complete one cycle - CSS#3
-}
animationDuration : Duration -> CssProperty
animationDuration =
    prop "animation-delay" << durationToString


{-| Specifies what values are applied by the animation outside the Duration it is executing - CSS#3
-}
animationFillMode :
    { backwards : CssProperty
    , both : CssProperty
    , forwards : CssProperty
    , none : CssProperty
    }
animationFillMode =
    { none = prop "animation-fill-mode" "none"
    , forwards = prop "animation-fill-mode" "forwards"
    , backwards = prop "animation-fill-mode" "backwards"
    , both = prop "animation-fill-mode" "both"
    }


{-| Specifies the number of Durations an animation should be played - CSS#3
-}
animationIterationCount : Int -> CssProperty
animationIterationCount =
    prop "animation-iteration-count" << String.fromInt


{-| animation-iteration-count set at infinite
-}
animationInfinite : CssProperty
animationInfinite =
    prop "animation-iteration-count" "infinite"


{-| Specifies a name for the
-}
animationName : String -> CssProperty
animationName =
    prop "animation-name"


{-| Specifies the speed curve of the animation - CSS#3
-}
animationTimingFunction :
    { bezier : Int -> Int -> Int -> Int -> CssProperty
    , ease : CssProperty
    , easeIn : CssProperty
    , easeOut : CssProperty
    , linear : CssProperty
    }
animationTimingFunction =
    { linear = prop "animation-timing-function" "linear"
    , ease = prop "animation-timing-function" "ease"
    , easeIn = prop "animation-timing-function" "ease-in"
    , easeOut = prop "animation-timing-function" "ease-out"
    , bezier =
        \i j k l ->
            prop "animation-timing-function" (cubicBezier i j k l)
    }


cubicBezier : Int -> Int -> Int -> Int -> String
cubicBezier i j k l =
    ("cubic-bezier(" ++ (String.fromInt i) ++ "," ++ (String.fromInt j) ++ "," ++ (String.fromInt k) ++ "," ++ (String.fromInt l) ++ ")")


{-| Specifies whether the animation is running or paused - CSS#3
-}
animationPlayState : { paused : CssProperty, running : CssProperty }
animationPlayState =
    { paused = prop "animation-play-state" "paused"
    , running = prop "animation-play-state" "running"
    }


{-| Defines whether or not an element should be visible when not facing the screen - CSS#3
-}
backfaceVisibility : { hidden : CssProperty, visible : CssProperty }
backfaceVisibility =
    { visible = prop "backface-visibility" "visible"
    , hidden = prop "backface-visibility" "hidden"
    }


{-| Specifies the perspective on how - CSS#3D elements are viewed - CSS#3
-}
perspective : Int -> CssProperty
perspective =
    prop "perspective" << String.fromInt


{-| Specifies the bottom position of - CSS#3D elements - CSS#3
-}
perspectiveOrigin :
    { bottomCenter : CssProperty
    , bottomLeft : CssProperty
    , bottomRight : CssProperty
    , center : CssProperty
    , centerLeft : CssProperty
    , centerRight : CssProperty
    , custom : String -> CssProperty
    , topCenter : CssProperty
    , topLeft : CssProperty
    , topRight : CssProperty
    }
perspectiveOrigin =
    { center = prop "perspective-origin" "center"
    , centerLeft = prop "perspective-origin" "left center"
    , centerRight = prop "perspective-origin" "right center"
    , topLeft = prop "perspective-origin" "left top"
    , topRight = prop "perspective-origin" "right top"
    , topCenter = prop "perspective-origin" "center top"
    , bottomLeft = prop "perspective-origin" "left bottom"
    , bottomRight = prop "perspective-origin" "right bottom"
    , bottomCenter = prop "perspective-origin" "center bottom"
    , custom = prop "perspective-origin"
    }


{-| Applies a - CSS#2D or - CSS#3D transformation to an element - CSS#3
-}
transform : String -> CssProperty
transform =
    prop "transform"


{-| Allows you to change the position on transformed elements - CSS#3
-}
transformOrigin :
    { bottomCenter : CssProperty
    , bottomLeft : CssProperty
    , bottomRight : CssProperty
    , center : CssProperty
    , centerLeft : CssProperty
    , centerRight : CssProperty
    , custom : String -> CssProperty
    , topCenter : CssProperty
    , topLeft : CssProperty
    , topRight : CssProperty
    }
transformOrigin =
    { center = prop "transform-origin" "center"
    , centerLeft = prop "transform-origin" "left center"
    , centerRight = prop "transform-origin" "right center"
    , topLeft = prop "transform-origin" "left top"
    , topRight = prop "transform-origin" "right top"
    , topCenter = prop "transform-origin" "center top"
    , bottomLeft = prop "transform-origin" "left bottom"
    , bottomRight = prop "transform-origin" "right bottom"
    , bottomCenter = prop "transform-origin" "center bottom"
    , custom = prop "transform-origin"
    }


{-| Specifies how nested elements are rendered in - CSS#3D space - CSS#3
-}
transformStyle : { flat : CssProperty, preserve3d : CssProperty }
transformStyle =
    { flat = prop "transform-style" "flat"
    , preserve3d = prop "transform-style" "preserve-3d"
    }


{-| A shorthand property for setting the four transition properties - CSS#3
-}
transition : String -> CssProperty
transition =
    prop "transition"


{-| Specifies the name of the CSS property the transition effect is for - CSS#3
-}
transitionProperty : String -> CssProperty
transitionProperty =
    prop "transition-property"


{-| Transition all
-}
transitionAll : CssProperty
transitionAll =
    prop "transition-property" "all"


{-| Specifies how many seconds or milliseconds a transition effect takes to complete - CSS#3
-}
transitionDuration : Duration -> CssProperty
transitionDuration =
    prop "transition-duration" << durationToString


{-| Specifies the speed curve of the transition effect - CSS#3
-}
transitionTimingFunction :
    { bezier : Int -> Int -> Int -> Int -> CssProperty
    , ease : CssProperty
    , easeIn : CssProperty
    , easeInOut : CssProperty
    , easeOut : CssProperty
    , linear : CssProperty
    }
transitionTimingFunction =
    { ease = prop "transition-timing-function" "ease"
    , linear = prop "transition-timing-function" "linear"
    , easeIn = prop "transition-timing-function" "ease-in"
    , easeOut = prop "transition-timing-function" "ease-out"
    , easeInOut = prop "transition-timing-function" "ease-in-out"
    , bezier =
        \i j k l ->
            prop "transition-timing-function" (cubicBezier i j k l)
    }


{-| Specifies when the transition effect will start - CSS#3 -
-}
transitionDelay : Duration -> CssProperty
transitionDelay =
    prop "transition-delay" << durationToString



---- BOX DECORATION ----


{-| Tells the browser what the sizing properties (width and height) should include - CSS#3
-}
boxSizing :
    { borderBox : CssProperty
    , contentBox : CssProperty
    , paddingBox : CssProperty
    }
boxSizing =
    { contentBox = prop "box-sizing" "content-box"
    , paddingBox = prop "box-sizing" "padding-box"
    , borderBox = prop "box-sizing" "border-box"
    }


{-| Specifies the type of cursor to be displayed - CSS#2
-}
cursor :
    { alias_ : CssProperty
    , allScroll : CssProperty
    , auto : CssProperty
    , cell : CssProperty
    , colResize : CssProperty
    , contextMenu : CssProperty
    , copy : CssProperty
    , crosshair : CssProperty
    , default : CssProperty
    , eResize : CssProperty
    , ewResize : CssProperty
    , grab : CssProperty
    , grabbing : CssProperty
    , help : CssProperty
    , move : CssProperty
    , nResize : CssProperty
    , neResize : CssProperty
    , neswResize : CssProperty
    , noDrop : CssProperty
    , none : CssProperty
    , notAllowed : CssProperty
    , nsResize : CssProperty
    , nwResize : CssProperty
    , nwseResize : CssProperty
    , pointer : CssProperty
    , progress : CssProperty
    , rowResize : CssProperty
    , sResize : CssProperty
    , seResize : CssProperty
    , swResize : CssProperty
    , text : CssProperty
    , verticalText : CssProperty
    , wResize : CssProperty
    , wait : CssProperty
    , zoomIn : CssProperty
    , zoomOut : CssProperty
    }
cursor =
    { alias_ = prop "cursor" "alias"
    , allScroll = prop "cursor" "all-scroll"
    , auto = prop "cursor" "auto"
    , cell = prop "cursor" "cell"
    , contextMenu = prop "cursor" "context-menu"
    , colResize = prop "cursor" "col-resize"
    , copy = prop "cursor" "copy"
    , crosshair = prop "cursor" "crosshair"
    , default = prop "cursor" "default"
    , eResize = prop "cursor" "e-resize"
    , ewResize = prop "cursor" "ew-resize"
    , grab = prop "cursor" "grab"
    , grabbing = prop "cursor" "grabbing"
    , help = prop "cursor" "help"
    , move = prop "cursor" "move"
    , nResize = prop "cursor" "n-resize"
    , neResize = prop "cursor" "ne-resize"
    , neswResize = prop "cursor" "nesw-resize"
    , nsResize = prop "cursor" "ns-resize"
    , nwResize = prop "cursor" "nw-resize"
    , nwseResize = prop "cursor" "nwse-resize"
    , noDrop = prop "cursor" "no-drop"
    , none = prop "cursor" "none"
    , notAllowed = prop "cursor" "not-allowed"
    , pointer = prop "cursor" "pointer"
    , progress = prop "cursor" "progress"
    , rowResize = prop "cursor" "row-resize"
    , sResize = prop "cursor" "s-resize"
    , seResize = prop "cursor" "se-resize"
    , swResize = prop "cursor" "sw-resize"
    , text = prop "cursor" "text"
    , verticalText = prop "cursor" "vertical-text"
    , wResize = prop "cursor" "w-resize"
    , wait = prop "cursor" "wait"
    , zoomIn = prop "cursor" "zoom-in"
    , zoomOut = prop "cursor" "zoom-out"
    }


{-| Sets all the outline properties in one declaration - CSS#2
-}
outline : String -> CssProperty
outline =
    prop "outline-color"


{-| Sets the color of an outline - CSS#2
-}
outlineColor : CssColor -> CssProperty
outlineColor =
    prop "outline-color"


{-| Set outline-color value to invert - CSS#3
-}
outlineInvert : CssProperty
outlineInvert =
    prop "outline-color" "invert"


{-| Offsets an outline, and draws it beyond the border edge - CSS#3
-}
outlineOffset : Size -> CssProperty
outlineOffset s =
    prop "outline-offset" (sizeToString s)


{-| Sets the style of an outline - CSS#2
-}
outlineStyle :
    { dashed : CssProperty
    , dotted : CssProperty
    , double : CssProperty
    , groove : CssProperty
    , hidden : CssProperty
    , inset : CssProperty
    , none : CssProperty
    , outset : CssProperty
    , ridge : CssProperty
    , solid : CssProperty
    }
outlineStyle =
    { none = prop "outline-style" "none"
    , hidden = prop "outline-style" "hidden"
    , dotted = prop "outline-style" "dotted"
    , dashed = prop "outline-style" "dashed"
    , solid = prop "outline-style" "solid"
    , double = prop "outline-style" "double"
    , groove = prop "outline-style" "groove"
    , ridge = prop "outline-style" "ridge"
    , inset = prop "outline-style" "inset"
    , outset = prop "outline-style" "outset"
    }


{-| Sets the width of an outline - CSS#2
-}
outlineWidth : Size -> CssProperty
outlineWidth s =
    prop "outline-width" (sizeToString s)


{-| Predifined outline widths - CSS#2
-}
outlineWidths :
    { medium : CssProperty
    , thick : CssProperty
    , thin : CssProperty
    }
outlineWidths =
    { medium = prop "outline-width" "medium"
    , thin = prop "outline-width" "thin"
    , thick = prop "outline-width" "thick"
    }


{-| Specifies whether or not an element is resizable by the user - CSS#3
-}
resize :
    { both : CssProperty
    , horizontal : CssProperty
    , none : CssProperty
    , vertical : CssProperty
    }
resize =
    { none = prop "resize" "none"
    , both = prop "resize" "both"
    , horizontal = prop "resize" "horizontal"
    , vertical = prop "resize" "vertical"
    }


{-| Specifies what should happen when text overflows the containing element - CSS#3
-}
textOverflow :
    { clip : CssProperty
    , ellipsis : CssProperty
    , string : CssProperty
    }
textOverflow =
    { clip = prop "text-overflow" "clip"
    , ellipsis = prop "text-overflow" "ellipsis"
    , string = prop "text-overflow" "string"
    }


{-| A shorthand property for setting all the column-rule-* properties - CSS#3
-}
columnRule : String -> CssProperty
columnRule =
    prop "column-rule"


{-| Specifies the number of columns an element should be divided - CSS#3
-}
columnCount : Int -> CssProperty
columnCount =
    prop "column-count" << String.fromInt


{-| Specifies the gap between the columns - CSS#3
-}
columnGap : Int -> CssProperty
columnGap =
    prop "column-gap" << String.fromInt


{-| Specifies the color of the rule between columns - CSS#3
-}
columnRuleColor : CssColor -> CssProperty
columnRuleColor =
    prop "column-rule-color"


{-| Specifies the style of the rule between columns - CSS#3
-}
columnRuleStyle :
    { dashed : CssProperty
    , dotted : CssProperty
    , double : CssProperty
    , groove : CssProperty
    , hidden : CssProperty
    , inset : CssProperty
    , none : CssProperty
    , outset : CssProperty
    , ridge : CssProperty
    , solid : CssProperty
    }
columnRuleStyle =
    { none = prop "column-rule-style" "none"
    , hidden = prop "column-rule-style" "hidden"
    , dotted = prop "column-rule-style" "dotted"
    , dashed = prop "column-rule-style" "dashed"
    , solid = prop "column-rule-style" "solid"
    , double = prop "column-rule-style" "double"
    , groove = prop "column-rule-style" "groove"
    , ridge = prop "column-rule-style" "ridge"
    , inset = prop "column-rule-style" "inset"
    , outset = prop "column-rule-style" "outset"
    }


{-| Specifies the width of the rule between columns - CSS#3
-}
columnRuleWidth : Size -> CssProperty
columnRuleWidth s =
    prop "column-rule-width" (sizeToString s)


{-| Specifies columns rule width
-}
columnRuleWidths :
    { medium : CssProperty
    , thick : CssProperty
    , thin : CssProperty
    }
columnRuleWidths =
    { medium = prop "column-rule-width" "medium"
    , thin = prop "column-rule-width" "thin"
    , thick = prop "column-rule-width" "thick"
    }


{-| Specifies how many columns an element should span across - CSS#3
-}
columnSpan : { all : CssProperty, one : CssProperty }
columnSpan =
    { one = prop "column-span" "1"
    , all = prop "column-span" "all"
    }


{-| Specifies the width of the columns - CSS#3
-}
columnWidth : Size -> CssProperty
columnWidth s =
    prop "column-width" (sizeToString s)


{-| A shorthand property for setting column-width and column-count - CSS#3
-}
columns : String -> CssProperty
columns =
    prop "columns"


{-| Sets the type of quotation marks for embedded quotations - CSS#2
-}
quotes : String -> CssProperty
quotes =
    prop "quotes"


{-| userSelect
-}
userSelect :
    { none : CssProperty
    , auto : CssProperty
    , text : CssProperty
    , contain : CssProperty
    , all : CssProperty
    }
userSelect =
    { none = prop "user-select" "none"
    , auto = prop "user-select" "auto"
    , text = prop "user-select" "text"
    , contain = prop "user-select" "contain"
    , all = prop "user-select" "all"
    }


{-| pointerEvents
-}
pointerEvents :
    { auto : CssProperty
    , none : CssProperty
    }
pointerEvents =
    { auto = prop "pointer-events" "auto"
    , none = prop "pointer-events" "none"
    }
