.class Lcom/baidu/server/sip/SipWakeLock;
.super Ljava/lang/Object;
.source "SipWakeLock.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "com.baidu.server.sip"


# instance fields
.field private mHolders:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/os/PowerManager;)V
    .locals 2
    .parameter "powerManager"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/server/sip/SipWakeLock;->mHolders:Ljava/util/HashSet;

    .line 38
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipWakeLock::SipWakeLock()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/baidu/server/sip/SipWakeLock;->mPowerManager:Landroid/os/PowerManager;

    .line 40
    return-void
.end method


# virtual methods
.method declared-synchronized acquire(J)V
    .locals 3
    .parameter "timeout"

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    const-string v0, "com.baidu.server.sip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<====> SipWakeLock::acquire(), timeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/baidu/server/sip/SipWakeLock;->mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/baidu/server/sip/SipWakeLock;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "SipWakeLock.timer"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/server/sip/SipWakeLock;->mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 53
    iget-object v0, p0, Lcom/baidu/server/sip/SipWakeLock;->mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/baidu/server/sip/SipWakeLock;->mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized acquire(Ljava/lang/Object;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipWakeLock::acquire(holder)"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/baidu/server/sip/SipWakeLock;->mHolders:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/baidu/server/sip/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/baidu/server/sip/SipWakeLock;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "SipWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/server/sip/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/baidu/server/sip/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/server/sip/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_1
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized release(Ljava/lang/Object;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipWakeLock::release(holder)"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/baidu/server/sip/SipWakeLock;->mHolders:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/baidu/server/sip/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/server/sip/SipWakeLock;->mHolders:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/server/sip/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/baidu/server/sip/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_0
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized reset()V
    .locals 1

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/server/sip/SipWakeLock;->mHolders:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
