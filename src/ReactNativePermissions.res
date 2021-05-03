type permission

module Android = {
  @module("react-native-permissions") @scope(("PERMISSIONS", "ANDROID"))
  external accept_handover: permission = "ACCEPT_HANDOVER"
  @module("react-native-permissions") @scope(("PERMISSIONS", "ANDROID"))
  external access_background_location: permission = "ACCESS_BACKGROUND_LOCATION"
  @module("react-native-permissions") @scope(("PERMISSIONS", "ANDROID"))
  external access_coarse_location: permission = "ACCESS_COARSE_LOCATION"
  @module("react-native-permissions") @scope(("PERMISSIONS", "ANDROID"))
  external access_fine_location: permission = "ACCESS_FINE_LOCATION"
  @module("react-native-permissions") @scope(("PERMISSIONS", "ANDROID"))
  external activity_recognition: permission = "ACTIVITY_RECOGNITION"
  @module("react-native-permissions") @scope(("PERMISSIONS", "ANDROID"))
  external add_voicemail: permission = "ADD_VOICEMAIL"
  @module("react-native-permissions") @scope(("PERMISSIONS", "ANDROID"))
  external answer_phone_calls: permission = "ANSWER_PHONE_CALLS"
  @module("react-native-permissions") @scope(("PERMISSIONS", "ANDROID"))
  external body_sensors: permission = "BODY_SENSORS"
  @module("react-native-permissions") @scope(("PERMISSIONS", "ANDROID"))
  external call_phone: permission = "CALL_PHONE"
  @module("react-native-permissions") @scope(("PERMISSIONS", "ANDROID"))
  external camera: permission = "CAMERA"
  @module("react-native-permissions") @scope(("PERMISSIONS", "ANDROID"))
  external get_accounts: permission = "GET_ACCOUNTS"
  @module("react-native-permissions") @scope(("PERMISSIONS", "ANDROID"))
  external process_outgoing_calls: permission = "PROCESS_OUTGOING_CALLS"
  @module("react-native-permissions") @scope(("PERMISSIONS", "ANDROID"))
  external read_calendar: permission = "READ_CALENDAR"
  @module("react-native-permissions") @scope(("PERMISSIONS", "ANDROID"))
  external read_call_log: permission = "READ_CALL_LOG"
  @module("react-native-permissions") @scope(("PERMISSIONS", "ANDROID"))
  external read_contacts: permission = "READ_CONTACTS"
  @module("react-native-permissions") @scope(("PERMISSIONS", "ANDROID"))
  external read_external_storage: permission = "READ_EXTERNAL_STORAGE"
  @module("react-native-permissions") @scope(("PERMISSIONS", "ANDROID"))
  external read_phone_numbers: permission = "READ_PHONE_NUMBERS"
  @module("react-native-permissions") @scope(("PERMISSIONS", "ANDROID"))
  external read_phone_state: permission = "READ_PHONE_STATE"
  @module("react-native-permissions") @scope(("PERMISSIONS", "ANDROID"))
  external read_sms: permission = "READ_SMS"
  @module("react-native-permissions") @scope(("PERMISSIONS", "ANDROID"))
  external receive_mms: permission = "RECEIVE_MMS"
  @module("react-native-permissions") @scope(("PERMISSIONS", "ANDROID"))
  external receive_sms: permission = "RECEIVE_SMS"
  @module("react-native-permissions") @scope(("PERMISSIONS", "ANDROID"))
  external receive_wap_push: permission = "RECEIVE_WAP_PUSH"
  @module("react-native-permissions") @scope(("PERMISSIONS", "ANDROID"))
  external record_audio: permission = "RECORD_AUDIO"
  @module("react-native-permissions") @scope(("PERMISSIONS", "ANDROID"))
  external send_sms: permission = "SEND_SMS"
  @module("react-native-permissions") @scope(("PERMISSIONS", "ANDROID"))
  external use_sip: permission = "USE_SIP"
  @module("react-native-permissions") @scope(("PERMISSIONS", "ANDROID"))
  external write_calendar: permission = "WRITE_CALENDAR"
  @module("react-native-permissions") @scope(("PERMISSIONS", "ANDROID"))
  external write_call_log: permission = "WRITE_CALL_LOG"
  @module("react-native-permissions") @scope(("PERMISSIONS", "ANDROID"))
  external write_contacts: permission = "WRITE_CONTACTS"
  @module("react-native-permissions") @scope(("PERMISSIONS", "ANDROID"))
  external write_external_storage: permission = "WRITE_EXTERNAL_STORAGE"
}

