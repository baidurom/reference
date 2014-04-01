.class public Landroid/server/BluetoothProfileManagerService;
.super Landroid/bluetooth/IBluetoothProfileManager$Stub;
.source "BluetoothProfileManagerService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothPbap$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/BluetoothProfileManagerService$2;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field public static final BLUETOOTH_PROFILEMANAGER_SERVICE:Ljava/lang/String; = "bluetooth_profile_manager"

.field private static final DBG:Z = true

.field private static final MESSAGE_MONITOR_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothProfileManagerService"

.field private static mConenctedProfileList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothProfileManager$Profile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBluetoothEnableTime:J

.field private mBroadcastreceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mMonitoringProfiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothProfileManager$Profile;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothProfileManager$Profile;",
            "Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 143
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothProfileManager$Stub;-><init>()V

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/server/BluetoothProfileManagerService;->mBluetoothEnableTime:J

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothProfileManagerService;->mMonitoringProfiles:Ljava/util/Set;

    .line 108
    new-instance v0, Landroid/server/BluetoothProfileManagerService$1;

    invoke-direct {v0, p0}, Landroid/server/BluetoothProfileManagerService$1;-><init>(Landroid/server/BluetoothProfileManagerService;)V

    iput-object v0, p0, Landroid/server/BluetoothProfileManagerService;->mBroadcastreceiver:Landroid/content/BroadcastReceiver;

    .line 145
    iput-object p1, p0, Landroid/server/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothProfileManagerService;->mServiceList:Ljava/util/HashMap;

    .line 147
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/server/BluetoothProfileManagerService;->mConenctedProfileList:Ljava/util/Set;

    .line 148
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/server/BluetoothProfileManagerService;->mIntentFilter:Landroid/content/IntentFilter;

    .line 149
    iget-object v0, p0, Landroid/server/BluetoothProfileManagerService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Landroid/server/BluetoothProfileManagerService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.profilemanager.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Landroid/server/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/server/BluetoothProfileManagerService;->mBroadcastreceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/server/BluetoothProfileManagerService;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-static {p0}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/server/BluetoothProfileManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/server/BluetoothProfileManagerService;->onBluetoothEnable()V

    return-void
.end method

