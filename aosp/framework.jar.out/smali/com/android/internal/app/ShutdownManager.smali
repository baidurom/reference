.class public final Lcom/android/internal/app/ShutdownManager;
.super Ljava/lang/Object;
.source "ShutdownManager.java"


# static fields
.field private static final IPOWiFiEnable:Ljava/lang/String; = "persist.sys.ipo.wifi"

.field private static final TAG:Ljava/lang/String; = "ShutdownManager"

.field private static airplaneModeState:I

.field private static btState:Z

.field private static doAudioUnmute:Z

.field static final mHardCodeShutdownList:[Ljava/lang/String;

.field private static mMerged:Z

.field private static mPowerManager:Landroid/os/PowerManager;

.field static final mShutdownWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sdState:I

.field private static setMusicMuted:Z

.field private static wifiState:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 102
    sput-boolean v6, Lcom/android/internal/app/ShutdownManager;->doAudioUnmute:Z

    .line 103
    sput-boolean v6, Lcom/android/internal/app/ShutdownManager;->setMusicMuted:Z

    .line 105
    sput-boolean v6, Lcom/android/internal/app/ShutdownManager;->mMerged:Z

    .line 112
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/internal/app/ShutdownManager;->mShutdownWhiteList:Ljava/util/ArrayList;

    .line 113
    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "system"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    const-string v6, "com.mediatek.bluetooth"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "android.process.acore"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "com.android.phone"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "com.mediatek.engineermode"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "com.android.wallpaper"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "com.android.systemui"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "com.mediatek.mobilelog"

    aput-object v6, v4, v5

    sput-object v4, Lcom/android/internal/app/ShutdownManager;->mHardCodeShutdownList:[Ljava/lang/String;

    .line 134
    const-string v4, "ShutdownManager"

    const-string v5, "ShutdownManager constructor is called"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/android/internal/app/ShutdownManager;->mHardCodeShutdownList:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 136
    sget-object v4, Lcom/android/internal/app/ShutdownManager;->mShutdownWhiteList:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/internal/app/ShutdownManager;->mHardCodeShutdownList:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_0
    const-string/jumbo v4, "persist.ipo.shutdown.process.wl"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, processList:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 141
    const-string v4, "ShutdownManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Process whitelist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v4, "/"

    sget-object v5, Lcom/android/internal/app/ShutdownManager;->mShutdownWhiteList:Ljava/util/ArrayList;

    invoke-static {v4, v3, v5}, Lcom/android/internal/app/ShutdownManager;->parseStringIntoArrary(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 146
    :cond_1
    sget-object v4, Lcom/android/internal/app/ShutdownManager;->mShutdownWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 147
    .local v2, p:Ljava/lang/String;
    const-string v4, "ShutdownManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "whitelist = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 149
    .end local v2           #p:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native GetMasterMute()I
.end method

.method public static native GetStreamMute(I)I
.end method

.method public static native SetMasterMute(Z)I
.end method

.method public static native SetStreamMute(IZ)I
.end method

.method private muteSystem(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 155
    invoke-static {}, Lcom/android/internal/app/ShutdownManager;->GetMasterMute()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 156
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/app/ShutdownManager;->doAudioUnmute:Z

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_0
    sput-boolean v1, Lcom/android/internal/app/ShutdownManager;->doAudioUnmute:Z

    .line 159
    invoke-static {v1}, Lcom/android/internal/app/ShutdownManager;->SetMasterMute(Z)I

    goto :goto_0
.end method

.method private static parseStringIntoArrary(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "split"
    .parameter "strings"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p2, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, str:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 129
    aget-object v2, v1, v0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method private unmuteSystem(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 164
    sget-boolean v0, Lcom/android/internal/app/ShutdownManager;->doAudioUnmute:Z

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/app/ShutdownManager;->SetMasterMute(Z)I

    .line 167
    :cond_0
    return-void
.end method


# virtual methods
.method public ShutdownManager()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public enterShutdown(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 378
    invoke-static {v2}, Lcom/android/internal/app/ShutdownManager;->GetStreamMute(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 379
    sput-boolean v1, Lcom/android/internal/app/ShutdownManager;->setMusicMuted:Z

    .line 380
    invoke-static {v2, v1}, Lcom/android/internal/app/ShutdownManager;->SetStreamMute(IZ)I

    .line 382
    :cond_0
    return-void
.end method

.method public finishShutdown(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 385
    sget-boolean v0, Lcom/android/internal/app/ShutdownManager;->setMusicMuted:Z

    if-eqz v0, :cond_0

    .line 386
    sput-boolean v1, Lcom/android/internal/app/ShutdownManager;->setMusicMuted:Z

    .line 387
    const/4 v0, 0x3

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownManager;->SetStreamMute(IZ)I

    .line 389
    :cond_0
    return-void
.end method

.method public getAccessibilityServices(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_enabled"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    .line 191
    const-string v5, "ShutdownManager"

    const-string v6, "accessibility is disabled"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    :goto_0
    return-object v1

    .line 195
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_accessibility_services"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, servicesValue:Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 199
    :cond_2
    const-string v5, "ShutdownManager"

    const-string/jumbo v6, "no accessibility services exist"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    :cond_3
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x3a

    invoke-direct {v3, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 205
    .local v3, splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v3, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 206
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v1, services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    :goto_1
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 208
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, str:Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 212
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 213
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    const-string v5, "ShutdownManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AccessibilityService Package Name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method getCurrentIME(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, activeIME:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, ime:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 182
    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_0
    return-object v0
.end method

.method public preRestoreStates(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 457
    invoke-direct {p0, p1}, Lcom/android/internal/app/ShutdownManager;->unmuteSystem(Landroid/content/Context;)V

    .line 458
    return-void
.end method

.method public recoverSystem(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 172
    return-void
.end method

.method public restoreStates(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 463
    const-string v8, "ShutdownManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "restoreStates: wifi:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/internal/app/ShutdownManager;->wifiState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", airplaneModeState: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/internal/app/ShutdownManager;->airplaneModeState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    sget v8, Lcom/android/internal/app/ShutdownManager;->wifiState:I

    if-ne v8, v6, :cond_0

    sget v8, Lcom/android/internal/app/ShutdownManager;->airplaneModeState:I

    if-nez v8, :cond_0

    .line 467
    const-string/jumbo v8, "persist.sys.ipo.wifi"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string/jumbo v8, "wifi"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v5

    .line 472
    .local v5, wifiMgr:Landroid/net/wifi/IWifiManager;
    if-eqz v5, :cond_3

    .line 473
    const/4 v8, 0x1

    :try_start_0
    invoke-interface {v5, v8}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    .end local v5           #wifiMgr:Landroid/net/wifi/IWifiManager;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "bluetooth_on"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 485
    .local v1, bluetoothOn:I
    const-string/jumbo v8, "sys.ipo.btconfig"

    const-string/jumbo v9, "off"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 487
    .local v2, bt_config:Ljava/lang/String;
    const/4 v4, 0x0

    .line 490
    .local v4, enableBT:Z
    const-string/jumbo v8, "on"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 491
    if-lez v1, :cond_4

    move v4, v6

    .line 495
    :cond_1
    :goto_1
    const-string v6, "ShutdownManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " bluetoothOn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", btState: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/internal/app/ShutdownManager;->btState:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bt_config: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", enableBT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    if-eqz v4, :cond_2

    .line 499
    const-string v6, "bluetooth"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 502
    .local v0, bluetooth:Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_6

    .line 503
    :try_start_1
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->enable()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 537
    .end local v0           #bluetooth:Landroid/bluetooth/IBluetooth;
    :cond_2
    :goto_2
    return-void

    .line 475
    .end local v1           #bluetoothOn:I
    .end local v2           #bt_config:Ljava/lang/String;
    .end local v4           #enableBT:Z
    .restart local v5       #wifiMgr:Landroid/net/wifi/IWifiManager;
    :cond_3
    :try_start_2
    const-string v8, "ShutdownManager"

    const-string v9, " can not get the IWifiManager binder"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 477
    :catch_0
    move-exception v3

    .line 478
    .local v3, e:Landroid/os/RemoteException;
    const-string v8, "ShutdownManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wi-Fi operation failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v3           #e:Landroid/os/RemoteException;
    .end local v5           #wifiMgr:Landroid/net/wifi/IWifiManager;
    .restart local v1       #bluetoothOn:I
    .restart local v2       #bt_config:Ljava/lang/String;
    .restart local v4       #enableBT:Z
    :cond_4
    move v4, v7

    .line 491
    goto :goto_1

    .line 492
    :cond_5
    const-string/jumbo v6, "off"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 493
    sget-boolean v4, Lcom/android/internal/app/ShutdownManager;->btState:Z

    goto :goto_1

    .line 505
    .restart local v0       #bluetooth:Landroid/bluetooth/IBluetooth;
    :cond_6
    :try_start_3
    const-string v6, "ShutdownManager"

    const-string v7, " can not get the IBluetooth binder"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 508
    :catch_1
    move-exception v3

    .line 509
    .restart local v3       #e:Landroid/os/RemoteException;
    const-string v6, "ShutdownManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BT operation failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public saveStates(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 393
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_on"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/android/internal/app/ShutdownManager;->wifiState:I

    .line 396
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/android/internal/app/ShutdownManager;->airplaneModeState:I

    .line 399
    sget v6, Lcom/android/internal/app/ShutdownManager;->airplaneModeState:I

    if-ne v6, v8, :cond_0

    .line 400
    const-string v6, "ShutdownManager"

    const-string v7, "get airplane mode fail"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    sput v9, Lcom/android/internal/app/ShutdownManager;->airplaneModeState:I

    .line 404
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 405
    .local v1, mBTAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_1

    .line 406
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    sput-boolean v6, Lcom/android/internal/app/ShutdownManager;->btState:Z

    .line 407
    const-string v6, "ShutdownManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "btState: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/internal/app/ShutdownManager;->btState:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_1
    sget v6, Lcom/android/internal/app/ShutdownManager;->wifiState:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 412
    sget v6, Lcom/android/internal/app/ShutdownManager;->airplaneModeState:I

    if-nez v6, :cond_2

    .line 413
    const-string/jumbo v6, "persist.sys.ipo.wifi"

    const-string v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_2
    const-string/jumbo v6, "wifi"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v5

    .line 418
    .local v5, wifiMgr:Landroid/net/wifi/IWifiManager;
    if-eqz v5, :cond_7

    .line 419
    const/4 v6, 0x0

    :try_start_0
    invoke-interface {v5, v6}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    .end local v5           #wifiMgr:Landroid/net/wifi/IWifiManager;
    :cond_3
    :goto_0
    const-string/jumbo v6, "wifi"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 431
    .local v3, mWifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v3, :cond_8

    .line 432
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v6

    const/16 v7, 0xd

    if-eq v6, v7, :cond_4

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_5

    .line 434
    :cond_4
    invoke-virtual {v3, v10, v9}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 435
    const-string v6, "ShutdownManager"

    const-string v7, " Turn off WIFI AP"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_5
    :goto_1
    const-string/jumbo v6, "wifip2p"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 445
    .local v4, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    if-eqz v4, :cond_6

    .line 446
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v4, p1, v6, v10}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    .line 447
    .local v2, mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    if-eqz v2, :cond_6

    .line 448
    invoke-virtual {v4, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->disableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 449
    const-string v6, "ShutdownManager"

    const-string v7, "Turn off WiFi Direct"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    .end local v2           #mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    :cond_6
    const-string v6, "ShutdownManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saveStates: wifi:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/internal/app/ShutdownManager;->wifiState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", airplaneModeState: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/internal/app/ShutdownManager;->airplaneModeState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-void

    .line 421
    .end local v3           #mWifiManager:Landroid/net/wifi/WifiManager;
    .end local v4           #mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    .restart local v5       #wifiMgr:Landroid/net/wifi/IWifiManager;
    :cond_7
    :try_start_1
    const-string v6, "ShutdownManager"

    const-string v7, " can not get the IWifiManager binder"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "ShutdownManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wi-Fi operation failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 438
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v5           #wifiMgr:Landroid/net/wifi/IWifiManager;
    .restart local v3       #mWifiManager:Landroid/net/wifi/WifiManager;
    :cond_8
    const-string v6, "ShutdownManager"

    const-string v7, " can not get WifiManager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public shutdown(Landroid/content/Context;)V
    .locals 32
    .parameter "context"

    .prologue
    .line 224
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/ShutdownManager;->muteSystem(Landroid/content/Context;)V

    .line 226
    new-instance v13, Landroid/content/Intent;

    const-string v28, "android.intent.action.black.mode"

    move-object/from16 v0, v28

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v13, it:Landroid/content/Intent;
    const-string v28, "_black_mode"

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 228
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 231
    const-string/jumbo v28, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/PowerManager;

    sput-object v28, Lcom/android/internal/app/ShutdownManager;->mPowerManager:Landroid/os/PowerManager;

    .line 232
    sget-object v28, Lcom/android/internal/app/ShutdownManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 234
    const-string v28, "ShutdownManager"

    const-string/jumbo v29, "start ipod"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v28, "ctl.start"

    const-string v29, "ipod"

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    const/16 v28, 0x5

    move/from16 v0, v28

    if-ge v10, v0, :cond_0

    .line 239
    const-string v28, "init.svc.ipod"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 240
    .local v12, ipodstate:Ljava/lang/String;
    const-string/jumbo v28, "running"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 250
    .end local v12           #ipodstate:Ljava/lang/String;
    :cond_0
    const-string v28, "activity"

    invoke-static/range {v28 .. v28}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v4

    .line 253
    .local v4, am:Landroid/app/IActivityManager;
    const-string/jumbo v28, "package"

    invoke-static/range {v28 .. v28}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v19

    .line 256
    .local v19, pm:Landroid/content/pm/IPackageManager;
    const-string/jumbo v28, "wallpaper"

    invoke-static/range {v28 .. v28}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v25

    .line 259
    .local v25, wm:Landroid/app/IWallpaperManager;
    if-eqz v19, :cond_2

    if-eqz v4, :cond_2

    if-eqz v25, :cond_2

    .line 261
    :try_start_0
    invoke-interface/range {v25 .. v25}, Landroid/app/IWallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v27

    .line 262
    .local v27, wpInfo:Landroid/app/WallpaperInfo;
    if-eqz v27, :cond_4

    invoke-virtual/range {v27 .. v27}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v26

    .line 263
    .local v26, wp:Ljava/lang/String;
    :goto_1
    const-string v28, "ShutdownManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Current Wallpaper = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ShutdownManager;->getCurrentIME(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 266
    .local v6, currentIME:Ljava/lang/String;
    const-string v28, "ShutdownManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Current IME: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/16 v28, 0x1e

    const/16 v29, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v4, v0, v1}, Landroid/app/IActivityManager;->getServices(II)Ljava/util/List;

    move-result-object v22

    .line 270
    .local v22, sList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 271
    .local v21, s:Landroid/app/ActivityManager$RunningServiceInfo;
    const-wide/16 v28, 0x0

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v30, v0

    cmp-long v28, v28, v30

    if-eqz v28, :cond_1

    .line 274
    sget-object v28, Lcom/android/internal/app/ShutdownManager;->mShutdownWhiteList:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1

    .line 278
    const-string v28, "ShutdownManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "force stop the scheduling service:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 371
    .end local v6           #currentIME:Ljava/lang/String;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v21           #s:Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v22           #sList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v26           #wp:Ljava/lang/String;
    .end local v27           #wpInfo:Landroid/app/WallpaperInfo;
    :catch_0
    move-exception v7

    .line 372
    .local v7, e:Landroid/os/RemoteException;
    const-string v28, "ShutdownManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "RemoteException: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_2
    return-void

    .line 243
    .end local v4           #am:Landroid/app/IActivityManager;
    .end local v19           #pm:Landroid/content/pm/IPackageManager;
    .end local v25           #wm:Landroid/app/IWallpaperManager;
    .restart local v12       #ipodstate:Ljava/lang/String;
    :cond_3
    const-string v28, "ShutdownManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "waiting ipod ("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-wide/16 v28, 0x14

    :try_start_1
    invoke-static/range {v28 .. v29}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 237
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 262
    .end local v12           #ipodstate:Ljava/lang/String;
    .restart local v4       #am:Landroid/app/IActivityManager;
    .restart local v19       #pm:Landroid/content/pm/IPackageManager;
    .restart local v25       #wm:Landroid/app/IWallpaperManager;
    .restart local v27       #wpInfo:Landroid/app/WallpaperInfo;
    :cond_4
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 284
    .restart local v6       #currentIME:Ljava/lang/String;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v22       #sList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .restart local v26       #wp:Ljava/lang/String;
    :cond_5
    :try_start_2
    invoke-interface {v4}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v20

    .line 285
    .local v20, runningList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ShutdownManager;->getAccessibilityServices(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 288
    .local v3, accessibilityServices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v28, 0x10

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v4, v0, v1}, Landroid/app/IActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v24

    .line 289
    .local v24, taskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v8, 0x0

    .line 290
    .local v8, home:Ljava/lang/String;
    const/4 v9, 0x0

    .line 292
    .local v9, homeProcessName:Ljava/lang/String;
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 293
    .local v23, task:Landroid/app/ActivityManager$RecentTaskInfo;
    const/16 v28, 0x1

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v29, v0

    const-string v30, "android.intent.category.HOME"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    .line 294
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    .line 299
    .end local v23           #task:Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_7
    if-eqz v8, :cond_d

    .line 301
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 302
    .local v5, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v9, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 310
    .end local v5           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_4
    if-eqz v9, :cond_e

    .line 311
    :try_start_4
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 312
    .local v18, p:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 313
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 314
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v28

    move-object/from16 v0, v20

    move/from16 v1, v28

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 322
    .end local v18           #p:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_9
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_a
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 323
    .restart local v18       #p:Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/16 v16, 0x1

    .line 324
    .local v16, needForce:Z
    const/16 v17, 0x0

    .line 327
    .local v17, needKill:Z
    sget-object v28, Lcom/android/internal/app/ShutdownManager;->mShutdownWhiteList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_b

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_b

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 331
    :cond_b
    const/16 v16, 0x0

    .line 333
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_c

    .line 334
    const/16 v17, 0x1

    .line 355
    :cond_c
    :goto_7
    if-eqz v16, :cond_14

    .line 356
    const/4 v10, 0x0

    :goto_8
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v10, v0, :cond_14

    .line 357
    if-eqz v3, :cond_13

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v28, v0

    aget-object v28, v28, v10

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_13

    .line 358
    const-string v28, "ShutdownManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "skip accessibility service: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v30, v0

    aget-object v30, v30, v10

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 303
    .end local v16           #needForce:Z
    .end local v17           #needKill:Z
    .end local v18           #p:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catch_1
    move-exception v7

    .line 304
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_4

    .line 308
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_d
    const-string v28, "ShutdownManager"

    const-string v29, "cannot find home package"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 320
    :cond_e
    const-string v28, "ShutdownManager"

    const-string v29, "cannot find home process"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 339
    .restart local v16       #needForce:Z
    .restart local v17       #needKill:Z
    .restart local v18       #p:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_f
    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v28, v0

    const/16 v29, 0x3e8

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    .line 342
    const-string v28, "ShutdownManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "process = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 344
    :cond_10
    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v28, v0

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v15

    .line 345
    .local v15, list:[Ljava/lang/String;
    if-nez v15, :cond_11

    const/4 v14, 0x0

    .line 346
    .local v14, length:I
    :goto_a
    const/4 v10, 0x0

    :goto_b
    if-ge v10, v14, :cond_c

    .line 347
    sget-object v28, Lcom/android/internal/app/ShutdownManager;->mShutdownWhiteList:Ljava/util/ArrayList;

    aget-object v29, v15, v10

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_12

    .line 348
    const-string v28, "ShutdownManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "uid-process = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/16 v16, 0x0

    .line 350
    goto/16 :goto_7

    .line 345
    .end local v14           #length:I
    :cond_11
    array-length v14, v15

    goto :goto_a

    .line 346
    .restart local v14       #length:I
    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 360
    .end local v14           #length:I
    .end local v15           #list:[Ljava/lang/String;
    :cond_13
    const-string v28, "ShutdownManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "forceStopPackage: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v28, v0

    aget-object v28, v28, v10

    move-object/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 365
    :cond_14
    if-eqz v17, :cond_a

    .line 367
    const-string v28, "ShutdownManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "killProcess (IME): "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/os/Process;->killProcess(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_6

    .line 246
    .end local v3           #accessibilityServices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #am:Landroid/app/IActivityManager;
    .end local v6           #currentIME:Ljava/lang/String;
    .end local v8           #home:Ljava/lang/String;
    .end local v9           #homeProcessName:Ljava/lang/String;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v16           #needForce:Z
    .end local v17           #needKill:Z
    .end local v18           #p:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v19           #pm:Landroid/content/pm/IPackageManager;
    .end local v20           #runningList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v22           #sList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v24           #taskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v25           #wm:Landroid/app/IWallpaperManager;
    .end local v26           #wp:Ljava/lang/String;
    .end local v27           #wpInfo:Landroid/app/WallpaperInfo;
    .restart local v12       #ipodstate:Ljava/lang/String;
    :catch_2
    move-exception v28

    goto/16 :goto_3
.end method
