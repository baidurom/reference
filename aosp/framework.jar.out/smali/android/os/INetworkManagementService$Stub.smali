.class public abstract Landroid/os/INetworkManagementService$Stub;
.super Landroid/os/Binder;
.source "INetworkManagementService.java"

# interfaces
.implements Landroid/os/INetworkManagementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/INetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/INetworkManagementService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.INetworkManagementService"

.field static final TRANSACTION_addIdleTimer:I = 0x36

.field static final TRANSACTION_addRoute:I = 0xd

.field static final TRANSACTION_addSecondaryRoute:I = 0xf

.field static final TRANSACTION_attachPppd:I = 0x21

.field static final TRANSACTION_clearInterfaceAddresses:I = 0x6

.field static final TRANSACTION_detachPppd:I = 0x22

.field static final TRANSACTION_disableIpv6:I = 0xa

.field static final TRANSACTION_disableNat:I = 0x1f

.field static final TRANSACTION_enableIpv6:I = 0xb

.field static final TRANSACTION_enableNat:I = 0x1e

.field static final TRANSACTION_flushDefaultDnsCache:I = 0x3a

.field static final TRANSACTION_flushInterfaceDnsCache:I = 0x3b

.field static final TRANSACTION_getDnsForwarders:I = 0x1d

.field static final TRANSACTION_getInterfaceConfig:I = 0x4

.field static final TRANSACTION_getInterfaceRxThrottle:I = 0x34

.field static final TRANSACTION_getInterfaceTxThrottle:I = 0x35

.field static final TRANSACTION_getIpForwardingEnabled:I = 0x12

.field static final TRANSACTION_getNetworkStatsDetail:I = 0x29

.field static final TRANSACTION_getNetworkStatsSummaryDev:I = 0x27

.field static final TRANSACTION_getNetworkStatsSummaryXt:I = 0x28

.field static final TRANSACTION_getNetworkStatsTethering:I = 0x2b

.field static final TRANSACTION_getNetworkStatsUidDetail:I = 0x2a

.field static final TRANSACTION_getRoutes:I = 0xc

.field static final TRANSACTION_isBandwidthControlEnabled:I = 0x32

.field static final TRANSACTION_isFirewallEnabled:I = 0x3d

.field static final TRANSACTION_isTetheringStarted:I = 0x16

.field static final TRANSACTION_listInterfaces:I = 0x3

.field static final TRANSACTION_listTetheredInterfaces:I = 0x1b

.field static final TRANSACTION_listTtys:I = 0x20

.field static final TRANSACTION_registerObserver:I = 0x1

.field static final TRANSACTION_removeIdleTimer:I = 0x37

.field static final TRANSACTION_removeInterfaceAlert:I = 0x2f

.field static final TRANSACTION_removeInterfaceQuota:I = 0x2d

.field static final TRANSACTION_removeRoute:I = 0xe

.field static final TRANSACTION_removeSecondaryRoute:I = 0x10

.field static final TRANSACTION_setAccessPoint:I = 0x26

.field static final TRANSACTION_setDefaultInterfaceForDns:I = 0x38

.field static final TRANSACTION_setDnsForwarders:I = 0x1c

.field static final TRANSACTION_setDnsServersForInterface:I = 0x39

.field static final TRANSACTION_setFirewallEgressDestRule:I = 0x40

.field static final TRANSACTION_setFirewallEgressSourceRule:I = 0x3f

.field static final TRANSACTION_setFirewallEnabled:I = 0x3c

.field static final TRANSACTION_setFirewallInterfaceRule:I = 0x3e

.field static final TRANSACTION_setFirewallUidRule:I = 0x41

.field static final TRANSACTION_setGlobalAlert:I = 0x30

.field static final TRANSACTION_setInterfaceAlert:I = 0x2e

.field static final TRANSACTION_setInterfaceConfig:I = 0x5

.field static final TRANSACTION_setInterfaceDown:I = 0x7

.field static final TRANSACTION_setInterfaceIpv6PrivacyExtensions:I = 0x9

.field static final TRANSACTION_setInterfaceQuota:I = 0x2c

.field static final TRANSACTION_setInterfaceThrottle:I = 0x33

.field static final TRANSACTION_setInterfaceUp:I = 0x8

.field static final TRANSACTION_setIpForwardingEnabled:I = 0x13

.field static final TRANSACTION_setUidNetworkRules:I = 0x31

.field static final TRANSACTION_shutdown:I = 0x11

