.class Lcom/mediatek/agps/MtkAgpsManagerService$6;
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
    .line 722
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$6;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 725
    const/4 v4, 0x0

    .line 727
    .local v4, niData:[B
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$6;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;
    invoke-static {v5}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1700(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/agps/MtkAgpsConfig;

    move-result-object v5

    iget v5, v5, Lcom/mediatek/agps/MtkAgpsConfig;->niEnable:I

    if-nez v5, :cond_0

    .line 728
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$6;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v6, "WARNING: NI request(WapPush message) is rejected, because Network_Initiate is set to as disable !!"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$800(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 763
    :goto_0
    return-void

    .line 732
    :cond_0
    const-string v5, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 733
    const-string v5, "data"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    .line 735
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 736
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 737
    const-string/jumbo v5, "wspHeaders"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 738
    .local v3, mHeaders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v3, :cond_1

    .line 739
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$6;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v6, "ERR: NI request(WapPush message) is rejected because wspHeaders are not found!"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$800(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0

    .line 742
    :cond_1
    const-string v5, "X-Wap-Application-Id"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 743
    .local v0, app_id:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 744
    const-string/jumbo v5, "x-oma-application:ulp.ua"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 745
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$6;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v6, "ERR: NI request(WapPush message) is rejected, because X-Wap-Application-Id is wrong !"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$800(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 746
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$6;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ERR: Received Application-Id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; Expected Application-Id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "x-oma-application:ulp.ua"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$800(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0

    .line 751
    .end local v0           #app_id:Ljava/lang/String;
    .end local v3           #mHeaders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    if-eqz v4, :cond_4

    .line 752
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$6;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string/jumbo v6, "received WapPush message data"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 753
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_3

    .line 754
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$6;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 753
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 756
    :cond_3
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$6;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->niRequest([B)I
    invoke-static {v5, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1900(Lcom/mediatek/agps/MtkAgpsManagerService;[B)I

    goto/16 :goto_0

    .line 758
    .end local v2           #i:I
    :cond_4
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$6;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v6, "ERR: Received null data in WapPush message"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$800(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 761
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_5
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$6;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ERR: Received Wappsuh with unexpected intent action:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
