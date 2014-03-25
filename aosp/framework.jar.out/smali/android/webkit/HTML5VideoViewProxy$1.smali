.class Landroid/webkit/HTML5VideoViewProxy$1;
.super Landroid/os/Handler;
.source "HTML5VideoViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/HTML5VideoViewProxy;->createWebCoreHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5VideoViewProxy;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 737
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 740
    const-string v5, "HTML5VideoViewProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createWebCoreHandler::handleMessage msg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 772
    :goto_0
    return-void

    .line 743
    :sswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    .line 744
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "dur"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 745
    .local v0, duration:Ljava/lang/Integer;
    const-string/jumbo v5, "width"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 746
    .local v4, width:Ljava/lang/Integer;
    const-string v5, "height"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 747
    .local v1, height:Ljava/lang/Integer;
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v9, v9, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeOnPrepared(IIII)V
    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/HTML5VideoViewProxy;->access$700(Landroid/webkit/HTML5VideoViewProxy;IIII)V

    goto :goto_0

    .line 752
    .end local v0           #duration:Ljava/lang/Integer;
    .end local v1           #height:Ljava/lang/Integer;
    .end local v2           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4           #width:Ljava/lang/Integer;
    :sswitch_1
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    const/4 v6, 0x0

    #setter for: Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I
    invoke-static {v5, v6}, Landroid/webkit/HTML5VideoViewProxy;->access$802(Landroid/webkit/HTML5VideoViewProxy;I)I

    .line 753
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget-object v6, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v6, v6, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeOnEnded(I)V
    invoke-static {v5, v6}, Landroid/webkit/HTML5VideoViewProxy;->access$900(Landroid/webkit/HTML5VideoViewProxy;I)V

    goto :goto_0

    .line 756
    :sswitch_2
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget-object v6, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v6, v6, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeOnPaused(I)V
    invoke-static {v5, v6}, Landroid/webkit/HTML5VideoViewProxy;->access$1000(Landroid/webkit/HTML5VideoViewProxy;I)V

    goto :goto_0

    .line 759
    :sswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    .line 760
    .local v3, poster:Landroid/graphics/Bitmap;
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget-object v6, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v6, v6, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeOnPosterFetched(Landroid/graphics/Bitmap;I)V
    invoke-static {v5, v3, v6}, Landroid/webkit/HTML5VideoViewProxy;->access$1100(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 763
    .end local v3           #poster:Landroid/graphics/Bitmap;
    :sswitch_4
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v7, v7, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeOnTimeupdate(II)V
    invoke-static {v5, v6, v7}, Landroid/webkit/HTML5VideoViewProxy;->access$1200(Landroid/webkit/HTML5VideoViewProxy;II)V

    goto :goto_0

    .line 766
    :sswitch_5
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v7, v7, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeOnStopFullscreen(II)V
    invoke-static {v5, v6, v7}, Landroid/webkit/HTML5VideoViewProxy;->access$1300(Landroid/webkit/HTML5VideoViewProxy;II)V

    goto :goto_0

    .line 769
    :sswitch_6
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget-object v6, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v6, v6, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeOnRestoreState(I)V
    invoke-static {v5, v6}, Landroid/webkit/HTML5VideoViewProxy;->access$1400(Landroid/webkit/HTML5VideoViewProxy;I)V

    goto :goto_0

    .line 741
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0xca -> :sswitch_3
        0xcb -> :sswitch_2
        0xcc -> :sswitch_5
        0xcd -> :sswitch_6
        0x12c -> :sswitch_4
    .end sparse-switch
.end method
