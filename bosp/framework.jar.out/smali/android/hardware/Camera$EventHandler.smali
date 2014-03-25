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
    .line 847
    iput-object p1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    .line 848
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 849
    iput-object p2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    .line 850
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .parameter "msg"

    .prologue
    .line 856
    const-string v20, "Camera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "handleMessage: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    sparse-switch v20, :sswitch_data_0

    .line 1125
    const-string v20, "Camera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unknown message type "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :cond_0
    :goto_0
    return-void

    .line 860
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    goto :goto_0

    .line 866
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    check-cast v20, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto :goto_0

    .line 872
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    check-cast v20, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto :goto_0

    .line 878
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v14

    .line 879
    .local v14, pCb:Landroid/hardware/Camera$PreviewCallback;
    if-eqz v14, :cond_0

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mOneShot:Z
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$400(Landroid/hardware/Camera;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static/range {v20 .. v21}, Landroid/hardware/Camera;->access$302(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;

    .line 891
    :cond_1
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    check-cast v20, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 885
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mWithBuffer:Z
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$500(Landroid/hardware/Camera;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    #calls: Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V
    invoke-static/range {v20 .. v22}, Landroid/hardware/Camera;->access$600(Landroid/hardware/Camera;ZZ)V

    goto :goto_1

    .line 896
    .end local v14           #pCb:Landroid/hardware/Camera$PreviewCallback;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    check-cast v20, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 902
    :sswitch_5
    const/4 v6, 0x0

    .line 903
    .local v6, cb:Landroid/hardware/Camera$AutoFocusCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$800(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v21

    monitor-enter v21

    .line 904
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;

    move-result-object v6

    .line 905
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 906
    if-eqz v6, :cond_0

    .line 907
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    if-nez v20, :cond_3

    const/4 v15, 0x0

    .line 908
    .local v15, success:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v6, v15, v0}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 905
    .end local v15           #success:Z
    :catchall_0
    move-exception v20

    :try_start_1
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v20

    .line 907
    :cond_3
    const/4 v15, 0x1

    goto :goto_2

    .line 913
    .end local v6           #cb:Landroid/hardware/Camera$AutoFocusCallback;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    if-eqz v20, :cond_4

    const/16 v20, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v20

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/Camera$OnZoomChangeListener;->onZoomChange(IZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_4
    const/16 v20, 0x0

    goto :goto_3

    .line 919
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Landroid/hardware/Camera$Face;

    check-cast v20, [Landroid/hardware/Camera$Face;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$FaceDetectionListener;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 925
    :sswitch_8
    const-string v20, "Camera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    invoke-interface/range {v20 .. v22}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 932
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    if-nez v20, :cond_5

    const/16 v20, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$AutoFocusMoveCallback;->onAutoFocusMoving(ZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_5
    const/16 v20, 0x1

    goto :goto_4

    .line 938
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    sparse-switch v20, :sswitch_data_1

    .line 975
    :cond_6
    :goto_5
    const-string v20, "Camera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unknown MTK-extended notify message type "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 941
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mSmileCallback:Landroid/hardware/Camera$SmileCallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$SmileCallback;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mSmileCallback:Landroid/hardware/Camera$SmileCallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$SmileCallback;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/hardware/Camera$SmileCallback;->onSmile()V

    goto/16 :goto_0

    .line 947
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mASDCallback:Landroid/hardware/Camera$ASDCallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$ASDCallback;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mASDCallback:Landroid/hardware/Camera$ASDCallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$ASDCallback;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Landroid/hardware/Camera$ASDCallback;->onDetecte(I)V

    goto/16 :goto_0

    .line 953
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mMAVCallback:Landroid/hardware/Camera$MAVCallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$MAVCallback;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mMAVCallback:Landroid/hardware/Camera$MAVCallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$MAVCallback;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/hardware/Camera$MAVCallback;->onFrame()V

    goto/16 :goto_0

    .line 959
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mCSDoneCallback:Landroid/hardware/Camera$ContinuousShotDone;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$ContinuousShotDone;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mCSDoneCallback:Landroid/hardware/Camera$ContinuousShotDone;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$ContinuousShotDone;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Landroid/hardware/Camera$ContinuousShotDone;->onConinuousShotDone(I)V

    goto/16 :goto_0

    .line 964
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mPreviewDoneCallback:Landroid/hardware/Camera$ZSDPreviewDone;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$1800(Landroid/hardware/Camera;)Landroid/hardware/Camera$ZSDPreviewDone;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mPreviewDoneCallback:Landroid/hardware/Camera$ZSDPreviewDone;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$1800(Landroid/hardware/Camera;)Landroid/hardware/Camera$ZSDPreviewDone;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/hardware/Camera$ZSDPreviewDone;->onPreviewDone()V

    goto/16 :goto_0

    .line 970
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mPreviewRawDumpCallback:Landroid/hardware/Camera$PreviewRawDumpCallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$1900(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewRawDumpCallback;

    move-result-object v20

    if-eqz v20, :cond_6

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mPreviewRawDumpCallback:Landroid/hardware/Camera$PreviewRawDumpCallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$1900(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewRawDumpCallback;

    move-result-object v20

    const/16 v21, 0x12

    invoke-interface/range {v20 .. v21}, Landroid/hardware/Camera$PreviewRawDumpCallback;->onNotify(I)V

    goto/16 :goto_5

    .line 981
    :sswitch_11
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 1119
    :pswitch_0
    const-string v20, "Camera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unknown MTK-extended data message type "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 985
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    move-object/from16 v5, v20

    check-cast v5, [B

    .line 987
    .local v5, byteArray:[B
    const-string v20, "Camera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "MTK_CAMERA_MSG_EXT_DATA_AUTORAMA: byteArray.length = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    array-length v0, v5

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v20

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v10

    .line 990
    .local v10, intBuf:Ljava/nio/IntBuffer;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v20

    if-nez v20, :cond_7

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mAUTORAMAMVCallback:Landroid/hardware/Camera$AUTORAMAMVCallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$2000(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMAMVCallback;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 992
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v17

    .line 993
    .local v17, x:I
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v19

    .line 994
    .local v19, y:I
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v8

    .line 995
    .local v8, dir:I
    const v20, 0xffff

    and-int v20, v20, v17

    shl-int/lit8 v20, v20, 0x10

    const v21, 0xffff

    and-int v21, v21, v19

    add-int v18, v20, v21

    .line 996
    .local v18, xy:I
    const-string v20, "Camera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "call mAUTORAMAMVCallback: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMACallback;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " dir:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " x:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " y:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " xy:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mAUTORAMAMVCallback:Landroid/hardware/Camera$AUTORAMAMVCallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$2000(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMAMVCallback;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1, v8}, Landroid/hardware/Camera$AUTORAMAMVCallback;->onFrame(II)V

    goto/16 :goto_0

    .line 1001
    .end local v8           #dir:I
    .end local v17           #x:I
    .end local v18           #xy:I
    .end local v19           #y:I
    :cond_7
    const-string v20, "Camera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "call mAUTORAMACallback: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMACallback;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMACallback;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMACallback;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/hardware/Camera$AUTORAMACallback;->onCapture()V

    goto/16 :goto_0

    .line 1010
    .end local v5           #byteArray:[B
    .end local v10           #intBuf:Ljava/nio/IntBuffer;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    move-object/from16 v5, v20

    check-cast v5, [B

    .line 1011
    .restart local v5       #byteArray:[B
    if-eqz v5, :cond_0

    .line 1014
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v20

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v10

    .line 1016
    .restart local v10       #intBuf:Ljava/nio/IntBuffer;
    array-length v0, v5

    move/from16 v20, v0

    add-int/lit8 v7, v20, -0x10

    .line 1017
    .local v7, dataLength:I
    array-length v0, v5

    move/from16 v20, v0

    add-int/lit8 v11, v20, -0x4

    .line 1018
    .local v11, intermeidaDataLength:I
    new-array v13, v7, [B

    .line 1019
    .local v13, motionTrackdata:[B
    const-string v20, "Camera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Camera framework intBuf.get(0) ="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",byteArray =  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",dataLength= "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v20

    packed-switch v20, :pswitch_data_1

    goto/16 :goto_0

    .line 1026
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mAUTORAMAMVCallback:Landroid/hardware/Camera$AUTORAMAMVCallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$2000(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMAMVCallback;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 1027
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v17

    .line 1028
    .restart local v17       #x:I
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v19

    .line 1029
    .restart local v19       #y:I
    const/4 v8, 0x0

    .line 1030
    .restart local v8       #dir:I
    const-string v20, "Camera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "onFrame,x = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",y = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mAUTORAMAMVCallback:Landroid/hardware/Camera$AUTORAMAMVCallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$2000(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMAMVCallback;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-interface {v0, v1, v2, v8}, Landroid/hardware/Camera$AUTORAMAMVCallback;->onFrame(III)V

    goto/16 :goto_0

    .line 1037
    .end local v8           #dir:I
    .end local v17           #x:I
    .end local v19           #y:I
    :pswitch_4
    const/16 v20, 0x10

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v5, v0, v13, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMACallback;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 1039
    const-string v20, "Camera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "onCapture,length of data = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMACallback;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Landroid/hardware/Camera$AUTORAMACallback;->onCapture([B)V

    goto/16 :goto_0

    .line 1050
    :pswitch_5
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v9

    .line 1051
    .local v9, imageIndex:I
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v16

    .line 1052
    .local v16, totalIndex:I
    const/16 v20, 0x10

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v5, v0, v13, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMACallback;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 1054
    const-string v20, "Camera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "onBlended,imageIndex = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " / = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMACallback;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v13, v9, v1}, Landroid/hardware/Camera$AUTORAMACallback;->onBlended([BII)V

    goto/16 :goto_0

    .line 1062
    .end local v9           #imageIndex:I
    .end local v16           #totalIndex:I
    :pswitch_6
    new-array v12, v11, [B

    .line 1063
    .local v12, motionTrackIntermeidaData:[B
    const/16 v20, 0x4

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v5, v0, v12, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMACallback;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 1065
    const-string v20, "Camera"

    const-string/jumbo v21, "onIntermediate"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMACallback;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Landroid/hardware/Camera$AUTORAMACallback;->onIntermediate([B)V

    goto/16 :goto_0

    .line 1075
    .end local v5           #byteArray:[B
    .end local v7           #dataLength:I
    .end local v10           #intBuf:Ljava/nio/IntBuffer;
    .end local v11           #intermeidaDataLength:I
    .end local v12           #motionTrackIntermeidaData:[B
    .end local v13           #motionTrackdata:[B
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    move-object/from16 v5, v20

    check-cast v5, [B

    .line 1077
    .restart local v5       #byteArray:[B
    const-string v20, "Camera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "MTK_CAMERA_MSG_EXT_DATA_AF: byteArray.length = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    array-length v0, v5

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mAFDataCallback:Landroid/hardware/Camera$AFDataCallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$2200(Landroid/hardware/Camera;)Landroid/hardware/Camera$AFDataCallback;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mAFDataCallback:Landroid/hardware/Camera$AFDataCallback;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$2200(Landroid/hardware/Camera;)Landroid/hardware/Camera$AFDataCallback;

    move-result-object v4

    .line 1088
    .local v4, afDatacb:Landroid/hardware/Camera$AFDataCallback;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    check-cast v20, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v4, v0, v1}, Landroid/hardware/Camera$AFDataCallback;->onAFData([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1093
    .end local v4           #afDatacb:Landroid/hardware/Camera$AFDataCallback;
    .end local v5           #byteArray:[B
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    move-object/from16 v5, v20

    check-cast v5, [B

    .line 1095
    .restart local v5       #byteArray:[B
    const-string v20, "Camera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "MTK_CAMERA_MSG_EXT_DATA_OT: byteArray.length = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    array-length v0, v5

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v20

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v10

    .line 1101
    .restart local v10       #intBuf:Ljava/nio/IntBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mObjectListener:Landroid/hardware/Camera$ObjectTrackingListener;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$2300(Landroid/hardware/Camera;)Landroid/hardware/Camera$ObjectTrackingListener;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 1102
    const-string v20, "Camera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "OT callback0:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$2400(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$2400(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v20

    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$2400(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v20

    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$2400(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v20

    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mObjectFace:Landroid/hardware/Camera$Face;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$2500(Landroid/hardware/Camera;)Landroid/hardware/Camera$Face;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v21, v0

    #getter for: Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Landroid/hardware/Camera;->access$2400(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mObjectFace:Landroid/hardware/Camera$Face;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$2500(Landroid/hardware/Camera;)Landroid/hardware/Camera$Face;

    move-result-object v20

    const/16 v21, 0x5

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/hardware/Camera$Face;->score:I

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mObjectListener:Landroid/hardware/Camera$ObjectTrackingListener;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$2300(Landroid/hardware/Camera;)Landroid/hardware/Camera$ObjectTrackingListener;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v21, v0

    #getter for: Landroid/hardware/Camera;->mObjectFace:Landroid/hardware/Camera$Face;
    invoke-static/range {v21 .. v21}, Landroid/hardware/Camera;->access$2500(Landroid/hardware/Camera;)Landroid/hardware/Camera$Face;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    invoke-interface/range {v20 .. v22}, Landroid/hardware/Camera$ObjectTrackingListener;->onObjectTracking(Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1113
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/Camera;->mObjectListener:Landroid/hardware/Camera$ObjectTrackingListener;
    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->access$2300(Landroid/hardware/Camera;)Landroid/hardware/Camera$ObjectTrackingListener;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    invoke-interface/range {v20 .. v22}, Landroid/hardware/Camera$ObjectTrackingListener;->onObjectTracking(Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 858
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_11
        0x1 -> :sswitch_8
        0x2 -> :sswitch_0
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_1
        0x100 -> :sswitch_2
        0x400 -> :sswitch_7
        0x800 -> :sswitch_9
        0x40000000 -> :sswitch_a
    .end sparse-switch

    .line 938
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_c
        0x3 -> :sswitch_d
        0x6 -> :sswitch_e
        0x7 -> :sswitch_f
        0x12 -> :sswitch_10
    .end sparse-switch

    .line 981
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_2
    .end packed-switch

    .line 1020
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
