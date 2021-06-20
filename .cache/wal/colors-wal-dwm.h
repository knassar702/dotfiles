static const char norm_fg[] = "#dfe0df";
static const char norm_bg[] = "#0f1213";
static const char norm_border[] = "#9c9c9c";

static const char sel_fg[] = "#dfe0df";
static const char sel_bg[] = "#6A6660";
static const char sel_border[] = "#dfe0df";


static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
};
