.class Landroid/net/http/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# instance fields
.field private mLast:J

.field private mStart:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/http/Timer;->mLast:J

    iput-wide v0, p0, Landroid/net/http/Timer;->mStart:J

    .line 32
    return-void
.end method


# virtual methods
.method public mark(Ljava/lang/String;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 36
    .local v0, now:J
    sget-boolean v2, Landroid/net/http/HttpLog;->LOGV:Z

    if-eqz v2, :cond_0

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/http/Timer;->mLast:J

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " total "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/http/Timer;->mStart:J

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 39
    :cond_0
    iput-wide v0, p0, Landroid/net/http/Timer;->mLast:J

    .line 40
    return-void
.end method
