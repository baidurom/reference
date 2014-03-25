.class Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$a;
.super Landroid/database/ContentObserver;
.source "ViaCdmaDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)V
    .locals 1
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$a;->a:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    .line 136
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->a(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 137
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$a;->a:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$a;->a:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    const v2, 0x42013

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 142
    return-void
.end method
