.class Landroid/view/inputmethod/InputMethodManager$H;
.super Landroid/os/Handler;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 345
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 346
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 347
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v10, 0x0

    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 351
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 353
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 355
    .local v1, args:Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v9, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Ljava/io/FileDescriptor;

    iget-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Ljava/io/PrintWriter;

    iget-object v8, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/String;

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v9, v6, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_1
    iget-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    monitor-enter v7

    .line 361
    :try_start_1
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v6, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 362
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 357
    :catch_0
    move-exception v2

    .line 358
    .local v2, e:Ljava/lang/RuntimeException;
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 362
    .end local v2           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 367
    .end local v1           #args:Lcom/android/internal/os/SomeArgs;
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/InputBindResult;

    .line 368
    .local v3, res:Lcom/android/internal/view/InputBindResult;
    sget-boolean v7, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 369
    const-string v7, "InputMethodManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage: MSG_BIND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/internal/view/InputBindResult;->sequence:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_1
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v7

    .line 372
    :try_start_3
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v8, v8, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-ltz v8, :cond_2

    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v8, v8, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    iget v9, v3, Lcom/android/internal/view/InputBindResult;->sequence:I

    if-eq v8, v9, :cond_3

    .line 373
    :cond_2
    const-string v6, "InputMethodManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring onBind: cur seq="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v9, v9, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", given seq="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/internal/view/InputBindResult;->sequence:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    monitor-exit v7

    goto/16 :goto_0

    .line 381
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 378
    :cond_3
    :try_start_4
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, v3, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    iput-object v9, v8, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    .line 379
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, v3, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    iput-object v9, v8, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    .line 380
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v9, v3, Lcom/android/internal/view/InputBindResult;->sequence:I

    iput v9, v8, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 381
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 382
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v7, v10, v6, v6, v6}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z

    goto/16 :goto_0

    .line 386
    .end local v3           #res:Lcom/android/internal/view/InputBindResult;
    :pswitch_2
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 387
    .local v4, sequence:I
    sget-boolean v7, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 388
    const-string v7, "InputMethodManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage: MSG_UNBIND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_4
    const/4 v5, 0x0

    .line 391
    .local v5, startInput:Z
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v7

    .line 392
    :try_start_5
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v8, v8, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-ne v8, v4, :cond_6

    .line 403
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodManager;->clearBindingLocked()V

    .line 407
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v8, v8, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v8, :cond_5

    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v8, v8, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->isFocused()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 408
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 410
    :cond_5
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v8, v8, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    if-eqz v8, :cond_6

    .line 411
    const/4 v5, 0x1

    .line 414
    :cond_6
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 415
    if-eqz v5, :cond_0

    .line 416
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v7, v10, v6, v6, v6}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z

    goto/16 :goto_0

    .line 414
    :catchall_2
    move-exception v6

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v6

    .line 421
    .end local v4           #sequence:I
    .end local v5           #startInput:Z
    :pswitch_3
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_9

    .line 422
    .local v0, active:Z
    :goto_2
    sget-boolean v6, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v6, :cond_7

    .line 423
    const-string v6, "InputMethodManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage: MSG_SET_ACTIVE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v8, v8, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_7
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v6, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v7

    .line 426
    :try_start_7
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v0, v6, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    .line 427
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v8, 0x0

    iput-boolean v8, v6, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    .line 428
    if-nez v0, :cond_8

    .line 432
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v8, 0x1

    iput-boolean v8, v6, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 436
    :try_start_8
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v6, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v6}, Lcom/android/internal/view/IInputContext;->finishComposingText()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    .line 441
    :goto_3
    :try_start_9
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v6, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v6, :cond_8

    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v6, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->hasWindowFocus()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 449
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v8, v8, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    const/4 v9, 0x0

    #calls: Landroid/view/inputmethod/InputMethodManager;->checkFocusNoStartInput(ZZ)Z
    invoke-static {v6, v8, v9}, Landroid/view/inputmethod/InputMethodManager;->access$000(Landroid/view/inputmethod/InputMethodManager;ZZ)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 450
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z

    .line 454
    :cond_8
    monitor-exit v7

    goto/16 :goto_0

    :catchall_3
    move-exception v6

    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v6

    .end local v0           #active:Z
    :cond_9
    move v0, v6

    .line 421
    goto :goto_2

    .line 465
    :pswitch_4
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Landroid/view/inputmethod/InputMethodManager;->timeoutEvent(I)V

    goto/16 :goto_0

    .line 437
    .restart local v0       #active:Z
    :catch_1
    move-exception v6

    goto :goto_3

    .line 351
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
