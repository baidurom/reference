.class public Lyi/baidupay/PayManager;
.super Ljava/lang/Object;
.source "PayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/baidupay/PayManager$InitializerServiceConnection;
    }
.end annotation


# static fields
.field public static final BAIDU_AUTHORITY:Ljava/lang/String; = "baidu.baidupay.tradeserver"

.field private static DEBUG:Z = false

.field private static final PSERVER:I = 0x1346

.field private static final PSERVER_FAIL_BIND:I = 0x1348

.field private static TAG:Ljava/lang/String; = null

.field public static final TRADE_SERVER_ATTRIBUTES_NAME:Ljava/lang/String; = "trade-server"

.field public static final TRADE_SERVER_INTENT:Ljava/lang/String; = "baidu.baidupay.TradeServer"

.field public static final TRADE_SERVER_META_DATA_NAME:Ljava/lang/String; = "baidu.baidupay.TradeServer"

.field private static final TSERVER:I = 0x1345

.field private static final TSERVER_FAIL_BIND:I = 0x1347

.field private static final mLock:Ljava/lang/Object;

.field private static pServer:Lyi/baidupay/IPayServer;

.field private static tHandler:Landroid/os/Handler;

.field private static tServer:Lyi/baidupay/ITradeServer;


# instance fields
.field mContext:Landroid/content/Context;

.field mTradeServer:Lyi/baidupay/FakeTradeServer;

.field mVer:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyi/baidupay/PayManager;->mLock:Ljava/lang/Object;

    .line 49
    const-string v0, "PayManager"

    sput-object v0, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lyi/baidupay/PayManager;->DEBUG:Z

    .line 52
    sput-object v1, Lyi/baidupay/PayManager;->tServer:Lyi/baidupay/ITradeServer;

    .line 53
    sput-object v1, Lyi/baidupay/PayManager;->pServer:Lyi/baidupay/IPayServer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/16 v0, 0x8

    iput v0, p0, Lyi/baidupay/PayManager;->mVer:I

    .line 80
    iput-object p1, p0, Lyi/baidupay/PayManager;->mContext:Landroid/content/Context;

    .line 81
    sget-boolean v0, Lyi/baidupay/PayManager;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    const-string v1, "constructor start."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lyi/baidupay/ITradeServer;)Lyi/baidupay/ITradeServer;
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    sput-object p0, Lyi/baidupay/PayManager;->tServer:Lyi/baidupay/ITradeServer;

    return-object p0
.end method

.method static synthetic access$202(Lyi/baidupay/IPayServer;)Lyi/baidupay/IPayServer;
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    sput-object p0, Lyi/baidupay/PayManager;->pServer:Lyi/baidupay/IPayServer;

    return-object p0
.end method

.method private bindService(Ljava/lang/String;I)Z
    .locals 6
    .parameter "server"
    .parameter "serverType"

    .prologue
    const/4 v2, 0x0

    .line 508
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 511
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "baidu.baidupay.TradeServer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 513
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.baidu.baidupay"

    const-string v4, "com.baidu.baidupay.TradeService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .local v0, componentName:Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 535
    iget-object v3, p0, Lyi/baidupay/PayManager;->mContext:Landroid/content/Context;

    new-instance v4, Lyi/baidupay/PayManager$InitializerServiceConnection;

    iget-object v5, p0, Lyi/baidupay/PayManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5, p2}, Lyi/baidupay/PayManager$InitializerServiceConnection;-><init>(Lyi/baidupay/PayManager;Landroid/content/Context;I)V

    const/4 v5, 0x5

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 537
    sget-object v3, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to bind to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    .end local v0           #componentName:Landroid/content/ComponentName;
    :goto_1
    return v2

    .line 515
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.baidu.baifubao.BaifubaoServer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 517
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.baidu.baifubao"

    const-string v4, "com.baidu.baifubao.BaifubaoService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #componentName:Landroid/content/ComponentName;
    goto :goto_0

    .line 519
    .end local v0           #componentName:Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.baidu.appstore.pay.TradeServer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 521
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.baidu.appstore"

    const-string v4, "com.baidu.appstore.pay.TradeService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #componentName:Landroid/content/ComponentName;
    goto :goto_0

    .line 523
    .end local v0           #componentName:Landroid/content/ComponentName;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.baidu.PhonePay.PhonePayServer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 525
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.baidu.PhonePay"

    const-string v4, "com.baidu.PhonePay.service.PhonePayService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #componentName:Landroid/content/ComponentName;
    goto :goto_0

    .line 528
    .end local v0           #componentName:Landroid/content/ComponentName;
    :cond_3
    sget-object v3, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to bind: Unsupport server: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 541
    .restart local v0       #componentName:Landroid/content/ComponentName;
    :cond_4
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private findPayServer(Ljava/lang/String;)Lyi/baidupay/FakePayServer;
    .locals 1
    .parameter "server"

    .prologue
    .line 97
    new-instance v0, Lyi/baidupay/FakePayServer;

    invoke-direct {v0}, Lyi/baidupay/FakePayServer;-><init>()V

    return-object v0
