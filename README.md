# `@rescript-react-native/permissions`

[![Build Status](https://github.com/rescript-react-native/permissions/workflows/Build/badge.svg)](https://github.com/rescript-react-native/permissions/actions)
[![Version](https://img.shields.io/npm/v/@rescript-react-native/permissions.svg)](https://www.npmjs.com/@rescript-react-native/permissions)
[![ReScript Forum](https://img.shields.io/discourse/posts?color=e6484f&label=ReScript%20Forum&server=https%3A%2F%2Fforum.rescript-lang.org)](https://forum.rescript-lang.org/)

[ReScript](https://rescript-lang.org) bindings for
[`react-native-permissions`](https://github.com/react-native-community/react-native-permissions).

Exposed as `ReactNativePermissions` module.

`@rescript-react-native/permissions` X.y.\* means it's compatible with
`react-native-permissions` X.y.\*

## Installation

When
[`react-native-permissions`](https://github.com/react-native-community/react-native-permissions)
is properly installed & configured by following their installation instructions,
you can install the bindings:

```console
npm install @rescript-react-native/permissions
# or
yarn add @rescript-react-native/permissions
```

`@rescript-react-native/permissions` should be added to `bs-dependencies` in your
`bsconfig.json`:

```diff
{
  //...
  "bs-dependencies": [
    "@rescript/react",
    "rescript-react-native",
    // ...
+    "@rescript-react-native/permissions"
  ],
  //...
}
```

## Usage

```rescript
open ReactNative;

let requestCamera = () => {
  ReactNativePermissions.(
    request(
      switch (Platform.os) {
      | os when os === "ios" => Ios.camera
      | _ => Android.camera
      },
    )
    |> Js.Promise.then_(permissionStatus =>
        switch (permissionStatus) {
        | status when status === granted => Js.Promise.resolve()
        | _ => Js.Promise.reject(Js.Exn.raiseError("permission error"))
        }
      )
    )
  );
};
```

---

## Changelog

Check the [changelog](./CHANGELOG.md) for more informations about recent
releases.

---

## Contribute

Read the
[contribution guidelines](https://github.com/rescript-react-native/.github/blob/master/CONTRIBUTING.md)
before contributing.

## Code of Conduct

We want this community to be friendly and respectful to each other. Please read
[our full code of conduct](https://github.com/rescript-react-native/.github/blob/master/CODE_OF_CONDUCT.md)
so that you can understand what actions will and will not be tolerated.
