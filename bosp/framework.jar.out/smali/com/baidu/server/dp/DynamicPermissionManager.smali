.class public Lcom/baidu/server/dp/DynamicPermissionManager;
.super Ljava/lang/Object;
.source "DynamicPermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/server/dp/DynamicPermissionManager$SyncTransport;,
        Lcom/baidu/server/dp/DynamicPermissionManager$MyPackageManager;
    }
.end annotation


# static fields
.field public static final CALLLOG:Ljava/lang/String; = "dynamic.permission.CALLLOG"

.field public static final CALL_PHONE:Ljava/lang/String; = "android.permission.CALL_PHONE"

.field public static final CHECK_LOCATION:I = 0x2

.field public static final CHECK_SEND_MMS:I = 0x1

.field public static final CONTACTS:Ljava/lang/String; = "dynamic.permission.CONTACTS"

.field private static final DEBUG:Z = true

.field private static final DEBUG_BACKUP:Z = true

.field private static final DEBUG_CHECK_ENTRY:Z = false

.field public static final LOCATION:Ljava/lang/String; = "dynamic.permission.LOCATION"

.field public static final PERMISSION_DENY:I = 0x1

.field public static final PERMISSION_GRANT:I = 0x0

.field public static final PERMISSION_UNDEF:I = 0x2

.field public static final PERMISSION_USER:I = 0x10

.field public static final PERMISSION_USER_DENY:I = 0x11

.field public static final PERMISSION_USER_GRANT:I = 0x10

.field public static final SEND_SMS:Ljava/lang/String; = "android.permission.SEND_SMS"

.field public static final SERVICE_NAME:Ljava/lang/String; = "DynamicPermissionService"

.field public static final SMS:Ljava/lang/String; = "dynamic.permission.SMS"

.field private static final TAG:Ljava/lang/String; = "DynamicPermissionManager"

