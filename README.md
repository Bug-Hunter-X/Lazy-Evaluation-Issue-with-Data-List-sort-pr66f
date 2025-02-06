# Haskell Lazy Evaluation Bug

This repository demonstrates a potential issue with Haskell's lazy evaluation when using the `sort` function from `Data.List`. While the provided code functions correctly for small lists, it faces performance and memory problems with large or infinite lists due to the lazy evaluation of `sort`. The solution provides a more efficient way to handle sorting in such scenarios.

## Bug Description

The bug lies in the naive use of `sort` on potentially large lists. The `sort` function eagerly evaluates the entire input list before producing any output, leading to memory exhaustion or non-termination if the input is very large or infinite. This is a common pitfall when working with lazy evaluation in Haskell.

## Solution

The solution implements a more memory-efficient approach by using a function that processes the list in chunks or employs a more memory-efficient sorting algorithm designed for potentially large datasets.