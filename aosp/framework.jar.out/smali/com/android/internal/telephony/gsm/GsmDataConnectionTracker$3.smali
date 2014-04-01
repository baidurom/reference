.class Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;
.super Landroid/content/BroadcastReceiver;
.source "GsmDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 3234
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3238
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3242
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3261
    :cond_0
    :goto_0
    return-void

    .line 3246
    :cond_1
    const-string v5, "android.intent.action.GPRS_TRANSFER_TYPE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3247
    const-string v5, "gemini.gprs.transfer.type"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3248
    .local v2, gprsTransferType:I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GPRS Transfer type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3249
    if-ne v2, v3, :cond_2

    .line 3250
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsCallPrefer:Z
    invoke-static {v4, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1302(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z

    goto :goto_0

    .line 3252
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsCallPrefer:Z
    invoke-static {v3, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1302(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z

    goto :goto_0

    .line 3254
    .end local v2           #gprsTransferType:I
    :cond_3
    const-string v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3256
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v6, "Received ConnectivityManager.ACTION_TETHER_STATE_CHANGED"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3257
    const-string v5, "activeArray"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3258
    .local v1, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    :goto_1
    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsTetheredMode:Z
    invoke-static {v5, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1402(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z

    .line 3259
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TETHER_STATE_CHANGED]mIsTetheredMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsTetheredMode:Z
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v3, v4

    .line 3258
    goto :goto_1
.end method