.field static sDynPermMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sDynPerms:[Ljava/lang/String;

.field private static sInstance:Lcom/baidu/server/dp/DynamicPermissionManager;

.field private static sInstanceLock:Ljava/lang/Object;


# instance fields
.field private mPm:Lcom/baidu/server/dp/DynamicPermissionManager$MyPackageManager;

.field private mService:Lcom/baidu/server/dp/IDynamicPermissionService;

.field private mSyncTs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/server/dp/DynamicPermissionManager$SyncTransport;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 74
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.CALL_PHONE"

    aput-object v1, v0, v4

    const-string v1, "android.permission.SEND_SMS"

    aput-object v1, v0, v5

    const-string v1, "dynamic.permission.CONTACTS"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "dynamic.permission.SMS"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "dynamic.permission.CALLLOG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "dynamic.permission.LOCATION"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/server/dp/DynamicPermissionManager;->sDynPerms:[Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/server/dp/DynamicPermissionManager;->sDynPermMaps:Ljava/util/HashMap;

    .line 86
    sget-object v0, Lcom/baidu/server/dp/DynamicPermissionManager;->sDynPermMaps:Ljava/util/HashMap;

    const-string v1, "android.permission.CALL_PHONE"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "android.permission.CALL_PHONE"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/baidu/server/dp/DynamicPermissionManager;->sDynPermMaps:Ljava/util/HashMap;

    const-string v1, "android.permission.SEND_SMS"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "android.permission.SEND_SMS"

    aput-object v3, v2, v4

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/baidu/server/dp/DynamicPermissionManager;->sDynPermMaps:Ljava/util/HashMap;

    const-string v1, "dynamic.permission.CONTACTS"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "android.permission.READ_CONTACTS"

    aput-object v3, v2, v4

    const-string v3, "android.permission.WRITE_CONTACTS"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/baidu/server/dp/DynamicPermissionManager;->sDynPermMaps:Ljava/util/HashMap;

    const-string v1, "dynamic.permission.SMS"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "android.permission.READ_SMS"

    aput-object v3, v2, v4

    const-string v3, "android.permission.WRITE_SMS"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/baidu/server/dp/DynamicPermissionManager;->sDynPermMaps:Ljava/util/HashMap;

    const-string v1, "dynamic.permission.CALLLOG"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "android.permission.READ_CONTACTS"

    aput-object v3, v2, v4

    const-string v3, "android.permission.WRITE_CONTACTS"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/baidu/server/dp/DynamicPermissionManager;->sDynPermMaps:Ljava/util/HashMap;

    const-string v1, "dynamic.permission.LOCATION"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v2, v4

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/server/dp/DynamicPermissionManager;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionManager;->mSyncTs:Ljava/util/ArrayList;

    .line 149
    const/4 v0, 0x0

    .local v0, counter:I
    move v1, v0

    .line 150
    .end local v0           #counter:I
    .local v1, counter:I
    :goto_0
    add-int/lit8 v0, v1, 0x1

    .end local v1           #counter:I
    .restart local v0       #counter:I
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionManager;->mService:Lcom/baidu/server/dp/IDynamicPermissionService;

    if-nez v2, :cond_0

    .line 151
    const-string v2, "DynamicPermissionService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/server/dp/IDynamicPermissionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/baidu/server/dp/IDynamicPermissionService;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionManager;->mService:Lcom/baidu/server/dp/IDynamicPermissionService;

    move v1, v0

    .end local v0           #counter:I
    .restart local v1       #counter:I
    goto :goto_0

    .line 154
    .end local v1           #counter:I
    .restart local v0       #counter:I
    :cond_0
    new-instance v2, Lcom/baidu/server/dp/DynamicPermissionManager$MyPackageManager;

    invoke-direct {v2, p0}, Lcom/baidu/server/dp/DynamicPermissionManager$MyPackageManager;-><init>(Lcom/baidu/server/dp/DynamicPermissionManager;)V

    iput-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionManager;->mPm:Lcom/baidu/server/dp/DynamicPermissionManager$MyPackageManager;

    .line 155
    return-void
.end method

.method private checkCallPermission(IILandroid/content/Intent;)I
    .locals 8
    .parameter "uid"
    .parameter "pid"
    .parameter "intent"

    .prologue
    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 336
    .local v3, time:J
    new-instance v5, Lcom/baidu/server/dp/CallTransaction;

    invoke-direct {v5, p3}, Lcom/baidu/server/dp/CallTransaction;-><init>(Landroid/content/Intent;)V

    .line 341
    .local v5, t:Lcom/baidu/server/dp/CallTransaction;
    const/4 v7, 0x0

    .line 343
    .local v7, ret:I
    :try_start_0
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionManager;->mService:Lcom/baidu/server/dp/IDynamicPermissionService;

    move v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/baidu/server/dp/IDynamicPermissionService;->checkCallPermission(IIJLcom/baidu/server/dp/CallTransaction;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 347
    :goto_0
    return v7

    .line 344
    :catch_0
    move-exception v6

    .line 345
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "DynamicPermissionManager"

    const-string v1, "Service may dead"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkCallPermission(II[Landroid/content/Intent;)I
    .locals 8
    .parameter "uid"
    .parameter "pid"
    .parameter "intents"

    .prologue
    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 352
    .local v3, time:J
    new-instance v5, Lcom/baidu/server/dp/CallTransaction;

    invoke-direct {v5, p3}, Lcom/baidu/server/dp/CallTransaction;-><init>([Landroid/content/Intent;)V

    .line 357
    .local v5, t:Lcom/baidu/server/dp/CallTransaction;
    const/4 v7, 0x0

    .line 359
    .local v7, ret:I
    :try_start_0
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionManager;->mService:Lcom/baidu/server/dp/IDynamicPermissionService;

    move v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/baidu/server/dp/IDynamicPermissionService;->checkCallPermission(IIJLcom/baidu/server/dp/CallTransaction;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 363
    :goto_0
    return v7

    .line 360
    :catch_0
    move-exception v6

    .line 361
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "DynamicPermissionManager"

    const-string v1, "Service may dead"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private varargs checkLocationSync([Ljava/lang/Object;)I
    .locals 1
    .parameter "args"

    .prologue
    .line 562
    const-string v0, "dynamic.permission.LOCATION"

    invoke-virtual {p0, v0}, Lcom/baidu/server/dp/DynamicPermissionManager;->checkPermissionSync(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs checkPermission(IZ[Ljava/lang/Object;)I
    .locals 2
    .parameter "type"
    .parameter "sync"
    .parameter "args"

    .prologue
    .line 650
    invoke-static {}, Lcom/baidu/server/dp/DynamicPermissionManager;->getInstance()Lcom/baidu/server/dp/DynamicPermissionManager;

    move-result-object v0

    .line 651
    .local v0, dpm:Lcom/baidu/server/dp/DynamicPermissionManager;
    const/4 v1, 0x1

    .line 652
    .local v1, result:I
    packed-switch p0, :pswitch_data_0

    .line 660
    :goto_0
    return v1

    .line 654
    :pswitch_0
    invoke-direct {v0, p2}, Lcom/baidu/server/dp/DynamicPermissionManager;->checkSendMmsSync([Ljava/lang/Object;)I

    move-result v1

    .line 655
    goto :goto_0

    .line 657
    :pswitch_1
    invoke-direct {v0, p2}, Lcom/baidu/server/dp/DynamicPermissionManager;->checkLocationSync([Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    .line 652
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private varargs checkSendMmsSync([Ljava/lang/Object;)I
    .locals 6
    .parameter "args"

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 586
    if-eqz p1, :cond_0

    array-length v4, p1

    if-eq v4, v5, :cond_2

    .line 587
    :cond_0
    const-string v4, "DynamicPermissionManager"

    const-string v5, "checkSendMms argument error, deny."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_1
    :goto_0
    return v3

    .line 591
    :cond_2
    const/4 v2, -0x1

    .line 592
    .local v2, networkType:I
    const/4 v1, 0x0

    .line 594
    .local v1, feature:Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p1, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 595
    const/4 v4, 0x1

    aget-object v1, p1, v4

    .end local v1           #feature:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    .restart local v1       #feature:Ljava/lang/String;
    const/4 v3, 0x0

    .line 602
    .local v3, result:I
    if-eq v2, v5, :cond_3

    if-nez v2, :cond_1

    const-string v4, "enableMMS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 605
    :cond_3
    const-string v4, "dynamic.permission.SEND_MMS"

    invoke-virtual {p0, v4}, Lcom/baidu/server/dp/DynamicPermissionManager;->checkPermissionSync(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 596
    .end local v1           #feature:Ljava/lang/String;
    .end local v3           #result:I
    :catch_0
    move-exception v0

    .line 597
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v4, "DynamicPermissionManager"

    const-string v5, "checkSendMms argument class error, deny."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkSendSmsPermission(Lcom/baidu/server/dp/SmsTransaction;)I
    .locals 8
    .parameter "t"

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/baidu/server/dp/DynamicPermissionManager;->isOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    const/4 v7, 0x0

    .line 303
    :goto_0
    return v7

    .line 288
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 289
    .local v1, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 290
    .local v2, pid:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 296
    .local v3, time:J
    const/4 v7, 0x0

    .line 298
    .local v7, ret:I
    :try_start_0
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionManager;->mService:Lcom/baidu/server/dp/IDynamicPermissionService;

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/baidu/server/dp/IDynamicPermissionService;->checkSendSmsPermission(IIJLcom/baidu/server/dp/SmsTransaction;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_0

    .line 299
    :catch_0
    move-exception v6

    .line 300
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "DynamicPermissionManager"

    const-string v5, "Service may dead"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/baidu/server/dp/DynamicPermissionManager;
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/baidu/server/dp/DynamicPermissionManager;->getInstance(Landroid/content/Context;)Lcom/baidu/server/dp/DynamicPermissionManager;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/server/dp/DynamicPermissionManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 163
    sget-object v1, Lcom/baidu/server/dp/DynamicPermissionManager;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_0
    sget-object v0, Lcom/baidu/server/dp/DynamicPermissionManager;->sInstance:Lcom/baidu/server/dp/DynamicPermissionManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/server/dp/DynamicPermissionManager;->sInstance:Lcom/baidu/server/dp/DynamicPermissionManager;

    iget-object v0, v0, Lcom/baidu/server/dp/DynamicPermissionManager;->mService:Lcom/baidu/server/dp/IDynamicPermissionService;

    if-nez v0, :cond_1

    .line 165
    :cond_0
    new-instance v0, Lcom/baidu/server/dp/DynamicPermissionManager;

    invoke-direct {v0, p0}, Lcom/baidu/server/dp/DynamicPermissionManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/server/dp/DynamicPermissionManager;->sInstance:Lcom/baidu/server/dp/DynamicPermissionManager;

    .line 167
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    sget-object v0, Lcom/baidu/server/dp/DynamicPermissionManager;->sInstance:Lcom/baidu/server/dp/DynamicPermissionManager;

    return-object v0

    .line 167
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getPermNameFromAuthority(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "authority"

    .prologue
    .line 612
    const/4 v0, 0x0

    .line 613
    .local v0, perm:Ljava/lang/String;
    const-string/jumbo v1, "sms"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "mms-sms"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "mms"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 615
    :cond_0
    const-string v0, "dynamic.permission.SMS"

    .line 623
    :cond_1
    :goto_0
    return-object v0

    .line 616
    :cond_2
    const-string v1, "contacts"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.contacts"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "icc"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 619
    :cond_3
    const-string v0, "dynamic.permission.CONTACTS"

    goto :goto_0

    .line 620
    :cond_4
    const-string v1, "call_log"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 621
    const-string v0, "dynamic.permission.CALLLOG"

    goto :goto_0
.end method

.method public static getUidForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 2
    .parameter "pm"
    .parameter "pkgName"

    .prologue
    .line 503
    const/4 v0, 0x0

    .line 505
    .local v0, pi:Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 508
    :goto_0
    if-nez v0, :cond_0

    .line 509
    const/4 v1, -0x1

    .line 511
    :goto_1
    return v1

    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_1

    .line 506
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private needCheck(Landroid/content/Intent;II)Z
    .locals 7
    .parameter "intent"
    .parameter "uid"
    .parameter "pid"

    .prologue
    const/4 v3, 0x0

    .line 434
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.CALL"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 436
    iget-object v4, p0, Lcom/baidu/server/dp/DynamicPermissionManager;->mPm:Lcom/baidu/server/dp/DynamicPermissionManager$MyPackageManager;

    invoke-virtual {v4, p2}, Lcom/baidu/server/dp/DynamicPermissionManager$MyPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, pkgs:[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 446
    .end local v2           #pkgs:[Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 443
    .restart local v2       #pkgs:[Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/baidu/server/dp/DynamicPermissionManager;->mPm:Lcom/baidu/server/dp/DynamicPermissionManager$MyPackageManager;

    const-string v5, "android.permission.CALL_PHONE"

    aget-object v6, v2, v3

    invoke-virtual {v4, v5, v6}, Lcom/baidu/server/dp/DynamicPermissionManager$MyPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 444
    .local v1, g:I
    if-nez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private needCheck([Landroid/content/Intent;II[[Landroid/content/Intent;[[Landroid/content/Intent;)Z
    .locals 9
    .parameter "intents"
    .parameter "uid"
    .parameter "pid"
    .parameter "container"
    .parameter "checked"

    .prologue
    const/4 v6, 0x0

    .line 462
    iget-object v5, p0, Lcom/baidu/server/dp/DynamicPermissionManager;->mPm:Lcom/baidu/server/dp/DynamicPermissionManager$MyPackageManager;

    invoke-virtual {v5, p2}, Lcom/baidu/server/dp/DynamicPermissionManager$MyPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 463
    .local v4, pkgs:[Ljava/lang/String;
    if-nez v4, :cond_0

    move v5, v6

    .line 493
    :goto_0
    return v5

    .line 469
    :cond_0
    iget-object v5, p0, Lcom/baidu/server/dp/DynamicPermissionManager;->mPm:Lcom/baidu/server/dp/DynamicPermissionManager$MyPackageManager;

    const-string v7, "android.permission.CALL_PHONE"

    aget-object v8, v4, v6

    invoke-virtual {v5, v7, v8}, Lcom/baidu/server/dp/DynamicPermissionManager$MyPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 470
    .local v2, g:I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    move v5, v6

    .line 471
    goto :goto_0

    .line 477
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v1, ctr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v0, ck:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, p1

    if-ge v3, v5, :cond_3

    .line 480
    const-string v5, "android.intent.action.CALL"

    aget-object v7, p1, v3

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 481
    aget-object v5, p1, v3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 483
    :cond_2
    aget-object v5, p1, v3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 487
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 488
    new-array v5, v6, [Landroid/content/Intent;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/Intent;

    check-cast v5, [Landroid/content/Intent;

    aput-object v5, p4, v6

    .line 489
    new-array v5, v6, [Landroid/content/Intent;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/Intent;

    check-cast v5, [Landroid/content/Intent;

    aput-object v5, p5, v6

    .line 490
    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    move v5, v6

    .line 493
    goto :goto_0
.end method


# virtual methods
.method public checkCallPermission(Landroid/content/Intent;)I
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 373
    invoke-virtual {p0}, Lcom/baidu/server/dp/DynamicPermissionManager;->isOn()Z

    move-result v3

    if-nez v3, :cond_1

    .line 382
    :cond_0
    :goto_0
    return v2

    .line 377
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 378
    .local v1, uid:I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 379
    .local v0, pid:I
    invoke-direct {p0, p1, v1, v0}, Lcom/baidu/server/dp/DynamicPermissionManager;->needCheck(Landroid/content/Intent;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 380
    invoke-direct {p0, v1, v0, p1}, Lcom/baidu/server/dp/DynamicPermissionManager;->checkCallPermission(IILandroid/content/Intent;)I

    move-result v2

    goto :goto_0
.end method

.method public checkCallPermission([Landroid/content/Intent;[[Landroid/content/Intent;)I
    .locals 7
    .parameter "intents"
    .parameter "intentsContainer"

    .prologue
    const/4 v6, 0x0

    .line 393
    invoke-virtual {p0}, Lcom/baidu/server/dp/DynamicPermissionManager;->isOn()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v6

    .line 404
    :goto_0
    return v0

    .line 397
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 398
    .local v2, uid:I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 399
    .local v3, pid:I
    const/4 v0, 0x1

    new-array v5, v0, [[Landroid/content/Intent;

    .local v5, checkedIntents:[[Landroid/content/Intent;
    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 400
    invoke-direct/range {v0 .. v5}, Lcom/baidu/server/dp/DynamicPermissionManager;->needCheck([Landroid/content/Intent;II[[Landroid/content/Intent;[[Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    aget-object v0, v5, v6

    invoke-direct {p0, v2, v3, v0}, Lcom/baidu/server/dp/DynamicPermissionManager;->checkCallPermission(II[Landroid/content/Intent;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v6

    .line 404
    goto :goto_0
.end method

.method public checkCallPermissionFS(Landroid/content/Intent;)I
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 414
    invoke-virtual {p0}, Lcom/baidu/server/dp/DynamicPermissionManager;->isOn()Z

    move-result v3

    if-nez v3, :cond_1

    .line 423
    :cond_0
    :goto_0
    return v2

    .line 418
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 419
    .local v1, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 420
    .local v0, pid:I
    invoke-direct {p0, p1, v1, v0}, Lcom/baidu/server/dp/DynamicPermissionManager;->needCheck(Landroid/content/Intent;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 421
    invoke-direct {p0, v1, v0, p1}, Lcom/baidu/server/dp/DynamicPermissionManager;->checkCallPermission(IILandroid/content/Intent;)I

    move-result v2

    goto :goto_0
.end method

.method public checkPermissionSync(Ljava/lang/String;)I
    .locals 9
    .parameter "perm"

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/baidu/server/dp/DynamicPermissionManager;->isOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    const/4 v8, 0x0

    .line 558
    :goto_0
    return v8

    .line 519
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 520
    .local v1, uid:I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 521
    .local v2, pid:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 522
    .local v4, time:J
    new-instance v6, Lcom/baidu/server/dp/DynamicPermissionManager$SyncTransport;

    invoke-direct {v6, p0}, Lcom/baidu/server/dp/DynamicPermissionManager$SyncTransport;-><init>(Lcom/baidu/server/dp/DynamicPermissionManager;)V

    .line 527
    .local v6, t:Lcom/baidu/server/dp/DynamicPermissionManager$SyncTransport;
    iget-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionManager;->mSyncTs:Ljava/util/ArrayList;

    monitor-enter v3

    .line 528
    :try_start_0
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionManager;->mSyncTs:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 530
    const/4 v8, 0x0

    .line 534
    .local v8, ret:I
    :try_start_1
    monitor-enter v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 535
    :try_start_2
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionManager;->mService:Lcom/baidu/server/dp/IDynamicPermissionService;

    move-object v3, p1

    invoke-interface/range {v0 .. v6}, Lcom/baidu/server/dp/IDynamicPermissionService;->checkPermissionSync(IILjava/lang/String;JLcom/baidu/server/dp/ISyncTransport;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v8

    .line 537
    if-eqz v8, :cond_2

    .line 540
    :cond_1
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 544
    :goto_1
    :try_start_4
    invoke-virtual {v6}, Lcom/baidu/server/dp/DynamicPermissionManager$SyncTransport;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    :cond_2
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 547
    if-eqz v8, :cond_3

    .line 548
    :try_start_5
    invoke-virtual {v6}, Lcom/baidu/server/dp/DynamicPermissionManager$SyncTransport;->getResult()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v8

    .line 554
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionManager;->mSyncTs:Ljava/util/ArrayList;

    monitor-enter v3

    .line 555
    :try_start_6
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionManager;->mSyncTs:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 556
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 529
    .end local v8           #ret:I
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 546
    .restart local v8       #ret:I
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    .line 550
    :catch_0
    move-exception v7

    .line 551
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "DynamicPermissionManager"

    const-string v3, "Service may dead"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 541
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public checkProviderPermissionSync(Ljava/lang/String;)I
    .locals 2
    .parameter "authority"

    .prologue
    .line 572
    invoke-direct {p0, p1}, Lcom/baidu/server/dp/DynamicPermissionManager;->getPermNameFromAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, perm:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 574
    const/4 v1, 0x0

    .line 577
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/baidu/server/dp/DynamicPermissionManager;->checkPermissionSync(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public checkSendSmsPermission(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)I
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 329
    new-instance v0, Lcom/baidu/server/dp/SmsTransaction;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/baidu/server/dp/SmsTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 331
    .local v0, t:Lcom/baidu/server/dp/SmsTransaction;
    invoke-direct {p0, v0}, Lcom/baidu/server/dp/DynamicPermissionManager;->checkSendSmsPermission(Lcom/baidu/server/dp/SmsTransaction;)I

    move-result v1

    return v1
.end method

.method public checkSendSmsPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)I
    .locals 6
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 317
    new-instance v0, Lcom/baidu/server/dp/SmsTransaction;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/baidu/server/dp/SmsTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 318
    .local v0, t:Lcom/baidu/server/dp/SmsTransaction;
    invoke-direct {p0, v0}, Lcom/baidu/server/dp/DynamicPermissionManager;->checkSendSmsPermission(Lcom/baidu/server/dp/SmsTransaction;)I

    move-result v1

    return v1
.end method

.method public checkSendSmsPermission(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 6
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 323
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v0, Lcom/baidu/server/dp/SmsTransaction;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/baidu/server/dp/SmsTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 325
    .local v0, t:Lcom/baidu/server/dp/SmsTransaction;
    invoke-direct {p0, v0}, Lcom/baidu/server/dp/DynamicPermissionManager;->checkSendSmsPermission(Lcom/baidu/server/dp/SmsTransaction;)I

    move-result v1

    return v1
.end method

.method public isOn()Z
    .locals 5

    .prologue
    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, ret:Z
    iget-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionManager;->mService:Lcom/baidu/server/dp/IDynamicPermissionService;

    if-nez v3, :cond_0

    move v2, v1

    .line 195
    .end local v1           #ret:Z
    .local v2, ret:I
    :goto_0
    return v2

    .line 191
    .end local v2           #ret:I
    .restart local v1       #ret:Z
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionManager;->mService:Lcom/baidu/server/dp/IDynamicPermissionService;

    invoke-interface {v3}, Lcom/baidu/server/dp/IDynamicPermissionService;->isOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 195
    .restart local v2       #ret:I
    goto :goto_0

    .line 192
    .end local v2           #ret:I
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "DynamicPermissionManager"

    const-string v4, "Service may dead"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isPreInstalled(Ljava/lang/String;)Z
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 234
    const/4 v1, 0x0

    .line 236
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionManager;->mService:Lcom/baidu/server/dp/IDynamicPermissionService;

    invoke-interface {v2, p1}, Lcom/baidu/server/dp/IDynamicPermissionService;->isPreInstalled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 240
    :goto_0
    return v1

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DynamicPermissionManager"

    const-string v3, "Service may dead"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isTrusted(Ljava/lang/String;)Z
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 215
    const/4 v1, 0x0

    .line 217
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionManager;->mService:Lcom/baidu/server/dp/IDynamicPermissionService;

    invoke-interface {v2, p1}, Lcom/baidu/server/dp/IDynamicPermissionService;->isTrusted(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 222
    :goto_0
    return v1

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DynamicPermissionManager"

    const-string v3, "Service may dead"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public queryPermission(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "pkgName"
    .parameter "perm"

    .prologue
    .line 244
    const/4 v1, 0x0

    .line 246
    .local v1, ret:I
    :try_start_0
    iget-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionManager;->mService:Lcom/baidu/server/dp/IDynamicPermissionService;

    invoke-interface {v2, p1, p2}, Lcom/baidu/server/dp/IDynamicPermissionService;->queryPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 250
    :goto_0
    return v1

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DynamicPermissionManager"

    const-string v3, "Service may dead"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public queryPermission(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    const/4 v1, 0x0

    .line 256
    .local v1, ret:Ljava/util/Map;
    :try_start_0
    iget-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionManager;->mService:Lcom/baidu/server/dp/IDynamicPermissionService;

    invoke-interface {v2, p1}, Lcom/baidu/server/dp/IDynamicPermissionService;->queryPackagePermission(Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 260
    :goto_0
    return-object v1

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DynamicPermissionManager"

    const-string v3, "Service may dead"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public restorePackage(Ljava/lang/String;I)V
    .locals 13
    .parameter "pkgName"
    .parameter "perm"

    .prologue
    const/4 v12, 0x2

    .line 684
    const/4 v9, -0x1

    if-ne p2, v9, :cond_1

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    const/4 v7, 0x0

    .line 689
    .local v7, trust:Z
    const/high16 v9, 0x30

    and-int/2addr v9, p2

    shr-int/lit8 v8, v9, 0x14

    .line 692
    .local v8, trustInt:I
    const-string v9, "DynamicPermissionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "restorePackage: trusted="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    if-ge v8, v12, :cond_2

    .line 695
    if-nez v8, :cond_4

    const/4 v7, 0x1

    .line 696
    :goto_1
    invoke-virtual {p0, p1, v7}, Lcom/baidu/server/dp/DynamicPermissionManager;->setTrusted(Ljava/lang/String;Z)V

    .line 700
    :cond_2
    sget-object v6, Lcom/baidu/server/dp/DynamicPermissionService;->sPermShifts:[I

    .line 701
    .local v6, shifts:[I
    sget-object v2, Lcom/baidu/server/dp/DynamicPermissionService;->sPermMasks:[I

    .line 702
    .local v2, masks:[I
    array-length v9, v6

    array-length v10, v2

    if-ne v9, v10, :cond_0

    array-length v9, v6

    sget-object v10, Lcom/baidu/server/dp/DynamicPermissionManager;->sDynPerms:[Ljava/lang/String;

    array-length v10, v10

    if-ne v9, v10, :cond_0

    .line 706
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 707
    .local v5, perms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 708
    .local v4, permNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    sget-object v9, Lcom/baidu/server/dp/DynamicPermissionManager;->sDynPerms:[Ljava/lang/String;

    array-length v9, v9

    if-ge v0, v9, :cond_6

    .line 709
    aget v9, v2, v0

    and-int/2addr v9, p2

    aget v10, v6, v0

    shr-int v3, v9, v10

    .line 710
    .local v3, permInt:I
    if-ge v3, v12, :cond_5

    .line 711
    sget-object v9, Lcom/baidu/server/dp/DynamicPermissionManager;->sDynPerms:[Ljava/lang/String;

    aget-object v9, v9, v0

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 695
    .end local v0           #i:I
    .end local v2           #masks:[I
    .end local v3           #permInt:I
    .end local v4           #permNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #perms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6           #shifts:[I
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 713
    .restart local v0       #i:I
    .restart local v2       #masks:[I
    .restart local v3       #permInt:I
    .restart local v4       #permNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #perms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v6       #shifts:[I
    :cond_5
    if-ne v3, v12, :cond_3

    .line 714
    sget-object v9, Lcom/baidu/server/dp/DynamicPermissionManager;->sDynPerms:[Ljava/lang/String;

    aget-object v9, v9, v0

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    const/16 v9, 0x10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 718
    .end local v3           #permInt:I
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v1, v9, [I

    .line 719
    .local v1, intPerms:[I
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_7

    .line 720
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v1, v0

    .line 722
    const-string v10, "DynamicPermissionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "restorePackage: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v11, v1, v0

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 725
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    const/4 v10, 0x4

    invoke-virtual {p0, p1, v9, v1, v10}, Lcom/baidu/server/dp/DynamicPermissionManager;->setPermissionWithSrc(Ljava/lang/String;[Ljava/lang/String;[IB)V

    goto/16 :goto_0
.end method

.method public savePackage(Ljava/lang/String;)I
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 669
    const/4 v1, -0x1

    .line 671
    .local v1, perm:I
    :try_start_0
    iget-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionManager;->mService:Lcom/baidu/server/dp/IDynamicPermissionService;

    invoke-interface {v2, p1}, Lcom/baidu/server/dp/IDynamicPermissionService;->savePackage(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 675
    :goto_0
    return v1

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DynamicPermissionManager"

    const-string v3, "Service may dead"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPermission(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "pkgName"
    .parameter "perm"
    .parameter "grant"

    .prologue
    .line 264
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/baidu/server/dp/DynamicPermissionManager;->setPermissionWithSrc(Ljava/lang/String;Ljava/lang/String;IB)V

    .line 265
    return-void
.end method

.method public setPermission(Ljava/lang/String;[Ljava/lang/String;[I)V
    .locals 1
    .parameter "pkgName"
    .parameter "perm"
    .parameter "grant"

    .prologue
    .line 273
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/baidu/server/dp/DynamicPermissionManager;->setPermissionWithSrc(Ljava/lang/String;[Ljava/lang/String;[IB)V

    .line 274
    return-void
.end method

.method public setPermissionWithSrc(Ljava/lang/String;Ljava/lang/String;IB)V
    .locals 4
    .parameter "pkgName"
    .parameter "perm"
    .parameter "grant"
    .parameter "src"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 267
    new-array v1, v3, [Ljava/lang/String;

    aput-object p2, v1, v2

    .line 268
    .local v1, perms:[Ljava/lang/String;
    new-array v0, v3, [I

    aput p3, v0, v2

    .line 269
    .local v0, grants:[I
    invoke-virtual {p0, p1, v1, v0, p4}, Lcom/baidu/server/dp/DynamicPermissionManager;->setPermissionWithSrc(Ljava/lang/String;[Ljava/lang/String;[IB)V

    .line 270
    return-void
.end method

.method public setPermissionWithSrc(Ljava/lang/String;[Ljava/lang/String;[IB)V
    .locals 3
    .parameter "pkgName"
    .parameter "perm"
    .parameter "grant"
    .parameter "src"

    .prologue
    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermissionManager;->mService:Lcom/baidu/server/dp/IDynamicPermissionService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/baidu/server/dp/IDynamicPermissionService;->setPermissionWithSrc(Ljava/lang/String;[Ljava/lang/String;[IB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DynamicPermissionManager"

    const-string v2, "Service may dead"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setTrusted(Ljava/lang/String;Z)V
    .locals 3
    .parameter "pkgName"
    .parameter "trust"

    .prologue
    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermissionManager;->mService:Lcom/baidu/server/dp/IDynamicPermissionService;

    invoke-interface {v1, p1, p2}, Lcom/baidu/server/dp/IDynamicPermissionService;->setTrusted(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DynamicPermissionManager"

    const-string v2, "Service may dead"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public turnOff()V
    .locals 3

    .prologue
    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermissionManager;->mService:Lcom/baidu/server/dp/IDynamicPermissionService;

    invoke-interface {v1}, Lcom/baidu/server/dp/IDynamicPermissionService;->turnOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DynamicPermissionManager"

    const-string v2, "Service may dead"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public turnOn()V
    .locals 3

    .prologue
    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermissionManager;->mService:Lcom/baidu/server/dp/IDynamicPermissionService;

    invoke-interface {v1}, Lcom/baidu/server/dp/IDynamicPermissionService;->turnOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DynamicPermissionManager"

    const-string v2, "Service may dead"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
