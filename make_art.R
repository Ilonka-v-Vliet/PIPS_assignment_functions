make_art = function(seed = NULL,
                    iterations = 100,
                    colour_palette = "Blues",
                    colour_amount = 3,
                    min_start = 1,
                    max_start = 100) {
  set.seed(seed)
  # Credit to the creator of aRtsy, who included explanations for the
  # general method of the creation of art from which it was possible to
  # create something similar. See:
  # https://cran.r-project.org/web/packages/aRtsy/readme/README.html
  
  # dependencies: ggplot2
  
  # optional inputs:
  # seed sets the seed for reproducibility
  # iterations determines the number of data points generated (input * 4)
  # colour_palette determines the palette, and can be any palette that is
  #   accepted by hcl.colors()
  # colour_amount determines how many colours of the palette are used
  # min_start is the lowest starting number for the sequence
  # max start is the highest starting number for the sequence
  
  # This uses the Collatz conjecture (or 3x + 1 equation) to generate art
  
  xvec = sample(min_start:max_start, 1)
  for (i in 1:iterations) {
    if (xvec[i] %% 2 == 0) {
      xvec = c(xvec, xvec[i] / 2)
    } else {
      xvec = c(xvec, (xvec[i] * 3) + 1)
    }
  }
  yvec = sample(min_start:max_start, 1)
  for (i in 1:iterations) {
    if (yvec[i] %% 2 == 0) {
      yvec = c(yvec, yvec[i] / 2)
    } else {
      yvec = c(yvec, (yvec[i] * 3) + 1)
    }
  }
  line_group = sample(1:100, 1)
  for (i in 1:iterations) {
    group_assign = sample(1:100, 1)
    line_group = c(line_group, group_assign)
  }
  xvec = c(xvec, xvec * -1, xvec, xvec * -1)
  yvec = c(yvec, yvec, yvec * -1, yvec * -1)
  line_group = c(line_group, line_group, line_group, line_group)
  plotdata = data.frame(xvals = xvec, yvals = yvec, groups = line_group)
  
  ggplot(data = plotdata,
         aes(x = xvals,
             y = yvals,
             group = groups,
             color = groups)) +
    geom_path() + theme_void() +
    theme(legend.position = "none",
          panel.background = element_rect(fill = "black")) +
    scale_colour_gradientn(colours = hcl.colors(colour_amount, palette = colour_palette))
}
