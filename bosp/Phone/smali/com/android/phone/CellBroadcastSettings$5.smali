.class Lcom/android/phone/CellBroadcastSettings$5;
.super Ljava/lang/Object;
.source "CellBroadcastSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CellBroadcastSettings;->showEditChannelDialog(Lcom/android/phone/CellBroadcastChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CellBroadcastSettings;

.field final synthetic val$channelName:Landroid/widget/EditText;

.field final synthetic val$channelNum:Landroid/widget/EditText;

.field final synthetic val$channelState:Landroid/widget/CheckBox;

.field final synthetic val$oldChannel:Lcom/android/phone/CellBroadcastChannel;


# direct methods
.method constructor <init>(Lcom/android/phone/CellBroadcastSettings;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/android/phone/CellBroadcastChannel;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/phone/CellBroadcastSettings$5;->this$0:Lcom/android/phone/CellBroadcastSettings;

    iput-object p2, p0, Lcom/android/phone/CellBroadcastSettings$5;->val$channelName:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/phone/CellBroadcastSettings$5;->val$channelNum:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/android/phone/CellBroadcastSettings$5;->val$channelState:Landroid/widget/CheckBox;

    iput-object p5, p0, Lcom/android/phone/CellBroadcastSettings$5;->val$oldChannel:Lcom/android/phone/CellBroadcastChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17
    .parameter "v"

    .prologue
    .line 415
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CellBroadcastSettings$5;->val$channelName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 416
    .local v11, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CellBroadcastSettings$5;->val$channelNum:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 417
    .local v14, num:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CellBroadcastSettings$5;->val$channelState:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    .line 418
    .local v9, checked:Z
    const-string v10, ""

    .line 419
    .local v10, errorInfo:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CellBroadcastSettings$5;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #calls: Lcom/android/phone/CellBroadcastSettings;->checkChannelName(Ljava/lang/String;)Z
    invoke-static {v1, v11}, Lcom/android/phone/CellBroadcastSettings;->access$300(Lcom/android/phone/CellBroadcastSettings;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CellBroadcastSettings$5;->this$0:Lcom/android/phone/CellBroadcastSettings;

    const v4, 0x7f0b029a

    invoke-virtual {v3, v4}, Lcom/android/phone/CellBroadcastSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 422
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CellBroadcastSettings$5;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #calls: Lcom/android/phone/CellBroadcastSettings;->checkChannelNumber(Ljava/lang/String;)Z
    invoke-static {v1, v14}, Lcom/android/phone/CellBroadcastSettings;->access$400(Lcom/android/phone/CellBroadcastSettings;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 423
    const-string v1, ""

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 425
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CellBroadcastSettings$5;->this$0:Lcom/android/phone/CellBroadcastSettings;

    const v4, 0x7f0b0299

    invoke-virtual {v3, v4}, Lcom/android/phone/CellBroadcastSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 427
    :cond_2
    const-string v1, ""

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 428
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 429
    .local v13, newChannelId:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CellBroadcastSettings$5;->val$oldChannel:Lcom/android/phone/CellBroadcastChannel;

    invoke-virtual {v1}, Lcom/android/phone/CellBroadcastChannel;->getChannelId()I

    move-result v2

    .line 430
    .local v2, tempOldChannelId:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CellBroadcastSettings$5;->this$0:Lcom/android/phone/CellBroadcastSettings;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CellBroadcastSettings$5;->val$oldChannel:Lcom/android/phone/CellBroadcastChannel;

    invoke-virtual {v3}, Lcom/android/phone/CellBroadcastChannel;->getKeyId()I

    move-result v3

    #calls: Lcom/android/phone/CellBroadcastSettings;->checkChannelIdExist(II)Z
    invoke-static {v1, v13, v3}, Lcom/android/phone/CellBroadcastSettings;->access$1500(Lcom/android/phone/CellBroadcastSettings;II)Z

    move-result v1

    if-nez v1, :cond_4

    .line 432
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CellBroadcastSettings$5;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #getter for: Lcom/android/phone/CellBroadcastSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/phone/CellBroadcastSettings;->access$200(Lcom/android/phone/CellBroadcastSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 433
    new-instance v12, Lcom/android/phone/CellBroadcastChannel;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CellBroadcastSettings$5;->val$oldChannel:Lcom/android/phone/CellBroadcastChannel;

    invoke-virtual {v1}, Lcom/android/phone/CellBroadcastChannel;->getKeyId()I

    move-result v1

    invoke-direct {v12, v1, v13, v11, v9}, Lcom/android/phone/CellBroadcastChannel;-><init>(IILjava/lang/String;Z)V

    .line 434
    .local v12, newChannel:Lcom/android/phone/CellBroadcastChannel;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CellBroadcastSettings$5;->val$oldChannel:Lcom/android/phone/CellBroadcastChannel;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/phone/CellBroadcastChannel;->setChannelState(Z)V

    .line 435
    invoke-virtual {v12}, Lcom/android/phone/CellBroadcastChannel;->getChannelId()I

    move-result v16

    .line 436
    .local v16, tempNewChannelId:I
    const/4 v1, 0x2

    new-array v15, v1, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 437
    .local v15, objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    const/4 v7, 0x0

    new-instance v1, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    move v3, v2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    aput-object v1, v15, v7

    .line 438
    const/4 v1, 0x1

    new-instance v3, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-virtual {v12}, Lcom/android/phone/CellBroadcastChannel;->getChannelState()Z

    move-result v8

    move/from16 v4, v16

    move/from16 v5, v16

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    aput-object v3, v15, v1

    .line 439
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CellBroadcastSettings$5;->this$0:Lcom/android/phone/CellBroadcastSettings;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CellBroadcastSettings$5;->val$oldChannel:Lcom/android/phone/CellBroadcastChannel;

    #calls: Lcom/android/phone/CellBroadcastSettings;->updateChannelToDatabase(Lcom/android/phone/CellBroadcastChannel;Lcom/android/phone/CellBroadcastChannel;)Z
    invoke-static {v1, v3, v12}, Lcom/android/phone/CellBroadcastSettings;->access$1600(Lcom/android/phone/CellBroadcastSettings;Lcom/android/phone/CellBroadcastChannel;Lcom/android/phone/CellBroadcastChannel;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 440
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CellBroadcastSettings$5;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #calls: Lcom/android/phone/CellBroadcastSettings;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V
    invoke-static {v1, v15}, Lcom/android/phone/CellBroadcastSettings;->access$1100(Lcom/android/phone/CellBroadcastSettings;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    .line 449
    .end local v2           #tempOldChannelId:I
    .end local v12           #newChannel:Lcom/android/phone/CellBroadcastChannel;
    .end local v13           #newChannelId:I
    .end local v15           #objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v16           #tempNewChannelId:I
    :goto_0
    return-void

    .line 442
    .restart local v2       #tempOldChannelId:I
    .restart local v12       #newChannel:Lcom/android/phone/CellBroadcastChannel;
    .restart local v13       #newChannelId:I
    .restart local v15       #objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .restart local v16       #tempNewChannelId:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CellBroadcastSettings$5;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #calls: Lcom/android/phone/CellBroadcastSettings;->showUpdateDBErrorInfoDialog()V
    invoke-static {v1}, Lcom/android/phone/CellBroadcastSettings;->access$1200(Lcom/android/phone/CellBroadcastSettings;)V

    goto :goto_0

    .line 444
    .end local v12           #newChannel:Lcom/android/phone/CellBroadcastChannel;
    .end local v15           #objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v16           #tempNewChannelId:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CellBroadcastSettings$5;->this$0:Lcom/android/phone/CellBroadcastSettings;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CellBroadcastSettings$5;->this$0:Lcom/android/phone/CellBroadcastSettings;

    const v4, 0x7f0b029c

    invoke-virtual {v3, v4}, Lcom/android/phone/CellBroadcastSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/CellBroadcastSettings;->displayMessage(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/phone/CellBroadcastSettings;->access$1400(Lcom/android/phone/CellBroadcastSettings;Ljava/lang/String;)V

    goto :goto_0

    .line 447
    .end local v2           #tempOldChannelId:I
    .end local v13           #newChannelId:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CellBroadcastSettings$5;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #calls: Lcom/android/phone/CellBroadcastSettings;->displayMessage(Ljava/lang/String;)V
    invoke-static {v1, v10}, Lcom/android/phone/CellBroadcastSettings;->access$1400(Lcom/android/phone/CellBroadcastSettings;Ljava/lang/String;)V

    goto :goto_0
.end method
