.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_acquireMulticastLock:I = 0x1a

.field static final TRANSACTION_acquireWifiLock:I = 0x15

.field static final TRANSACTION_addHsCredential:I = 0x38

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x2

.field static final TRANSACTION_addToBlacklist:I = 0x22

.field static final TRANSACTION_blockClient:I = 0x31

.field static final TRANSACTION_captivePortalCheckComplete:I = 0x27

.field static final TRANSACTION_clearBlacklist:I = 0x23

.field static final TRANSACTION_delHsCredential:I = 0x3b

.field static final TRANSACTION_delHsNetwork:I = 0x3f

.field static final TRANSACTION_disableNetwork:I = 0x5

.field static final TRANSACTION_disconnect:I = 0x9

.field static final TRANSACTION_doCtiaTestOff:I = 0x2a

.field static final TRANSACTION_doCtiaTestOn:I = 0x29

.field static final TRANSACTION_doCtiaTestRate:I = 0x2b

.field static final TRANSACTION_enableHS:I = 0x40

.field static final TRANSACTION_enableNetwork:I = 0x4

.field static final TRANSACTION_getAccessPointPreferredChannels:I = 0x28

.field static final TRANSACTION_getClientIp:I = 0x30

.field static final TRANSACTION_getConfigFile:I = 0x26

.field static final TRANSACTION_getConfiguredNetworks:I = 0x1

.field static final TRANSACTION_getConnectionInfo:I = 0xc

.field static final TRANSACTION_getDhcpInfo:I = 0x14

.field static final TRANSACTION_getFrequencyBand:I = 0x11

.field static final TRANSACTION_getHotspotClients:I = 0x2f

.field static final TRANSACTION_getHsCredential:I = 0x3a

.field static final TRANSACTION_getHsNetwork:I = 0x3d

.field static final TRANSACTION_getHsStatus:I = 0x3c

.field static final TRANSACTION_getScanResults:I = 0x8

.field static final TRANSACTION_getWifiApConfiguration:I = 0x1e

.field static final TRANSACTION_getWifiApEnabledState:I = 0x1d

.field static final TRANSACTION_getWifiEnabledState:I = 0xe

.field static final TRANSACTION_getWifiServiceMessenger:I = 0x24

.field static final TRANSACTION_getWifiStateMachineMessenger:I = 0x25

.field static final TRANSACTION_hasConnectableAp:I = 0x37

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x18

.field static final TRANSACTION_isDualBandSupported:I = 0x12

.field static final TRANSACTION_isMulticastEnabled:I = 0x19

.field static final TRANSACTION_isWifi5gSupport:I = 0x41

.field static final TRANSACTION_pingSupplicant:I = 0x6

.field static final TRANSACTION_reassociate:I = 0xb

.field static final TRANSACTION_reconnect:I = 0xa

.field static final TRANSACTION_releaseMulticastLock:I = 0x1b

.field static final TRANSACTION_releaseWifiLock:I = 0x17

.field static final TRANSACTION_removeNetwork:I = 0x3

.field static final TRANSACTION_saveApPriority:I = 0x36

.field static final TRANSACTION_saveConfiguration:I = 0x13

.field static final TRANSACTION_setApProbeRequestEnabled:I = 0x33

.field static final TRANSACTION_setCountryCode:I = 0xf

.field static final TRANSACTION_setFrequencyBand:I = 0x10

.field static final TRANSACTION_setHsCredential:I = 0x39

.field static final TRANSACTION_setHsNetwork:I = 0x3e

.field static final TRANSACTION_setTxPower:I = 0x2d

.field static final TRANSACTION_setTxPowerEnabled:I = 0x2c

.field static final TRANSACTION_setWifiApConfiguration:I = 0x1f

.field static final TRANSACTION_setWifiApEnabled:I = 0x1c

.field static final TRANSACTION_setWifiEnabled:I = 0xd

.field static final TRANSACTION_setWifiEnabledForIPO:I = 0x34

.field static final TRANSACTION_startApWps:I = 0x2e

.field static final TRANSACTION_startScan:I = 0x7

.field static final TRANSACTION_startWifi:I = 0x20

