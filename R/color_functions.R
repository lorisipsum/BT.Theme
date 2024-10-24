#' Create my super awesome color scale

BT_colors <- function(n){
  colors <- c("#274001", "#828a00", "#f29f05", "#f25c05", "#d6568c", "#4d8584", "#a62f03", "#400d01")
  return(colors[1:n])
}

#' This function creates a discrete fill scale from the color palette for up to 8 colors. It can be used
#' with all ggplot graphs.
#' @export
scale_fill_brian_d <- function(..., aesthetics = "fill", Name = waiver()) {
  ggplot2::discrete_scale(
    name = Name,
    aesthetics = aesthetics,
    scale_name = "Brian_Colors",
    palette = BT_colors
  )
}

#' Create a discrete color scale that can be plugged into other tools like Seurat.
#' @export
BT_color_picker <- function(n){
  colors <- c("#274001", "#828a00", "#f29f05", "#f25c05", "#d6568c", "#4d8584", "#a62f03", "#400d01")
  return(colors[1:n])
}

#' This function creates a discrete fill scale for up to 8 radical colors that can be plugged into any ggplot graph.
#' @export
scale_color_brian_d <- function(..., aesthetics = "color", Name = waiver()) {
  ggplot2::discrete_scale(
    name = Name,
    aesthetics = aesthetics,
    scale_name = "Brian_Colors",
    palette = BT_colors
  )
}

#' This function creates a continuous color palette.
#' @export
scale_color_brian_c <- function(..., aesthetics = "color", color_palette = "Red", reverse = FALSE, Name = waiver()) {
  red <- c("#a12d48", "#93344b", "#85394e", "#763d50", "#673f53", "#584155", "#484157", "#364158")
  grey <- c("#21231b", "#414635", "#626950", "#828b6a", "#9ba384", "#b3bb9d", "#ccd3b6", "#e4eacf")


  if (color_palette == "Red") {
    selected_palette <- red
  } else if (color_palette == "Grey") {
    selected_palette <- grey
  } else {
    stop("Unknown Color")
  }

  if(reverse == TRUE){
    selected_palette <- rev(selected_palette)
  }
  else{
    selected_palette <- selected_palette
  }

  ggplot2::scale_color_gradientn(
    name = Name,
    aesthetics = aesthetics,
    colours = selected_palette,
    ...
  )
}

#' This function creates a continuous fill palette.
#' @export
scale_fill_brian_c <- function(..., aesthetics = "fill", color_palette = "Red", reverse = FALSE, Name = waiver()) {
  red <- c("#a12d48", "#93344b", "#85394e", "#763d50", "#673f53", "#584155", "#484157", "#364158")
  grey <- c("#21231b", "#414635", "#626950", "#828b6a", "#9ba384", "#b3bb9d", "#ccd3b6", "#e4eacf")


  if (color_palette == "Red") {
    selected_palette <- red
  } else if (color_palette == "Grey") {
    selected_palette <- grey
  } else {
    stop("Unknown Color")
  }

  if(reverse == TRUE){
    selected_palette <- rev(selected_palette)
  }
  else{
    selected_palette <- selected_palette
  }


  ggplot2::scale_color_gradientn(
    name = Name,
    aesthetics = aesthetics,
    colours = selected_palette,
    ...
  )
}

#' This function creates a diverging fill palette.
#' @export
scale_fill_brian_diverging <- function(..., aesthetics = "fill", color_palette = "Red", reverse = FALSE, Name = waiver()) {
  # Define color palettes for different color scales
  red <- c("#c7522a", "#d68a58", "#e5c185", "#fbf2c4", "#b8cdab", "#74a892", "#3a978c", "#008585")
  yellow <- c("#fdc921", "#fdd85d", "#feebaa", "#fffdf7", "#cceaf1", "#99d6ea", "#4d839a", "#003049")

  # Select the desired palette
  if (color_palette == "Red") {
    selected_palette <- red
  } else if (color_palette == "Yellow") {
    selected_palette <- yellow
  } else {
    stop("Unknown Color")
  }

  if(reverse == TRUE){
    selected_palette <- rev(selected_palette)
  }
  else{
    selected_palette <- selected_palette
  }

  # Create continuous scale with the selected palette
  ggplot2::scale_color_gradientn(
    name = Name,
    aesthetics = aesthetics,
    colours = selected_palette,
    ...
  )
}

#' This function creates a diverging color palette.
#' @export
scale_color_brian_diverging <- function(..., aesthetics = "color", color_palette = "Red", reverse = FALSE, Name = waiver()) {
  # Define color palettes for different color scales
  red <- c("#c7522a", "#d68a58", "#e5c185", "#fbf2c4", "#b8cdab", "#74a892", "#3a978c", "#008585")
  yellow <- c("#fdc921", "#fdd85d", "#feebaa", "#fffdf7", "#cceaf1", "#99d6ea", "#4d839a", "#003049")

  # Select the desired palette
  if (color_palette == "Red") {
    selected_palette <- red
  } else if (color_palette == "Yellow") {
    selected_palette <- yellow
  } else {
    stop("Unknown Color")
  }

  if(reverse == TRUE){
    selected_palette <- rev(selected_palette)
  }
  else{
    selected_palette <- selected_palette
  }

  # Create continuous scale with the selected palette
  ggplot2::scale_color_gradientn(
    name = Name,
    aesthetics = aesthetics,
    colours = selected_palette,
    ...
  )
}
