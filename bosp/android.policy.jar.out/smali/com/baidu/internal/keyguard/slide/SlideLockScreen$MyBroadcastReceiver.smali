.class Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SlideLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/SlideLockScreen;
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
    .line 527
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 528
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyBroadcastReceiver;->mHandler:Landroid/os/Handler;

    .line 529
    return-void
.end method

.method private getMissCallCount(Landroid/content/Context;)I
    .locals 10
    .parameter "context"

    .prologue
    .line 552
    const/4 v8, 0x0

    .line 553
    .local v8, missCallCount:I
    const/4 v6, 0x0

    .line 555
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    const-string v3, "type=? and new=?"

    .line 556
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

    .line 559
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

    .line 562
    if-eqz v6, :cond_0

    .line 563
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 568
    :cond_0
    if-eqz v6, :cond_1

    .line 569
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 572
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v0, "SlideLockScreen"

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

    .line 573
    return v8

    .line 565
    :catch_0
    move-exception v7

    .line 566
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SlideLockScreen"

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

    .line 568
    if-eqz v6, :cond_1

    .line 569
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 568
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 569
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private getMissMsgCount(Landroid/content/Context;)I
    .locals 10
    .parameter "context"

    .prologue
    .line 577
    const/4 v8, 0x0

    .line 578
    .local v8, missMsgCount:I
    const/4 v6, 0x0

    .line 580
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 582
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "read=0 AND type=1 AND thread_id IN (SELECT _id FROM threads)"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 583
    if-eqz v6, :cond_0

    .line 584
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 585
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 586
    const/4 v6, 0x0

    .line 588
    :cond_0
    const-string v0, "content://mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 590
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

    .line 593
    if-eqz v6, :cond_1

    .line 594
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/2addr v8, v0

    .line 595
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    const/4 v6, 0x0

    .line 601
    :cond_1
    if-eqz v6, :cond_2

    .line 602
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 605
    .end local v1           #uri:Landroid/net/Uri;
    :cond_2
    :goto_0
    const-string v0, "SlideLockScreen"

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

    .line 606
    return v8

    .line 598
    :catch_0
    move-exception v7

    .line 599
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SlideLockScreen"

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

    .line 601
    if-eqz v6, :cond_2

    .line 602
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 601
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 602
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 533
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, action:Ljava/lang/String;
    const-string v6, "SlideLockScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received broadcast "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 536
    const-string v6, "status"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 537
    .local v5, status:I
    const-string v6, "plugged"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 538
    .local v4, plugged:I
    const-string v6, "level"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 539
    .local v2, level:I
    const-string v6, "health"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 540
    .local v1, health:I
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyBroadcastReceiver;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x67

    new-instance v8, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$BatteryStatus;

    invoke-direct {v8, v5, v2, v4, v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$BatteryStatus;-><init>(IIII)V

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 541
    .local v3, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyBroadcastReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 549
    .end local v1           #health:I
    .end local v2           #level:I
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #plugged:I
    .end local v5           #status:I
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    const-string v6, "com.baidu.keyguard.internal.SMS_MISS_UPDATED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 543
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyBroadcastReceiver;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x65

    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyBroadcastReceiver;->getMissMsgCount(Landroid/content/Context;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 544
    .restart local v3       #msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyBroadcastReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 545
    .end local v3           #msg:Landroid/os/Message;
    :cond_2
    const-string v6, "com.baidu.keyguard.internal.CALL_MISS_UPDATED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 546
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyBroadcastReceiver;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x66

    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyBroadcastReceiver;->getMissCallCount(Landroid/content/Context;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 547
    .restart local v3       #msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyBroadcastReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
