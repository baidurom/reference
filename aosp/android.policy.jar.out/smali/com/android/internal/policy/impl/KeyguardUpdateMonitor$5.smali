.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 633
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 636
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 637
    .local v3, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z

    move-result v16

    if-eqz v16, :cond_0

    const-string v16, "KeyguardUpdateMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "received broadcast "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_0
    const-string v16, "android.intent.action.TIME_TICK"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    const-string v16, "android.intent.action.TIME_SET"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    const-string v16, "android.intent.action.TIMEZONE_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 642
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x12d

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 834
    :cond_2
    :goto_0
    return-void

    .line 643
    :cond_3
    const-string v16, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 644
    const-string v16, "simId"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    if-nez v16, :cond_4

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v17

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2202(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v17

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2402(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 647
    const-string v16, "KeyguardUpdateMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "SPN_STRINGS_UPDATED_ACTION, update sim1, plmn="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", spn="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x12f

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 650
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v17

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmnGemini:Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2602(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v17

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpnGemini:Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2702(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 652
    const-string v16, "KeyguardUpdateMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "SPN_STRINGS_UPDATED_ACTION, update sim2, plmn="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmnGemini:Ljava/lang/CharSequence;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", spn="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpnGemini:Ljava/lang/CharSequence;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 656
    :cond_5
    const-string v16, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 657
    const-string v16, "status"

    const/16 v17, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 658
    .local v14, status:I
    const-string v16, "plugged"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 659
    .local v9, plugged:I
    const-string v16, "level"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 660
    .local v6, level:I
    const-string v16, "health"

    const/16 v17, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 661
    .local v5, health:I
    const-string v16, "KeyguardUpdateMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ACTION_BATTERY_CHANGED, status="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ",plugged="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", level="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", health="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    const/16 v17, 0x12e

    new-instance v18, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    move-object/from16 v0, v18

    invoke-direct {v0, v14, v6, v9, v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIII)V

    invoke-virtual/range {v16 .. v18}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 665
    .local v8, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 666
    .end local v5           #health:I
    .end local v6           #level:I
    .end local v8           #msg:Landroid/os/Message;
    .end local v9           #plugged:I
    .end local v14           #status:I
    :cond_6
    const-string v16, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 667
    const/4 v10, 0x0

    .line 668
    .local v10, simId:I
    const-string v16, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 670
    .local v13, stateExtra:Ljava/lang/String;
    const-string v16, "simId"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 672
    const-string v16, "KeyguardUpdateMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ACTION_SIM_STATE_CHANGED, stateExtra="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ",simId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const-string v16, "IMSI"

    move-object/from16 v0, v16

    if-eq v0, v13, :cond_2

    const-string v16, "LOADED"

    move-object/from16 v0, v16

    if-eq v0, v13, :cond_2

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x130

    invoke-static/range {p2 .. p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->fromIntent(Landroid/content/Intent;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 681
    .end local v10           #simId:I
    .end local v13           #stateExtra:Ljava/lang/String;
    :cond_7
    const-string v16, "android.intent.action.ACTION_SHUTDOWN_IPO"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 682
    const-string v16, "KeyguardUpdateMonitor"

    const-string v17, "received the IPO shutdown message"

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x13d

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    const/16 v17, 0x144

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 688
    .local v7, m:Landroid/os/Message;
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v7, Landroid/os/Message;->arg1:I

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 691
    .end local v7           #m:Landroid/os/Message;
    :cond_8
    const-string v16, "android.intent.action.RADIO_OFF"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 692
    const-string v16, "slotId"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 693
    .local v11, slotId:I
    const-string v16, "KeyguardUpdateMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "received ACTION_RADIO_OFF message, slotId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x140

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v11, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 696
    .end local v11           #slotId:I
    :cond_9
    sget-object v16, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_START_MD_RESET:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 697
    const-string v16, "KeyguardUpdateMonitor"

    const-string v17, "received EVENT_3G_SWITCH_START_MD_RESET message"

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x141

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 699
    :cond_a
    const-string v16, "android.intent.action.SIM_INSERTED_STATUS"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 700
    const-string v16, "slotId"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 701
    .restart local v11       #slotId:I
    const-string v16, "KeyguardUpdateMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "SIM_INSERTED_STATUS, slotId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x13e

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v11, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 704
    .end local v11           #slotId:I
    :cond_b
    const-string v16, "android.intent.action.SIM_NAME_UPDATE"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 705
    const-string v16, "slotId"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 706
    .restart local v11       #slotId:I
    const-string v16, "KeyguardUpdateMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "SIM_NAME_UPDATE, slotId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x13f

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v11, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 710
    .end local v11           #slotId:I
    :cond_c
    const-string v16, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x13b

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 714
    :cond_d
    const-string v16, "android.intent.action.NEW_SIM_DETECTED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 715
    const-string v16, "newSIMSlot"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 716
    .local v15, total:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isGMSRunning()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v15}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;II)V

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;
    invoke-static/range {v16 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2802(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldPopup:Z
    invoke-static/range {v16 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2902(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)Z

    goto/16 :goto_0

    .line 720
    :cond_e
    const-string v16, "sys.boot.reason"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "1"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 721
    .local v4, bootReason:Z
    const-string v16, "KeyguardUpdateMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "new_sim_detected, total="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", bootReason="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    if-eqz v4, :cond_f

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v15}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;II)V

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;
    invoke-static/range {v16 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2802(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldPopup:Z
    invoke-static/range {v16 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2902(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)Z

    goto/16 :goto_0

    .line 727
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x139

    const/16 v19, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 732
    .end local v4           #bootReason:Z
    .end local v15           #total:I
    :cond_10
    const-string v16, "android.intent.action.DEFAULT_SIM_REMOVED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    .line 733
    const-string v16, "simCount"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 734
    .restart local v15       #total:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isGMSRunning()Z

    move-result v16

    if-eqz v16, :cond_11

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldPopup:Z
    invoke-static/range {v16 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2902(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)Z

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v15}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;II)V

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;
    invoke-static/range {v16 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2802(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;

    goto/16 :goto_0

    .line 738
    :cond_11
    const-string v16, "sys.boot.reason"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "1"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 739
    .restart local v4       #bootReason:Z
    const-string v16, "KeyguardUpdateMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "default_sim_removed, total="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", bootReason="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    if-eqz v4, :cond_12

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v15}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;II)V

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;
    invoke-static/range {v16 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2802(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldPopup:Z
    invoke-static/range {v16 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2902(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)Z

    goto/16 :goto_0

    .line 745
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x139

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 750
    .end local v4           #bootReason:Z
    .end local v15           #total:I
    :cond_13
    const-string v16, "android.intent.action.normal.boot"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    .line 751
    const-string v16, "KeyguardUpdateMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "received normal boot, shouldPop="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldPopup:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;

    move-result-object v16

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldPopup:Z
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldPopup:Z
    invoke-static/range {v16 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2902(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)Z

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x139

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;->getSimType()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;->getSIMCardCount()I

    move-result v20

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 758
    :cond_14
    const-string v16, "android.intent.action.SIM_INFO_UPDATE"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_15

    .line 759
    const-string v16, "slotId"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 760
    .restart local v11       #slotId:I
    const-string v16, "KeyguardUpdateMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "sim info update, slotId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x13c

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v11, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 763
    .end local v11           #slotId:I
    :cond_15
    const-string v16, "android.media.RINGER_MODE_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_17

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z

    move-result v16

    if-eqz v16, :cond_16

    const-string v16, "KeyguardUpdateMonitor"

    const-string v17, "RINGER_MODE_CHANGED_ACTION received"

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x131

    const-string v19, "android.media.EXTRA_RINGER_MODE"

    const/16 v20, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 767
    :cond_17
    const-string v16, "android.intent.action.PHONE_STATE"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_18

    .line 768
    const-string v16, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 769
    .local v12, state:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x132

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 770
    .end local v12           #state:Ljava/lang/String;
    :cond_18
    const-string v16, "android.provider.Telephony.DUAL_SIM_MODE_SELECT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_19

    .line 771
    const-string v16, "KeyguardUpdateMonitor"

    const-string v17, "ACTION_DUAL_SIM_MODE_SELECT, received"

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x142

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 774
    :cond_19
    const-string v16, "android.provider.Telephony.UNLOCK_KEYGUARD"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1a

    .line 775
    const-string v16, "KeyguardUpdateMonitor"

    const-string v17, "ACTION_UNLOCK_KEYGUARD, received"

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x135

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 778
    :cond_1a
    const-string v16, "android.provider.Telephony.GPRS_CONNECTION_TYPE_SELECT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1b

    .line 779
    const-string v16, "KeyguardUpdateMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ACTION_GPRS_CONNECTION_TYPE_SELECT, simId =  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "simId"

    const/16 v19, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x143

    const-string v19, "simId"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 784
    :cond_1b
    const-string v16, "android.intent.action.AIRPLANE_MODE"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1c

    .line 785
    const-string v16, "KeyguardUpdateMonitor"

    const-string v17, "ACTION_AIRPLANE_MODE_CHANGED, received"

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDialog:Landroid/app/AlertDialog;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/app/AlertDialog;

    move-result-object v16

    if-eqz v16, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v16

    const-string v17, "state"

    invoke-virtual/range {v16 .. v17}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDialog:Landroid/app/AlertDialog;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/app/AlertDialog;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->dismiss()V

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDialog:Landroid/app/AlertDialog;
    invoke-static/range {v16 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3002(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 791
    :cond_1c
    const-string v16, "com.android.phone.NotificationMgr.MissedCall_intent"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1d

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "MissedCallNumber"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCall:I
    invoke-static/range {v16 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3102(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I

    .line 793
    const-string v16, "KeyguardUpdateMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "MissedCall_intent received, mMissedCall="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCall:I
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x136

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCall:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I

    move-result v19

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 796
    :cond_1d
    const-string v16, "com.mediatek.lockscreen.action.WALLPAPER_SET"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1e

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    const-string v17, "com.mediatek.lockscreen.extra.COMPLETE"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mWallpaperSetComplete:Z
    invoke-static/range {v16 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3202(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)Z

    .line 798
    const-string v16, "KeyguardUpdateMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "WALLPAPER_SET:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mWallpaperSetComplete:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mWallpaperSetComplete:Z
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x137

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 804
    :cond_1e
    const-string v16, "com.mediatek.dm.LAWMO_LOCK"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1f

    .line 805
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3302(Z)Z

    .line 806
    const-string v16, "KeyguardUpdateMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "OMADM_LAWMO_LOCK received, KEYGUARD_DM_LOCKED="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3300()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x138

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 809
    :cond_1f
    const-string v16, "com.mediatek.dm.LAWMO_UNLOCK"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_20

    .line 810
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3302(Z)Z

    .line 811
    const-string v16, "KeyguardUpdateMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "OMADM_LAWMO_UNLOCK received, KEYGUARD_DM_LOCKED="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3300()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x138

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 816
    :cond_20
    const-string v16, "android.intent.action.ACTION_SHUTDOWN"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_21

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    const/16 v17, 0x144

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 818
    .restart local v7       #m:Landroid/os/Message;
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v7, Landroid/os/Message;->arg1:I

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 820
    .end local v7           #m:Landroid/os/Message;
    :cond_21
    const-string v16, "android.intent.action.ACTION_PREBOOT_IPO"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_22

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    const/16 v17, 0x144

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 823
    .restart local v7       #m:Landroid/os/Message;
    const/16 v16, 0x1

    move/from16 v0, v16

    iput v0, v7, Landroid/os/Message;->arg1:I

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 828
    .end local v7           #m:Landroid/os/Message;
    :cond_22
    const-string v16, "android.intent.action.DOWNLOAD_CALIBRATION_DATA"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    const-string v17, "calibrationData"

    const/16 v18, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCalibrationData:Z

    .line 830
    const-string v16, "KeyguardUpdateMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "mCalibrationData = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCalibrationData:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x145

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
