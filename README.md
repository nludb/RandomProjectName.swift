# RandomProjectName.swift

Generates Heroku-style random project names in Swift.

## Usage

Just call `String.randomProjectName()`, and specify the optional suffix lengths and delimeters:


```swift
import RandomProjectName

let name = String.randomProjectName()
print(name) // mystic-sandwich

let name_with_suffix = String.randomProjectName(4)
print(name_with_suffix) // flying-cereal-d34f

let name_with_underscore = String.randomProjectName(separatedBy: "_")
print(name_with_underscore) // mysterious_basket
```
## Contributing

Improvements to the code and word lists are welcome!

We prefer word additions that are amusing and will reject PRs with words that may be offensive. If you find any words that may offend in the list, please file a bug report!

## Installation

- Add `.package(url: "https://github.com/nludb/RandomProjectName.swift", from: "1.0.0")` to your `Package.swift` file's `dependencies`.
- Update your packages using `$ swift package update`.

## Special Thanks

This project uses the word lists found in the MIT Licensed @polleverywhere/random_username project. Thank you!