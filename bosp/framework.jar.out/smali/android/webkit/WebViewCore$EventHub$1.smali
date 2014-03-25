.class Landroid/webkit/WebViewCore$EventHub$1;
.super Landroid/os/Handler;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewCore$EventHub;->transferMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebViewCore$EventHub;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewCore$EventHub;)V
    .locals 0
    .parameter

    .prologue
    .line 1390
    iput-object p1, p0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 52
    .parameter "msg"

    .prologue
    .line 1394
    const-string/jumbo v4, "webcore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v7, 0x60

    if-lt v2, v7, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v7, 0x95

    if-le v2, v7, :cond_3

    :cond_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " arg1="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " arg2="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " obj="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1419
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v2

    if-nez v2, :cond_4

    .line 1421
    :cond_1
    const-string/jumbo v2, "webcore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rejecting message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " because we are destroyed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    :cond_2
    :goto_1
    return-void

    .line 1394
    :cond_3
    sget-object v2, Landroid/webkit/WebViewCore;->HandlerDebugString:[Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->what:I

    add-int/lit8 v7, v7, -0x60

    aget-object v2, v2, v7

    goto/16 :goto_0

    .line 1404
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mTid:I
    invoke-static {v4}, Landroid/webkit/WebViewCore$EventHub;->access$900(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v4

    #setter for: Landroid/webkit/WebViewCore$EventHub;->mSavedPriority:I
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore$EventHub;->access$802(Landroid/webkit/WebViewCore$EventHub;I)I

    .line 1405
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mTid:I
    invoke-static {v2}, Landroid/webkit/WebViewCore$EventHub;->access$900(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v2

    const/16 v4, 0xa

    invoke-static {v2, v4}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1407
    invoke-static {}, Landroid/webkit/WebViewCore;->pauseTimers()V

    .line 1408
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 1409
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativeCloseIdleConnections(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;I)V

    goto :goto_1

    .line 1414
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mTid:I
    invoke-static {v2}, Landroid/webkit/WebViewCore$EventHub;->access$900(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mSavedPriority:I
    invoke-static {v4}, Landroid/webkit/WebViewCore$EventHub;->access$800(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v4

    invoke-static {v2, v4}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1415
    invoke-static {}, Landroid/webkit/WebViewCore;->resumeTimers()V

    goto :goto_1

    .line 1426
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mDestroying:Z
    invoke-static {v2}, Landroid/webkit/WebViewCore$EventHub;->access$1200(Landroid/webkit/WebViewCore$EventHub;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v4, 0xc8

    if-eq v2, v4, :cond_5

    .line 1429
    const-string/jumbo v2, "webcore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rejecting message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " because we are being destroyed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1434
    :cond_5
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_1

    :pswitch_2
    goto/16 :goto_1

    .line 1458
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativeRevealSelection(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$1700(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1436
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->webkitDraw()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1442
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    monitor-enter v4

    .line 1443
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1400(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->shutdown()V

    .line 1446
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1400(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1447
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1400(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1448
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1449
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1500(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->destroy()V

    .line 1450
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v5, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2, v5}, Landroid/webkit/WebViewCore;->access$1502(Landroid/webkit/WebViewCore;Landroid/webkit/BrowserFrame;)Landroid/webkit/BrowserFrame;

    .line 1451
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettingsClassic;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1600(Landroid/webkit/WebViewCore;)Landroid/webkit/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettingsClassic;->onDestroyed()V

    .line 1452
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v5, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2, v5}, Landroid/webkit/WebViewCore;->access$302(Landroid/webkit/WebViewCore;I)I

    .line 1453
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v5, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2, v5}, Landroid/webkit/WebViewCore;->access$1102(Landroid/webkit/WebViewCore;Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewClassic;

    .line 1454
    monitor-exit v4

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1448
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1463
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_6

    .line 1464
    const/16 v50, 0x0

    .line 1468
    .local v50, xPercent:F
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    move/from16 v0, v50

    #calls: Landroid/webkit/WebViewCore;->nativeScrollFocusedTextInput(IFI)V
    invoke-static {v2, v4, v0, v5}, Landroid/webkit/WebViewCore;->access$1800(Landroid/webkit/WebViewCore;IFI)V

    goto/16 :goto_1

    .line 1466
    .end local v50           #xPercent:F
    :cond_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v50

    .restart local v50       #xPercent:F
    goto :goto_2

    .line 1473
    .end local v50           #xPercent:F
    :pswitch_7
    invoke-static {}, Landroid/webkit/CookieManagerClassic;->getInstance()Landroid/webkit/CookieManagerClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieManagerClassic;->waitForCookieOperationsToComplete()V

    .line 1474
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Landroid/webkit/WebViewCore$GetUrlData;

    .line 1475
    .local v41, param:Landroid/webkit/WebViewCore$GetUrlData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v41

    iget-object v4, v0, Landroid/webkit/WebViewCore$GetUrlData;->mUrl:Ljava/lang/String;

    move-object/from16 v0, v41

    iget-object v5, v0, Landroid/webkit/WebViewCore$GetUrlData;->mExtraHeaders:Ljava/util/Map;

    #calls: Landroid/webkit/WebViewCore;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    invoke-static {v2, v4, v5}, Landroid/webkit/WebViewCore;->access$1900(Landroid/webkit/WebViewCore;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 1480
    .end local v41           #param:Landroid/webkit/WebViewCore$GetUrlData;
    :pswitch_8
    invoke-static {}, Landroid/webkit/CookieManagerClassic;->getInstance()Landroid/webkit/CookieManagerClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieManagerClassic;->waitForCookieOperationsToComplete()V

    .line 1481
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Landroid/webkit/WebViewCore$PostUrlData;

    .line 1482
    .local v41, param:Landroid/webkit/WebViewCore$PostUrlData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1500(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, v41

    iget-object v4, v0, Landroid/webkit/WebViewCore$PostUrlData;->mUrl:Ljava/lang/String;

    move-object/from16 v0, v41

    iget-object v5, v0, Landroid/webkit/WebViewCore$PostUrlData;->mPostData:[B

    invoke-virtual {v2, v4, v5}, Landroid/webkit/BrowserFrame;->postUrl(Ljava/lang/String;[B)V

    goto/16 :goto_1

    .line 1486
    .end local v41           #param:Landroid/webkit/WebViewCore$PostUrlData;
    :pswitch_9
    invoke-static {}, Landroid/webkit/CookieManagerClassic;->getInstance()Landroid/webkit/CookieManagerClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieManagerClassic;->waitForCookieOperationsToComplete()V

    .line 1487
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/webkit/WebViewCore$BaseUrlData;

    .line 1488
    .local v31, loadParams:Landroid/webkit/WebViewCore$BaseUrlData;
    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mBaseUrl:Ljava/lang/String;

    .line 1489
    .local v3, baseUrl:Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 1490
    const/16 v2, 0x3a

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v28

    .line 1491
    .local v28, i:I
    if-lez v28, :cond_7

    .line 1499
    const/4 v2, 0x0

    move/from16 v0, v28

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v48

    .line 1500
    .local v48, scheme:Ljava/lang/String;
    const-string v2, "http"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "ftp"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "about"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "javascript"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1504
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v48

    #calls: Landroid/webkit/WebViewCore;->nativeRegisterURLSchemeAsLocal(ILjava/lang/String;)V
    invoke-static {v2, v4, v0}, Landroid/webkit/WebViewCore;->access$2000(Landroid/webkit/WebViewCore;ILjava/lang/String;)V

    .line 1509
    .end local v28           #i:I
    .end local v48           #scheme:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1500(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mData:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v6, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mEncoding:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mHistoryUrl:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/BrowserFrame;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativeContentInvalidateAll(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$2100(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1522
    .end local v3           #baseUrl:Ljava/lang/String;
    .end local v31           #loadParams:Landroid/webkit/WebViewCore$BaseUrlData;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1500(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->committed()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1500(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1524
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1500(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->didFirstLayout()V

    .line 1527
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->stopLoading()V

    goto/16 :goto_1

    .line 1531
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1500(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/webkit/BrowserFrame;->reload(Z)V

    goto/16 :goto_1

    .line 1535
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/KeyEvent;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    #calls: Landroid/webkit/WebViewCore;->key(Landroid/view/KeyEvent;IZ)V
    invoke-static {v4, v2, v5, v7}, Landroid/webkit/WebViewCore;->access$2200(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;IZ)V

    goto/16 :goto_1

    .line 1539
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/KeyEvent;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x0

    #calls: Landroid/webkit/WebViewCore;->key(Landroid/view/KeyEvent;IZ)V
    invoke-static {v4, v2, v5, v7}, Landroid/webkit/WebViewCore;->access$2200(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;IZ)V

    goto/16 :goto_1

    .line 1543
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->keyPress(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$2300(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1547
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/webkit/WebViewClassic$ViewSizeData;

    #calls: Landroid/webkit/WebViewCore;->viewSizeChanged(Landroid/webkit/WebViewClassic$ViewSizeData;)V
    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$2400(Landroid/webkit/WebViewCore;Landroid/webkit/WebViewClassic$ViewSizeData;)V

    goto/16 :goto_1

    .line 1553
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Landroid/graphics/Point;

    .line 1554
    .local v42, pt:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_9

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, v42

    iget v7, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v42

    iget v10, v0, Landroid/graphics/Point;->y:I

    #calls: Landroid/webkit/WebViewCore;->nativeSetScrollOffset(IZII)V
    invoke-static {v4, v5, v2, v7, v10}, Landroid/webkit/WebViewCore;->access$2500(Landroid/webkit/WebViewCore;IZII)V

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x0

    goto :goto_3

    .line 1559
    .end local v42           #pt:Landroid/graphics/Point;
    :pswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Landroid/graphics/Rect;

    .line 1560
    .local v43, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v5

    move-object/from16 v0, v43

    iget v6, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v43

    iget v7, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v43 .. v43}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual/range {v43 .. v43}, Landroid/graphics/Rect;->height()I

    move-result v9

    #calls: Landroid/webkit/WebViewCore;->nativeSetGlobalBounds(IIIII)V
    invoke-static/range {v4 .. v9}, Landroid/webkit/WebViewCore;->access$2600(Landroid/webkit/WebViewCore;IIIII)V

    goto/16 :goto_1

    .line 1567
    .end local v43           #r:Landroid/graphics/Rect;
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1500(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->committed()Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1500(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->loadType()I

    move-result v2

    if-nez v2, :cond_a

    .line 1570
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1500(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/webkit/BrowserFrame;->reload(Z)V

    goto/16 :goto_1

    .line 1572
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1500(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4}, Landroid/webkit/BrowserFrame;->goBackOrForward(I)V

    goto/16 :goto_1

    .line 1577
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->stopLoading()V

    .line 1578
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->restoreState(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$2700(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1583
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativePause(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$2800(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1587
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativeResume(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$2900(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1591
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v4, 0x0

    #calls: Landroid/webkit/WebViewCore;->clearCache(Z)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$3000(Landroid/webkit/WebViewCore;Z)V

    .line 1592
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativeFreeMemory(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$3100(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1596
    :pswitch_17
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v2, :cond_b

    .line 1597
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "No WebView has been created in this process!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1600
    :cond_b
    sget-object v4, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_c

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v4, v2}, Landroid/webkit/JWebCoreJavaBridge;->setNetworkOnLine(Z)V

    goto/16 :goto_1

    :cond_c
    const/4 v2, 0x0

    goto :goto_4

    .line 1605
    :pswitch_18
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v2, :cond_d

    .line 1606
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "No WebView has been created in this process!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1609
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/util/Map;

    .line 1610
    .local v35, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    const-string/jumbo v2, "type"

    move-object/from16 v0, v35

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v4, "subtype"

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v2, v4}, Landroid/webkit/JWebCoreJavaBridge;->setNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1615
    .end local v35           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_e

    const/4 v2, 0x1

    :goto_5
    #calls: Landroid/webkit/WebViewCore;->clearCache(Z)V
    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$3000(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_1

    :cond_e
    const/4 v2, 0x0

    goto :goto_5

    .line 1619
    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1400(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardListClassic;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$1500(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v4

    iget v4, v4, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-virtual {v2, v4}, Landroid/webkit/WebBackForwardListClassic;->close(I)V

    goto/16 :goto_1

    .line 1624
    :pswitch_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Landroid/webkit/WebViewCore$ReplaceTextData;

    .line 1625
    .local v45, rep:Landroid/webkit/WebViewCore$ReplaceTextData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, v45

    iget-object v8, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mReplace:Ljava/lang/String;

    move-object/from16 v0, v45

    iget v9, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewStart:I

    move-object/from16 v0, v45

    iget v10, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewEnd:I

    move-object/from16 v0, v45

    iget v11, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mTextGeneration:I

    #calls: Landroid/webkit/WebViewCore;->nativeReplaceTextfieldText(IIILjava/lang/String;III)V
    invoke-static/range {v4 .. v11}, Landroid/webkit/WebViewCore;->access$3200(Landroid/webkit/WebViewCore;IIILjava/lang/String;III)V

    goto/16 :goto_1

    .line 1631
    .end local v45           #rep:Landroid/webkit/WebViewCore$ReplaceTextData;
    :pswitch_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Landroid/webkit/WebViewCore$JSKeyData;

    .line 1632
    .local v30, jsData:Landroid/webkit/WebViewCore$JSKeyData;
    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/webkit/WebViewCore$JSKeyData;->mEvent:Landroid/view/KeyEvent;

    move-object/from16 v23, v0

    .line 1633
    .local v23, evt:Landroid/view/KeyEvent;
    invoke-virtual/range {v23 .. v23}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    .line 1634
    .local v8, keyCode:I
    invoke-virtual/range {v23 .. v23}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v9

    .line 1635
    .local v9, keyValue:I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 1636
    .local v6, generation:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v5

    move-object/from16 v0, v30

    iget-object v7, v0, Landroid/webkit/WebViewCore$JSKeyData;->mCurrentText:Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Landroid/view/KeyEvent;->isDown()Z

    move-result v10

    invoke-virtual/range {v23 .. v23}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v11

    invoke-virtual/range {v23 .. v23}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v12

    invoke-virtual/range {v23 .. v23}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v13

    #calls: Landroid/webkit/WebViewCore;->passToJs(IILjava/lang/String;IIZZZZ)V
    invoke-static/range {v4 .. v13}, Landroid/webkit/WebViewCore;->access$3300(Landroid/webkit/WebViewCore;IILjava/lang/String;IIZZZZ)V

    goto/16 :goto_1

    .line 1647
    .end local v6           #generation:I
    .end local v8           #keyCode:I
    .end local v9           #keyValue:I
    .end local v23           #evt:Landroid/view/KeyEvent;
    .end local v30           #jsData:Landroid/webkit/WebViewCore$JSKeyData;
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativeSaveDocumentState(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$3400(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1654
    :pswitch_1e
    invoke-static {}, Landroid/webkit/SslCertLookupTable;->getInstance()Landroid/webkit/SslCertLookupTable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/SslCertLookupTable;->clear()V

    .line 1655
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativeCloseIdleConnections(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1659
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_f

    const/4 v2, 0x1

    :goto_6
    #calls: Landroid/webkit/WebViewCore;->nativeSetFocusControllerActive(IZ)V
    invoke-static {v4, v5, v2}, Landroid/webkit/WebViewCore;->access$3500(Landroid/webkit/WebViewCore;IZ)V

    goto/16 :goto_1

    :cond_f
    const/4 v2, 0x0

    goto :goto_6

    .line 1663
    :pswitch_20
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Landroid/webkit/WebViewCore$JSInterfaceData;

    .line 1664
    .local v30, jsData:Landroid/webkit/WebViewCore$JSInterfaceData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1500(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, v30

    iget-object v4, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mObject:Ljava/lang/Object;

    move-object/from16 v0, v30

    iget-object v5, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    move-object/from16 v0, v30

    iget-boolean v7, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mRequireAnnotation:Z

    invoke-virtual {v2, v4, v5, v7}, Landroid/webkit/BrowserFrame;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1669
    .end local v30           #jsData:Landroid/webkit/WebViewCore$JSInterfaceData;
    :pswitch_21
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Landroid/webkit/WebViewCore$JSInterfaceData;

    .line 1670
    .restart local v30       #jsData:Landroid/webkit/WebViewCore$JSInterfaceData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1500(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, v30

    iget-object v4, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/webkit/BrowserFrame;->removeJavascriptInterface(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1675
    .end local v30           #jsData:Landroid/webkit/WebViewCore$JSInterfaceData;
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1500(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v4, v2}, Landroid/webkit/BrowserFrame;->externalRepresentation(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1680
    :pswitch_23
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1500(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v4, v2}, Landroid/webkit/BrowserFrame;->documentAsText(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1684
    :pswitch_24
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebViewCore;->nativeMoveMouse(III)V
    invoke-static {v2, v4, v5, v7}, Landroid/webkit/WebViewCore;->access$3600(Landroid/webkit/WebViewCore;III)V

    goto/16 :goto_1

    .line 1688
    :pswitch_25
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/4 v7, 0x1

    const/4 v10, 0x0

    #calls: Landroid/webkit/WebViewCore;->performHitTest(IIIZ)Landroid/webkit/WebViewCore$WebKitHitTest;
    invoke-static {v2, v4, v5, v7, v10}, Landroid/webkit/WebViewCore;->access$3700(Landroid/webkit/WebViewCore;IIIZ)Landroid/webkit/WebViewCore$WebKitHitTest;

    move-result-object v26

    .line 1689
    .local v26, hit:Landroid/webkit/WebViewCore$WebKitHitTest;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/Message;

    .line 1690
    .local v27, hrefMsg:Landroid/os/Message;
    invoke-virtual/range {v27 .. v27}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v21

    .line 1691
    .local v21, data:Landroid/os/Bundle;
    const-string/jumbo v2, "url"

    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/webkit/WebViewCore$WebKitHitTest;->mLinkUrl:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    const-string/jumbo v2, "title"

    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/webkit/WebViewCore$WebKitHitTest;->mAnchorText:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    const-string/jumbo v2, "src"

    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/webkit/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    invoke-virtual/range {v27 .. v27}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1699
    .end local v21           #data:Landroid/os/Bundle;
    .end local v26           #hit:Landroid/webkit/WebViewCore$WebKitHitTest;
    .end local v27           #hrefMsg:Landroid/os/Message;
    :pswitch_26
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/Message;

    .line 1700
    .local v29, imageResult:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1500(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->documentHasImages()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, v29

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1702
    invoke-virtual/range {v29 .. v29}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1700
    :cond_10
    const/4 v2, 0x0

    goto :goto_7

    .line 1706
    .end local v29           #imageResult:Landroid/os/Message;
    :pswitch_27
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/webkit/WebViewCore$TextSelectionData;

    .line 1708
    .local v22, deleteSelectionData:Landroid/webkit/WebViewCore$TextSelectionData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v22

    iget v5, v0, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    move-object/from16 v0, v22

    iget v7, v0, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeDeleteSelection(IIII)V
    invoke-static {v2, v4, v5, v7, v10}, Landroid/webkit/WebViewCore;->access$3800(Landroid/webkit/WebViewCore;IIII)V

    goto/16 :goto_1

    .line 1713
    .end local v22           #deleteSelectionData:Landroid/webkit/WebViewCore$TextSelectionData;
    :pswitch_28
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebViewCore;->nativeSetSelection(III)V
    invoke-static {v2, v4, v5, v7}, Landroid/webkit/WebViewCore;->access$3900(Landroid/webkit/WebViewCore;III)V

    goto/16 :goto_1

    .line 1717
    :pswitch_29
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v4, 0x1

    #setter for: Landroid/webkit/WebViewCore;->mTextSelectionChangeReason:I
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$4002(Landroid/webkit/WebViewCore;I)I

    .line 1719
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebViewCore;->nativeModifySelection(III)Ljava/lang/String;
    invoke-static {v2, v4, v5, v7}, Landroid/webkit/WebViewCore;->access$4100(Landroid/webkit/WebViewCore;III)Ljava/lang/String;

    move-result-object v38

    .line 1722
    .local v38, modifiedSelectionString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x82

    move-object/from16 v0, v38

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1725
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v4, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mTextSelectionChangeReason:I
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$4002(Landroid/webkit/WebViewCore;I)I

    goto/16 :goto_1

    .line 1730
    .end local v38           #modifiedSelectionString:Ljava/lang/String;
    :pswitch_2a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/util/SparseBooleanArray;

    .line 1732
    .local v17, choices:Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 1733
    .local v19, choicesSize:I
    move/from16 v0, v19

    new-array v0, v0, [Z

    move-object/from16 v18, v0

    .line 1734
    .local v18, choicesArray:[Z
    const/16 v16, 0x0

    .local v16, c:I
    :goto_8
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_11

    .line 1735
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    aput-boolean v2, v18, v16

    .line 1734
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 1737
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v18

    move/from16 v1, v19

    #calls: Landroid/webkit/WebViewCore;->nativeSendListBoxChoices(I[ZI)V
    invoke-static {v2, v4, v0, v1}, Landroid/webkit/WebViewCore;->access$4200(Landroid/webkit/WebViewCore;I[ZI)V

    goto/16 :goto_1

    .line 1742
    .end local v16           #c:I
    .end local v17           #choices:Landroid/util/SparseBooleanArray;
    .end local v18           #choicesArray:[Z
    .end local v19           #choicesSize:I
    :pswitch_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeSendListBoxChoice(II)V
    invoke-static {v2, v4, v5}, Landroid/webkit/WebViewCore;->access$4300(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_1

    .line 1746
    :pswitch_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeSetBackgroundColor(II)V
    invoke-static {v2, v4, v5}, Landroid/webkit/WebViewCore;->access$4400(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_1

    .line 1750
    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_12

    const/4 v2, 0x1

    :goto_9
    #calls: Landroid/webkit/WebViewCore;->nativeDumpDomTree(IZ)V
    invoke-static {v4, v5, v2}, Landroid/webkit/WebViewCore;->access$4500(Landroid/webkit/WebViewCore;IZ)V

    goto/16 :goto_1

    :cond_12
    const/4 v2, 0x0

    goto :goto_9

    .line 1754
    :pswitch_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_13

    const/4 v2, 0x1

    :goto_a
    #calls: Landroid/webkit/WebViewCore;->nativeDumpRenderTree(IZ)V
    invoke-static {v4, v5, v2}, Landroid/webkit/WebViewCore;->access$4600(Landroid/webkit/WebViewCore;IZ)V

    goto/16 :goto_1

    :cond_13
    const/4 v2, 0x0

    goto :goto_a

    .line 1759
    :pswitch_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v5, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v7

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_14

    const/4 v2, 0x1

    move v4, v2

    :goto_b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #calls: Landroid/webkit/WebViewCore;->nativeDumpMemoryUsage(IZLjava/lang/String;)V
    invoke-static {v5, v7, v4, v2}, Landroid/webkit/WebViewCore;->access$4700(Landroid/webkit/WebViewCore;IZLjava/lang/String;)V

    goto/16 :goto_1

    :cond_14
    const/4 v2, 0x0

    move v4, v2

    goto :goto_b

    .line 1764
    :pswitch_30
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #calls: Landroid/webkit/WebViewCore;->nativeSetJsFlags(ILjava/lang/String;)V
    invoke-static {v4, v5, v2}, Landroid/webkit/WebViewCore;->access$4800(Landroid/webkit/WebViewCore;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 1768
    :pswitch_31
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativeContentInvalidateAll(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$2100(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1772
    :pswitch_32
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;

    .line 1774
    .local v47, saveMessage:Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v47

    iget-object v4, v0, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;->mBasename:Ljava/lang/String;

    move-object/from16 v0, v47

    iget-boolean v5, v0, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;->mAutoname:Z

    #calls: Landroid/webkit/WebViewCore;->saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static {v2, v4, v5}, Landroid/webkit/WebViewCore;->access$4900(Landroid/webkit/WebViewCore;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v47

    iput-object v2, v0, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;->mResultFile:Ljava/lang/String;

    .line 1776
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x84

    move-object/from16 v0, v47

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1781
    .end local v47           #saveMessage:Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;
    :pswitch_33
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/webkit/WebViewCore$GeolocationPermissionsData;

    .line 1783
    .local v21, data:Landroid/webkit/WebViewCore$GeolocationPermissionsData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mOrigin:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-boolean v7, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mAllow:Z

    move-object/from16 v0, v21

    iget-boolean v10, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mRemember:Z

    #calls: Landroid/webkit/WebViewCore;->nativeGeolocationPermissionsProvide(ILjava/lang/String;ZZ)V
    invoke-static {v2, v4, v5, v7, v10}, Landroid/webkit/WebViewCore;->access$5000(Landroid/webkit/WebViewCore;ILjava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 1791
    .end local v21           #data:Landroid/webkit/WebViewCore$GeolocationPermissionsData;
    :pswitch_34
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->clearContent()V

    goto/16 :goto_1

    .line 1795
    :pswitch_35
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1799
    :pswitch_36
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    #calls: Landroid/webkit/WebViewCore;->nativeProvideVisitedHistory(I[Ljava/lang/String;)V
    invoke-static {v4, v5, v2}, Landroid/webkit/WebViewCore;->access$5100(Landroid/webkit/WebViewCore;I[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1803
    :pswitch_37
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeFullScreenPluginHidden(II)V
    invoke-static {v2, v4, v5}, Landroid/webkit/WebViewCore;->access$5200(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_1

    .line 1807
    :pswitch_38
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativePluginSurfaceReady(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$5300(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1811
    :pswitch_39
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativeNotifyAnimationStarted(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$5400(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1815
    :pswitch_3a
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v2, :cond_15

    .line 1816
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "No WebView has been created in this process!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1819
    :cond_15
    sget-object v4, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-virtual {v4, v2}, Landroid/webkit/JWebCoreJavaBridge;->addPackageNames(Ljava/util/Set;)V

    goto/16 :goto_1

    .line 1824
    :pswitch_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->setUseMockGeolocation()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$5500(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1828
    :pswitch_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->setUseMockDeviceOrientation()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$5600(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1832
    :pswitch_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeAutoFillForm(II)V
    invoke-static {v2, v4, v5}, Landroid/webkit/WebViewCore;->access$5700(Landroid/webkit/WebViewCore;II)V

    .line 1833
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x86

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1839
    :pswitch_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeSelectDataListOption(II)V
    invoke-static {v2, v4, v5}, Landroid/webkit/WebViewCore;->access$5800(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_1

    .line 1845
    :pswitch_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeSendColorPickerChoice(II)V
    invoke-static {v2, v4, v5}, Landroid/webkit/WebViewCore;->access$5900(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_1

    .line 1849
    :pswitch_40
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1851
    const-string/jumbo v2, "webcore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Executing JS : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1500(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/webkit/BrowserFrame;->stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 1858
    :pswitch_41
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v40, v0

    .line 1859
    .local v40, nativeLayer:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Landroid/graphics/Rect;

    .line 1860
    .local v44, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move/from16 v0, v40

    move-object/from16 v1, v44

    #calls: Landroid/webkit/WebViewCore;->nativeScrollLayer(IILandroid/graphics/Rect;)V
    invoke-static {v2, v4, v0, v1}, Landroid/webkit/WebViewCore;->access$6000(Landroid/webkit/WebViewCore;IILandroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1865
    .end local v40           #nativeLayer:I
    .end local v44           #rect:Landroid/graphics/Rect;
    :pswitch_42
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v25, v2

    check-cast v25, [I

    .line 1866
    .local v25, handles:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v10, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v11

    const/4 v2, 0x0

    aget v12, v25, v2

    const/4 v2, 0x1

    aget v13, v25, v2

    const/4 v2, 0x2

    aget v14, v25, v2

    const/4 v2, 0x3

    aget v15, v25, v2

    #calls: Landroid/webkit/WebViewCore;->nativeDeleteText(IIIII)V
    invoke-static/range {v10 .. v15}, Landroid/webkit/WebViewCore;->access$6100(Landroid/webkit/WebViewCore;IIIII)V

    goto/16 :goto_1

    .line 1871
    .end local v25           #handles:[I
    :pswitch_43
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v25, v2

    check-cast v25, [I

    .line 1872
    .restart local v25       #handles:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v10, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v11

    const/4 v2, 0x0

    aget v12, v25, v2

    const/4 v2, 0x1

    aget v13, v25, v2

    const/4 v2, 0x2

    aget v14, v25, v2

    const/4 v2, 0x3

    aget v15, v25, v2

    #calls: Landroid/webkit/WebViewCore;->nativeGetText(IIIII)Ljava/lang/String;
    invoke-static/range {v10 .. v15}, Landroid/webkit/WebViewCore;->access$6200(Landroid/webkit/WebViewCore;IIIII)Ljava/lang/String;

    move-result-object v20

    .line 1875
    .local v20, copiedText:Ljava/lang/String;
    if-eqz v20, :cond_2

    .line 1876
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x8d

    move-object/from16 v0, v20

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1883
    .end local v20           #copiedText:Ljava/lang/String;
    .end local v25           #handles:[I
    :pswitch_44
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #calls: Landroid/webkit/WebViewCore;->nativeInsertText(ILjava/lang/String;)V
    invoke-static {v4, v5, v2}, Landroid/webkit/WebViewCore;->access$6300(Landroid/webkit/WebViewCore;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 1887
    :pswitch_45
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_16

    .line 1888
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativeClearTextSelection(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$6400(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1890
    :cond_16
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 1891
    .local v24, handleId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    move/from16 v0, v24

    #calls: Landroid/webkit/WebViewCore;->nativeSelectText(IIII)V
    invoke-static {v2, v4, v0, v5, v7}, Landroid/webkit/WebViewCore;->access$6500(Landroid/webkit/WebViewCore;IIII)V

    goto/16 :goto_1

    .line 1898
    .end local v24           #handleId:I
    :pswitch_46
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v4, 0x2

    #setter for: Landroid/webkit/WebViewCore;->mTextSelectionChangeReason:I
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$4002(Landroid/webkit/WebViewCore;I)I

    .line 1900
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v49, v0

    .line 1901
    .local v49, x:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v51, v0

    .line 1902
    .local v51, y:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mLastSelectTextX:I
    invoke-static {v2}, Landroid/webkit/WebViewCore$EventHub;->access$6600(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v2

    move/from16 v0, v49

    if-ne v0, v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mLastSelectTextY:I
    invoke-static {v2}, Landroid/webkit/WebViewCore$EventHub;->access$6700(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v2

    move/from16 v0, v51

    if-eq v0, v2, :cond_2

    .line 1906
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move/from16 v0, v49

    #setter for: Landroid/webkit/WebViewCore$EventHub;->mLastSelectTextX:I
    invoke-static {v2, v0}, Landroid/webkit/WebViewCore$EventHub;->access$6602(Landroid/webkit/WebViewCore$EventHub;I)I

    .line 1907
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move/from16 v0, v51

    #setter for: Landroid/webkit/WebViewCore$EventHub;->mLastSelectTextY:I
    invoke-static {v2, v0}, Landroid/webkit/WebViewCore$EventHub;->access$6702(Landroid/webkit/WebViewCore$EventHub;I)I

    .line 1908
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x97

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v39

    .line 1910
    .local v39, msg2WebViewClassic:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move/from16 v0, v49

    move/from16 v1, v51

    #calls: Landroid/webkit/WebViewCore;->nativeSelectWordAt(III)Z
    invoke-static {v2, v4, v0, v1}, Landroid/webkit/WebViewCore;->access$6800(Landroid/webkit/WebViewCore;III)Z

    move-result v2

    if-nez v2, :cond_19

    .line 1911
    const/4 v2, 0x0

    move-object/from16 v0, v39

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1913
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mLastSuccSelectTextY:I
    invoke-static {v2}, Landroid/webkit/WebViewCore$EventHub;->access$6900(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mLastSuccSelectTextY:I
    invoke-static {v2}, Landroid/webkit/WebViewCore$EventHub;->access$6900(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v2

    sub-int v2, v51, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->SELECT_DY:I
    invoke-static {v4}, Landroid/webkit/WebViewCore$EventHub;->access$7000(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v4

    if-ge v2, v4, :cond_18

    .line 1914
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/16 v4, 0xd6

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mLastSuccSelectTextY:I
    invoke-static {v5}, Landroid/webkit/WebViewCore$EventHub;->access$6900(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v5

    move/from16 v0, v49

    invoke-virtual {v2, v4, v0, v5}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 1917
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mLastSuccSelectTextX:I
    invoke-static {v2}, Landroid/webkit/WebViewCore$EventHub;->access$7100(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v2

    sub-int v2, v49, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mLastSuccSelectTextY:I
    invoke-static {v4}, Landroid/webkit/WebViewCore$EventHub;->access$6900(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v4

    sub-int v4, v51, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->SELECT_DISTANCE:I
    invoke-static {v4}, Landroid/webkit/WebViewCore$EventHub;->access$7200(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v4

    if-le v2, v4, :cond_2

    .line 1918
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativeClearTextSelection(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$6400(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1924
    :cond_19
    const/4 v2, 0x1

    move-object/from16 v0, v39

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1925
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move/from16 v0, v49

    #setter for: Landroid/webkit/WebViewCore$EventHub;->mLastSuccSelectTextX:I
    invoke-static {v2, v0}, Landroid/webkit/WebViewCore$EventHub;->access$7102(Landroid/webkit/WebViewCore$EventHub;I)I

    .line 1926
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move/from16 v0, v51

    #setter for: Landroid/webkit/WebViewCore$EventHub;->mLastSuccSelectTextY:I
    invoke-static {v2, v0}, Landroid/webkit/WebViewCore$EventHub;->access$6902(Landroid/webkit/WebViewCore$EventHub;I)I

    .line 1929
    invoke-virtual/range {v39 .. v39}, Landroid/os/Message;->sendToTarget()V

    .line 1931
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v4, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mTextSelectionChangeReason:I
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$4002(Landroid/webkit/WebViewCore;I)I

    goto/16 :goto_1

    .line 1936
    .end local v39           #msg2WebViewClassic:Landroid/os/Message;
    .end local v49           #x:I
    .end local v51           #y:I
    :pswitch_47
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativeSelectAll(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$7300(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1939
    :pswitch_48
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Landroid/webkit/WebViewCore$FindAllRequest;

    .line 1940
    .local v46, request:Landroid/webkit/WebViewCore$FindAllRequest;
    if-eqz v46, :cond_1a

    .line 1941
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v46

    iget-object v5, v0, Landroid/webkit/WebViewCore$FindAllRequest;->mSearchText:Ljava/lang/String;

    #calls: Landroid/webkit/WebViewCore;->nativeFindAll(ILjava/lang/String;)I
    invoke-static {v2, v4, v5}, Landroid/webkit/WebViewCore;->access$7400(Landroid/webkit/WebViewCore;ILjava/lang/String;)I

    move-result v36

    .line 1942
    .local v36, matchCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    const/4 v5, 0x1

    #calls: Landroid/webkit/WebViewCore;->nativeFindNext(IZ)I
    invoke-static {v2, v4, v5}, Landroid/webkit/WebViewCore;->access$7500(Landroid/webkit/WebViewCore;IZ)I

    move-result v37

    .line 1943
    .local v37, matchIndex:I
    monitor-enter v46

    .line 1944
    :try_start_5
    move/from16 v0, v36

    move-object/from16 v1, v46

    iput v0, v1, Landroid/webkit/WebViewCore$FindAllRequest;->mMatchCount:I

    .line 1945
    move/from16 v0, v37

    move-object/from16 v1, v46

    iput v0, v1, Landroid/webkit/WebViewCore$FindAllRequest;->mMatchIndex:I

    .line 1946
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->notify()V

    .line 1947
    monitor-exit v46
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1951
    .end local v36           #matchCount:I
    .end local v37           #matchIndex:I
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x7e

    move-object/from16 v0, v46

    invoke-static {v2, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1947
    .restart local v36       #matchCount:I
    .restart local v37       #matchIndex:I
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v46
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 1949
    .end local v36           #matchCount:I
    .end local v37           #matchIndex:I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    const/4 v5, 0x0

    #calls: Landroid/webkit/WebViewCore;->nativeFindAll(ILjava/lang/String;)I
    invoke-static {v2, v4, v5}, Landroid/webkit/WebViewCore;->access$7400(Landroid/webkit/WebViewCore;ILjava/lang/String;)I

    goto :goto_c

    .line 1956
    .end local v46           #request:Landroid/webkit/WebViewCore$FindAllRequest;
    :pswitch_49
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Landroid/webkit/WebViewCore$FindAllRequest;

    .line 1957
    .restart local v46       #request:Landroid/webkit/WebViewCore$FindAllRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    :goto_d
    #calls: Landroid/webkit/WebViewCore;->nativeFindNext(IZ)I
    invoke-static {v4, v5, v2}, Landroid/webkit/WebViewCore;->access$7500(Landroid/webkit/WebViewCore;IZ)I

    move-result v37

    .line 1958
    .restart local v37       #matchIndex:I
    monitor-enter v46

    .line 1959
    :try_start_7
    move/from16 v0, v37

    move-object/from16 v1, v46

    iput v0, v1, Landroid/webkit/WebViewCore$FindAllRequest;->mMatchIndex:I

    .line 1960
    monitor-exit v46
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1961
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x7e

    move-object/from16 v0, v46

    invoke-static {v2, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1957
    .end local v37           #matchIndex:I
    :cond_1b
    const/4 v2, 0x0

    goto :goto_d

    .line 1960
    .restart local v37       #matchIndex:I
    :catchall_3
    move-exception v2

    :try_start_8
    monitor-exit v46
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v2

    .line 1966
    .end local v37           #matchIndex:I
    .end local v46           #request:Landroid/webkit/WebViewCore$FindAllRequest;
    :pswitch_4a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeSetInitialFocus(II)V
    invoke-static {v2, v4, v5}, Landroid/webkit/WebViewCore;->access$7600(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_1

    .line 1969
    :pswitch_4b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Landroid/webkit/WebViewCore$SaveViewStateRequest;

    .line 1970
    .local v46, request:Landroid/webkit/WebViewCore$SaveViewStateRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v46

    iget-object v4, v0, Landroid/webkit/WebViewCore$SaveViewStateRequest;->mStream:Ljava/io/OutputStream;

    move-object/from16 v0, v46

    iget-object v5, v0, Landroid/webkit/WebViewCore$SaveViewStateRequest;->mCallback:Landroid/webkit/ValueCallback;

    #calls: Landroid/webkit/WebViewCore;->saveViewState(Ljava/io/OutputStream;Landroid/webkit/ValueCallback;)V
    invoke-static {v2, v4, v5}, Landroid/webkit/WebViewCore;->access$7700(Landroid/webkit/WebViewCore;Ljava/io/OutputStream;Landroid/webkit/ValueCallback;)V

    goto/16 :goto_1

    .line 1975
    .end local v46           #request:Landroid/webkit/WebViewCore$SaveViewStateRequest;
    :pswitch_4c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeSetPageVisibility(II)V
    invoke-static {v2, v4, v5}, Landroid/webkit/WebViewCore;->access$7800(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_1

    .line 1981
    :pswitch_4d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebViewCore;->nativeUpdateScreenSize(III)V
    invoke-static {v2, v4, v5, v7}, Landroid/webkit/WebViewCore;->access$7900(Landroid/webkit/WebViewCore;III)V

    goto/16 :goto_1

    .line 1987
    :pswitch_4e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/webkit/WebViewCore$NotificationPermissionsData;

    .line 1989
    .local v34, localNotificationPermissionsData:Landroid/webkit/WebViewCore$NotificationPermissionsData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/webkit/WebViewCore$NotificationPermissionsData;->mOrigin:Ljava/lang/String;

    move-object/from16 v0, v34

    iget-boolean v5, v0, Landroid/webkit/WebViewCore$NotificationPermissionsData;->mAllow:Z

    #calls: Landroid/webkit/WebViewCore;->nativeNotificationPermissionsProvide(Ljava/lang/String;Z)V
    invoke-static {v2, v4, v5}, Landroid/webkit/WebViewCore;->access$8000(Landroid/webkit/WebViewCore;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1993
    .end local v34           #localNotificationPermissionsData:Landroid/webkit/WebViewCore$NotificationPermissionsData;
    :pswitch_4f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/webkit/WebViewCore$InvokeEventparams;

    .line 1994
    .local v32, localInvokeEventparams:Landroid/webkit/WebViewCore$InvokeEventparams;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v32

    iget-object v4, v0, Landroid/webkit/WebViewCore$InvokeEventparams;->mEventName:Ljava/lang/String;

    move-object/from16 v0, v32

    iget v5, v0, Landroid/webkit/WebViewCore$InvokeEventparams;->mPointer:I

    #calls: Landroid/webkit/WebViewCore;->nativeNotificationResponseback(Ljava/lang/String;I)V
    invoke-static {v2, v4, v5}, Landroid/webkit/WebViewCore;->access$8100(Landroid/webkit/WebViewCore;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1998
    .end local v32           #localInvokeEventparams:Landroid/webkit/WebViewCore$InvokeEventparams;
    :pswitch_50
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/webkit/WebViewCore$InvokeNotifyID;

    .line 1999
    .local v33, localInvokeNotifyID:Landroid/webkit/WebViewCore$InvokeNotifyID;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v33

    iget v4, v0, Landroid/webkit/WebViewCore$InvokeNotifyID;->mnotificationID:I

    move-object/from16 v0, v33

    iget v5, v0, Landroid/webkit/WebViewCore$InvokeNotifyID;->mcounter:I

    #calls: Landroid/webkit/WebViewCore;->nativeNotificationIDback(II)V
    invoke-static {v2, v4, v5}, Landroid/webkit/WebViewCore;->access$8200(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_1

    .line 1402
    nop

    :pswitch_data_0
    .packed-switch 0x6d
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1434
    :pswitch_data_1
    .packed-switch 0x60
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_12
        :pswitch_10
        :pswitch_13
        :pswitch_2
        :pswitch_2
        :pswitch_19
        :pswitch_1a
        :pswitch_28
        :pswitch_1b
        :pswitch_1c
        :pswitch_11
        :pswitch_2
        :pswitch_2
        :pswitch_17
        :pswitch_26
        :pswitch_2
        :pswitch_27
        :pswitch_2a
        :pswitch_2b
        :pswitch_35
        :pswitch_2c
        :pswitch_2
        :pswitch_1d
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_8
        :pswitch_2
        :pswitch_34
        :pswitch_24
        :pswitch_2
        :pswitch_25
        :pswitch_20
        :pswitch_9
        :pswitch_2
        :pswitch_2
        :pswitch_1f
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_2
        :pswitch_32
        :pswitch_2
        :pswitch_21
        :pswitch_1e
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_22
        :pswitch_23
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_2
        :pswitch_30
        :pswitch_31
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_33
        :pswitch_36
        :pswitch_37
        :pswitch_18
        :pswitch_3a
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_29
        :pswitch_3c
        :pswitch_3d
        :pswitch_2
        :pswitch_40
        :pswitch_38
        :pswitch_39
        :pswitch_2
        :pswitch_41
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_43
        :pswitch_42
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_48
        :pswitch_49
        :pswitch_e
        :pswitch_4a
        :pswitch_4b
        :pswitch_3b
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4c
        :pswitch_4d
        :pswitch_50
        :pswitch_4e
        :pswitch_4f
        :pswitch_3e
        :pswitch_3f
    .end packed-switch
.end method