.method static synthetic access$200(Landroid/server/BluetoothProfileManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/server/BluetoothProfileManagerService;->onBluetoothDisable()V

    return-void
.end method

.method static synthetic access$300(Landroid/server/BluetoothProfileManagerService;Landroid/bluetooth/BluetoothProfileManager$Profile;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothProfileManagerService;->onProfileStateUpdate(Landroid/bluetooth/BluetoothProfileManager$Profile;I)V

    return-void
.end method

.method static synthetic access$400(Landroid/server/BluetoothProfileManagerService;Landroid/bluetooth/BluetoothProfileManager$Profile;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothProfileManagerService;->updateProfileState(Landroid/bluetooth/BluetoothProfileManager$Profile;I)V

    return-void
.end method

.method private checkProfileService(Landroid/bluetooth/BluetoothProfileManager$Profile;)Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    .locals 1
    .parameter "profile"

    .prologue
    .line 395
    iget-object v0, p0, Landroid/server/BluetoothProfileManagerService;->mServiceList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Landroid/server/BluetoothProfileManagerService;->mServiceList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    .line 398
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getProfileBehavior(Landroid/bluetooth/BluetoothProfileManager$Profile;)Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    .locals 3
    .parameter "profile"

    .prologue
    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    sget-object v1, Landroid/server/BluetoothProfileManagerService$2;->$SwitchMap$android$bluetooth$BluetoothProfileManager$Profile:[I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 477
    const-string/jumbo v1, "unexpected profile"

    invoke-static {v1}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 480
    :goto_0
    :pswitch_0
    return-object v0

    .line 438
    :pswitch_1
    new-instance v0, Landroid/bluetooth/BluetoothFtp$Client;

    .end local v0           #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Landroid/server/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothFtp$Client;-><init>(Landroid/content/Context;)V

    .line 439
    .restart local v0       #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 441
    :pswitch_2
    new-instance v0, Landroid/bluetooth/BluetoothFtp$Server;

    .end local v0           #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Landroid/server/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothFtp$Server;-><init>(Landroid/content/Context;)V

    .line 442
    .restart local v0       #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 444
    :pswitch_3
    new-instance v0, Landroid/bluetooth/BluetoothBipi;

    .end local v0           #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Landroid/server/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothBipi;-><init>(Landroid/content/Context;)V

    .line 445
    .restart local v0       #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 447
    :pswitch_4
    new-instance v0, Landroid/bluetooth/BluetoothBipr;

    .end local v0           #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Landroid/server/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothBipr;-><init>(Landroid/content/Context;)V

    .line 448
    .restart local v0       #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 451
    :pswitch_5
    new-instance v0, Landroid/bluetooth/BluetoothSimap;

    .end local v0           #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Landroid/server/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothSimap;-><init>(Landroid/content/Context;)V

    .line 452
    .restart local v0       #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 463
    :pswitch_6
    new-instance v0, Landroid/bluetooth/BluetoothDun;

    .end local v0           #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Landroid/server/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothDun;-><init>(Landroid/content/Context;)V

    .line 464
    .restart local v0       #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 466
    :pswitch_7
    new-instance v0, Landroid/bluetooth/BluetoothPrxm;

    .end local v0           #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Landroid/server/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothPrxm;-><init>(Landroid/content/Context;)V

    .line 467
    .restart local v0       #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 469
    :pswitch_8
    new-instance v0, Landroid/bluetooth/BluetoothPrxr;

    .end local v0           #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Landroid/server/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothPrxr;-><init>(Landroid/content/Context;)V

    .line 470
    .restart local v0       #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method

.method private isConnectableToMultiDevices(Landroid/bluetooth/BluetoothProfileManager$Profile;)Z
    .locals 2
    .parameter "profile"

    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isConnectableToMultiDevices:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 229
    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HID:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 555
    const-string v0, "BluetoothProfileManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][profile manager]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    return-void
.end method

.method private onBluetoothDisable()V
    .locals 4

    .prologue
    .line 170
    const-string/jumbo v2, "onBluetoothDisable"

    invoke-static {v2}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Landroid/server/BluetoothProfileManagerService;->mServiceList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 172
    .local v1, service:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 177
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    invoke-interface {v2}, Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->close()V

    .line 178
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 180
    .end local v0           #entry:Ljava/util/Map$Entry;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mServiceList size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/server/BluetoothProfileManagerService;->mServiceList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 182
    const-string v2, "android.bluetooth.profilemanager.action.DISABLE_PROFILES"

    invoke-direct {p0, v2}, Landroid/server/BluetoothProfileManagerService;->sendMonitorMessage(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method private onBluetoothEnable()V
    .locals 2

    .prologue
    .line 155
    const-string/jumbo v0, "onBluetoothEnable"

    invoke-static {v0}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 158
    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_A2DP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-direct {p0, v0}, Landroid/server/BluetoothProfileManagerService;->updateProfileServiceList(Landroid/bluetooth/BluetoothProfileManager$Profile;)V

    .line 162
    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HEADSET:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-direct {p0, v0}, Landroid/server/BluetoothProfileManagerService;->updateProfileServiceList(Landroid/bluetooth/BluetoothProfileManager$Profile;)V

    .line 164
    const-string v0, "PRX"

    const-string v1, "hard code service registered."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_PRXM:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-direct {p0, v0}, Landroid/server/BluetoothProfileManagerService;->updateProfileServiceList(Landroid/bluetooth/BluetoothProfileManager$Profile;)V

    .line 166
    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_PRXR:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-direct {p0, v0}, Landroid/server/BluetoothProfileManagerService;->updateProfileServiceList(Landroid/bluetooth/BluetoothProfileManager$Profile;)V

    .line 167
    return-void
.end method

.method private onProfileStateUpdate(Landroid/bluetooth/BluetoothProfileManager$Profile;I)V
    .locals 2
    .parameter "profile"
    .parameter "state"

    .prologue
    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onProfileStateUpdate():profile->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",state->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 404
    const/16 v0, 0xb

    if-ne p2, v0, :cond_0

    .line 405
    invoke-direct {p0, p1}, Landroid/server/BluetoothProfileManagerService;->updateProfileServiceList(Landroid/bluetooth/BluetoothProfileManager$Profile;)V

    .line 408
    :cond_0
    return-void
.end method

.method private sendMonitorMessage(Ljava/lang/String;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMonitorMessage():action->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 486
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 487
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/server/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method private updateBluetoothNotification(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBluetoothNotification:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 532
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.profilemanager.action.UPDATE_ NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 533
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 534
    const-string v1, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 535
    const-string v1, "android.bluetooth.profilemanager.extra.EXTRA_PREVIOUS_STATE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 541
    :goto_0
    iget-object v1, p0, Landroid/server/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 542
    return-void

    .line 537
    :cond_0
    const-string v1, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 538
    const-string v1, "android.bluetooth.profilemanager.extra.EXTRA_PREVIOUS_STATE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private updateProfileServiceList(Landroid/bluetooth/BluetoothProfileManager$Profile;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 412
    const/4 v0, 0x0

    .line 414
    .local v0, profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Landroid/server/BluetoothProfileManagerService;->mServiceList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    invoke-direct {p0, p1}, Landroid/server/BluetoothProfileManagerService;->getProfileBehavior(Landroid/bluetooth/BluetoothProfileManager$Profile;)Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v0

    .line 420
    if-eqz v0, :cond_0

    .line 421
    iget-object v1, p0, Landroid/server/BluetoothProfileManagerService;->mServiceList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateProfileState(Landroid/bluetooth/BluetoothProfileManager$Profile;I)V
    .locals 4
    .parameter "profile"
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateProfileState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 496
    sget-object v1, Landroid/server/BluetoothProfileManagerService;->mConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    .line 497
    .local v0, mProfileSize:I
    if-eq p2, v3, :cond_0

    if-nez p2, :cond_5

    .line 499
    :cond_0
    sget-object v1, Landroid/server/BluetoothProfileManagerService;->mConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 500
    sget-object v1, Landroid/server/BluetoothProfileManagerService;->mConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is added to connected list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 521
    :cond_1
    :goto_0
    if-lez v0, :cond_2

    sget-object v1, Landroid/server/BluetoothProfileManagerService;->mConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 522
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/server/BluetoothProfileManagerService;->updateBluetoothNotification(Z)V

    .line 524
    :cond_2
    if-nez v0, :cond_3

    sget-object v1, Landroid/server/BluetoothProfileManagerService;->mConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 525
    invoke-direct {p0, v3}, Landroid/server/BluetoothProfileManagerService;->updateBluetoothNotification(Z)V

    .line 527
    :cond_3
    return-void

    .line 503
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add profile:the profile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") has been connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_5
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 506
    sget-object v1, Landroid/server/BluetoothProfileManagerService;->mConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 507
    sget-object v1, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HID:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 508
    sget-object v1, Landroid/server/BluetoothProfileManagerService;->mConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 510
    :cond_6
    sget-object v1, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HID:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/server/BluetoothProfileManagerService;->getConnectedDevices(Ljava/lang/String;)[Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_7

    .line 511
    sget-object v1, Landroid/server/BluetoothProfileManagerService;->mConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 514
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " still has connected device"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 517
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove profile failure:the profile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not in connected profile list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public connect(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 8
    .parameter "profileName"
    .parameter "device"

    .prologue
    .line 187
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connect:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " device:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 191
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->valueOf(Ljava/lang/String;)Landroid/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v3

    .line 192
    .local v3, profile:Landroid/bluetooth/BluetoothProfileManager$Profile;
    invoke-direct {p0, v3}, Landroid/server/BluetoothProfileManagerService;->checkProfileService(Landroid/bluetooth/BluetoothProfileManager$Profile;)Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v2

    .line 193
    .local v2, mService:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    if-nez v2, :cond_0

    .line 194
    const-string v6, "connect():mService is null"

    invoke-static {v6}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 195
    const/4 v6, 0x0

    .line 222
    :goto_0
    return v6

    .line 198
    :cond_0
    invoke-direct {p0, v3}, Landroid/server/BluetoothProfileManagerService;->isConnectableToMultiDevices(Landroid/bluetooth/BluetoothProfileManager$Profile;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 199
    const/4 v5, 0x0

    .line 200
    .local v5, sinks:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    sget-object v6, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_A2DP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v3, v6}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 205
    :goto_1
    if-eqz v5, :cond_2

    .line 206
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 208
    .local v4, sink:Landroid/bluetooth/BluetoothDevice;
    :try_start_0
    invoke-interface {v2, v4}, Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 203
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #sink:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    invoke-interface {v2}, Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->getConnectedDevices()Ljava/util/Set;

    move-result-object v5

    goto :goto_1

    .line 218
    .end local v5           #sinks:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_2
    :try_start_1
    invoke-interface {v2, p2}, Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->connect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 222
    :goto_3
    const/4 v6, 0x1

    goto :goto_0

    .line 219
    :catch_1
    move-exception v0

    .line 220
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public disconnect(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .parameter "profileName"
    .parameter "device"

    .prologue
    const/4 v4, 0x0

    .line 233
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disconnect:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " device:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 235
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->valueOf(Ljava/lang/String;)Landroid/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v3

    .line 236
    .local v3, profile:Landroid/bluetooth/BluetoothProfileManager$Profile;
    const/4 v0, 0x0

    .line 237
    .local v0, devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-direct {p0, v3}, Landroid/server/BluetoothProfileManagerService;->checkProfileService(Landroid/bluetooth/BluetoothProfileManager$Profile;)Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v2

    .line 238
    .local v2, mService:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    if-nez v2, :cond_1

    .line 239
    const-string v5, "disconnect():mService is null"

    invoke-static {v5}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 271
    :cond_0
    :goto_0
    return v4

    .line 244
    :cond_1
    :try_start_0
    invoke-interface {v2}, Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->getConnectedDevices()Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 249
    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 265
    :try_start_1
    invoke-interface {v2, p2}, Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 271
    :goto_2
    const/4 v4, 0x1

    goto :goto_0

    .line 245
    :catch_0
    move-exception v1

    .line 246
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 266
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 267
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public getConnectedDevices(Ljava/lang/String;)[Landroid/bluetooth/BluetoothDevice;
    .locals 6
    .parameter "profileName"

    .prologue
    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getConnectedDevices:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 277
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->valueOf(Ljava/lang/String;)Landroid/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v3

    .line 278
    .local v3, profile:Landroid/bluetooth/BluetoothProfileManager$Profile;
    const/4 v0, 0x0

    .line 279
    .local v0, devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-direct {p0, v3}, Landroid/server/BluetoothProfileManagerService;->checkProfileService(Landroid/bluetooth/BluetoothProfileManager$Profile;)Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v2

    .line 280
    .local v2, mService:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    if-eqz v2, :cond_1

    .line 282
    :try_start_0
    invoke-interface {v2}, Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->getConnectedDevices()Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 291
    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    .end local v0           #devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 293
    .restart local v0       #devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/bluetooth/BluetoothDevice;

    return-object v4

    .line 283
    :catch_0
    move-exception v1

    .line 284
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 288
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const-string v4, "getConnectedDevices():mService is null"

    invoke-static {v4}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPreferred(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .parameter "profileName"
    .parameter "device"

    .prologue
    const/4 v4, -0x1

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreferred:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 372
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->valueOf(Ljava/lang/String;)Landroid/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v1

    .line 373
    .local v1, profile:Landroid/bluetooth/BluetoothProfileManager$Profile;
    invoke-direct {p0, v1}, Landroid/server/BluetoothProfileManagerService;->checkProfileService(Landroid/bluetooth/BluetoothProfileManager$Profile;)Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v0

    .line 374
    .local v0, mService:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    if-nez v0, :cond_0

    .line 375
    const-string v2, "getPreferred():mService is null"

    invoke-static {v2}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 388
    :cond_0
    return v4
.end method

.method public getState(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .parameter "profileName"
    .parameter "device"

    .prologue
    .line 299
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->valueOf(Ljava/lang/String;)Landroid/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v2

    .line 300
    .local v2, profile:Landroid/bluetooth/BluetoothProfileManager$Profile;
    const/4 v3, 0x5

    .line 301
    .local v3, state:I
    invoke-direct {p0, v2}, Landroid/server/BluetoothProfileManagerService;->checkProfileService(Landroid/bluetooth/BluetoothProfileManager$Profile;)Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v1

    .line 302
    .local v1, mService:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    if-eqz v1, :cond_0

    .line 304
    :try_start_0
    invoke-interface {v1, p2}, Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->getState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 312
    :goto_0
    return v3

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 310
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public isPreferred(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "profileName"
    .parameter "device"

    .prologue
    const/4 v4, 0x0

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPreferred:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 317
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->valueOf(Ljava/lang/String;)Landroid/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v1

    .line 318
    .local v1, profile:Landroid/bluetooth/BluetoothProfileManager$Profile;
    invoke-direct {p0, v1}, Landroid/server/BluetoothProfileManagerService;->checkProfileService(Landroid/bluetooth/BluetoothProfileManager$Profile;)Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v0

    .line 319
    .local v0, mService:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    if-nez v0, :cond_0

    .line 320
    const-string v2, "isPreferred():mService is null"

    invoke-static {v2}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 331
    :cond_0
    return v4
.end method

.method public onServiceConnected()V
    .locals 0

    .prologue
    .line 548
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 552
    return-void
.end method

.method public setPreferred(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 4
    .parameter "profileName"
    .parameter "device"
    .parameter "preferred"

    .prologue
    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreferred:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 337
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->valueOf(Ljava/lang/String;)Landroid/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v1

    .line 338
    .local v1, profile:Landroid/bluetooth/BluetoothProfileManager$Profile;
    invoke-direct {p0, v1}, Landroid/server/BluetoothProfileManagerService;->checkProfileService(Landroid/bluetooth/BluetoothProfileManager$Profile;)Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v0

    .line 339
    .local v0, mService:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    if-nez v0, :cond_0

    .line 340
    const-string/jumbo v2, "setPreferred():mService is null"

    invoke-static {v2}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 341
    const/4 v2, 0x0

    .line 366
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
