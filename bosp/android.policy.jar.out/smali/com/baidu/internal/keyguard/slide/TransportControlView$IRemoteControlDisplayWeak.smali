.class Lcom/baidu/internal/keyguard/slide/TransportControlView$IRemoteControlDisplayWeak;
.super Landroid/media/IRemoteControlDisplay$Stub;
.source "TransportControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/TransportControlView;
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
    .line 195
    invoke-direct {p0}, Landroid/media/IRemoteControlDisplay$Stub;-><init>()V

    .line 196
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    .line 197
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

    .line 229
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 230
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 231
    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 232
    const/16 v1, 0x67

    invoke-virtual {v0, v1, p1, v2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 234
    :cond_0
    return-void
.end method

.method public setArtwork(ILandroid/graphics/Bitmap;)V
    .locals 3
    .parameter "generationId"
    .parameter "bitmap"

    .prologue
    .line 222
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 223
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 224
    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 226
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
    .line 238
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 239
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 240
    const/16 v2, 0x68

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 243
    :cond_0
    return-void

    .line 240
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMetadata(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "generationId"
    .parameter "metadata"

    .prologue
    .line 207
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 208
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 209
    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 211
    :cond_0
    return-void
.end method

.method public setPlaybackState(IIJ)V
    .locals 2
    .parameter "generationId"
    .parameter "state"
    .parameter "stateChangeTimeMs"

    .prologue
    .line 200
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 201
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 202
    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 204
    :cond_0
    return-void
.end method

.method public setTransportControlFlags(II)V
    .locals 2
    .parameter "generationId"
    .parameter "flags"

    .prologue
    .line 214
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 215
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 216
    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 219
    :cond_0
    return-void
.end method
