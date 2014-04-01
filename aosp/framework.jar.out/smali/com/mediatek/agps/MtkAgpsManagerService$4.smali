.class Lcom/mediatek/agps/MtkAgpsManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "MtkAgpsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/agps/MtkAgpsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/agps/MtkAgpsManagerService;


# direct methods
.method constructor <init>(Lcom/mediatek/agps/MtkAgpsManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 563
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 566
    .local v9, action:Ljava/lang/String;
    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 567
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v2, "enabled"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIsGPSStart:Z
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$202(Lcom/mediatek/agps/MtkAgpsManagerService;Z)Z

    .line 568
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIsGPSStart:Z
    invoke-static {v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;)Z

    move-result v2

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->GpsState(Z)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$300(Lcom/mediatek/agps/MtkAgpsManagerService;Z)V

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 570
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v2, "ACTION_BOOT_COMPLETED"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/4 v2, 0x1

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIsBootCompleted:Z
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$402(Lcom/mediatek/agps/MtkAgpsManagerService;Z)Z

    .line 572
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-virtual {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->enableNilr()I

    goto :goto_0

    .line 573
    :cond_2
    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 574
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v2, "ACTION_BOOT_IPO"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 575
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/4 v2, 0x1

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIsBootCompleted:Z
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$402(Lcom/mediatek/agps/MtkAgpsManagerService;Z)Z

    .line 576
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-virtual {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->enableNilr()I

    goto :goto_0

    .line 577
    :cond_3
    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 578
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v2, "ACTION_SHUTDOWN_IPO"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-virtual {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->disableNilr()I

    goto :goto_0

    .line 580
    :cond_4
    const-string v1, "com.mediatek.agps.toast"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 581
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v2, "agpsd has been re-start"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$500(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0

    .line 582
    :cond_5
    const-string v1, "com.mediatek.agps.NOTIFY_ACTION"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.mediatek.agps.VERIFY_ACTION"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.mediatek.agps.ERROR_ACTION"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 585
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    move-object/from16 v0, p2

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->handleNiDialog(Landroid/content/Intent;)V
    invoke-static {v1, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$600(Lcom/mediatek/agps/MtkAgpsManagerService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 586
    :cond_7
    const-string v1, "android.location.agps.EMERGENCY_CALL"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 588
    .local v11, mbundle:Landroid/os/Bundle;
    if-eqz v11, :cond_0

    .line 589
    const-string v1, "EM_Call_State"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 590
    .local v13, state:I
    const-string v1, "Call_Number"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 591
    .local v10, call_number:Ljava/lang/String;
    if-eqz v10, :cond_8

    .line 592
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->emergencyCallState(I)V
    invoke-static {v1, v13}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$700(Lcom/mediatek/agps/MtkAgpsManagerService;I)V

    goto/16 :goto_0

    .line 593
    :cond_8
    if-nez v10, :cond_9

    .line 594
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v2, "ERR: Emergency call is triggered but receive null number"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$800(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 596
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: AGPS Received unsupport emergency call number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$800(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 599
    .end local v10           #call_number:Ljava/lang/String;
    .end local v11           #mbundle:Landroid/os/Bundle;
    .end local v13           #state:I
    :cond_a
    const-string v1, "android.location.gps.GPS_POS_FIRST_FIXED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 600
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mLocationResult:Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$900(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;

    move-result-object v1

    const-string v2, "latitude"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->mlatitude:D

    .line 601
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mLocationResult:Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$900(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;

    move-result-object v1

    const-string v2, "longitude"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->mlongitude:D

    .line 602
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mLocationResult:Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$900(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;

    move-result-object v1

    const-string v2, "altitude"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->maltitude:D

    .line 603
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mLocationResult:Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$900(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;

    move-result-object v1

    const-string/jumbo v2, "speed"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v2

    iput v2, v1, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->mspeed:F

    .line 604
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mLocationResult:Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$900(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;

    move-result-object v1

    const-string v2, "bearing"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v2

    iput v2, v1, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->mbearing:F

    .line 605
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mLocationResult:Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$900(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;

    move-result-object v1

    const-string v2, "accuracy"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v2

    iput v2, v1, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->maccuracy:F

    .line 606
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mLocationResult:Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$900(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;

    move-result-object v1

    const-string/jumbo v2, "timestamp"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->mtimestamp:J

    .line 607
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mLocationResult:Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$900(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;

    move-result-object v1

    const-string v2, "TTFF"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->mTTFF:I

    .line 608
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mLocationResult:Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;
    invoke-static {v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$900(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;

    move-result-object v2

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->updateLocationResult(Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1000(Lcom/mediatek/agps/MtkAgpsManagerService;Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;)V

    goto/16 :goto_0

    .line 609
    :cond_b
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 610
    const-string/jumbo v1, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/NetworkInfo;

    .line 611
    .local v12, networkinfo:Landroid/net/NetworkInfo;
    sget-object v13, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 612
    .local v13, state:Landroid/net/NetworkInfo$State;
    if-eqz v12, :cond_c

    .line 613
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v13

    .line 618
    :goto_1
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v13, v1, :cond_e

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1200(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "wifi"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mWifiMgr:Landroid/net/wifi/WifiManager;
    invoke-static {v2, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1102(Lcom/mediatek/agps/MtkAgpsManagerService;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 620
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mWifiMgr:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1100(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v19

    .line 621
    .local v19, wifiinfo:Landroid/net/wifi/WifiInfo;
    if-eqz v19, :cond_d

    .line 622
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v8

    .line 623
    .local v8, IPAddr:I
    shr-int/lit8 v1, v8, 0x18

    and-int/lit16 v0, v1, 0xff

    move/from16 v17, v0

    .line 624
    .local v17, val4:I
    shr-int/lit8 v1, v8, 0x10

    and-int/lit16 v0, v1, 0xff

    move/from16 v16, v0

    .line 625
    .local v16, val3:I
    shr-int/lit8 v1, v8, 0x8

    and-int/lit16 v15, v1, 0xff

    .line 626
    .local v15, val2:I
    and-int/lit16 v14, v8, 0xff

    .line 628
    .local v14, val1:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1302(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 629
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WIFI connected IP="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1300(Lcom/mediatek/agps/MtkAgpsManagerService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 630
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/4 v2, 0x1

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnWifi:I
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1402(Lcom/mediatek/agps/MtkAgpsManagerService;I)I

    .line 632
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v2, 0x22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1300(Lcom/mediatek/agps/MtkAgpsManagerService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1300(Lcom/mediatek/agps/MtkAgpsManagerService;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIIILjava/lang/String;)V
    invoke-static/range {v1 .. v7}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1500(Lcom/mediatek/agps/MtkAgpsManagerService;IIIIILjava/lang/String;)V

    .line 634
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v2, 0x27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnWifi:I
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1400(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v3

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V
    invoke-static {v1, v2, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1600(Lcom/mediatek/agps/MtkAgpsManagerService;II)V

    goto/16 :goto_0

    .line 615
    .end local v8           #IPAddr:I
    .end local v14           #val1:I
    .end local v15           #val2:I
    .end local v16           #val3:I
    .end local v17           #val4:I
    .end local v19           #wifiinfo:Landroid/net/wifi/WifiInfo;
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v2, "ERR: NETWORK_STATE_CHANGED_ACTION  is triggered but receive null networkinfo"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$800(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 636
    .restart local v19       #wifiinfo:Landroid/net/wifi/WifiInfo;
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v2, "ERR: NETWORK CONNECTED but receive null wifiinfo"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$800(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 638
    .end local v19           #wifiinfo:Landroid/net/wifi/WifiInfo;
    :cond_e
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v13, v1, :cond_0

    .line 639
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v2, "WIFI disconnected"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 640
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/4 v2, 0x0

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnWifi:I
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1402(Lcom/mediatek/agps/MtkAgpsManagerService;I)I

    .line 641
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v2, 0x27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnWifi:I
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1400(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v3

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V
    invoke-static {v1, v2, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1600(Lcom/mediatek/agps/MtkAgpsManagerService;II)V

    goto/16 :goto_0

    .line 643
    .end local v12           #networkinfo:Landroid/net/NetworkInfo;
    .end local v13           #state:Landroid/net/NetworkInfo$State;
    :cond_f
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 644
    const-string/jumbo v1, "wifi_state"

    const/4 v2, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 645
    .local v18, wifiState:I
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_0

    .line 646
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v2, "WIFI disabled"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 647
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/4 v2, 0x0

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnWifi:I
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1402(Lcom/mediatek/agps/MtkAgpsManagerService;I)I

    .line 648
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v2, 0x27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnWifi:I
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1400(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v3

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V
    invoke-static {v1, v2, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1600(Lcom/mediatek/agps/MtkAgpsManagerService;II)V

    goto/16 :goto_0

    .line 651
    .end local v18           #wifiState:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: Intent received but not action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
