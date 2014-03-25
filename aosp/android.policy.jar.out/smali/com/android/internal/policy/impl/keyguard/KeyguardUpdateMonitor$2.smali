.class Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 29
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 265
    .local v9, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1400()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "received broadcast "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 270
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    const/16 v26, 0x12d

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 476
    :cond_2
    :goto_0
    return-void

    .line 271
    :cond_3
    const-string v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 273
    new-instance v22, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;-><init>()V

    .line 274
    .local v22, spnUpdate:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;
    const/4 v12, 0x0

    .line 275
    .local v12, mSimId:I
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 276
    const-string v3, "simId"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 278
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, p2

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v4, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v12

    .line 279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, p2

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v4, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v12

    .line 280
    move-object/from16 v0, v22

    iput v12, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;->simId:I

    .line 281
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "SPN_STRINGS_UPDATED_ACTION, update simId = "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v26, " , plmn="

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;

    move-result-object v26

    aget-object v26, v26, v12

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v26, ", spn="

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;

    move-result-object v26

    aget-object v26, v26, v12

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    const/16 v26, 0x12f

    move/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 284
    .end local v12           #mSimId:I
    .end local v22           #spnUpdate:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;
    :cond_5
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 285
    const-string v3, "status"

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 286
    .local v5, status:I
    const-string v3, "plugged"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 287
    .local v7, plugged:I
    const-string v3, "level"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 288
    .local v6, level:I
    const-string v3, "health"

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 289
    .local v8, health:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v26

    const/16 v27, 0x12e

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    const/4 v4, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIIII)V

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 291
    .local v14, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 293
    const-string v3, "present_2nd"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 295
    .local v10, b2ndBattPresent:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDocktoDesk:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$2000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v10, :cond_2

    .line 296
    const-string v3, "status_2nd"

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 297
    const/4 v7, 0x1

    .line 298
    const-string v3, "level_2nd"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 299
    const/4 v8, 0x1

    .line 300
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "batt2 is present status="

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v26, " level="

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v26

    const/16 v27, 0x12e

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    const/4 v4, 0x1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIIII)V

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 305
    .end local v5           #status:I
    .end local v6           #level:I
    .end local v7           #plugged:I
    .end local v8           #health:I
    .end local v10           #b2ndBattPresent:Z
    .end local v14           #msg:Landroid/os/Message;
    :cond_6
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 306
    const-string v3, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 307
    .local v24, stateExtra:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->fromIntent(Landroid/content/Intent;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;

    move-result-object v17

    .line 308
    .local v17, simArgs:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$2100()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 309
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "action="

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v26, " state="

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_7
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ACTION_SIM_STATE_CHANGED, stateExtra="

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v26, ",simId="

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simId:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_8

    .line 315
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simId:I

    sget-object v26, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->SIM_LOCK_PIN:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setPINDismiss(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;Z)V

    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simId:I

    sget-object v26, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->SIM_LOCK_PUK:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setPINDismiss(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;Z)V

    .line 317
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simId:I

    sget-object v26, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->SIM_LOCK_ME:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setPINDismiss(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;Z)V

    .line 320
    :cond_8
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_9

    .line 323
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$simMeStatusQueryThread;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, v17

    invoke-direct {v3, v4, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$simMeStatusQueryThread;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$simMeStatusQueryThread;->start()V

    goto/16 :goto_0

    .line 325
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    const/16 v26, 0x130

    move/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 328
    .end local v17           #simArgs:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;
    .end local v24           #stateExtra:Ljava/lang/String;
    :cond_a
    const-string v3, "com.android.phone.ACTION_UNLOCK_SIM_LOCK"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 330
    const-string v3, "com.android.phone.EXTRA_SIM_SLOT"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 331
    .local v20, simId:I
    const-string v3, "com.android.phone.EXTRA_UNLOCK_TYPE"

    const/16 v4, 0x1f5

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 332
    .local v25, unlockType:I
    const/4 v13, 0x0

    .line 333
    .local v13, meCategory:I
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ACTION_UNLOCK_SIM_LOCK, unlockType="

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v26, ",simId="

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    packed-switch v25, :pswitch_data_0

    .line 351
    sget-object v23, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 354
    .local v23, state:Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$2200(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v4, v3, v20

    .line 355
    new-instance v17, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v13}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;II)V

    .line 356
    .restart local v17       #simArgs:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;
    const/16 v3, 0x1f7

    move/from16 v0, v25

    if-ne v3, v0, :cond_b

    .line 359
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$simMeStatusQueryThread;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, v17

    invoke-direct {v3, v4, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$simMeStatusQueryThread;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$simMeStatusQueryThread;->start()V

    goto/16 :goto_0

    .line 337
    .end local v17           #simArgs:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;
    .end local v23           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :pswitch_0
    sget-object v23, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 338
    .restart local v23       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->SIM_LOCK_PIN:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;

    const/16 v26, 0x0

    move/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v3, v0, v4, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setPINDismiss(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;Z)V

    goto :goto_1

    .line 341
    .end local v23           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :pswitch_1
    sget-object v23, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 342
    .restart local v23       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->SIM_LOCK_PUK:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;

    const/16 v26, 0x0

    move/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v3, v0, v4, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setPINDismiss(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;Z)V

    goto :goto_1

    .line 345
    .end local v23           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :pswitch_2
    sget-object v23, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 346
    .restart local v23       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    const-string v3, "com.android.phone.EXTRA_SIMME_LOCK_TYPE"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 347
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "VERIFY_TYPE_SIMMELOCK, meCategory="

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->SIM_LOCK_ME:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;

    const/16 v26, 0x0

    move/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v3, v0, v4, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setPINDismiss(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;Z)V

    goto/16 :goto_1

    .line 361
    .restart local v17       #simArgs:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    const/16 v26, 0x130

    move/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 364
    .end local v13           #meCategory:I
    .end local v17           #simArgs:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;
    .end local v20           #simId:I
    .end local v23           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    .end local v25           #unlockType:I
    :cond_c
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 365
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1400()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "RINGER_MODE_CHANGED_ACTION received"

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    const/16 v26, 0x131

    const-string v27, "android.media.EXTRA_RINGER_MODE"

    const/16 v28, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    const/16 v28, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 368
    :cond_e
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 369
    const-string v3, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 370
    .local v23, state:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    const/16 v26, 0x132

    move/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 371
    .end local v23           #state:Ljava/lang/String;
    :cond_f
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 373
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    const/16 v26, 0x135

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 374
    :cond_10
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    const/16 v26, 0x137

    const-string v27, "android.intent.extra.user_handle"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    const/16 v28, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 377
    :cond_11
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 378
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    const/16 v26, 0x139

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 381
    :cond_12
    const-string v3, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 382
    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "received the IPO shutdown message"

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    const/16 v26, 0x3ef

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 386
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x3f4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 387
    .local v11, m:Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v11, Landroid/os/Message;->arg1:I

    .line 388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 389
    .end local v11           #m:Landroid/os/Message;
    :cond_13
    const-string v3, "android.intent.action.RADIO_OFF"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 390
    const-string v3, "slotId"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 391
    .local v21, slotId:I
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "received ACTION_RADIO_OFF message, slotId="

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    const/16 v26, 0x3f1

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v21

    move/from16 v2, v27

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 394
    .end local v21           #slotId:I
    :cond_14
    const-string v3, "android.intent.action.SIM_INSERTED_STATUS"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 395
    const-string v3, "slotId"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 396
    .restart local v21       #slotId:I
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "SIM_INSERTED_STATUS, slotId="

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    const/16 v26, 0x3f0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v21

    move/from16 v2, v27

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 399
    .end local v21           #slotId:I
    :cond_15
    const-string v3, "android.intent.action.SIM_NAME_UPDATE"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 400
    const-string v3, "slotId"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 401
    .restart local v21       #slotId:I
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "SIM_NAME_UPDATE, slotId="

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    const/16 v26, 0x3ee

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v21

    move/from16 v2, v27

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 404
    .end local v21           #slotId:I
    :cond_16
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 405
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    const/16 v26, 0x3ed

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 407
    :cond_17
    const-string v3, "android.intent.action.ACTION_SIM_DETECTED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 408
    const-string v3, "simDetectStatus"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 409
    .local v19, simDetectStatus:Ljava/lang/String;
    const-string v3, "simCount"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 410
    .local v18, simCount:I
    const-string v3, "newSIMSlot"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 411
    .local v15, newSIMSlot:I
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "detectStatus="

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v26, ", simCount="

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v26, ", newSimSlot="

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v4, v0, v1, v2, v15}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;II)V

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimChangedStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$2302(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;

    .line 414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$2400(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$2400(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 418
    :cond_18
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v26, "Receive ACTION_SIM_DETECTED--requestShowDialog(..)"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$NewSimDialogCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v4, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$NewSimDialogCallback;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->requestShowDialog(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogShowCallBack;)V

    goto/16 :goto_0

    .line 421
    .end local v15           #newSIMSlot:I
    .end local v18           #simCount:I
    .end local v19           #simDetectStatus:Ljava/lang/String;
    :cond_19
    const-string v3, "android.intent.action.normal.boot"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 422
    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "received normal boot"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimChangedStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$2300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 425
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDialogSequenceManager:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$2600(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->handleShowDialog()V

    goto/16 :goto_0

    .line 428
    :cond_1a
    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 429
    const-string v3, "slotId"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 430
    .restart local v21       #slotId:I
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "sim info update, slotId="

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    const/16 v26, 0x3ec

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v21

    move/from16 v2, v27

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 436
    .end local v21           #slotId:I
    :cond_1b
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 437
    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "ACTION_AIRPLANE_MODE_CHANGED, received"

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCtaDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$2700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "state"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 439
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCtaDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$2700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 440
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v4, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCtaDialog:Landroid/app/AlertDialog;
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$2702(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 445
    :cond_1c
    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 446
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x3f4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 447
    .restart local v11       #m:Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v11, Landroid/os/Message;->arg1:I

    .line 448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 449
    .end local v11           #m:Landroid/os/Message;
    :cond_1d
    const-string v3, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x3f4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 452
    .restart local v11       #m:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v11, Landroid/os/Message;->arg1:I

    .line 453
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 457
    .end local v11           #m:Landroid/os/Message;
    :cond_1e
    const-string v3, "android.intent.action.DOWNLOAD_CALIBRATION_DATA"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 458
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const-string v4, "calibrationData"

    const/16 v26, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCalibrationData:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$2802(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Z)Z

    .line 459
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mCalibrationData = "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCalibrationData:Z
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$2800(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Z

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    const/16 v26, 0x3f5

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 464
    :cond_1f
    const-string v3, "android.intent.action.SMARTBOOK_PLUG"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 465
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const-string v4, "state"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDocktoDesk:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$2002(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Z)Z

    .line 466
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDocktoDesk:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$2000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/16 v16, 0x1

    .line 467
    .local v16, plugState:I
    :goto_2
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "plugState = "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    const/16 v26, 0x3f6

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v16

    move/from16 v2, v27

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 466
    .end local v16           #plugState:I
    :cond_20
    const/16 v16, 0x0

    goto :goto_2

    .line 472
    :cond_21
    const-string v3, "android.intent.action.KEYGUARD_CLEAR_UREAD_TIPS"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-wide/from16 v0, v26

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mQueryBaseTime:J
    invoke-static {v3, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$2902(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;J)J

    goto/16 :goto_0

    .line 335
    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
