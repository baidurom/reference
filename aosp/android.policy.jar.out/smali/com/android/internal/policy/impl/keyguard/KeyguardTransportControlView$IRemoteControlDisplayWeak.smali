.class Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;
.super Landroid/media/IRemoteControlDisplay$Stub;
.source "KeyguardTransportControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IRemoteControlDisplayWeak"
.end annotation


# instance fields
.field private mLocalHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 144
    invoke-direct {p0}, Landroid/media/IRemoteControlDisplay$Stub;-><init>()V

    .line 145
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    .line 146
    return-void
.end method


# virtual methods
.method public setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "generationId"
    .parameter "metadata"
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 179
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 180
    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 181
    const/16 v1, 0x67

    invoke-virtual {v0, v1, p1, v2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 183
    :cond_0
    return-void
.end method

.method public setArtwork(ILandroid/graphics/Bitmap;)V
    .locals 3
    .parameter "generationId"
    .parameter "bitmap"

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 172
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 173
    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 175
    :cond_0
    return-void
.end method

.method public setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    .locals 3
    .parameter "clientGeneration"
    .parameter "mediaIntent"
    .parameter "clearing"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 188
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 189
    const/16 v2, 0x68

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 192
    :cond_0
    return-void

    .line 189
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMetadata(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "generationId"
    .parameter "metadata"

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 157
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 158
    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 160
    :cond_0
    return-void
.end method

.method public setPlaybackState(IIJ)V
    .locals 2
    .parameter "generationId"
    .parameter "state"
    .parameter "stateChangeTimeMs"

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 150
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 151
    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 153
    :cond_0
    return-void
.end method

.method public setTransportControlFlags(II)V
    .locals 2
    .parameter "generationId"
    .parameter "flags"

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 164
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 165
    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 168
    :cond_0
    return-void
.end method