.end method

.method private findTradeServer(Ljava/lang/String;)Lyi/baidupay/FakeTradeServer;
    .locals 1
    .parameter "server"

    .prologue
    .line 106
    new-instance v0, Lyi/baidupay/FakeTradeServer;

    invoke-direct {v0}, Lyi/baidupay/FakeTradeServer;-><init>()V

    return-object v0
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lyi/baidupay/PayManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 88
    const-class v1, Lyi/baidupay/PayManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lyi/baidupay/PayManager;

    invoke-direct {v0, p0}, Lyi/baidupay/PayManager;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public checkResult(Lyi/baidupay/TradeInfo;)Ljava/lang/String;
    .locals 12
    .parameter "trade"

    .prologue
    .line 387
    new-instance v7, Lyi/baidupay/Trade;

    invoke-direct {v7}, Lyi/baidupay/Trade;-><init>()V

    .line 388
    .local v7, t:Lyi/baidupay/Trade;
    iget-object v8, p1, Lyi/baidupay/TradeInfo;->tradeNo:Ljava/lang/String;

    iput-object v8, v7, Lyi/baidupay/Trade;->tradeNo:Ljava/lang/String;

    .line 389
    iget-object v6, p1, Lyi/baidupay/TradeInfo;->tradeServer:Ljava/lang/String;

    .line 391
    .local v6, server:Ljava/lang/String;
    sget-boolean v8, Lyi/baidupay/PayManager;->DEBUG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    const-string v9, "check trade result."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    const/4 v3, 0x0

    .line 394
    .local v3, i:I
    sget-object v8, Lyi/baidupay/PayManager;->tServer:Lyi/baidupay/ITradeServer;

    if-nez v8, :cond_4

    .line 395
    if-nez v6, :cond_1

    .line 396
    sget-object v8, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    const-string v9, "trade server null."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 399
    :cond_1
    const/16 v8, 0x1345

    invoke-direct {p0, v6, v8}, Lyi/baidupay/PayManager;->bindService(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 400
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 413
    :cond_2
    :try_start_0
    sget-boolean v8, Lyi/baidupay/PayManager;->DEBUG:Z

    if-eqz v8, :cond_3

    sget-object v8, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    const-string v9, "before wait."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_3
    const-wide/16 v8, 0x64

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 422
    sget-boolean v8, Lyi/baidupay/PayManager;->DEBUG:Z

    if-eqz v8, :cond_4

    sget-object v8, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    const-string v9, "after wait."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :cond_4
    :goto_0
    sget-object v8, Lyi/baidupay/PayManager;->tServer:Lyi/baidupay/ITradeServer;

    if-nez v8, :cond_5

    .line 407
    add-int/lit8 v3, v3, 0x1

    .line 408
    const/16 v8, 0x14

    if-le v3, v8, :cond_2

    .line 410
    :try_start_1
    sget-object v8, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bind Trade server["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] timeout."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 423
    :catch_0
    move-exception v2

    .line 424
    .local v2, ex:Ljava/lang/InterruptedException;
    sget-object v8, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    const-string v9, "interrupted."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 431
    .end local v2           #ex:Ljava/lang/InterruptedException;
    :cond_5
    :try_start_2
    sget-object v8, Lyi/baidupay/PayManager;->tServer:Lyi/baidupay/ITradeServer;

    if-nez v8, :cond_6

    .line 432
    sget-object v8, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    const-string v9, "trade server service not available."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-string v5, "FAIL"
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 444
    .local v5, ret:Ljava/lang/String;
    :goto_1
    new-instance v0, Lyi/ubc/MetricBuilder;

    invoke-direct {v0}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 445
    .local v0, builder:Lyi/ubc/MetricBuilder;
    const-wide/16 v8, 0x203

    invoke-virtual {v0, v8, v9}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 447
    iget-object v8, p1, Lyi/baidupay/TradeInfo;->tradeNo:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lyi/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;

    .line 449
    invoke-virtual {v0, v5}, Lyi/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;

    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v8, v8

    invoke-virtual {v0, v8}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 453
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 454
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "yi.intent.action.UBC_SUBMITDATA"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const-string v8, "METRICID"

    invoke-virtual {v0}, Lyi/ubc/MetricBuilder;->getMetricId()J

    move-result-wide v9

    invoke-virtual {v4, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 456
    const-string v8, "METRICDATA"

    invoke-virtual {v0}, Lyi/ubc/MetricBuilder;->buffer()[B

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 457
    iget-object v8, p0, Lyi/baidupay/PayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 459
    return-object v5

    .line 435
    .end local v0           #builder:Lyi/ubc/MetricBuilder;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #ret:Ljava/lang/String;
    :cond_6
    :try_start_3
    sget-object v8, Lyi/baidupay/PayManager;->tServer:Lyi/baidupay/ITradeServer;

    invoke-interface {v8, v7}, Lyi/baidupay/ITradeServer;->checkTradeResult(Lyi/baidupay/Trade;)Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v5

    .restart local v5       #ret:Ljava/lang/String;
    goto :goto_1

    .line 437
    .end local v5           #ret:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 438
    .local v1, e:Landroid/os/RemoteException;
    sget-object v8, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 439
    sget-object v8, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    const-string v9, "createTradeNo"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 441
    :cond_7
    const-string v5, "ERROR"

    .restart local v5       #ret:Ljava/lang/String;
    goto :goto_1
.end method

.method public createTradeNo(Lyi/baidupay/NewTrade;)Lyi/baidupay/TradeInfo;
    .locals 22
    .parameter "trade"

    .prologue
    .line 124
    move-object/from16 v0, p1

    iget-object v15, v0, Lyi/baidupay/NewTrade;->tradeServer:Ljava/lang/String;

    .line 127
    .local v15, server:Ljava/lang/String;
    new-instance v17, Lyi/baidupay/TradeInfo;

    invoke-direct/range {v17 .. v17}, Lyi/baidupay/TradeInfo;-><init>()V

    .line 128
    .local v17, tradeInfo:Lyi/baidupay/TradeInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lyi/baidupay/PayManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 129
    .local v11, name:Ljava/lang/String;
    if-eqz v15, :cond_0

    const/16 v18, 0x1345

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lyi/baidupay/PayManager;->bindService(Ljava/lang/String;I)Z

    move-result v18

    if-nez v18, :cond_1

    .line 130
    :cond_0
    sget-object v18, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Create new trade with invalide tradeserver:["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v18, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v18

    .line 135
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lyi/baidupay/PayManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v16, v0

    .line 136
    .local v16, signatures:[Landroid/content/pm/Signature;
    sget-boolean v18, Lyi/baidupay/PayManager;->DEBUG:Z

    if-eqz v18, :cond_2

    if-eqz v16, :cond_2

    .line 137
    move-object/from16 v3, v16

    .local v3, arr$:[Landroid/content/pm/Signature;
    array-length v10, v3

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v10, :cond_2

    aget-object v14, v3, v8

    .line 138
    .local v14, s:Landroid/content/pm/Signature;
    sget-object v18, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "create new trade no with sig "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 140
    .end local v3           #arr$:[Landroid/content/pm/Signature;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .end local v14           #s:Landroid/content/pm/Signature;
    :cond_2
    sget-boolean v18, Lyi/baidupay/PayManager;->DEBUG:Z

    if-eqz v18, :cond_3

    sget-object v18, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "create new trade no for package: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "with trade server:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_3
    new-instance v12, Lyi/baidupay/NewTradeInfo;

    invoke-direct {v12}, Lyi/baidupay/NewTradeInfo;-><init>()V

    .line 144
    .local v12, newInfo:Lyi/baidupay/NewTradeInfo;
    new-instance v13, Lyi/baidupay/NewTradeResult;

    invoke-direct {v13}, Lyi/baidupay/NewTradeResult;-><init>()V

    .line 146
    .local v13, result:Lyi/baidupay/NewTradeResult;
    move-object/from16 v0, p1

    iget-object v0, v0, Lyi/baidupay/NewTrade;->tradeServer:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v12, Lyi/baidupay/NewTradeInfo;->tradeServer:Ljava/lang/String;

    .line 147
    move-object/from16 v0, p1

    iget-object v0, v0, Lyi/baidupay/NewTrade;->sellerId:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v12, Lyi/baidupay/NewTradeInfo;->sellerId:Ljava/lang/String;

    .line 148
    move-object/from16 v0, p1

    iget-object v0, v0, Lyi/baidupay/NewTrade;->buyerId:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v12, Lyi/baidupay/NewTradeInfo;->buyerId:Ljava/lang/String;

    .line 149
    move-object/from16 v0, p1

    iget-object v0, v0, Lyi/baidupay/NewTrade;->totalFee:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v12, Lyi/baidupay/NewTradeInfo;->totalFee:Ljava/lang/String;

    .line 150
    move-object/from16 v0, p1

    iget-object v0, v0, Lyi/baidupay/NewTrade;->subject:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v12, Lyi/baidupay/NewTradeInfo;->subject:Ljava/lang/String;

    .line 151
    move-object/from16 v0, p1

    iget-object v0, v0, Lyi/baidupay/NewTrade;->productId:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v12, Lyi/baidupay/NewTradeInfo;->productId:Ljava/lang/String;

    .line 152
    const/4 v7, 0x0

    .line 155
    .local v7, i:I
    :goto_1
    sget-object v18, Lyi/baidupay/PayManager;->tServer:Lyi/baidupay/ITradeServer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v18, :cond_6

    .line 157
    add-int/lit8 v7, v7, 0x1

    .line 158
    const/16 v18, 0x14

    move/from16 v0, v18

    if-le v7, v0, :cond_5

    .line 160
    :try_start_1
    sget-object v18, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Bind Trade server["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] timeout."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v18, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v18
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 170
    :catch_0
    move-exception v6

    .line 171
    .local v6, ex:Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v18, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    const-string v19, "interrupted."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 216
    .end local v6           #ex:Ljava/lang/InterruptedException;
    .end local v7           #i:I
    .end local v12           #newInfo:Lyi/baidupay/NewTradeInfo;
    .end local v13           #result:Lyi/baidupay/NewTradeResult;
    .end local v16           #signatures:[Landroid/content/pm/Signature;
    :catch_1
    move-exception v5

    .line 217
    .local v5, e:Landroid/os/RemoteException;
    sget-object v18, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 218
    sget-object v18, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    const-string v19, "createTradeNo"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    .end local v5           #e:Landroid/os/RemoteException;
    :cond_4
    :goto_2
    return-object v17

    .line 164
    .restart local v7       #i:I
    .restart local v12       #newInfo:Lyi/baidupay/NewTradeInfo;
    .restart local v13       #result:Lyi/baidupay/NewTradeResult;
    .restart local v16       #signatures:[Landroid/content/pm/Signature;
    :cond_5
    const-wide/16 v18, 0x64

    :try_start_3
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 220
    .end local v7           #i:I
    .end local v12           #newInfo:Lyi/baidupay/NewTradeInfo;
    .end local v13           #result:Lyi/baidupay/NewTradeResult;
    .end local v16           #signatures:[Landroid/content/pm/Signature;
    :catch_2
    move-exception v5

    .line 221
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v18, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 222
    sget-object v18, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    const-string v19, "createTradeNo, namenotfound"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 175
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7       #i:I
    .restart local v12       #newInfo:Lyi/baidupay/NewTradeInfo;
    .restart local v13       #result:Lyi/baidupay/NewTradeResult;
    .restart local v16       #signatures:[Landroid/content/pm/Signature;
    :cond_6
    :try_start_4
    sget-boolean v18, Lyi/baidupay/PayManager;->DEBUG:Z

    if-eqz v18, :cond_7

    sget-object v18, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    const-string v19, "after looper run."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_7
    sget-object v18, Lyi/baidupay/PayManager;->tServer:Lyi/baidupay/ITradeServer;

    if-eqz v18, :cond_a

    .line 177
    sget-boolean v18, Lyi/baidupay/PayManager;->DEBUG:Z

    if-eqz v18, :cond_8

    sget-object v18, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Creating new trade through trade server: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_8
    sget-object v18, Lyi/baidupay/PayManager;->tServer:Lyi/baidupay/ITradeServer;

    move-object/from16 v0, v18

    invoke-interface {v0, v12, v13}, Lyi/baidupay/ITradeServer;->createTradeNo(Lyi/baidupay/NewTradeInfo;Lyi/baidupay/NewTradeResult;)V

    .line 183
    :cond_9
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lyi/baidupay/NewTrade;->sellerId:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lyi/baidupay/TradeInfo;->sellerId:Ljava/lang/String;

    .line 184
    move-object/from16 v0, p1

    iget-object v0, v0, Lyi/baidupay/NewTrade;->buyerId:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lyi/baidupay/TradeInfo;->buyerId:Ljava/lang/String;

    .line 185
    move-object/from16 v0, p1

    iget-object v0, v0, Lyi/baidupay/NewTrade;->totalFee:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lyi/baidupay/TradeInfo;->totalFee:Ljava/lang/String;

    .line 186
    move-object/from16 v0, p1

    iget-object v0, v0, Lyi/baidupay/NewTrade;->subject:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lyi/baidupay/TradeInfo;->subject:Ljava/lang/String;

    .line 187
    move-object/from16 v0, p1

    iget-object v0, v0, Lyi/baidupay/NewTrade;->productId:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lyi/baidupay/TradeInfo;->productId:Ljava/lang/String;

    .line 188
    iget-object v0, v12, Lyi/baidupay/NewTradeInfo;->tradeServer:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lyi/baidupay/TradeInfo;->tradeServer:Ljava/lang/String;

    .line 189
    iget-object v0, v13, Lyi/baidupay/NewTradeResult;->tradeNo:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lyi/baidupay/TradeInfo;->tradeNo:Ljava/lang/String;

    .line 190
    iget-object v0, v13, Lyi/baidupay/NewTradeResult;->payUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lyi/baidupay/TradeInfo;->payUrl:Ljava/lang/String;

    .line 191
    iget-object v0, v13, Lyi/baidupay/NewTradeResult;->payServer:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lyi/baidupay/TradeInfo;->payServer:Ljava/lang/String;

    .line 192
    iget-object v0, v13, Lyi/baidupay/NewTradeResult;->serverSign:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lyi/baidupay/TradeInfo;->serverSign:Ljava/lang/String;

    .line 193
    iget-object v0, v13, Lyi/baidupay/NewTradeResult;->errNo:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lyi/baidupay/TradeInfo;->errNo:Ljava/lang/String;

    .line 195
    new-instance v4, Lyi/ubc/MetricBuilder;

    invoke-direct {v4}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 196
    .local v4, builder:Lyi/ubc/MetricBuilder;
    const-wide/16 v18, 0x201

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 198
    invoke-virtual {v4, v11}, Lyi/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;

    .line 200
    iget-object v0, v13, Lyi/baidupay/NewTradeResult;->tradeNo:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lyi/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;

    .line 202
    move-object/from16 v0, p1

    iget-object v0, v0, Lyi/baidupay/NewTrade;->totalFee:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lyi/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;

    .line 204
    move-object/from16 v0, p1

    iget-object v0, v0, Lyi/baidupay/NewTrade;->subject:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lyi/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;

    .line 206
    move-object/from16 v0, p1

    iget-object v0, v0, Lyi/baidupay/NewTrade;->tradeServer:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lyi/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 210
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 211
    .local v9, intent:Landroid/content/Intent;
    const-string v18, "yi.intent.action.UBC_SUBMITDATA"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v18, "METRICID"

    invoke-virtual {v4}, Lyi/ubc/MetricBuilder;->getMetricId()J

    move-result-wide v19

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-virtual {v9, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 213
    const-string v18, "METRICDATA"

    invoke-virtual {v4}, Lyi/ubc/MetricBuilder;->buffer()[B

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lyi/baidupay/PayManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 180
    .end local v4           #builder:Lyi/ubc/MetricBuilder;
    .end local v9           #intent:Landroid/content/Intent;
    :cond_a
    sget-boolean v18, Lyi/baidupay/PayManager;->DEBUG:Z

    if-eqz v18, :cond_9

    sget-object v18, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    const-string v19, "TradeServer is null for no reason."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3
.end method

.method public doPayment(Lyi/baidupay/TradeInfo;)Ljava/lang/String;
    .locals 13
    .parameter "trade"

    .prologue
    const/4 v12, 0x2

    .line 239
    sget-boolean v8, Lyi/baidupay/PayManager;->DEBUG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    const-string v9, "dopayment."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    new-instance v5, Lyi/baidupay/PayInfo;

    invoke-direct {v5}, Lyi/baidupay/PayInfo;-><init>()V

    .line 243
    .local v5, payInfo:Lyi/baidupay/PayInfo;
    iget-object v8, p1, Lyi/baidupay/TradeInfo;->tradeNo:Ljava/lang/String;

    iput-object v8, v5, Lyi/baidupay/PayInfo;->tradeNo:Ljava/lang/String;

    .line 244
    iget-object v8, p1, Lyi/baidupay/TradeInfo;->tradeServer:Ljava/lang/String;

    iput-object v8, v5, Lyi/baidupay/PayInfo;->tradeServer:Ljava/lang/String;

    .line 245
    iget-object v8, p1, Lyi/baidupay/TradeInfo;->payUrl:Ljava/lang/String;

    iput-object v8, v5, Lyi/baidupay/PayInfo;->payUrl:Ljava/lang/String;

    .line 246
    iget-object v8, p1, Lyi/baidupay/TradeInfo;->totalFee:Ljava/lang/String;

    iput-object v8, v5, Lyi/baidupay/PayInfo;->totalFee:Ljava/lang/String;

    .line 247
    iget-object v8, p1, Lyi/baidupay/TradeInfo;->subject:Ljava/lang/String;

    iput-object v8, v5, Lyi/baidupay/PayInfo;->subject:Ljava/lang/String;

    .line 248
    iget-object v7, p1, Lyi/baidupay/TradeInfo;->payServer:Ljava/lang/String;

    .line 251
    .local v7, server:Ljava/lang/String;
    const-string v8, "appsignxxxx"

    iput-object v8, v5, Lyi/baidupay/PayInfo;->appSign:Ljava/lang/String;

    .line 252
    const-string v8, "serverSignxxxx"

    iput-object v8, v5, Lyi/baidupay/PayInfo;->serverSign:Ljava/lang/String;

    .line 254
    new-instance v6, Lyi/baidupay/PayResult;

    invoke-direct {v6}, Lyi/baidupay/PayResult;-><init>()V

    .line 256
    .local v6, payResult:Lyi/baidupay/PayResult;
    sget-object v8, Lyi/baidupay/PayManager;->pServer:Lyi/baidupay/IPayServer;

    if-nez v8, :cond_2

    .line 257
    if-eqz v7, :cond_1

    const/16 v8, 0x1346

    invoke-direct {p0, v7, v8}, Lyi/baidupay/PayManager;->bindService(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 258
    :cond_1
    sget-object v8, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Pay server not found:["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 263
    :cond_2
    new-instance v0, Lyi/ubc/MetricBuilder;

    invoke-direct {v0}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 264
    .local v0, builder:Lyi/ubc/MetricBuilder;
    const-wide/16 v8, 0x202

    invoke-virtual {v0, v8, v9}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 266
    iget-object v8, p1, Lyi/baidupay/TradeInfo;->tradeNo:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lyi/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;

    .line 268
    iget-object v8, p1, Lyi/baidupay/TradeInfo;->totalFee:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lyi/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;

    .line 270
    invoke-virtual {v0, v7}, Lyi/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v8, v8

    invoke-virtual {v0, v8}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 274
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 275
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "yi.intent.action.UBC_SUBMITDATA"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v8, "METRICID"

    invoke-virtual {v0}, Lyi/ubc/MetricBuilder;->getMetricId()J

    move-result-wide v9

    invoke-virtual {v4, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 277
    const-string v8, "METRICDATA"

    invoke-virtual {v0}, Lyi/ubc/MetricBuilder;->buffer()[B

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 278
    iget-object v8, p0, Lyi/baidupay/PayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 280
    const/4 v3, 0x0

    .line 283
    .local v3, i:I
    :goto_0
    sget-object v8, Lyi/baidupay/PayManager;->pServer:Lyi/baidupay/IPayServer;

    if-nez v8, :cond_4

    .line 285
    add-int/lit8 v3, v3, 0x1

    .line 286
    const/16 v8, 0x14

    if-le v3, v8, :cond_3

    .line 288
    :try_start_0
    sget-object v8, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bind Pay server["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] timeout."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :catch_0
    move-exception v2

    .line 299
    .local v2, ex:Ljava/lang/InterruptedException;
    sget-object v8, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    const-string v9, "interrupted."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    .end local v2           #ex:Ljava/lang/InterruptedException;
    :cond_3
    const-wide/16 v8, 0x64

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 304
    :cond_4
    :try_start_2
    sget-object v8, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Do payment with pay server:["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    sget-object v8, Lyi/baidupay/PayManager;->pServer:Lyi/baidupay/IPayServer;

    invoke-interface {v8, v5, v6}, Lyi/baidupay/IPayServer;->doPayment(Lyi/baidupay/PayInfo;Lyi/baidupay/PayResult;)Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 315
    :cond_5
    :goto_1
    const-string v8, "success"

    return-object v8

    .line 306
    :catch_1
    move-exception v1

    .line 307
    .local v1, e:Landroid/os/RemoteException;
    sget-object v8, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    invoke-static {v8, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 308
    sget-object v8, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    const-string v9, "DoPayment Remote exception: "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 310
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .line 311
    .local v1, e:Ljava/lang/Exception;
    sget-object v8, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    invoke-static {v8, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 312
    sget-object v8, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    const-string v9, "DoPayment exception: "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public doPaymentIntent(Lyi/baidupay/TradeInfo;)Landroid/content/Intent;
    .locals 10
    .parameter "trade"

    .prologue
    .line 326
    iget-object v5, p1, Lyi/baidupay/TradeInfo;->payServer:Ljava/lang/String;

    .line 327
    .local v5, server:Ljava/lang/String;
    sget-boolean v6, Lyi/baidupay/PayManager;->DEBUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    const-string v7, "dopayment."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    new-instance v0, Lyi/ubc/MetricBuilder;

    invoke-direct {v0}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 331
    .local v0, builder:Lyi/ubc/MetricBuilder;
    const-wide/16 v6, 0x202

    invoke-virtual {v0, v6, v7}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 333
    iget-object v6, p1, Lyi/baidupay/TradeInfo;->tradeNo:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lyi/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;

    .line 335
    iget-object v6, p1, Lyi/baidupay/TradeInfo;->totalFee:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lyi/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;

    .line 337
    invoke-virtual {v0, v5}, Lyi/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v6, v6

    invoke-virtual {v0, v6}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 341
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 342
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "yi.intent.action.UBC_SUBMITDATA"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string v6, "METRICID"

    invoke-virtual {v0}, Lyi/ubc/MetricBuilder;->getMetricId()J

    move-result-wide v7

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 344
    const-string v6, "METRICDATA"

    invoke-virtual {v0}, Lyi/ubc/MetricBuilder;->buffer()[B

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 345
    iget-object v6, p0, Lyi/baidupay/PayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 348
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 351
    .local v3, i:Landroid/content/Intent;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.baidu.baifubao.BaifubaoServer"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 353
    new-instance v2, Landroid/content/ComponentName;

    const-string v6, "com.baidu.baifubao"

    const-string v7, "com.baidu.baifubao.Baifubao"

    invoke-direct {v2, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .local v2, componentName:Landroid/content/ComponentName;
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 364
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 365
    .local v1, bundle:Landroid/os/Bundle;
    const-string v6, "tradeNo"

    iget-object v7, p1, Lyi/baidupay/TradeInfo;->tradeNo:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v6, "tradeServer"

    iget-object v7, p1, Lyi/baidupay/TradeInfo;->tradeServer:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v6, "payUrl"

    iget-object v7, p1, Lyi/baidupay/TradeInfo;->payUrl:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v6, "totalFee"

    iget-object v7, p1, Lyi/baidupay/TradeInfo;->totalFee:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v6, "subject"

    iget-object v7, p1, Lyi/baidupay/TradeInfo;->subject:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v6, "appSign"

    const-string v7, "appsignxxxx"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v6, "serverSign"

    const-string v7, "serverSignxxxx"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 376
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #componentName:Landroid/content/ComponentName;
    .end local v3           #i:Landroid/content/Intent;
    :goto_0
    return-object v3

    .line 356
    .restart local v3       #i:Landroid/content/Intent;
    :cond_1
    sget-object v6, Lyi/baidupay/PayManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to bind: Unsupport server: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v3, 0x0

    goto :goto_0
.end method
