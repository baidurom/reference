.class Landroid/hardware/Camera$EventHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field final synthetic this$0:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "looper"

    .prologue
    .line 729
    iput-object p1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    .line 730
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 731
    iput-object p2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    .line 732
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const v12, 0xffff

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 737
    const-string v7, "Camera"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 889
    const-string v7, "Camera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown message type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 741
    :sswitch_0
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static {v7}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 742
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static {v7}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v7

    invoke-interface {v7}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    goto :goto_0

    .line 747
    :sswitch_1
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v7}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 748
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v7}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v8

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, [B

    check-cast v7, [B

    iget-object v9, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v8, v7, v9}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto :goto_0

    .line 753
    :sswitch_2
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v7}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 754
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v7}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v8

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, [B

    check-cast v7, [B

    iget-object v9, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v8, v7, v9}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto :goto_0

    .line 759
    :sswitch_3
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static {v7}, Landroid/hardware/Camera;->access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 760
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static {v7}, Landroid/hardware/Camera;->access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v1

    .line 761
    .local v1, cb:Landroid/hardware/Camera$PreviewCallback;
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mOneShot:Z
    invoke-static {v7}, Landroid/hardware/Camera;->access$400(Landroid/hardware/Camera;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 765
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    const/4 v8, 0x0

    #setter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static {v7, v8}, Landroid/hardware/Camera;->access$302(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;

    .line 772
    :cond_1
    :goto_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, [B

    check-cast v7, [B

    iget-object v8, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v1, v7, v8}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    goto :goto_0

    .line 766
    :cond_2
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mWithBuffer:Z
    invoke-static {v7}, Landroid/hardware/Camera;->access$500(Landroid/hardware/Camera;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 770
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #calls: Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V
    invoke-static {v7, v9, v8}, Landroid/hardware/Camera;->access$600(Landroid/hardware/Camera;ZZ)V

    goto :goto_1

    .line 777
    .end local v1           #cb:Landroid/hardware/Camera$PreviewCallback;
    :sswitch_4
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v7}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 778
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v7}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v8

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, [B

    check-cast v7, [B

    iget-object v9, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v8, v7, v9}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 783
    :sswitch_5
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;
    invoke-static {v7}, Landroid/hardware/Camera;->access$800(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 784
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;
    invoke-static {v7}, Landroid/hardware/Camera;->access$800(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;

    move-result-object v10

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_3

    move v7, v8

    :goto_2
    iget-object v8, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v10, v7, v8}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_3
    move v7, v9

    goto :goto_2

    .line 789
    :sswitch_6
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static {v7}, Landroid/hardware/Camera;->access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 790
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static {v7}, Landroid/hardware/Camera;->access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v7

    iget v10, p1, Landroid/os/Message;->arg1:I

    iget v11, p1, Landroid/os/Message;->arg2:I

    if-eqz v11, :cond_4

    :goto_3
    iget-object v8, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v7, v10, v9, v8}, Landroid/hardware/Camera$OnZoomChangeListener;->onZoomChange(IZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_4
    move v9, v8

    goto :goto_3

    .line 795
    :sswitch_7
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;
    invoke-static {v7}, Landroid/hardware/Camera;->access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 796
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;
    invoke-static {v7}, Landroid/hardware/Camera;->access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v8

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, [Landroid/hardware/Camera$Face;

    check-cast v7, [Landroid/hardware/Camera$Face;

    iget-object v9, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v8, v7, v9}, Landroid/hardware/Camera$FaceDetectionListener;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 801
    :sswitch_8
    const-string v7, "Camera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static {v7}, Landroid/hardware/Camera;->access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 803
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static {v7}, Landroid/hardware/Camera;->access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    iget-object v9, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v7, v8, v9}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 809
    :sswitch_9
    iget v7, p1, Landroid/os/Message;->arg1:I

    packed-switch v7, :pswitch_data_0

    .line 830
    const-string v7, "Camera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown MTK-extended notify message type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 812
    :pswitch_0
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mSmileCallback:Landroid/hardware/Camera$SmileCallback;
    invoke-static {v7}, Landroid/hardware/Camera;->access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$SmileCallback;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 813
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mSmileCallback:Landroid/hardware/Camera$SmileCallback;
    invoke-static {v7}, Landroid/hardware/Camera;->access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$SmileCallback;

    move-result-object v7

    invoke-interface {v7}, Landroid/hardware/Camera$SmileCallback;->onSmile()V

    goto/16 :goto_0

    .line 818
    :pswitch_1
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mASDCallback:Landroid/hardware/Camera$ASDCallback;
    invoke-static {v7}, Landroid/hardware/Camera;->access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$ASDCallback;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 819
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mASDCallback:Landroid/hardware/Camera$ASDCallback;
    invoke-static {v7}, Landroid/hardware/Camera;->access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$ASDCallback;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v7, v8}, Landroid/hardware/Camera$ASDCallback;->onDetecte(I)V

    goto/16 :goto_0

    .line 824
    :pswitch_2
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mMAVCallback:Landroid/hardware/Camera$MAVCallback;
    invoke-static {v7}, Landroid/hardware/Camera;->access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$MAVCallback;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 825
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mMAVCallback:Landroid/hardware/Camera$MAVCallback;
    invoke-static {v7}, Landroid/hardware/Camera;->access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$MAVCallback;

    move-result-object v7

    invoke-interface {v7}, Landroid/hardware/Camera$MAVCallback;->onFrame()V

    goto/16 :goto_0

    .line 836
    :sswitch_a
    iget v7, p1, Landroid/os/Message;->arg1:I

    packed-switch v7, :pswitch_data_1

    .line 883
    const-string v7, "Camera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown MTK-extended data message type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 840
    :pswitch_3
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, [B

    move-object v0, v7

    check-cast v0, [B

    .line 842
    .local v0, byteArray:[B
    const-string v7, "Camera"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MTK_CAMERA_MSG_EXT_DATA_AUTORAMA: byteArray.length = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    .line 845
    .local v3, intBuf:Ljava/nio/IntBuffer;
    invoke-virtual {v3, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    if-nez v7, :cond_5

    .line 846
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mAUTORAMAMVCallback:Landroid/hardware/Camera$AUTORAMAMVCallback;
    invoke-static {v7}, Landroid/hardware/Camera;->access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMAMVCallback;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 847
    invoke-virtual {v3, v9}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    .line 848
    .local v4, x:I
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    .line 849
    .local v6, y:I
    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    .line 850
    .local v2, dir:I
    and-int v7, v12, v4

    shl-int/lit8 v7, v7, 0x10

    and-int v8, v12, v6

    add-int v5, v7, v8

    .line 851
    .local v5, xy:I
    const-string v7, "Camera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "call mAUTORAMAMVCallback: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;
    invoke-static {v9}, Landroid/hardware/Camera;->access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMACallback;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " dir:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " x:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " y:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " xy:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mAUTORAMAMVCallback:Landroid/hardware/Camera$AUTORAMAMVCallback;
    invoke-static {v7}, Landroid/hardware/Camera;->access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMAMVCallback;

    move-result-object v7

    invoke-interface {v7, v5, v2}, Landroid/hardware/Camera$AUTORAMAMVCallback;->onFrame(II)V

    goto/16 :goto_0

    .line 856
    .end local v2           #dir:I
    .end local v4           #x:I
    .end local v5           #xy:I
    .end local v6           #y:I
    :cond_5
    const-string v7, "Camera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "call mAUTORAMACallback: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;
    invoke-static {v9}, Landroid/hardware/Camera;->access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMACallback;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;
    invoke-static {v7}, Landroid/hardware/Camera;->access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMACallback;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 858
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;
    invoke-static {v7}, Landroid/hardware/Camera;->access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMACallback;

    move-result-object v7

    invoke-interface {v7}, Landroid/hardware/Camera$AUTORAMACallback;->onCapture()V

    goto/16 :goto_0

    .line 865
    .end local v0           #byteArray:[B
    .end local v3           #intBuf:Ljava/nio/IntBuffer;
    :pswitch_4
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, [B

    move-object v0, v7

    check-cast v0, [B

    .line 867
    .restart local v0       #byteArray:[B
    const-string v7, "Camera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MTK_CAMERA_MSG_EXT_DATA_AF: byteArray.length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mAFDataCallback:Landroid/hardware/Camera$AFDataCallback;
    invoke-static {v7}, Landroid/hardware/Camera;->access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$AFDataCallback;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 877
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mAFDataCallback:Landroid/hardware/Camera$AFDataCallback;
    invoke-static {v7}, Landroid/hardware/Camera;->access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$AFDataCallback;

    move-result-object v1

    .line 878
    .local v1, cb:Landroid/hardware/Camera$AFDataCallback;
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, [B

    check-cast v7, [B

    iget-object v8, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v1, v7, v8}, Landroid/hardware/Camera$AFDataCallback;->onAFData([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 739
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_a
        0x1 -> :sswitch_8
        0x2 -> :sswitch_0
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_1
        0x100 -> :sswitch_2
        0x400 -> :sswitch_7
        0x40000000 -> :sswitch_9
    .end sparse-switch

    .line 809
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 836
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
