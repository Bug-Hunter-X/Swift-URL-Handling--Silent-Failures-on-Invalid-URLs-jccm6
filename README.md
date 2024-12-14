# Swift URL Handling: Silent Failures on Invalid URLs

This repository demonstrates a common error in Swift when handling URLs: inadequate error handling leading to silent failures. The provided code attempts to read the contents of a URL, but it only returns generic error messages, making debugging challenging. The solution provides more robust error handling with detailed error information.

## Bug
The `bug.swift` file contains a function that fetches the contents of a URL.  However, its error handling is rudimentary and lacks specificity. It doesn't differentiate between various potential issues, such as invalid URLs, network connectivity problems, or server-side errors.

## Solution
The `bugSolution.swift` file improves error handling by providing more context on the type of error encountered, allowing for better debugging and more informed responses to different failure scenarios. It uses more specific error types and descriptions.