.field static final TRANSACTION_stopWifi:I = 0x21

.field static final TRANSACTION_suspendNotification:I = 0x35

.field static final TRANSACTION_unblockClient:I = 0x32

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/wifi/IWifiManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 732
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 47
    :sswitch_0
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v2, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v19

    .line 54
    .local v19, _result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 56
    const/4 v2, 0x1

    goto :goto_0

    .line 60
    .end local v19           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_2
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    sget-object v2, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 68
    .local v3, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v16

    .line 69
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    const/4 v2, 0x1

    goto :goto_0

    .line 66
    .end local v3           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v16           #_result:I
    :cond_0
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_1

    .line 75
    .end local v3           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_3
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 78
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v16

    .line 79
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v16, :cond_1

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    const/4 v2, 0x1

    goto :goto_0

    .line 80
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 85
    .end local v3           #_arg0:I
    .end local v16           #_result:Z
    :sswitch_4
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 89
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    .line 90
    .local v4, _arg1:Z
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v16

    .line 91
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v16, :cond_3

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 89
    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .line 92
    .restart local v4       #_arg1:Z
    .restart local v16       #_result:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 97
    .end local v3           #_arg0:I
    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :sswitch_5
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 100
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v16

    .line 101
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v16, :cond_4

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 102
    :cond_4
    const/4 v2, 0x0

    goto :goto_5

    .line 107
    .end local v3           #_arg0:I
    .end local v16           #_result:Z
    :sswitch_6
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->pingSupplicant()Z

    move-result v16

    .line 109
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v16, :cond_5

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 110
    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    .line 115
    .end local v16           #_result:Z
    :sswitch_7
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v3, 0x1

    .line 118
    .local v3, _arg0:Z
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Z)V

    .line 119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 117
    .end local v3           #_arg0:Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_7

    .line 124
    :sswitch_8
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults()Ljava/util/List;

    move-result-object v18

    .line 126
    .local v18, _result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 128
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 132
    .end local v18           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_9
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()V

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 139
    :sswitch_a
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()V

    .line 141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 146
    :sswitch_b
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()V

    .line 148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 153
    :sswitch_c
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v16

    .line 155
    .local v16, _result:Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v16, :cond_7

    .line 157
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/4 v2, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 163
    :goto_8
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 161
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 167
    .end local v16           #_result:Landroid/net/wifi/WifiInfo;
    :sswitch_d
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    const/4 v3, 0x1

    .line 170
    .restart local v3       #_arg0:Z
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Z)Z

    move-result v16

    .line 171
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    if-eqz v16, :cond_9

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 169
    .end local v3           #_arg0:Z
    .end local v16           #_result:Z
    :cond_8
    const/4 v3, 0x0

    goto :goto_9

    .line 172
    .restart local v3       #_arg0:Z
    .restart local v16       #_result:Z
    :cond_9
    const/4 v2, 0x0

    goto :goto_a

    .line 177
    .end local v3           #_arg0:Z
    .end local v16           #_result:Z
    :sswitch_e
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v16

    .line 179
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 185
    .end local v16           #_result:I
    :sswitch_f
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    const/4 v4, 0x1

    .line 190
    .restart local v4       #_arg1:Z
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/net/wifi/IWifiManager$Stub;->setCountryCode(Ljava/lang/String;Z)V

    .line 191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 189
    .end local v4           #_arg1:Z
    :cond_a
    const/4 v4, 0x0

    goto :goto_b

    .line 196
    .end local v3           #_arg0:Ljava/lang/String;
    :sswitch_10
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 200
    .local v3, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    const/4 v4, 0x1

    .line 201
    .restart local v4       #_arg1:Z
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/net/wifi/IWifiManager$Stub;->setFrequencyBand(IZ)V

    .line 202
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 200
    .end local v4           #_arg1:Z
    :cond_b
    const/4 v4, 0x0

    goto :goto_c

    .line 207
    .end local v3           #_arg0:I
    :sswitch_11
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getFrequencyBand()I

    move-result v16

    .line 209
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 215
    .end local v16           #_result:I
    :sswitch_12
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isDualBandSupported()Z

    move-result v16

    .line 217
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v16, :cond_c

    const/4 v2, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 218
    :cond_c
    const/4 v2, 0x0

    goto :goto_d

    .line 223
    .end local v16           #_result:Z
    :sswitch_13
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v16

    .line 225
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    if-eqz v16, :cond_d

    const/4 v2, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 226
    :cond_d
    const/4 v2, 0x0

    goto :goto_e

    .line 231
    .end local v16           #_result:Z
    :sswitch_14
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v16

    .line 233
    .local v16, _result:Landroid/net/DhcpInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    if-eqz v16, :cond_e

    .line 235
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    const/4 v2, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 241
    :goto_f
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 239
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 245
    .end local v16           #_result:Landroid/net/DhcpInfo;
    :sswitch_15
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 249
    .local v3, _arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 251
    .local v4, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 253
    .local v5, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    .line 254
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/WorkSource;

    .line 259
    .local v6, _arg3:Landroid/os/WorkSource;
    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v16

    .line 260
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    if-eqz v16, :cond_10

    const/4 v2, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 257
    .end local v6           #_arg3:Landroid/os/WorkSource;
    .end local v16           #_result:Z
    :cond_f
    const/4 v6, 0x0

    .restart local v6       #_arg3:Landroid/os/WorkSource;
    goto :goto_10

    .line 261
    .restart local v16       #_result:Z
    :cond_10
    const/4 v2, 0x0

    goto :goto_11

    .line 266
    .end local v3           #_arg0:Landroid/os/IBinder;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v6           #_arg3:Landroid/os/WorkSource;
    .end local v16           #_result:Z
    :sswitch_16
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 270
    .restart local v3       #_arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11

    .line 271
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/WorkSource;

    .line 276
    .local v4, _arg1:Landroid/os/WorkSource;
    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 277
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 274
    .end local v4           #_arg1:Landroid/os/WorkSource;
    :cond_11
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/WorkSource;
    goto :goto_12

    .line 282
    .end local v3           #_arg0:Landroid/os/IBinder;
    .end local v4           #_arg1:Landroid/os/WorkSource;
    :sswitch_17
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 285
    .restart local v3       #_arg0:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v16

    .line 286
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    if-eqz v16, :cond_12

    const/4 v2, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 287
    :cond_12
    const/4 v2, 0x0

    goto :goto_13

    .line 292
    .end local v3           #_arg0:Landroid/os/IBinder;
    .end local v16           #_result:Z
    :sswitch_18
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    .line 294
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 299
    :sswitch_19
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v16

    .line 301
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    if-eqz v16, :cond_13

    const/4 v2, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 302
    :cond_13
    const/4 v2, 0x0

    goto :goto_14

    .line 307
    .end local v16           #_result:Z
    :sswitch_1a
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 311
    .restart local v3       #_arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 312
    .local v4, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 318
    .end local v3           #_arg0:Landroid/os/IBinder;
    .end local v4           #_arg1:Ljava/lang/String;
    :sswitch_1b
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    .line 320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 325
    :sswitch_1c
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_14

    .line 328
    sget-object v2, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 334
    .local v3, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_15

    const/4 v4, 0x1

    .line 335
    .local v4, _arg1:Z
    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 331
    .end local v3           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #_arg1:Z
    :cond_14
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_15

    .line 334
    :cond_15
    const/4 v4, 0x0

    goto :goto_16

    .line 341
    .end local v3           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_1d
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v16

    .line 343
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 349
    .end local v16           #_result:I
    :sswitch_1e
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v16

    .line 351
    .local v16, _result:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    if-eqz v16, :cond_16

    .line 353
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    const/4 v2, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 359
    :goto_17
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 357
    :cond_16
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 363
    .end local v16           #_result:Landroid/net/wifi/WifiConfiguration;
    :sswitch_1f
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_17

    .line 366
    sget-object v2, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 371
    .restart local v3       #_arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 369
    .end local v3           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :cond_17
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_18

    .line 377
    .end local v3           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_20
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->startWifi()V

    .line 379
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 384
    :sswitch_21
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->stopWifi()V

    .line 386
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 391
    :sswitch_22
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->addToBlacklist(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 400
    .end local v3           #_arg0:Ljava/lang/String;
    :sswitch_23
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->clearBlacklist()V

    .line 402
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 407
    :sswitch_24
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v16

    .line 409
    .local v16, _result:Landroid/os/Messenger;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    if-eqz v16, :cond_18

    .line 411
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    const/4 v2, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 417
    :goto_19
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 415
    :cond_18
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_19

    .line 421
    .end local v16           #_result:Landroid/os/Messenger;
    :sswitch_25
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiStateMachineMessenger()Landroid/os/Messenger;

    move-result-object v16

    .line 423
    .restart local v16       #_result:Landroid/os/Messenger;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    if-eqz v16, :cond_19

    .line 425
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    const/4 v2, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 431
    :goto_1a
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 429
    :cond_19
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a

    .line 435
    .end local v16           #_result:Landroid/os/Messenger;
    :sswitch_26
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfigFile()Ljava/lang/String;

    move-result-object v16

    .line 437
    .local v16, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 439
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 443
    .end local v16           #_result:Ljava/lang/String;
    :sswitch_27
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->captivePortalCheckComplete()V

    .line 445
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 450
    :sswitch_28
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getAccessPointPreferredChannels()[Ljava/lang/String;

    move-result-object v16

    .line 452
    .local v16, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 454
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 458
    .end local v16           #_result:[Ljava/lang/String;
    :sswitch_29
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->doCtiaTestOn()Z

    move-result v16

    .line 460
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    if-eqz v16, :cond_1a

    const/4 v2, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 461
    :cond_1a
    const/4 v2, 0x0

    goto :goto_1b

    .line 466
    .end local v16           #_result:Z
    :sswitch_2a
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->doCtiaTestOff()Z

    move-result v16

    .line 468
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    if-eqz v16, :cond_1b

    const/4 v2, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 469
    :cond_1b
    const/4 v2, 0x0

    goto :goto_1c

    .line 474
    .end local v16           #_result:Z
    :sswitch_2b
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 477
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->doCtiaTestRate(I)Z

    move-result v16

    .line 478
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    if-eqz v16, :cond_1c

    const/4 v2, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 479
    :cond_1c
    const/4 v2, 0x0

    goto :goto_1d

    .line 484
    .end local v3           #_arg0:I
    .end local v16           #_result:Z
    :sswitch_2c
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v3, 0x1

    .line 487
    .local v3, _arg0:Z
    :goto_1e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->setTxPowerEnabled(Z)Z

    move-result v16

    .line 488
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    if-eqz v16, :cond_1e

    const/4 v2, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 486
    .end local v3           #_arg0:Z
    .end local v16           #_result:Z
    :cond_1d
    const/4 v3, 0x0

    goto :goto_1e

    .line 489
    .restart local v3       #_arg0:Z
    .restart local v16       #_result:Z
    :cond_1e
    const/4 v2, 0x0

    goto :goto_1f

    .line 494
    .end local v3           #_arg0:Z
    .end local v16           #_result:Z
    :sswitch_2d
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 497
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->setTxPower(I)Z

    move-result v16

    .line 498
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    if-eqz v16, :cond_1f

    const/4 v2, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 499
    :cond_1f
    const/4 v2, 0x0

    goto :goto_20

    .line 504
    .end local v3           #_arg0:I
    .end local v16           #_result:Z
    :sswitch_2e
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_20

    .line 507
    sget-object v2, Landroid/net/wifi/WpsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WpsInfo;

    .line 512
    .local v3, _arg0:Landroid/net/wifi/WpsInfo;
    :goto_21
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->startApWps(Landroid/net/wifi/WpsInfo;)V

    .line 513
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 510
    .end local v3           #_arg0:Landroid/net/wifi/WpsInfo;
    :cond_20
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/net/wifi/WpsInfo;
    goto :goto_21

    .line 518
    .end local v3           #_arg0:Landroid/net/wifi/WpsInfo;
    :sswitch_2f
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getHotspotClients()Ljava/util/List;

    move-result-object v17

    .line 520
    .local v17, _result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/HotspotClient;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 522
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 526
    .end local v17           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/HotspotClient;>;"
    :sswitch_30
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 529
    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->getClientIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 530
    .local v16, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 532
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 536
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Ljava/lang/String;
    :sswitch_31
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_21

    .line 539
    sget-object v2, Landroid/net/wifi/HotspotClient;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/HotspotClient;

    .line 544
    .local v3, _arg0:Landroid/net/wifi/HotspotClient;
    :goto_22
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->blockClient(Landroid/net/wifi/HotspotClient;)Z

    move-result v16

    .line 545
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    if-eqz v16, :cond_22

    const/4 v2, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 542
    .end local v3           #_arg0:Landroid/net/wifi/HotspotClient;
    .end local v16           #_result:Z
    :cond_21
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/net/wifi/HotspotClient;
    goto :goto_22

    .line 546
    .restart local v16       #_result:Z
    :cond_22
    const/4 v2, 0x0

    goto :goto_23

    .line 551
    .end local v3           #_arg0:Landroid/net/wifi/HotspotClient;
    .end local v16           #_result:Z
    :sswitch_32
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_23

    .line 554
    sget-object v2, Landroid/net/wifi/HotspotClient;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/HotspotClient;

    .line 559
    .restart local v3       #_arg0:Landroid/net/wifi/HotspotClient;
    :goto_24
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->unblockClient(Landroid/net/wifi/HotspotClient;)Z

    move-result v16

    .line 560
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    if-eqz v16, :cond_24

    const/4 v2, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 557
    .end local v3           #_arg0:Landroid/net/wifi/HotspotClient;
    .end local v16           #_result:Z
    :cond_23
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/net/wifi/HotspotClient;
    goto :goto_24

    .line 561
    .restart local v16       #_result:Z
    :cond_24
    const/4 v2, 0x0

    goto :goto_25

    .line 566
    .end local v3           #_arg0:Landroid/net/wifi/HotspotClient;
    .end local v16           #_result:Z
    :sswitch_33
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_25

    const/4 v3, 0x1

    .line 569
    .local v3, _arg0:Z
    :goto_26
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->setApProbeRequestEnabled(Z)Z

    move-result v16

    .line 570
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    if-eqz v16, :cond_26

    const/4 v2, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 572
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 568
    .end local v3           #_arg0:Z
    .end local v16           #_result:Z
    :cond_25
    const/4 v3, 0x0

    goto :goto_26

    .line 571
    .restart local v3       #_arg0:Z
    .restart local v16       #_result:Z
    :cond_26
    const/4 v2, 0x0

    goto :goto_27

    .line 576
    .end local v3           #_arg0:Z
    .end local v16           #_result:Z
    :sswitch_34
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_27

    const/4 v3, 0x1

    .line 579
    .restart local v3       #_arg0:Z
    :goto_28
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabledForIPO(Z)Z

    move-result v16

    .line 580
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    if-eqz v16, :cond_28

    const/4 v2, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 582
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 578
    .end local v3           #_arg0:Z
    .end local v16           #_result:Z
    :cond_27
    const/4 v3, 0x0

    goto :goto_28

    .line 581
    .restart local v3       #_arg0:Z
    .restart local v16       #_result:Z
    :cond_28
    const/4 v2, 0x0

    goto :goto_29

    .line 586
    .end local v3           #_arg0:Z
    .end local v16           #_result:Z
    :sswitch_35
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->suspendNotification()V

    .line 588
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 593
    :sswitch_36
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->saveApPriority()Z

    move-result v16

    .line 595
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    if-eqz v16, :cond_29

    const/4 v2, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 596
    :cond_29
    const/4 v2, 0x0

    goto :goto_2a

    .line 601
    .end local v16           #_result:Z
    :sswitch_37
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->hasConnectableAp()Z

    move-result v16

    .line 603
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    if-eqz v16, :cond_2a

    const/4 v2, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 604
    :cond_2a
    const/4 v2, 0x0

    goto :goto_2b

    .line 609
    .end local v16           #_result:Z
    :sswitch_38
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 613
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 615
    .local v4, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 617
    .restart local v5       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 619
    .local v6, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 621
    .local v7, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 623
    .local v8, _arg5:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 625
    .local v9, _arg6:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 627
    .local v10, _arg7:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 629
    .local v11, _arg8:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 631
    .local v12, _arg9:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 633
    .local v13, _arg10:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 635
    .local v14, _arg11:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .local v15, _arg12:Ljava/lang/String;
    move-object/from16 v2, p0

    .line 636
    invoke-virtual/range {v2 .. v15}, Landroid/net/wifi/IWifiManager$Stub;->addHsCredential(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 637
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 639
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 643
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v6           #_arg3:Ljava/lang/String;
    .end local v7           #_arg4:Ljava/lang/String;
    .end local v8           #_arg5:Ljava/lang/String;
    .end local v9           #_arg6:Ljava/lang/String;
    .end local v10           #_arg7:Ljava/lang/String;
    .end local v11           #_arg8:Ljava/lang/String;
    .end local v12           #_arg9:Ljava/lang/String;
    .end local v13           #_arg10:Ljava/lang/String;
    .end local v14           #_arg11:Ljava/lang/String;
    .end local v15           #_arg12:Ljava/lang/String;
    .end local v16           #_result:I
    :sswitch_39
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 647
    .local v3, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 649
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 650
    .restart local v5       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/net/wifi/IWifiManager$Stub;->setHsCredential(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .line 651
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    if-eqz v16, :cond_2b

    const/4 v2, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 652
    :cond_2b
    const/4 v2, 0x0

    goto :goto_2c

    .line 657
    .end local v3           #_arg0:I
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_3a
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getHsCredential()Ljava/lang/String;

    move-result-object v16

    .line 659
    .local v16, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 661
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 665
    .end local v16           #_result:Ljava/lang/String;
    :sswitch_3b
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 668
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->delHsCredential(I)Z

    move-result v16

    .line 669
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    if-eqz v16, :cond_2c

    const/4 v2, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 670
    :cond_2c
    const/4 v2, 0x0

    goto :goto_2d

    .line 675
    .end local v3           #_arg0:I
    .end local v16           #_result:Z
    :sswitch_3c
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getHsStatus()Ljava/lang/String;

    move-result-object v16

    .line 677
    .local v16, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 679
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 683
    .end local v16           #_result:Ljava/lang/String;
    :sswitch_3d
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 684
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getHsNetwork()Ljava/lang/String;

    move-result-object v16

    .line 685
    .restart local v16       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 687
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 691
    .end local v16           #_result:Ljava/lang/String;
    :sswitch_3e
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 695
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 697
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 698
    .restart local v5       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/net/wifi/IWifiManager$Stub;->setHsNetwork(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .line 699
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    if-eqz v16, :cond_2d

    const/4 v2, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 700
    :cond_2d
    const/4 v2, 0x0

    goto :goto_2e

    .line 705
    .end local v3           #_arg0:I
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_3f
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 708
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->delHsNetwork(I)Z

    move-result v16

    .line 709
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    if-eqz v16, :cond_2e

    const/4 v2, 0x1

    :goto_2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 711
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 710
    :cond_2e
    const/4 v2, 0x0

    goto :goto_2f

    .line 715
    .end local v3           #_arg0:I
    .end local v16           #_result:Z
    :sswitch_40
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v3, 0x1

    .line 718
    .local v3, _arg0:Z
    :goto_30
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->enableHS(Z)Z

    move-result v16

    .line 719
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    if-eqz v16, :cond_30

    const/4 v2, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 721
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 717
    .end local v3           #_arg0:Z
    .end local v16           #_result:Z
    :cond_2f
    const/4 v3, 0x0

    goto :goto_30

    .line 720
    .restart local v3       #_arg0:Z
    .restart local v16       #_result:Z
    :cond_30
    const/4 v2, 0x0

    goto :goto_31

    .line 725
    .end local v3           #_arg0:Z
    .end local v16           #_result:Z
    :sswitch_41
    const-string v2, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isWifi5gSupport()Z

    move-result v16

    .line 727
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    if-eqz v16, :cond_31

    const/4 v2, 0x1

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 729
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 728
    :cond_31
    const/4 v2, 0x0

    goto :goto_32

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
