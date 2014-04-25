.class Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SpaceLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/space/SpaceLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 418
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 419
    iput-object p1, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyBroadcastReceiver;->mHandler:Landroid/os/Handler;

    .line 420
    return-void
.end method

.method private getMissCallCount(Landroid/content/Context;)I
    .locals 10
    .parameter "context"

    .prologue
    .line 444
    const/4 v8, 0x0

    .line 445
    .local v8, missCallCount:I
    const/4 v6, 0x0

    .line 447
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    const-string v3, "type=? and new=?"

    .line 448
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 451
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "number"

    aput-object v9, v2, v5

    const/4 v5, 0x1

    const-string v9, "type"

    aput-object v9, v2, v5

    const/4 v5, 0x2

    const-string v9, "new"

    aput-object v9, v2, v5

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 454
    if-eqz v6, :cond_0

    .line 455
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 460
    :cond_0
    if-eqz v6, :cond_1

    .line 461
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 464
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v0, "SpaceLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "miss call count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    return v8

    .line 457
    :catch_0
    move-exception v7

    .line 458
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SpaceLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMissedCallCount():Error happens in -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    if-eqz v6, :cond_1

    .line 461
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 460
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 461
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private getMissMsgCount(Landroid/content/Context;)I
    .locals 10
    .parameter "context"

    .prologue
    .line 469
    const/4 v8, 0x0

    .line 470
    .local v8, missMsgCount:I
    const/4 v6, 0x0

    .line 472
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 474
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "read=0 AND type=1 AND thread_id IN (SELECT _id FROM threads)"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 475
    if-eqz v6, :cond_0

    .line 476
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 477
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 478
    const/4 v6, 0x0

    .line 480
    :cond_0
    const-string v0, "content://mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 482
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "read=? AND m_type=? AND thread_id IN (SELECT _id FROM threads)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "0"

    aput-object v9, v4, v5

    const/4 v5, 0x1

    const-string v9, "132"

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 485
    if-eqz v6, :cond_1

    .line 486
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/2addr v8, v0

    .line 487
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    const/4 v6, 0x0

    .line 493
    :cond_1
    if-eqz v6, :cond_2

    .line 494
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 497
    .end local v1           #uri:Landroid/net/Uri;
    :cond_2
    :goto_0
    const-string v0, "SpaceLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "miss msg count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return v8

    .line 490
    :catch_0
    move-exception v7

    .line 491
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SpaceLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMissSmsCount():Error happens in -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 493
    if-eqz v6, :cond_2

    .line 494
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 493
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 494
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 424
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 426
    const-string v7, "status"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 427
    .local v6, status:I
    const-string v7, "plugged"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 428
    .local v5, plugged:I
    const-string v7, "level"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 429
    .local v3, level:I
    const-string v7, "health"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 430
    .local v2, health:I
    iget-object v7, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyBroadcastReceiver;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x67

    new-instance v9, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$BatteryStatus;

    invoke-direct {v9, v6, v3, v5, v2}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$BatteryStatus;-><init>(IIII)V

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 431
    .local v4, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyBroadcastReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 441
    .end local v2           #health:I
    .end local v3           #level:I
    .end local v4           #msg:Landroid/os/Message;
    .end local v5           #plugged:I
    .end local v6           #status:I
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    const-string v7, "com.baidu.keyguard.internal.SMS_MISS_UPDATED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 433
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyBroadcastReceiver;->getMissMsgCount(Landroid/content/Context;)I

    move-result v1

    .line 434
    .local v1, count:I
    iget-object v7, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyBroadcastReceiver;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 435
    .restart local v4       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyBroadcastReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 436
    .end local v1           #count:I
    .end local v4           #msg:Landroid/os/Message;
    :cond_2
    const-string v7, "com.baidu.keyguard.internal.CALL_MISS_UPDATED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 437
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyBroadcastReceiver;->getMissCallCount(Landroid/content/Context;)I

    move-result v1

    .line 438
    .restart local v1       #count:I
    iget-object v7, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyBroadcastReceiver;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 439
    .restart local v4       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyBroadcastReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
