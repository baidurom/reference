.class final Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;
.super Landroid/os/Handler;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayListenerDelegate"
.end annotation


# instance fields
.field public final mListener:Landroid/hardware/display/DisplayManager$DisplayListener;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    .locals 3
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 342
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 343
    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 344
    return-void

    .line 342
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public clearEvents()V
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 353
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 357
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 368
    :goto_0
    return-void

    .line 359
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayAdded(I)V

    goto :goto_0

    .line 362
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayChanged(I)V

    goto :goto_0

    .line 365
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayRemoved(I)V

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public sendDisplayEvent(II)V
    .locals 2
    .parameter "displayId"
    .parameter "event"

    .prologue
    .line 347
    const/4 v1, 0x0

    invoke-virtual {p0, p2, p1, v1}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 348
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 349
    return-void
.end method
