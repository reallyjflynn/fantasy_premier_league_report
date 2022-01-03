## theme_newswhip

a_colours <- c(
  'red' = "#ef3120", 
  'yellow' = "#fdf259",
  'teal' = "#3cc1c8",
  'orange' = "#f77d2c", 
  'blue' = '#2a3b56')



a_cols <- function(...) {

  #' Function to extract newswhip colors as hex codes
  #'
  #' @param ... Character names of a_colours
  #'
  #' @export
  #'

  cols <- c(...)

  if (is.null(cols))
    return (a_colours)

  a_colours[cols]
}

a_palettes <- list(
  'primary' = a_cols('red', 'yellow', 'teal', 'orange', 'blue'))


a_pal <- function(palette = "primary", reverse = FALSE, ...) {

  #' Return function to interpolate a drsimonj color palette
  #'
  #' @param palette Character name of palette in a_palettes
  #' @param reverse Boolean indicating whether the palette should be reversed
  #' @param ... Additional arguments to pass to colorRampPalette()
  #'
  #' @export

  pal <- a_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  grDevices::colorRampPalette(pal, ...)
}



scale_color_a <- function(palette = "primary", discrete = TRUE, reverse = FALSE, ...) {

  #' Color scale constructor for drsimonj colors
  #'
  #' @param palette Character name of palette in newswhip_palettes
  #' @param discrete Boolean indicating whether color aesthetic is discrete or not
  #' @param reverse Boolean indicating whether the palette should be reversed
  #' @param ... Additional arguments passed to discrete_scale() or
  #'            scale_color_gradientn(), used respectively when discrete is TRUE or FALSE
  #'
  #' @export

  pal <- a_pal(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("colour", paste0("newswhip_", palette), palette = pal, ...)
  } else {
    ggplot2::scale_color_gradientn(colours = pal(256), ...)
  }
}


scale_fill_a <- function(palette = "primary", discrete = TRUE, reverse = FALSE, ...) {

  #' Fill scale constructor for drsimonj colors
  #'
  #' @param palette Character name of palette in newswhip_palettes
  #' @param discrete Boolean indicating whether color aesthetic is discrete or not
  #' @param reverse Boolean indicating whether the palette should be reversed
  #' @param ... Additional arguments passed to discrete_scale() or
  #'            scale_fill_gradientn(), used respectively when discrete is TRUE or FALSE
  #'
  #' @export
  pal <- a_pal(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("fill", paste0("newswhip_", palette), palette = pal, ...)
  } else {
    ggplot2::scale_fill_gradientn(colours = pal(256), ...)
  }
}




