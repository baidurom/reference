.class Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyHandler;
.super Landroid/os/Handler;
.source "SlideLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/SlideLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/baidu/internal/keyguard/slide/TargetView;)V
    .locals 0
    .parameter "context"
    .parameter "targetView"

    .prologue
    .line 487
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 488
    iput-object p2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyHandler;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    .line 489
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyHandler;->mContext:Landroid/content/Context;

    .line 490
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 494
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 540
    const-string v2, "SlideLockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :goto_0
    return-void

    .line 496
    :pswitch_0
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyHandler;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$BatteryStatus;

    iget v4, v2, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$BatteryStatus;->level:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$BatteryStatus;

    iget v2, v2, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$BatteryStatus;->plugged:I

    invoke-virtual {v3, v4, v2}, Lcom/baidu/internal/keyguard/slide/TargetView;->onPowerUpdate(II)V

    goto :goto_0

    .line 499
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$302(I)I

    .line 500
    invoke-static {}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$300()I

    move-result v2

    if-lez v2, :cond_1

    .line 501
    invoke-static {}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$400()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 502
    invoke-static {}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$1400()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$300()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    invoke-static {}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$1400()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 510
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyHandler;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    invoke-static {}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$300()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/internal/keyguard/slide/TargetView;->onSmsMissUpdated(I)V

    goto :goto_0

    .line 505
    :cond_1
    invoke-static {}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$1400()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 506
    invoke-static {}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$200()I

    move-result v2

    if-gtz v2, :cond_0

    .line 507
    invoke-static {}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$400()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 513
    :pswitch_2
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyHandler;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 514
    .local v1, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 515
    .local v0, state:I
    packed-switch v0, :pswitch_data_1

    .line 526
    :goto_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$202(I)I

    .line 527
    invoke-static {}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$200()I

    move-result v2

    if-lez v2, :cond_3

    .line 528
    invoke-static {}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$400()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 529
    invoke-static {}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$1500()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$200()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    invoke-static {}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$1500()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 537
    :cond_2
    :goto_3
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyHandler;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/baidu/internal/keyguard/slide/TargetView;->onCallMissUpdated(I)V

    goto/16 :goto_0

    .line 517
    :pswitch_3
    const-string v2, "SlideLockScreen"

    const-string v3, "[Broadcast]\u7b49\u5f85\u63a5\u7535\u8bdd"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 520
    :pswitch_4
    const-string v2, "SlideLockScreen"

    const-string v3, "[Broadcast]\u7535\u8bdd\u6302\u65ad"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 523
    :pswitch_5
    const-string v2, "SlideLockScreen"

    const-string v3, "[Broadcast]\u901a\u8bdd\u4e2d"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 532
    :cond_3
    invoke-static {}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$1500()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 533
    invoke-static {}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$300()I

    move-result v2

    if-gtz v2, :cond_2

    .line 534
    invoke-static {}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$400()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 494
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 515
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
