/* ****************************************************************** */
/* OSM BRIGHT for Imposm                                              */
/* ****************************************************************** */

/* For basic style customization you can simply edit the colors and
 * fonts defined in this file. For more detailed / advanced
 * adjustments explore the other files.
 *
 * GENERAL NOTES
 *
 * There is a slight performance cost in rendering line-caps.  An
 * effort has been made to restrict line-cap definitions to styles
 * where the results will be visible (lines at least 2 pixels thick).
 */

/* ================================================================== */
/* FONTS
/* ================================================================== */

/* directory to load fonts from in addition to the system directories */
Map { font-directory: url(./fonts); }

/* set up font sets for various weights and styles */
@sans_lt:       "Open Sans Regular", "DejaVu Sans Book", "Arundina Sans Regular", "Padauk Regular", "Khmer OS Metal Chrieng Regular",
                "Mukti Narrow Regular", "gargi Medium", "TSCu_Paranar Regular", "Tibetan Machine Uni Regular", "Mallige Normal",
                "Droid Sans Fallback Regular", "Unifont Medium", "unifont Medium";


@sans_lt_italic:    "Open Sans Oblique", "DejaVu Sans Oblique", "Arundina Sans Italic", "TSCu_Paranar Italic", "Mallige NormalItalic",
                "DejaVu Sans Book", "Arundina Sans Regular", "Padauk Regular", "Khmer OS Metal Chrieng Regular",
                "Mukti Narrow Regular", "gargi Medium", "TSCu_Paranar Regular", "Tibetan Machine Uni Regular", "Mallige Normal",
                "Droid Sans Fallback Regular", "Unifont Medium", "unifont Medium";


@sans:          "Open Sans Semibold", "DejaVu Sans Book", "Arundina Sans Regular", "Padauk Regular", "Khmer OS Metal Chrieng Regular",
                "Mukti Narrow Regular", "gargi Medium", "TSCu_Paranar Regular", "Tibetan Machine Uni Regular", "Mallige Normal",
                "Droid Sans Fallback Regular", "Unifont Medium", "unifont Medium";

@sans_italic:   "Open Sans Semibold Italic",  "DejaVu Sans Oblique", "Arundina Sans Italic", "TSCu_Paranar Italic", "Mallige NormalItalic",
                "DejaVu Sans Book", "Arundina Sans Regular", "Padauk Regular", "Khmer OS Metal Chrieng Regular",
                "Mukti Narrow Regular", "gargi Medium", "TSCu_Paranar Regular", "Tibetan Machine Uni Regular", "Mallige Normal",
                "Droid Sans Fallback Regular", "Unifont Medium", "unifont Medium";


@sans_bold:  "Open Sans Bold", "DejaVu Sans Bold", "Arundina Sans Bold", "Padauk Bold", "Mukti Narrow Bold", "TSCu_Paranar Bold", "Mallige Bold",
             "DejaVu Sans Book", "Arundina Sans Regular", "Padauk Regular", "Khmer OS Metal Chrieng Regular",
             "Mukti Narrow Regular", "gargi Medium", "TSCu_Paranar Regular", "Tibetan Machine Uni Regular", "Mallige Normal",
             "Droid Sans Fallback Regular", "Unifont Medium", "unifont Medium";

@sans_bold_italic:  "Open Sans Bold Italic","DejaVu Sans Bold Oblique", "DejaVu Sans Oblique", "Arundina Sans Italic", "TSCu_Paranar Italic", "Mallige NormalItalic",
                "DejaVu Sans Book", "Arundina Sans Regular", "Padauk Regular", "Khmer OS Metal Chrieng Regular",
                "Mukti Narrow Regular", "gargi Medium", "TSCu_Paranar Regular", "Tibetan Machine Uni Regular", "Mallige Normal",
                "Droid Sans Fallback Regular", "Unifont Medium", "unifont Medium";

/* Some fonts are larger or smaller than others. Use this variable to
   globally increase or decrease the font sizes. */
/* Note this is only implemented for certain things so far */
@text_adjust: 0;

/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */

@land:              #F5B328;
@water:             rgba(13,163,254,0.51);
@areas:             rgba(255,226,29,0.31);
@grass:             @areas;
@beach:             @areas;
@park:              @areas;
@cemetery:          @areas;
@wooded:            @areas;
@agriculture:       @areas;

@building:          rgba(131,131,131,0.60);
@hospital:          rgba(131,131,131,0.80);
@school:            rgba(131,131,131,0.65);
@sports:            rgba(131,131,131,0.63);

@residential:       @land * 0.98;
@commercial:        @land * 0.97;
@industrial:        @land * 0.96;
@parking:           #EEE;

/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

/* For each class of road there are three color variables:
 * - line: for lower zoomlevels when the road is represented by a
 *         single solid line.
 * - case: for higher zoomlevels, this color is for the road's
 *         casing (outline).
 * - fill: for higher zoomlevels, this color is for the road's
 *         inner fill (inline).
 */

@motorway_line:     fadeout(#414141, 21%);
@motorway_fill:     lighten(@motorway_line,10%);
@motorway_case:     @motorway_line * 0.9;

@parking:           lighten(@motorway_fill,10%);

@trunk_line:        @motorway_line;
@trunk_fill:        @motorway_fill;
@trunk_case:        @motorway_case;

@primary_line:      lighten(@motorway_line,5%);
@primary_fill:      lighten(@motorway_fill,5%);
@primary_case:      lighten(@motorway_case,5%);

@secondary_line:    lighten(@motorway_line,8%);
@secondary_fill:    lighten(@motorway_fill,8%);
@secondary_case:    lighten(@motorway_case,8%);

@standard_line:     lighten(@motorway_line,10%);
@standard_fill:     lighten(@motorway_fill,10%);
@standard_case:     lighten(@motorway_line,10%);

@pedestrian_line:   darken(@land,2%);
@pedestrian_fill:   darken(@land,2%);
@pedestrian_case:   darken(@land,3%);

@cycle_line:        darken(@land,4%);
@cycle_fill:        darken(@land,4%);
@cycle_case:        darken(@land,5%);

@rail_line:         #999;
@rail_fill:         #fff;
@rail_case:         #222;

@aeroway:           #ddd;

/* ================================================================== */
/* BOUNDARY COLORS
/* ================================================================== */

@admin_2:           #324;

/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

/* We set up a default halo color for places so you can edit them all
   at once or override each individually. */
@place_text:        #fff;
@place_halo_solid:  #444;
@place_halo:        fadeout(@place_halo_solid,34%);

@country_text:      darken(@place_text, 5%);
@country_halo:      @place_halo;

@state_text:        lighten(@place_text, 5%);
@state_halo:        @place_halo;

@city_text:         @place_text;
@city_halo:         @place_halo;

@town_text:         lighten(@place_text, 15%);
@town_halo:         @place_halo;

@poi_text:          lighten(@place_text, 25%);

@road_text:         lighten(@place_text, 20%);
@road_halo:         @place_halo_solid;

@other_text:        lighten(@place_text, 25%);
@other_halo:        @place_halo;

@locality_text:     lighten(@place_text, 50%);
@locality_halo:     @land;

/* Also used for other small places: hamlets, suburbs, localities */
@village_text:      lighten(@place_text, 25%);
@village_halo:      @place_halo;

/* ****************************************************************** */


