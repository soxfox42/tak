args <- commandArgs(trailingOnly = TRUE)

tak <- function(x, y, z) {
  if (y < x) {
    return(
      tak(
        tak(x - 1, y, z),
        tak(y - 1, z, x),
        tak(z - 1, x, y)
      )
    )
  }
  z
}

tak(as.numeric(args[1]), as.numeric(args[2]), as.numeric(args[3]))
