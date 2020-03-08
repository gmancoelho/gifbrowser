# GifBrowser
An iOS Gif Browser application

## Getting Started 

Clone git repo:

```
$ git clone https://github.com/gmancoelho/gifbrowser.git
```

## Initial Setup

To install all the project dependecies run the command:

``` 
$ make setup
``` 

This make command will check or install the following tools needed by our proejct:
 - Xcode command line tools
 - Homebrew
 - Carthage
 - Swiftlint
 - Git

After that we also need to install the external frameworks of our project using the following command:

```
$ make carthage_bootstrap
```

## Makefile

Some usefull make commands:

- To install all the carthage frameworks specified in `Cartfile` use

```
 make carthage_bootstrap
```

- To update all the carthage frameworks specified in `Cartfile` use

```
 make carthage_update
```

- To clear the Cartahge folder and delete all the dependecies from project use

```
 make carthage_clean
```