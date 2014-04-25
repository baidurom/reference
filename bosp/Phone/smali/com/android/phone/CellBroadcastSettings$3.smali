.class Lcom/android/phone/CellBroadcastSettings$3;
.super Ljava/lang/Object;
.source "CellBroadcastSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CellBroadcastSettings;->showAddChannelDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CellBroadcastSettings;

.field final synthetic val$setView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/phone/CellBroadcastSettings;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/phone/CellBroadcastSettings$3;->this$0:Lcom/android/phone/CellBroadcastSettings;

    iput-object p2, p0, Lcom/android/phone/CellBroadcastSettings$3;->val$setView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    .line 318
    iget-object v10, p0, Lcom/android/phone/CellBroadcastSettings$3;->val$setView:Landroid/view/View;

    const v11, 0x7f0700fe

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 320
    .local v2, channelName:Landroid/widget/EditText;
    iget-object v10, p0, Lcom/android/phone/CellBroadcastSettings$3;->val$setView:Landroid/view/View;

    const v11, 0x7f0700ff

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 322
    .local v3, channelNum:Landroid/widget/EditText;
    iget-object v10, p0, Lcom/android/phone/CellBroadcastSettings$3;->val$setView:Landroid/view/View;

    const v11, 0x7f070100

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 324
    .local v4, channelState:Landroid/widget/CheckBox;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 325
    .local v7, name:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 326
    .local v8, num:Ljava/lang/String;
    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    .line 328
    .local v5, checked:Z
    const-string v6, ""

    .line 329
    .local v6, errorInfo:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/CellBroadcastSettings$3;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #calls: Lcom/android/phone/CellBroadcastSettings;->checkChannelName(Ljava/lang/String;)Z
    invoke-static {v10, v7}, Lcom/android/phone/CellBroadcastSettings;->access$300(Lcom/android/phone/CellBroadcastSettings;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 330
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/CellBroadcastSettings$3;->this$0:Lcom/android/phone/CellBroadcastSettings;

    const v12, 0x7f0b029a

    invoke-virtual {v11, v12}, Lcom/android/phone/CellBroadcastSettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 332
    :cond_0
    iget-object v10, p0, Lcom/android/phone/CellBroadcastSettings$3;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #calls: Lcom/android/phone/CellBroadcastSettings;->checkChannelNumber(Ljava/lang/String;)Z
    invoke-static {v10, v8}, Lcom/android/phone/CellBroadcastSettings;->access$400(Lcom/android/phone/CellBroadcastSettings;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 333
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/CellBroadcastSettings$3;->this$0:Lcom/android/phone/CellBroadcastSettings;

    const v12, 0x7f0b0299

    invoke-virtual {v11, v12}, Lcom/android/phone/CellBroadcastSettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 335
    :cond_1
    const-string v10, ""

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 336
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 337
    .local v1, channelId:I
    iget-object v10, p0, Lcom/android/phone/CellBroadcastSettings$3;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #calls: Lcom/android/phone/CellBroadcastSettings;->checkChannelIdExist(I)Z
    invoke-static {v10, v1}, Lcom/android/phone/CellBroadcastSettings;->access$500(Lcom/android/phone/CellBroadcastSettings;I)Z

    move-result v10

    if-nez v10, :cond_4

    .line 339
    iget-object v10, p0, Lcom/android/phone/CellBroadcastSettings$3;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #getter for: Lcom/android/phone/CellBroadcastSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v10}, Lcom/android/phone/CellBroadcastSettings;->access$200(Lcom/android/phone/CellBroadcastSettings;)Landroid/app/AlertDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog;->dismiss()V

    .line 340
    new-instance v0, Lcom/android/phone/CellBroadcastChannel;

    invoke-direct {v0, v1, v7, v5}, Lcom/android/phone/CellBroadcastChannel;-><init>(ILjava/lang/String;Z)V

    .line 341
    .local v0, channel:Lcom/android/phone/CellBroadcastChannel;
    iget-object v10, p0, Lcom/android/phone/CellBroadcastSettings$3;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #calls: Lcom/android/phone/CellBroadcastSettings;->makeChannelConfigArray(Lcom/android/phone/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-static {v10, v0}, Lcom/android/phone/CellBroadcastSettings;->access$600(Lcom/android/phone/CellBroadcastSettings;Lcom/android/phone/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v9

    .line 342
    .local v9, objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    iget-object v10, p0, Lcom/android/phone/CellBroadcastSettings$3;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #calls: Lcom/android/phone/CellBroadcastSettings;->insertChannelToDatabase(Lcom/android/phone/CellBroadcastChannel;)Z
    invoke-static {v10, v0}, Lcom/android/phone/CellBroadcastSettings;->access$700(Lcom/android/phone/CellBroadcastSettings;Lcom/android/phone/CellBroadcastChannel;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 343
    iget-object v10, p0, Lcom/android/phone/CellBroadcastSettings$3;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #getter for: Lcom/android/phone/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/phone/CellBroadcastSettings;->access$800(Lcom/android/phone/CellBroadcastSettings;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v10, p0, Lcom/android/phone/CellBroadcastSettings$3;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #getter for: Lcom/android/phone/CellBroadcastSettings;->mChannelMap:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/android/phone/CellBroadcastSettings;->access$900(Lcom/android/phone/CellBroadcastSettings;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v0}, Lcom/android/phone/CellBroadcastChannel;->getChannelId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v10, p0, Lcom/android/phone/CellBroadcastSettings$3;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #calls: Lcom/android/phone/CellBroadcastSettings;->updateChannelUIList()V
    invoke-static {v10}, Lcom/android/phone/CellBroadcastSettings;->access$1000(Lcom/android/phone/CellBroadcastSettings;)V

    .line 346
    invoke-virtual {v0}, Lcom/android/phone/CellBroadcastChannel;->getChannelState()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 347
    iget-object v10, p0, Lcom/android/phone/CellBroadcastSettings$3;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #calls: Lcom/android/phone/CellBroadcastSettings;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V
    invoke-static {v10, v9}, Lcom/android/phone/CellBroadcastSettings;->access$1100(Lcom/android/phone/CellBroadcastSettings;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    .line 358
    .end local v0           #channel:Lcom/android/phone/CellBroadcastChannel;
    .end local v1           #channelId:I
    .end local v9           #objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_2
    :goto_0
    return-void

    .line 350
    .restart local v0       #channel:Lcom/android/phone/CellBroadcastChannel;
    .restart local v1       #channelId:I
    .restart local v9       #objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_3
    iget-object v10, p0, Lcom/android/phone/CellBroadcastSettings$3;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #calls: Lcom/android/phone/CellBroadcastSettings;->showUpdateDBErrorInfoDialog()V
    invoke-static {v10}, Lcom/android/phone/CellBroadcastSettings;->access$1200(Lcom/android/phone/CellBroadcastSettings;)V

    goto :goto_0

    .line 353
    .end local v0           #channel:Lcom/android/phone/CellBroadcastChannel;
    .end local v9           #objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_4
    iget-object v10, p0, Lcom/android/phone/CellBroadcastSettings$3;->this$0:Lcom/android/phone/CellBroadcastSettings;

    const v11, 0x7f0b029c

    #calls: Lcom/android/phone/CellBroadcastSettings;->displayMessage(I)V
    invoke-static {v10, v11}, Lcom/android/phone/CellBroadcastSettings;->access$1300(Lcom/android/phone/CellBroadcastSettings;I)V

    goto :goto_0

    .line 356
    .end local v1           #channelId:I
    :cond_5
    iget-object v10, p0, Lcom/android/phone/CellBroadcastSettings$3;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #calls: Lcom/android/phone/CellBroadcastSettings;->displayMessage(Ljava/lang/String;)V
    invoke-static {v10, v6}, Lcom/android/phone/CellBroadcastSettings;->access$1400(Lcom/android/phone/CellBroadcastSettings;Ljava/lang/String;)V

    goto :goto_0
.end method
