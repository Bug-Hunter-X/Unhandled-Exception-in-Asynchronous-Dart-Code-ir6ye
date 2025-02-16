# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in asynchronous Dart code where an exception is thrown within an asynchronous function and not properly handled. It highlights the importance of exception handling in asynchronous operations and provides a solution using try-catch blocks.

## Problem

The `fetchData` function simulates an asynchronous operation that might fail. The original code throws an exception but rethrowing without specific handling can lead to unexpected behavior, making debugging difficult. The main function should specifically handle different kinds of exceptions.

## Solution

The solution enhances the exception handling by implementing specific catch blocks for different exceptions in the main function which handles potential errors from the `fetchData` function. This gives better control and provides clarity regarding error handling.
