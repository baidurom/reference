.class public Lcom/baidu/systemverify/VerificationService;
.super Ljava/lang/Object;
.source "VerificationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;,
        Lcom/baidu/systemverify/VerificationService$VerifyHandler;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field private static final INTENT_Extra_METRIC_DATA:Ljava/lang/String; = "METRICDATA"

.field private static final INTENT_Extra_METRIC_ID:Ljava/lang/String; = "METRICID"

.field public static final INTENT_SUBMITDATA:Ljava/lang/String; = "yi.intent.action.UBC_SUBMITDATA"

.field private static final MSG_FINISH:I = 0xc

.field private static final MSG_START:I = 0xb

.field private static final SYSTEM_PROPERTY_NAME:Ljava/lang/String; = "Baidu_Verification"

.field public static final TAG:Ljava/lang/String; = "VerificationService"

.field private static mService:Lcom/baidu/systemverify/VerificationService;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/systemverify/VerificationService;->mService:Lcom/baidu/systemverify/VerificationService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "VerificationService"

    const-string v1, "enter VerificationService()"

    invoke-static {v0, v1}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/baidu/systemverify/VerificationService;->mContext:Landroid/content/Context;

    .line 50
    iget-object v0, p0, Lcom/baidu/systemverify/VerificationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Baidu_Verification"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 52
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "YiBMS_Verify"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/baidu/systemverify/VerificationService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 53
    iget-object v0, p0, Lcom/baidu/systemverify/VerificationService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 54
    new-instance v0, Lcom/baidu/systemverify/VerificationService$VerifyHandler;

    iget-object v1, p0, Lcom/baidu/systemverify/VerificationService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/systemverify/VerificationService$VerifyHandler;-><init>(Lcom/baidu/systemverify/VerificationService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/systemverify/VerificationService;->mHandler:Landroid/os/Handler;

    .line 55
    iget-object v0, p0, Lcom/baidu/systemverify/VerificationService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/systemverify/VerificationService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/baidu/systemverify/VerificationService;->verify()V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/systemverify/VerificationService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/baidu/systemverify/VerificationService;->finish()V

    return-void
.end method

.method private finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    iget-object v0, p0, Lcom/baidu/systemverify/VerificationService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 133
    iput-object v1, p0, Lcom/baidu/systemverify/VerificationService;->mHandler:Landroid/os/Handler;

    .line 134
    iput-object v1, p0, Lcom/baidu/systemverify/VerificationService;->mContext:Landroid/content/Context;

    .line 135
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 136
    return-void
.end method

.method public static main(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 37
    sget-object v0, Lcom/baidu/systemverify/VerificationService;->mService:Lcom/baidu/systemverify/VerificationService;

    if-nez v0, :cond_0

    .line 39
    const-string v0, "VerificationService"

    const-string/jumbo v1, "start verify service"

    invoke-static {v0, v1}, Lcom/baidu/systemverify/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/baidu/systemverify/VerificationService;

    invoke-direct {v0, p0}, Lcom/baidu/systemverify/VerificationService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/systemverify/VerificationService;->mService:Lcom/baidu/systemverify/VerificationService;

    .line 43
    :cond_0
    return-void
.end method

.method private sendToUbcServer(ILjava/lang/String;)V
    .locals 9
    .parameter "count"
    .parameter "rst"

    .prologue
    .line 110
    const-string v5, "VerificationService"

    const-string v6, "enter sendToUbcServer()"

    invoke-static {v5, v6}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-wide/32 v2, 0x1000403

    .line 113
    .local v2, metricCountId:J
    new-instance v0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;

    invoke-direct {v0, p0}, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;-><init>(Lcom/baidu/systemverify/VerificationService;)V

    .line 115
    .local v0, builder:Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;
    const-wide/32 v5, 0x1000403

    invoke-virtual {v0, v5, v6}, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->setMetricId(J)V

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v4, v5

    .line 117
    .local v4, timestamp:I
    invoke-virtual {v0, v4}, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->appendINT(I)V

    .line 118
    int-to-short v5, p1

    invoke-virtual {v0, v5}, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->appendSHORT(S)V

    .line 120
    :try_start_0
    const-string v5, "UTF-8"

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->appendByteArray([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "yi.intent.action.UBC_SUBMITDATA"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "METRICID"

    invoke-virtual {v0}, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->getMetricId()J

    move-result-wide v6

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 127
    const-string v5, "METRICDATA"

    invoke-virtual {v0}, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->buffer()[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 128
    iget-object v5, p0, Lcom/baidu/systemverify/VerificationService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 129
    return-void

    .line 121
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private setSettingState(Z)V
    .locals 3
    .parameter "verifyResult"

    .prologue
    .line 100
    const-string v0, "VerificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter setSettingState(), verifyResult is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/baidu/systemverify/VerificationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Baidu_Verification"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/baidu/systemverify/VerificationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Baidu_Verification"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private verify()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 59
    const-string v6, "VerificationService"

    const-string v7, "enter verify()"

    invoke-static {v6, v7}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/4 v5, 0x0

    .line 64
    .local v5, wakeLock:Landroid/os/PowerManager$WakeLock;
    iget-object v6, p0, Lcom/baidu/systemverify/VerificationService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 65
    .local v2, pm:Landroid/os/PowerManager;
    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v8, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    .line 67
    if-eqz v5, :cond_0

    .line 68
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 72
    :cond_0
    :try_start_0
    new-instance v4, Lcom/baidu/systemverify/Verification;

    invoke-direct {v4}, Lcom/baidu/systemverify/Verification;-><init>()V

    .line 73
    .local v4, verify:Lcom/baidu/systemverify/Verification;
    const/4 v0, 0x0

    .line 74
    .local v0, count:I
    iget-object v6, p0, Lcom/baidu/systemverify/VerificationService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Lcom/baidu/systemverify/Verification;->verifySystem(Landroid/content/Context;)I

    move-result v0

    .line 75
    invoke-virtual {v4}, Lcom/baidu/systemverify/Verification;->getVerifyResult()Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/baidu/systemverify/VerificationService;->setSettingState(Z)V

    .line 77
    if-lez v0, :cond_2

    .line 78
    invoke-virtual {v4}, Lcom/baidu/systemverify/Verification;->getResult()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, rst:Ljava/lang/String;
    const-string v6, "VerificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "system has new change-logs,upload Result is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/systemverify/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, v0, v3}, Lcom/baidu/systemverify/VerificationService;->sendToUbcServer(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v3           #rst:Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_1

    .line 94
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 97
    .end local v0           #count:I
    .end local v4           #verify:Lcom/baidu/systemverify/Verification;
    :cond_1
    :goto_1
    return-void

    .line 86
    .restart local v0       #count:I
    .restart local v4       #verify:Lcom/baidu/systemverify/Verification;
    :cond_2
    :try_start_1
    const-string v6, "VerificationService"

    const-string/jumbo v7, "system has no new change-logs"

    invoke-static {v6, v7}, Lcom/baidu/systemverify/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 89
    .end local v0           #count:I
    .end local v4           #verify:Lcom/baidu/systemverify/Verification;
    :catch_0
    move-exception v1

    .line 90
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v6, "VerificationService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/baidu/systemverify/VerificationService;->setSettingState(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    if-eqz v5, :cond_1

    .line 94
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1

    .line 93
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_3

    .line 94
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    throw v6
.end method
