.class Lcom/baidu/internal/keyguard/slide/DigitalClock$TimeChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeChangedReceiver"
.end annotation


# instance fields
.field private mClock:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/baidu/internal/keyguard/slide/DigitalClock;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/baidu/internal/keyguard/slide/DigitalClock;)V
    .locals 1
    .parameter "clock"

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock$TimeChangedReceiver;->mClock:Ljava/lang/ref/WeakReference;

    .line 51
    invoke-virtual {p1}, Lcom/baidu/internal/keyguard/slide/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock$TimeChangedReceiver;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 59
    .local v1, timezoneChanged:Z
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock$TimeChangedReceiver;->mClock:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/slide/DigitalClock;

    .line 60
    .local v0, clock:Lcom/baidu/internal/keyguard/slide/DigitalClock;
    if-eqz v0, :cond_0

    .line 61
    #getter for: Lcom/baidu/internal/keyguard/slide/DigitalClock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/DigitalClock;->access$100(Lcom/baidu/internal/keyguard/slide/DigitalClock;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/baidu/internal/keyguard/slide/DigitalClock$TimeChangedReceiver$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/baidu/internal/keyguard/slide/DigitalClock$TimeChangedReceiver$1;-><init>(Lcom/baidu/internal/keyguard/slide/DigitalClock$TimeChangedReceiver;ZLcom/baidu/internal/keyguard/slide/DigitalClock;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    :goto_0
    return-void

    .line 71
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock$TimeChangedReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v2

    goto :goto_0
.end method
