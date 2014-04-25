.class Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyHandler;
.super Landroid/os/Handler;
.source "WaterLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/water/WaterLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMissCallCount:Landroid/widget/TextView;

.field private mMissContainer:Landroid/widget/LinearLayout;

.field private mMissMessageCount:Landroid/widget/TextView;

.field private mTargetView:Lcom/baidu/internal/keyguard/water/TargetView;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/baidu/internal/keyguard/water/TargetView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .parameter "context"
    .parameter "targetView"
    .parameter "missContainer"
    .parameter "missMessageCount"
    .parameter "missCallCount"

    .prologue
    .line 368
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 369
    iput-object p2, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyHandler;->mTargetView:Lcom/baidu/internal/keyguard/water/TargetView;

    .line 370
    iput-object p1, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyHandler;->mContext:Landroid/content/Context;

    .line 371
    iput-object p3, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyHandler;->mMissContainer:Landroid/widget/LinearLayout;

    .line 372
    iput-object p4, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyHandler;->mMissMessageCount:Landroid/widget/TextView;

    .line 373
    iput-object p5, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyHandler;->mMissCallCount:Landroid/widget/TextView;

    .line 374
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 378
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 409
    const-string v2, "WaterLockScreen"

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

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 380
    :pswitch_0
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyHandler;->mTargetView:Lcom/baidu/internal/keyguard/water/TargetView;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/baidu/internal/keyguard/water/WaterLockScreen$BatteryStatus;

    iget v4, v2, Lcom/baidu/internal/keyguard/water/WaterLockScreen$BatteryStatus;->level:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/baidu/internal/keyguard/water/WaterLockScreen$BatteryStatus;

    iget v2, v2, Lcom/baidu/internal/keyguard/water/WaterLockScreen$BatteryStatus;->plugged:I

    invoke-virtual {v3, v4, v2}, Lcom/baidu/internal/keyguard/water/TargetView;->onPowerUpdate(II)V

    goto :goto_0

    .line 383
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 384
    .local v1, smsCount:I
    if-lez v1, :cond_1

    .line 385
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyHandler;->mMissContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 386
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyHandler;->mMissMessageCount:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyHandler;->mMissMessageCount:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    :goto_1
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyHandler;->mMissMessageCount:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyHandler;->mMissCallCount:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyHandler;->mMissContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 389
    :cond_1
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyHandler;->mMissMessageCount:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 396
    .end local v1           #smsCount:I
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 397
    .local v0, callCount:I
    if-lez v0, :cond_2

    .line 398
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyHandler;->mMissContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 399
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyHandler;->mMissCallCount:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyHandler;->mMissCallCount:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    :goto_2
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyHandler;->mMissMessageCount:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyHandler;->mMissCallCount:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyHandler;->mMissContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 402
    :cond_2
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyHandler;->mMissCallCount:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 378
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
