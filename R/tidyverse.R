cross_join <- function(x, y, copy = False, suffix = c(".x", ".y"), ...) {
  x <- mutate(x, dummy = 0)
  y <- mutate(y, dummy = 0)
  inner_join(x, y, by = 'dummy', copy = copy, suffix = suffix, ...) %>%
    select(-dummy)
}