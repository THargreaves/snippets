heading <- function(..., char = '#', pad = 2) {
  title <- paste0(...)
  total <- getOption('width') - nchar(title) - pad
  before = total %/% 2
  after = total %/% 2 + total %% 2
  cat(stringr::str_dup(char, getOption('width')), '\r\n', sep = '')
  cat(stringr::str_dup(char, before),
      ' ', title, ' ',
      stringr::str_dup(char, after), '\r\n', sep = '')
  cat(stringr::str_dup(char, getOption('width')), '\r\n', sep = '')
}