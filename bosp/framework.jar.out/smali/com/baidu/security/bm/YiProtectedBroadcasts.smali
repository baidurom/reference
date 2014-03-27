.class public Lcom/baidu/security/bm/YiProtectedBroadcasts;
.super Ljava/lang/Object;
.source "YiProtectedBroadcasts.java"


# static fields
.field static final APP_WHITE_LIST:[Ljava/lang/String;

.field public static final MAIN_CONCERN_ACTINS:[Ljava/lang/String;

.field public static final MAIN_PROTECTED_SYSTEM_ACTIONS:[Ljava/lang/String;

.field static final TRUSTED_SILENT_APPS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    aput-object v1, v0, v3

    const-string v1, "android.intent.action.SIG_STR"

    aput-object v1, v0, v4

    const-string v1, "android.intent.action.USER_PRESENT"

    aput-object v1, v0, v5

    const-string v1, "android.intent.action.UMS_CONNECTED"

    aput-object v1, v0, v6

    const-string v1, "android.intent.action.MEDIA_EJECT"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "android.intent.action.PHONE_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.intent.action.NEW_OUTGOING_CALL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "android.net.thrott.POLL_ACTION"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "android.hardware.usb.action.USB_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.android.mms.transaction.MessageStatusReceiver.MESSAGE_STATUS_RECEIVED"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "android.intent.action.ACTION_MEDIA_BAD_REMOVAL"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "android.intent.action.MEDIA_SHARED"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "yi.intent.action.UBC_SUBMITDATA"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.android.statusbar.ACTION_TRANSPARENT"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "intent.action.HOME_ACTIVITY_CHANGED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/security/bm/YiProtectedBroadcasts;->MAIN_CONCERN_ACTINS:[Ljava/lang/String;

    .line 66
    const/16 v0, 0x51

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    aput-object v1, v0, v3

    const-string v1, "android.intent.action.PACKAGE_INSTALL"

    aput-object v1, v0, v4

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    aput-object v1, v0, v5

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    aput-object v1, v0, v6

    const-string v1, "android.intent.action.MY_PACKAGE_REPLACED"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "android.intent.action.UID_REMOVED"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "android.intent.action.BATTERY_LOW"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "android.intent.action.BATTERY_OKAY"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "android.intent.action.DEVICE_STORAGE_OK"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "android.intent.action.DEVICE_STORAGE_FULL"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "android.intent.action.DOCK_EVENT"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "android.app.action.ENTER_CAR_MODE"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "android.app.action.EXIT_CAR_MODE"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "android.app.action.ENTER_DESK_MODE"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "android.app.action.EXIT_DESK_MODE"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "android.backup.intent.RUN"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "android.backup.intent.CLEAR"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "android.backup.intent.INIT"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "android.bluetooth.device.action.FOUND"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "android.bluetooth.device.action.DISAPPEARED"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "android.bluetooth.device.action.CLASS_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "android.bluetooth.device.action.ACL_CONNECTED"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "android.bluetooth.device.action.NAME_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "android.bluetooth.device.action.NAME_FAILED"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "android.bluetooth.device.action.PAIRING_CANCEL"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "android.nfc.action.LLCP_LINK_STATE_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "com.android.nfc_extras.action.AID_SELECTED"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "android.nfc.action.TRANSACTION_DETECTED"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "android.intent.action.CLEAR_DNS_CACHE"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "android.intent.action.PROXY_CHANGE"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "android.intent.action.SERVICE_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "android.intent.action.DATA_CONNECTION_FAILED"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "android.intent.action.RADIO_TECHNOLOGY"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "android.intent.action.NETWORK_SET_TIME"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "android.intent.action.NETWORK_SET_TIMEZONE"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "android.intent.action.ACTION_MDN_STATE_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/security/bm/YiProtectedBroadcasts;->MAIN_PROTECTED_SYSTEM_ACTIONS:[Ljava/lang/String;

    .line 171
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android"

    aput-object v1, v0, v3

    const-string v1, "com.android.phone"

    aput-object v1, v0, v4

    const-string v1, "com.android.mms"

    aput-object v1, v0, v5

    const-string v1, "com.android.systemui"

    aput-object v1, v0, v6

    const-string v1, "com.android.settings"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.android.calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.providers.calendar"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.providers.contacts"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.providers.downloads"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.android.providers.downloads.ui"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.android.providers.media"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.baidu.bsf.service"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.baidu.bsf.system"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.baidu.trafficmonitor"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.baidu.input"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.baidu.home2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.baidu.p2p"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.baidu.accountPreAuth"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.baidu.backuprestore"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.baidu.yi.userfeedback"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.baidu.tts"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.baidu.weather"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.baidu.baiduclock"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/security/bm/YiProtectedBroadcasts;->APP_WHITE_LIST:[Ljava/lang/String;

    .line 205
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.settings"

    aput-object v1, v0, v3

    const-string v1, "com.baidu.network"

    aput-object v1, v0, v4

    const-string v1, "com.android.mms"

    aput-object v1, v0, v5

    const-string v1, "com.android.calendar"

    aput-object v1, v0, v6

    const-string v1, "com.android.providers.calendar"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.baidu.bsf.service"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.baidu.accountPreAuth"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.baidu.yi.userfeedback"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.baidu.lockscreen"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.baidu.antitheft"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.android.providers.contacts"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.android.providers.applications"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.baidu.baidufestival"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/security/bm/YiProtectedBroadcasts;->TRUSTED_SILENT_APPS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
