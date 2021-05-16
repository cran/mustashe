## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(mustashe)

## -----------------------------------------------------------------------------
substitute(x <- 1)

## -----------------------------------------------------------------------------
deparse(substitute(x <- 1))

## -----------------------------------------------------------------------------
format_code <- function(code) {
  fmt_code <- formatR::tidy_source(
    text = code,
    comment = FALSE,
    blank = FALSE,
    arrow = TRUE,
    brace.newline = FALSE,
    indent = 4,
    wrap = TRUE,
    output = FALSE,
    width.cutoff = 80
  )$text.tidy
  paste(fmt_code, sep = "", collapse = "\n")
}

format_code("x <- 2")

## -----------------------------------------------------------------------------
format_code("x=2")
format_code(("x <- 2  # a comment"))

## -----------------------------------------------------------------------------
digest::digest("mustashe")

## -----------------------------------------------------------------------------
# Two data frames with a small difference     *
df1 <- data.frame(a = c(1, 2, 3), b = c(5, 6, 7))
df2 <- data.frame(a = c(1, 2, 3), b = c(5, 6, 8))

# When the two data frames are equivalent.
all.equal(df1, df1)

# When the two data frmaes are not equivalent.
all.equal(df1, df2)

## -----------------------------------------------------------------------------
# Make a new stash from a variable, code, and hash table.
new_stash <- function(var, code, hash_tbl) {
  val <- evaluate_code(code)
  assign_value(var, val)
  write_hash_table(var, hash_tbl)
  write_val(var, val)
}

## -----------------------------------------------------------------------------
# Evaluate the code in a new environment.
evaluate_code <- function(code) {
  eval(parse(text = code), envir = new.env())
}

## -----------------------------------------------------------------------------
# Assign the value `val` to the variable `var`.
assign_value <- function(var, val) {
  assign(var, val, envir = .TargetEnv)
}

## ---- echo=FALSE--------------------------------------------------------------
unlink(".mustashe", recursive = TRUE)

