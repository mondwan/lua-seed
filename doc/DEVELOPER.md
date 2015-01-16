# About

Recommendations to devloper for lua project.

@author: Mond Wan
@last-modified: 2015-01-16 11:28

# Code standard Tools

## Plugins involved for maintaining coding standard

* [luac][luac]
* [luacheck][luacheck]

# Code convention

Preferences for development choices

## File name

1. Despite the file extenstion, split file name with ```_```

## Class's attribute

1. Camel Case
2. For protected attributes, prepends it with '_'
3. Unless you have strong reasons, defined protected attributes instead of
private

## Class's method

1. Camel Case
2. For protected methods, prepends it with '_'
3. Unless you have strong reasons, defined protected methods instead of
private

## Version number

Currently, there are 2 digits to represent the version number which is a.b

* a:

About the project fundamental architecture. If your patch changes fundamental
elements, digit here will be increased.

* b:

If you patch is about bug fixing or feature enhancement on the original class,
digit here will be increased.

[luac]: http://www.lua.org/manual/4.0/luac.html
[luacheck]: https://code.google.com/p/lua-checker/
