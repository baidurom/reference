.class Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/DigitalClock;
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
            "Lcom/android/internal/widget/DigitalClock;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/DigitalClock;)V
    .locals 1
    .parameter "clock"

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver;->mClock:Ljava/lang/ref/WeakReference;

    .line 78
    invoke-virtual {p1}, Lcom/android/internal/widget/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 86
    .local v2, timezoneChanged:Z
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 88
    .local v1, localeChanged:Z
    iget-object v3, p0, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver;->mClock:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/DigitalClock;

    .line 89
    .local v0, clock:Lcom/android/internal/widget/DigitalClock;
    if-eqz v0, :cond_0

    .line 90
    #getter for: Lcom/android/internal/widget/DigitalClock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/widget/DigitalClock;->access$300(Lcom/android/internal/widget/DigitalClock;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver$1;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver$1;-><init>(Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver;ZLcom/android/internal/widget/DigitalClock;Z)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    :goto_0
    return-void

    .line 106
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v3

    goto :goto_0
.end method
