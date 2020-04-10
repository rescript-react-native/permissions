# `@reason-react-native/permissions`

[![Build Status](https://github.com/reason-react-native/permissions/workflows/Build/badge.svg)](https://github.com/reason-react-native/permissions/actions)
[![Version](https://img.shields.io/npm/v/@reason-react-native/permissions.svg)](https://www.npmjs.com/@reason-react-native/permissions)
[![Chat](https://img.shields.io/discord/235176658175262720.svg?logo=discord&colorb=blue)](https://reasonml-community.github.io/reason-react-native/discord/)

[ReasonML](https://reasonml.github.io) /
[BuckleScript](https://bucklescript.github.io) bindings for
[`react-native-permissions`](https://github.com/react-native-community/react-native-permissions).

Exposed as `ReactNativePermissions` module.

`@reason-react-native/permissions` X.y._ means it's compatible with
`react-native-permissions` X.y._

## Installation

When
[`react-native-permissions`](`https://github.com/react-native-community/react-native-permissions`)
is properly installed & configured by following their installation instructions,
you can install the bindings:

```console
npm install @reason-react-native/permissions
# or
yarn add @reason-react-native/permissions
```

`@reason-react-native/permissions` should be added to `bs-dependencies` in your
`bsconfig.json`. Something like

```diff
{
  //...
  "bs-dependencies": [
    "reason-react",
    "reason-react-native",
    // ...
+    "@reason-react-native/permissions"
  ],
  //...
}
```

## Usage

```reason
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
[contribution guidelines](https://github.com/reason-react-native/.github/blob/master/CONTRIBUTING.md)
before contributing.

## Code of Conduct

We want this community to be friendly and respectful to each other. Please read
[our full code of conduct](https://github.com/reason-react-native/.github/blob/master/CODE_OF_CONDUCT.md)
so that you can understand what actions will and will not be tolerated.
