const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0f1213", /* black   */
  [1] = "#4B4B49", /* red     */
  [2] = "#6A6660", /* green   */
  [3] = "#8D7558", /* yellow  */
  [4] = "#DFA950", /* blue    */
  [5] = "#A7A6A3", /* magenta */
  [6] = "#C3C0BC", /* cyan    */
  [7] = "#dfe0df", /* white   */

  /* 8 bright colors */
  [8]  = "#9c9c9c",  /* black   */
  [9]  = "#4B4B49",  /* red     */
  [10] = "#6A6660", /* green   */
  [11] = "#8D7558", /* yellow  */
  [12] = "#DFA950", /* blue    */
  [13] = "#A7A6A3", /* magenta */
  [14] = "#C3C0BC", /* cyan    */
  [15] = "#dfe0df", /* white   */

  /* special colors */
  [256] = "#0f1213", /* background */
  [257] = "#dfe0df", /* foreground */
  [258] = "#dfe0df",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
