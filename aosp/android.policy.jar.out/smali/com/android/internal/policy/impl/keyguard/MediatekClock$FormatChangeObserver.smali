.class Lcom/android/internal/policy/impl/keyguard/MediatekClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "MediatekClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MediatekClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FormatChangeObserver"
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
    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 112
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock$FormatChangeObserver;->mClock:Ljava/lang/ref/WeakReference;

    .line 113
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock$FormatChangeObserver;->mContext:Landroid/content/Context;

    .line 114
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 117
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock$FormatChangeObserver;->mClock:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;

    .line 118
    .local v0, digitalClock:Lcom/android/internal/policy/impl/keyguard/MediatekClock;
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->setDateFormat()V

    .line 120
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->updateTime()V

    .line 128
    :goto_0
    return-void

    .line 123
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock$FormatChangeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v1

    goto :goto_0
.end method
