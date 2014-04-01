.class Lcom/android/internal/app/QuickbootManager$1;
.super Ljava/lang/Thread;
.source "QuickbootManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/QuickbootManager;->enableRadio()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/QuickbootManager;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J


# direct methods
.method constructor <init>(Lcom/android/internal/app/QuickbootManager;J[Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/internal/app/QuickbootManager$1;->this$0:Lcom/android/internal/app/QuickbootManager;

    iput-wide p2, p0, Lcom/android/internal/app/QuickbootManager$1;->val$endTime:J

    iput-object p4, p0, Lcom/android/internal/app/QuickbootManager$1;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 306
    const-string/jumbo v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 310
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    move v2, v4

    .line 311
    .local v2, radioOn:Z
    :goto_0
    if-nez v2, :cond_1

    .line 312
    const-string v5, "QuickbootManager"

    const-string v6, "Turning on radio..."

    invoke-static {v5, v6}, Lcom/android/internal/app/QuickbootManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/internal/app/QuickbootManager$1;->val$endTime:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_3

    .line 322
    if-nez v2, :cond_2

    .line 324
    :try_start_1
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v2

    .line 325
    const-string v5, "QuickbootManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "radioOn is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/app/QuickbootManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 330
    :goto_2
    if-eqz v2, :cond_2

    .line 331
    const-string v5, "QuickbootManager"

    const-string v6, "Radio turned on."

    invoke-static {v5, v6}, Lcom/android/internal/app/QuickbootManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_2
    if-eqz v2, :cond_5

    .line 336
    const-string v5, "QuickbootManager"

    const-string v6, "Radio start complete."

    invoke-static {v5, v6}, Lcom/android/internal/app/QuickbootManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v5, p0, Lcom/android/internal/app/QuickbootManager$1;->val$done:[Z

    aput-boolean v4, v5, v3

    .line 342
    :cond_3
    return-void

    .end local v2           #radioOn:Z
    :cond_4
    move v2, v3

    .line 310
    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, ex:Landroid/os/RemoteException;
    const-string v5, "QuickbootManager"

    const-string v6, "RemoteException during radio shutdown"

    invoke-static {v5, v6}, Lcom/android/internal/app/QuickbootManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const/4 v2, 0x1

    .restart local v2       #radioOn:Z
    goto :goto_1

    .line 326
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 327
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v5, "QuickbootManager"

    const-string v6, "RemoteException during radio on"

    invoke-static {v5, v6}, Lcom/android/internal/app/QuickbootManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const/4 v2, 0x1

    goto :goto_2

    .line 340
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_5
    const-wide/16 v5, 0x1f4

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1
.end method
