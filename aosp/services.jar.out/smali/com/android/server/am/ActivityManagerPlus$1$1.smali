.class Lcom/android/server/am/ActivityManagerPlus$1$1;
.super Ljava/lang/Object;
.source "ActivityManagerPlus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerPlus$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerPlus$1;

.field final synthetic val$stMgr:Lcom/android/internal/app/ShutdownManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerPlus$1;Lcom/android/internal/app/ShutdownManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerPlus$1$1;->this$1:Lcom/android/server/am/ActivityManagerPlus$1;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerPlus$1$1;->val$stMgr:Lcom/android/internal/app/ShutdownManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x1388

    const/4 v10, 0x0

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 293
    .local v5, start_time:J
    move-wide v1, v5

    .line 295
    .local v1, current_time:J
    const-string v7, "ActivityManagerPlus"

    const-string v8, "start waiting for ril.ipo.radiooff & ril.ipo.radiooff.2"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    .line 298
    .local v0, DualTalkMode:Z
    const-string v7, "ril.ipo.radiooff"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, radiooff:Ljava/lang/String;
    const-string v7, "ril.ipo.radiooff.2"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 301
    .local v4, radiooff2:Ljava/lang/String;
    const-string v7, "ActivityManagerPlus"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DualTalkMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ril.ipo.radiooff = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ril.ipo.radiooff.2 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v7, "0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v0, :cond_1

    if-eqz v0, :cond_3

    const-string v7, "0"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 309
    :cond_1
    const-string v7, "ActivityManagerPlus"

    const-string v8, "break waiting radiooff"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_0
    add-long v7, v5, v11

    cmp-long v7, v7, v1

    if-gtz v7, :cond_2

    .line 321
    const-string v7, "ActivityManagerPlus"

    const-string v8, "wait radiooff timeout..."

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_2
    const-string v7, "ActivityManagerPlus"

    const-string v8, "prebootKillProcess"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPlus$1$1;->val$stMgr:Lcom/android/internal/app/ShutdownManager;

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPlus$1$1;->this$1:Lcom/android/server/am/ActivityManagerPlus$1;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/am/ActivityManagerPlus;->access$000(Lcom/android/server/am/ActivityManagerPlus;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/app/ShutdownManager;->prebootKillProcess(Landroid/content/Context;)V

    .line 326
    return-void

    .line 312
    :cond_3
    const-string v7, "ActivityManagerPlus"

    const-string v8, "keep waiting radiooff"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-wide/16 v7, 0x64

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 318
    add-long v7, v5, v11

    cmp-long v7, v1, v7

    if-ltz v7, :cond_0

    goto :goto_0

    .line 315
    :catch_0
    move-exception v7

    goto :goto_1
.end method
