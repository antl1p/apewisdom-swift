# ApeWisdom Swift SDK

![UnitTest workflow](https://github.com/antl1p/apewisdom-swift/actions/workflows/UnitTest.yml/badge.svg) ![IntegrationTest workflow](https://github.com/antl1p/apewisdom-swift/actions/workflows/IntegrationTest.yml/badge.svg) [![Swift Package Manager](https://img.shields.io/badge/Swift_Package_Manager-compatible-orange?style=flat-square)](https://img.shields.io/badge/Swift_Package_Manager-compatible-orange?style=flat-square)

The ApeWisdom Swift SDK makes it quick and easy to build any iOS or macOS application requiring
sentiment analysis on CryptoCurrencies and Stocks from various subreddits and forums.

Information about [ApeWisdom](https://apewisdom.com) can be found at their [website](https://apewisdom.com).

Table of Contents
=================

- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)

## Features
**Filter by source**: Using a comprehensive enum, you can filter the results of your search based on the source of the information.
**Paginate results**: If you need to comb through all the data, pagination is available.

## Requirements

| Platform | Minimum Swift Version | Installation | Status |
| --- | --- | --- | --- |
| iOS 13.0+ | 5.5 | [Swift Package Manager](#swift-package-manager), [Manual](#manually) | Fully Tested |
| macOS 12.0+ | 5.5 | [Swift Package Manager](#swift-package-manager), [Manual](#manually) | Fully Tested |
| tvOS 15.0+ | 5.5 | [Swift Package Manager](#swift-package-manager), [Manual](#manually) | Fully Tested |
| watchOS 7.6+ | 5.5 | [Swift Package Manager](#swift-package-manager), [Manual](#manually) | Fully Tested |

## Installation

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler. It is in early development, but ApeWisdom Swift SDK does support its use on supported platforms.

Once you have your Swift package set up, adding ApeWisdom Swift SDK as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/antl1p/apewisdom-swift.git")
]
```

### Manually

If you prefer not to use any of the aforementioned dependency managers, you can integrate ApeWisdom Swift SDK into your project manually.

## Usage

### Basic Usage
```
import ApeWisdom

let mentions = try await ApeWisdom.shared.filter(.all)
```

### Pagination
```
import ApeWisdom

let mentions = try await ApeWisdom.shared.filter(.all, page: 2)
```
