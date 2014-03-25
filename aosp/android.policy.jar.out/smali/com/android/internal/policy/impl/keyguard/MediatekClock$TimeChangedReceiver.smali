.class Lcom/android/internal/policy/impl/keyguard/MediatekClock$TimeChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediatekClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MediatekClock;
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
            "Lcom/android/internal/policy/impl/keyguard/MediatekClock;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/MediatekClock;)V
    .locals 1
    .parameter "clock"

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock$TimeChangedReceiver;->mClock:Ljava/lang/ref/WeakReference;

    .line 51
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock$TimeChangedReceiver;->mContext:Landroid/content/Context;

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
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock$TimeChangedReceiver;->mClock:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;

    .line 60
    .local v0, clock:Lcom/android/internal/policy/impl/keyguard/MediatekClock;
    if-eqz v0, :cond_0

    .line 61
    #getter for: Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->access$000(Lcom/android/internal/policy/impl/keyguard/MediatekClock;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/MediatekClock$TimeChangedReceiver$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekClock$TimeChangedReceiver$1;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekClock$TimeChangedReceiver;ZLcom/android/internal/policy/impl/keyguard/MediatekClock;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    :goto_0
    return-void

    .line 71
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock$TimeChangedReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v2

    goto :goto_0
.end method