module Ios = {
  @module("react-native-permissions") @scope(("PERMISSIONS", "IOS"))
  external app_tracking_transparency: permission = "APP_TRACKING_TRANSPARENCY"
  @module("react-native-permissions") @scope(("PERMISSIONS", "IOS"))
  external bluetooth_peripheral: permission = "BLUETOOTH_PERIPHERAL"
  @module("react-native-permissions") @scope(("PERMISSIONS", "IOS"))
  external calendars: permission = "CALENDARS"
  @module("react-native-permissions") @scope(("PERMISSIONS", "IOS"))
  external camera: permission = "CAMERA"
  @module("react-native-permissions") @scope(("PERMISSIONS", "IOS"))
  external contacts: permission = "CONTACTS"
  @module("react-native-permissions") @scope(("PERMISSIONS", "IOS"))
  external face_id: permission = "FACE_ID"
  @module("react-native-permissions") @scope(("PERMISSIONS", "IOS"))
  external location_always: permission = "LOCATION_ALWAYS"
  @module("react-native-permissions") @scope(("PERMISSIONS", "IOS"))
  external location_when_in_use: permission = "LOCATION_WHEN_IN_USE"
  @module("react-native-permissions") @scope(("PERMISSIONS", "IOS"))
  external media_library: permission = "MEDIA_LIBRARY"
  @module("react-native-permissions") @scope(("PERMISSIONS", "IOS"))
  external microphone: permission = "MICROPHONE"
  @module("react-native-permissions") @scope(("PERMISSIONS", "IOS"))
  external motion: permission = "MOTION"
  @module("react-native-permissions") @scope(("PERMISSIONS", "IOS"))
  external photo_library: permission = "PHOTO_LIBRARY"
  @module("react-native-permissions") @scope(("PERMISSIONS", "IOS"))
  external reminders: permission = "REMINDERS"
  @module("react-native-permissions") @scope(("PERMISSIONS", "IOS"))
  external siri: permission = "SIRI"
  @module("react-native-permissions") @scope(("PERMISSIONS", "IOS"))
  external speech_recognition: permission = "SPEECH_RECOGNITION"
  @module("react-native-permissions") @scope(("PERMISSIONS", "IOS"))
  external storekit: permission = "STOREKIT"
}

type permissionStatus

/* This feature is not available (on this device / in this context) */
@module("react-native-permissions") @scope("RESULTS")
external unavailable: permissionStatus = "UNAVAILABLE"

/* The permission has not been requested / is denied but requestable */
@module("react-native-permissions") @scope("RESULTS")
external denied: permissionStatus = "DENIED"

/* The permission is granted */
@module("react-native-permissions") @scope("RESULTS")
external granted: permissionStatus = "GRANTED"

/* The permission is denied and not requestable anymore */
@module("react-native-permissions") @scope("RESULTS")
external blocked: permissionStatus = "BLOCKED"

// methods

@module("react-native-permissions")
external check: permission => Js.Promise.t<permissionStatus> = "check"

@module("react-native-permissions")
external checkMultiple: array<permission> => Js.Promise.t<Js.Dict.t<permissionStatus>> =
  "checkMultiple"

type requestRationale = {
  title: string,
  message: string,
  buttonPositive: option<string>,
  buttonNegative: option<string>,
  buttonNeutral: option<string>,
}

@module("react-native-permissions")
external request: permission => Js.Promise.t<permissionStatus> = "request"

@module("react-native-permissions")
external requestMultiple: array<permission> => Js.Promise.t<Js.Dict.t<permissionStatus>> =
  "requestMultiple"

@module("react-native-permissions")
external requestWithRational: (permission, requestRationale) => Js.Promise.t<permissionStatus> =
  "request"

type notificationSettings = {
  // properties only availables on iOS
  // unavailable settings will not be included in the response object
  alert: option<bool>,
  badge: option<bool>,
  sound: option<bool>,
  lockScreen: option<bool>,
  carPlay: option<bool>,
  notificationCenter: option<bool>,
  criticalAlert: option<bool>,
}

type requestNotificationsResult = {
  status: permissionStatus,
  settings: notificationSettings,
}

@module("react-native-permissions")
external checkNotifications: unit => Js.Promise.t<requestNotificationsResult> = "checkNotifications"

// only used on iOS
// string can be
// "alert"
// "badge"
// "sound"
// "criticalAlert"
// "carPlay"
// "provisional"
@module("react-native-permissions")
external requestNotifications: array<string> => Js.Promise.t<requestNotificationsResult> =
  "requestNotifications"

@module("react-native-permissions")
external openSettings: unit => Js.Promise.t<unit> = "openSettings"
