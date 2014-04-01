.class Lcom/android/internal/policy/impl/PhoneWindowManager$IRemoteControlDisplayWeak;
.super Landroid/media/IRemoteControlDisplay$Stub;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
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
    .line 4798
    invoke-direct {p0}, Landroid/media/IRemoteControlDisplay$Stub;-><init>()V

    .line 4799
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    .line 4800
    return-void
.end method


# virtual methods
.method public setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "generationId"
    .parameter "metadata"
    .parameter "bitmap"

    .prologue
    .line 4815
    return-void
.end method

.method public setArtwork(ILandroid/graphics/Bitmap;)V
    .locals 0
    .parameter "generationId"
    .parameter "bitmap"

    .prologue
    .line 4812
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
    .line 4819
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 4820
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 4821
    const/16 v2, 0x3e9

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4824
    :cond_0
    return-void

    .line 4821
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMetadata(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "generationId"
    .parameter "metadata"

    .prologue
    .line 4806
    return-void
.end method

.method public setPlaybackState(IIJ)V
    .locals 0
    .parameter "generationId"
    .parameter "state"
    .parameter "stateChangeTimeMs"

    .prologue
    .line 4803
    return-void
.end method

.method public setTransportControlFlags(II)V
    .locals 0
    .parameter "generationId"
    .parameter "flags"

    .prologue
    .line 4809
    return-void
.end method
