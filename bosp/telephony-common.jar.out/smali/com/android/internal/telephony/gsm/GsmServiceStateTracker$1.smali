.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static final EXTRA_VALUE_NEW_SIM:Ljava/lang/String; = "NEW"

.field public static final INTENT_KEY_DETECT_STATUS:Ljava/lang/String; = "simDetectStatus"

.field public static final INTENT_KEY_NEW_SIM_SLOT:Ljava/lang/String; = "newSIMSlot"

.field private static final STATUS_SIM1_INSERTED:I = 0x1

.field private static final STATUS_SIM2_INSERTED:I = 0x2

.field private static final STATUS_SIM3_INSERTED:I = 0x4

.field private static final STATUS_SIM4_INSERTED:I = 0x8


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 295
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BroadcastReceiver: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 298
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 300
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v7, "ACTION_SCREEN_ON"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 301
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    .line 302
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v7, "set explict_update_spn = 1"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 303
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->explict_update_spn:I
    invoke-static {v6, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$102(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)I

    .line 304
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/mediatek/common/telephony/IServiceStateExt;

    move-result-object v6

    invoke-interface {v6}, Lcom/mediatek/common/telephony/IServiceStateExt;->needEMMRRS()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 305
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getDataConnectionSimId()I
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$400(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 306
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v7, 0x6a

    #calls: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getEINFO(I)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$500(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)V

    goto :goto_0

    .line 309
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 310
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v7, "ACTION_SCREEN_OFF"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 311
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/mediatek/common/telephony/IServiceStateExt;

    move-result-object v6

    invoke-interface {v6}, Lcom/mediatek/common/telephony/IServiceStateExt;->needEMMRRS()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 312
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getDataConnectionSimId()I
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$400(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 313
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v7, 0x69

    #calls: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getEINFO(I)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$500(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)V

    goto :goto_0

    .line 316
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.mtk.TEST_TRM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 317
    const-string v6, "mode"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 318
    .local v1, mode:I
    const-string v6, "slot"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 319
    .local v3, slot:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TEST mode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " slot="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 322
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getTelephonyMode()I

    move-result v6

    if-nez v6, :cond_4

    .line 323
    if-ne v1, v10, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v6

    if-nez v6, :cond_0

    .line 324
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6, v10, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTRM(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 326
    :cond_4
    if-ne v1, v10, :cond_7

    .line 327
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getFirstMD()I

    move-result v6

    if-ne v6, v11, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getFirstMD()I

    move-result v6

    if-ne v6, v10, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v6

    if-ne v6, v11, :cond_0

    .line 330
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6, v1, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTRM(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 332
    :cond_7
    const/4 v6, 0x6

    if-ne v1, v6, :cond_0

    .line 333
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getFirstMD()I

    move-result v6

    if-ne v6, v11, :cond_8

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v6

    if-eq v6, v11, :cond_9

    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getFirstMD()I

    move-result v6

    if-ne v6, v10, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v6

    if-nez v6, :cond_0

    .line 336
    :cond_9
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6, v1, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTRM(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 341
    :cond_a
    if-ne v1, v10, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v6

    if-nez v6, :cond_0

    .line 342
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6, v10, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTRM(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 344
    .end local v1           #mode:I
    .end local v3           #slot:I
    :cond_b
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 345
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v7, "ACTION_SIM_STATE_CHANGED"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 348
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimState:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$600(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, previousSimState:Ljava/lang/String;
    const-string v6, "simId"

    invoke-virtual {p2, v6, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 352
    .local v4, slotId:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v6

    if-ne v4, v6, :cond_c

    .line 353
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v7, "ss"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimState:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$602(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 354
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM state change, simId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " simState["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimState:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$600(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 365
    :cond_c
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimState:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$600(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 366
    const-string v6, "LOCKED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "ABSENT"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_d
    const-string v6, "READY"

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimState:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$600(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 369
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v7, "excuate pollState() to sync. ServcieState and RegStat "

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 370
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    goto/16 :goto_0

    .line 375
    .end local v2           #previousSimState:Ljava/lang/String;
    .end local v4           #slotId:I
    :cond_e
    const-string v6, "android.intent.action.ACTION_SIM_DETECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 378
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v7, "ACTION_SIM_DETECTED"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 379
    const-string v6, "simDetectStatus"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 380
    .local v5, status:Ljava/lang/String;
    const-string v6, "newSIMSlot"

    invoke-virtual {p2, v6, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 381
    .local v0, mNewSimSlot:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM_DETECTED, status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " newSimSlot: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 382
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 416
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v7, "no SIM inserted"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 384
    :pswitch_0
    and-int/lit8 v6, v0, 0x1

    if-ne v6, v11, :cond_0

    .line 385
    const-string v6, "persist.radio.nitz_oper_code"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v6, "persist.radio.nitz_oper_lname"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v6, "ersist.radio.nitz_oper_sname"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v7, "reset SIM1\'s MM infromation from Netwowrk"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 392
    :pswitch_1
    and-int/lit8 v6, v0, 0x2

    if-ne v6, v10, :cond_0

    .line 393
    const-string v6, "persist.radio.nitz_oper_code2"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v6, "persist.radio.nitz_oper_lname2"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v6, "persist.radio.nitz_oper_sname2"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v7, "reset SIM2\'s MM infromation from Netwowrk"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 400
    :pswitch_2
    and-int/lit8 v6, v0, 0x4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 401
    const-string v6, "persist.radio.nitz_oper_code3"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v6, "persist.radio.nitz_oper_lname3"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v6, "persist.radio.nitz_oper_sname3"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v7, "reset SIM3\'s MM infromation from Netwowrk"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 408
    :pswitch_3
    and-int/lit8 v6, v0, 0x8

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    .line 409
    const-string v6, "persist.radio.nitz_oper_code3"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v6, "persist.radio.nitz_oper_lname4"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v6, "persist.radio.nitz_oper_sname4"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v7, "reset SIM4\'s MM infromation from Netwowrk"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
