module Permissions = {
  module Constants = {
    type t;

    module IOS = {
      [@bs.module "react-native-permissions"]
      [@bs.scope ("default", "PERMISSIONS", "IOS")]
      external camera: t = "CAMERA";

      [@bs.module "react-native-permissions"]
      [@bs.scope ("default", "PERMISSIONS", "IOS")]
      external locationAlways: t = "LOCATION_ALWAYS";
    };

    module Android = {
      [@bs.module "react-native-permissions"]
      [@bs.scope ("default", "PERMISSIONS", "ANDROID")]
      external camera: t = "CAMERA";

      [@bs.module "react-native-permissions"]
      [@bs.scope ("default", "PERMISSIONS", "ANDROID")]
      external accessCoarseLocation: t = "ACCESS_COARSE_LOCATION";

      [@bs.module "react-native-permissions"]
      [@bs.scope ("default", "PERMISSIONS", "ANDROID")]
      external accessFineLocation: t = "ACCESS_FINE_LOCATION";
    };
  };

  module Results = {
    type t;
    [@bs.module "react-native-permissions"] [@bs.scope ("default", "RESULTS")]
    external unavailable: t = "UNAVAILABLE";
    [@bs.module "react-native-permissions"] [@bs.scope ("default", "RESULTS")]
    external denied: t = "DENIED";
    [@bs.module "react-native-permissions"] [@bs.scope ("default", "RESULTS")]
    external granted: t = "GRANTED";
    [@bs.module "react-native-permissions"] [@bs.scope ("default", "RESULTS")]
    external blocked: t = "BLOCKED";
  };

  [@bs.module "react-native-permissions"] [@bs.scope "default"]
  external openSettings: unit => Js.Promise.t(unit) = "openSettings";

  [@bs.module "react-native-permissions"] [@bs.scope "default"]
  external request: Constants.t => Js.Promise.t(Results.t) = "request";

  [@bs.module "react-native-permissions"] [@bs.scope "default"]
  external check: Constants.t => Js.Promise.t(Results.t) = "check";
};