.field static final TRANSACTION_startAccessPoint:I = 0x24

.field static final TRANSACTION_startReverseTethering:I = 0x17

.field static final TRANSACTION_startTethering:I = 0x14

.field static final TRANSACTION_stopAccessPoint:I = 0x25

.field static final TRANSACTION_stopReverseTethering:I = 0x18

.field static final TRANSACTION_stopTethering:I = 0x15

.field static final TRANSACTION_tetherInterface:I = 0x19

.field static final TRANSACTION_unregisterObserver:I = 0x2

.field static final TRANSACTION_untetherInterface:I = 0x1a

.field static final TRANSACTION_wifiFirmwareReload:I = 0x23


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p0, p0, v0}, Landroid/os/INetworkManagementService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "android.os.INetworkManagementService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/INetworkManagementService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/os/INetworkManagementService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/os/INetworkManagementService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/INetworkManagementService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 748
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 45
    :sswitch_0
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v1

    .line 53
    .local v1, _arg0:Landroid/net/INetworkManagementEventObserver;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    const/4 v0, 0x1

    goto :goto_0

    .line 59
    .end local v1           #_arg0:Landroid/net/INetworkManagementEventObserver;
    :sswitch_2
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v1

    .line 62
    .restart local v1       #_arg0:Landroid/net/INetworkManagementEventObserver;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    const/4 v0, 0x1

    goto :goto_0

    .line 68
    .end local v1           #_arg0:Landroid/net/INetworkManagementEventObserver;
    :sswitch_3
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listInterfaces()[Ljava/lang/String;

    move-result-object v10

    .line 70
    .local v10, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x1

    goto :goto_0

    .line 76
    .end local v10           #_result:[Ljava/lang/String;
    :sswitch_4
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v10

    .line 80
    .local v10, _result:Landroid/net/InterfaceConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v10, :cond_0

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/net/InterfaceConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 88
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 92
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v10           #_result:Landroid/net/InterfaceConfiguration;
    :sswitch_5
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    sget-object v0, Landroid/net/InterfaceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/InterfaceConfiguration;

    .line 102
    .local v2, _arg1:Landroid/net/InterfaceConfiguration;
    :goto_2
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 100
    .end local v2           #_arg1:Landroid/net/InterfaceConfiguration;
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/net/InterfaceConfiguration;
    goto :goto_2

    .line 108
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/net/InterfaceConfiguration;
    :sswitch_6
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 117
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_7
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 120
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceDown(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 126
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_8
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceUp(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 135
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_9
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 139
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 140
    .local v2, _arg1:Z
    :goto_3
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 139
    .end local v2           #_arg1:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 146
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 149
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->disableIpv6(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 155
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 158
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->enableIpv6(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 164
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_c
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 167
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getRoutes(Ljava/lang/String;)[Landroid/net/RouteInfo;

    move-result-object v10

    .line 168
    .local v10, _result:[Landroid/net/RouteInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    const/4 v0, 0x1

    invoke-virtual {p3, v10, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 170
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 174
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v10           #_result:[Landroid/net/RouteInfo;
    :sswitch_d
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 178
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    sget-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 184
    .local v2, _arg1:Landroid/net/RouteInfo;
    :goto_4
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 182
    .end local v2           #_arg1:Landroid/net/RouteInfo;
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/net/RouteInfo;
    goto :goto_4

    .line 190
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/net/RouteInfo;
    :sswitch_e
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 194
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 195
    sget-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 200
    .restart local v2       #_arg1:Landroid/net/RouteInfo;
    :goto_5
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 198
    .end local v2           #_arg1:Landroid/net/RouteInfo;
    :cond_4
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/net/RouteInfo;
    goto :goto_5

    .line 206
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/net/RouteInfo;
    :sswitch_f
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 210
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 211
    sget-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 216
    .restart local v2       #_arg1:Landroid/net/RouteInfo;
    :goto_6
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addSecondaryRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 214
    .end local v2           #_arg1:Landroid/net/RouteInfo;
    :cond_5
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/net/RouteInfo;
    goto :goto_6

    .line 222
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/net/RouteInfo;
    :sswitch_10
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 226
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 227
    sget-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 232
    .restart local v2       #_arg1:Landroid/net/RouteInfo;
    :goto_7
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->removeSecondaryRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 230
    .end local v2           #_arg1:Landroid/net/RouteInfo;
    :cond_6
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/net/RouteInfo;
    goto :goto_7

    .line 238
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/net/RouteInfo;
    :sswitch_11
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->shutdown()V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 245
    :sswitch_12
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getIpForwardingEnabled()Z

    move-result v10

    .line 247
    .local v10, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v10, :cond_7

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 248
    :cond_7
    const/4 v0, 0x0

    goto :goto_8

    .line 253
    .end local v10           #_result:Z
    :sswitch_13
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 256
    .local v1, _arg0:Z
    :goto_9
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setIpForwardingEnabled(Z)V

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 255
    .end local v1           #_arg0:Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_9

    .line 262
    :sswitch_14
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, _arg0:[Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->startTethering([Ljava/lang/String;)V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 271
    .end local v1           #_arg0:[Ljava/lang/String;
    :sswitch_15
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->stopTethering()V

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 278
    :sswitch_16
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isTetheringStarted()Z

    move-result v10

    .line 280
    .restart local v10       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    if-eqz v10, :cond_9

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 281
    :cond_9
    const/4 v0, 0x0

    goto :goto_a

    .line 286
    .end local v10           #_result:Z
    :sswitch_17
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->startReverseTethering(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 295
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_18
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->stopReverseTethering()V

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 302
    :sswitch_19
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 305
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->tetherInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 311
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_1a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 314
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->untetherInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 320
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_1b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listTetheredInterfaces()[Ljava/lang/String;

    move-result-object v10

    .line 322
    .local v10, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 324
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 328
    .end local v10           #_result:[Ljava/lang/String;
    :sswitch_1c
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, _arg0:[Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setDnsForwarders([Ljava/lang/String;)V

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 337
    .end local v1           #_arg0:[Ljava/lang/String;
    :sswitch_1d
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getDnsForwarders()[Ljava/lang/String;

    move-result-object v10

    .line 339
    .restart local v10       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 341
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 345
    .end local v10           #_result:[Ljava/lang/String;
    :sswitch_1e
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 356
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_1f
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 360
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 361
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->disableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 367
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_20
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listTtys()[Ljava/lang/String;

    move-result-object v10

    .line 369
    .restart local v10       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 371
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 375
    .end local v10           #_result:[Ljava/lang/String;
    :sswitch_21
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 379
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 381
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 383
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 385
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg4:Ljava/lang/String;
    move-object v0, p0

    .line 386
    invoke-virtual/range {v0 .. v5}, Landroid/os/INetworkManagementService$Stub;->attachPppd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 392
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    :sswitch_22
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 395
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->detachPppd(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 401
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_23
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 405
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 406
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 412
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_24
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 415
    sget-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 421
    .local v1, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 422
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 418
    .end local v1           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #_arg1:Ljava/lang/String;
    :cond_a
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_b

    .line 428
    .end local v1           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_25
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->stopAccessPoint(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 437
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_26
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 440
    sget-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 446
    .local v1, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 447
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 448
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 443
    .end local v1           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #_arg1:Ljava/lang/String;
    :cond_b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_c

    .line 453
    .end local v1           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_27
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    move-result-object v10

    .line 455
    .local v10, _result:Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    if-eqz v10, :cond_c

    .line 457
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 463
    :goto_d
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 461
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 467
    .end local v10           #_result:Landroid/net/NetworkStats;
    :sswitch_28
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    move-result-object v10

    .line 469
    .restart local v10       #_result:Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    if-eqz v10, :cond_d

    .line 471
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 477
    :goto_e
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 475
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 481
    .end local v10           #_result:Landroid/net/NetworkStats;
    :sswitch_29
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsDetail()Landroid/net/NetworkStats;

    move-result-object v10

    .line 483
    .restart local v10       #_result:Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    if-eqz v10, :cond_e

    .line 485
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 491
    :goto_f
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 489
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 495
    .end local v10           #_result:Landroid/net/NetworkStats;
    :sswitch_2a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 498
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;

    move-result-object v10

    .line 499
    .restart local v10       #_result:Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    if-eqz v10, :cond_f

    .line 501
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 507
    :goto_10
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 505
    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 511
    .end local v1           #_arg0:I
    .end local v10           #_result:Landroid/net/NetworkStats;
    :sswitch_2b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, _arg0:[Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsTethering([Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v10

    .line 515
    .restart local v10       #_result:Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    if-eqz v10, :cond_10

    .line 517
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 523
    :goto_11
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 521
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 527
    .end local v1           #_arg0:[Ljava/lang/String;
    .end local v10           #_result:Landroid/net/NetworkStats;
    :sswitch_2c
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 531
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 532
    .local v8, _arg1:J
    invoke-virtual {p0, v1, v8, v9}, Landroid/os/INetworkManagementService$Stub;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 533
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 538
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_arg1:J
    :sswitch_2d
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 541
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 547
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_2e
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 551
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 552
    .restart local v8       #_arg1:J
    invoke-virtual {p0, v1, v8, v9}, Landroid/os/INetworkManagementService$Stub;->setInterfaceAlert(Ljava/lang/String;J)V

    .line 553
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 558
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_arg1:J
    :sswitch_2f
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 561
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceAlert(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 567
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_30
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 570
    .local v6, _arg0:J
    invoke-virtual {p0, v6, v7}, Landroid/os/INetworkManagementService$Stub;->setGlobalAlert(J)V

    .line 571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 576
    .end local v6           #_arg0:J
    :sswitch_31
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 580
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v2, 0x1

    .line 581
    .local v2, _arg1:Z
    :goto_12
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setUidNetworkRules(IZ)V

    .line 582
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 580
    .end local v2           #_arg1:Z
    :cond_11
    const/4 v2, 0x0

    goto :goto_12

    .line 587
    .end local v1           #_arg0:I
    :sswitch_32
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isBandwidthControlEnabled()Z

    move-result v10

    .line 589
    .local v10, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    if-eqz v10, :cond_12

    const/4 v0, 0x1

    :goto_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 590
    :cond_12
    const/4 v0, 0x0

    goto :goto_13

    .line 595
    .end local v10           #_result:Z
    :sswitch_33
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 601
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 602
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setInterfaceThrottle(Ljava/lang/String;II)V

    .line 603
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 608
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_34
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 611
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getInterfaceRxThrottle(Ljava/lang/String;)I

    move-result v10

    .line 612
    .local v10, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 614
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 618
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v10           #_result:I
    :sswitch_35
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 621
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getInterfaceTxThrottle(Ljava/lang/String;)I

    move-result v10

    .line 622
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 624
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 628
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v10           #_result:I
    :sswitch_36
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 632
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 634
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 635
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->addIdleTimer(Ljava/lang/String;ILjava/lang/String;)V

    .line 636
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 641
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    :sswitch_37
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 644
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->removeIdleTimer(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 650
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_38
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 653
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setDefaultInterfaceForDns(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 659
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_39
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 663
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 664
    .local v2, _arg1:[Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;)V

    .line 665
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 670
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:[Ljava/lang/String;
    :sswitch_3a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->flushDefaultDnsCache()V

    .line 672
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 677
    :sswitch_3b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 680
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->flushInterfaceDnsCache(Ljava/lang/String;)V

    .line 681
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 686
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_3c
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    .line 689
    .local v1, _arg0:Z
    :goto_14
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallEnabled(Z)V

    .line 690
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 688
    .end local v1           #_arg0:Z
    :cond_13
    const/4 v1, 0x0

    goto :goto_14

    .line 695
    :sswitch_3d
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isFirewallEnabled()Z

    move-result v10

    .line 697
    .local v10, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    if-eqz v10, :cond_14

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 698
    :cond_14
    const/4 v0, 0x0

    goto :goto_15

    .line 703
    .end local v10           #_result:Z
    :sswitch_3e
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 707
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    const/4 v2, 0x1

    .line 708
    .local v2, _arg1:Z
    :goto_16
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 709
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 707
    .end local v2           #_arg1:Z
    :cond_15
    const/4 v2, 0x0

    goto :goto_16

    .line 714
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_3f
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 718
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v2, 0x1

    .line 719
    .restart local v2       #_arg1:Z
    :goto_17
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 720
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 718
    .end local v2           #_arg1:Z
    :cond_16
    const/4 v2, 0x0

    goto :goto_17

    .line 725
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_40
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 729
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 731
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    const/4 v3, 0x1

    .line 732
    .local v3, _arg2:Z
    :goto_18
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 733
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 731
    .end local v3           #_arg2:Z
    :cond_17
    const/4 v3, 0x0

    goto :goto_18

    .line 738
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    :sswitch_41
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 742
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    const/4 v2, 0x1

    .line 743
    .local v2, _arg1:Z
    :goto_19
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRule(IZ)V

    .line 744
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 742
    .end local v2           #_arg1:Z
    :cond_18
    const/4 v2, 0x0

    goto :goto_19

    .line 41
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
