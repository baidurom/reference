.class public Lcom/android/phone/Worker;
.super Landroid/os/HandlerThread;
.source "Worker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Worker$WrapperCloseCursor;,
        Lcom/android/phone/Worker$MyHandler;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/phone/Worker; = null

.field private static final MSG_QUIT:I = 0x64

.field public static TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "Worker"

    sput-object v0, Lcom/android/phone/Worker;->TAG:Ljava/lang/String;

    .line 16
    new-instance v0, Lcom/android/phone/Worker;

    invoke-direct {v0}, Lcom/android/phone/Worker;-><init>()V

    sput-object v0, Lcom/android/phone/Worker;->INSTANCE:Lcom/android/phone/Worker;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "Worker_Thread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/Worker;->mLooper:Landroid/os/Looper;

    .line 21
    return-void
.end method

.method public static getWorkerInstance()Lcom/android/phone/Worker;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/phone/Worker;->INSTANCE:Lcom/android/phone/Worker;

    return-object v0
.end method


# virtual methods
.method public postJob(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/Worker;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/phone/Worker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    sget-object v0, Lcom/android/phone/Worker;->TAG:Ljava/lang/String;

    const-string v1, "mHandler == null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public prepair()V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/phone/Worker;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 29
    sget-object v0, Lcom/android/phone/Worker;->INSTANCE:Lcom/android/phone/Worker;

    invoke-virtual {v0}, Lcom/android/phone/Worker;->start()V

    .line 30
    invoke-virtual {p0}, Lcom/android/phone/Worker;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Worker;->mLooper:Landroid/os/Looper;

    .line 31
    new-instance v0, Lcom/android/phone/Worker$MyHandler;

    iget-object v1, p0, Lcom/android/phone/Worker;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Worker$MyHandler;-><init>(Lcom/android/phone/Worker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/phone/Worker;->mHandler:Landroid/os/Handler;

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    sget-object v0, Lcom/android/phone/Worker;->TAG:Ljava/lang/String;

    const-string v1, "donothing!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/Worker;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/phone/Worker;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 41
    :cond_0
    return-void
.end method
