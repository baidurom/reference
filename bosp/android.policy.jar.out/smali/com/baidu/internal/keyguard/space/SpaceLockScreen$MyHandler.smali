.class Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyHandler;
.super Landroid/os/Handler;
.source "SpaceLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/space/SpaceLockScreen;
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

.field private mTargetView:Lcom/baidu/internal/keyguard/space/TargetView;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/baidu/internal/keyguard/space/TargetView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .parameter "context"
    .parameter "targetView"
    .parameter "missContainer"
    .parameter "missMessageCount"
    .parameter "missCallCount"

    .prologue
    .line 341
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 342
    iput-object p2, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyHandler;->mTargetView:Lcom/baidu/internal/keyguard/space/TargetView;

    .line 343
    iput-object p1, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyHandler;->mContext:Landroid/content/Context;

    .line 344
    iput-object p3, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyHandler;->mMissContainer:Landroid/widget/LinearLayout;

    .line 345
    iput-object p4, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyHandler;->mMissMessageCount:Landroid/widget/TextView;

    .line 346
    iput-object p5, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyHandler;->mMissCallCount:Landroid/widget/TextView;

    .line 347
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 351
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 382
    const-string v2, "SpaceLockScreen"

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

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 353
    :pswitch_0
    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyHandler;->mTargetView:Lcom/baidu/internal/keyguard/space/TargetView;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$BatteryStatus;

    iget v4, v2, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$BatteryStatus;->level:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$BatteryStatus;

    iget v2, v2, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$BatteryStatus;->plugged:I

    invoke-virtual {v3, v4, v2}, Lcom/baidu/internal/keyguard/space/TargetView;->onPowerUpdate(II)V

    goto :goto_0

    .line 356
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 357
    .local v1, smsCount:I
    if-lez v1, :cond_1

    .line 358
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyHandler;->mMissContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 359
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyHandler;->mMissMessageCount:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyHandler;->mMissMessageCount:Landroid/widget/TextView;

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

    .line 364
    :goto_1
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyHandler;->mMissMessageCount:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyHandler;->mMissCallCount:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyHandler;->mMissContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 362
    :cond_1
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyHandler;->mMissMessageCount:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 369
    .end local v1           #smsCount:I
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 370
    .local v0, callCount:I
    if-lez v0, :cond_2

    .line 371
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyHandler;->mMissContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 372
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyHandler;->mMissCallCount:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyHandler;->mMissCallCount:Landroid/widget/TextView;

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

    .line 377
    :goto_2
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyHandler;->mMissMessageCount:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyHandler;->mMissCallCount:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyHandler;->mMissContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 375
    :cond_2
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyHandler;->mMissCallCount:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 351
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
