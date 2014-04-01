.class Lcom/android/internal/telephony/IccCard$3;
.super Landroid/content/BroadcastReceiver;
.source "IccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .locals 0
    .parameter

    .prologue
    .line 1328
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 1331
    if-nez p2, :cond_1

    .line 1338
    :cond_0
    :goto_0
    return-void

    .line 1332
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1333
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1334
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1335
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    #setter for: Lcom/android/internal/telephony/IccCard;->mSIMInfoReady:Z
    invoke-static {v1, v4}, Lcom/android/internal/telephony/IccCard;->access$1802(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 1336
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/IccCard;->broadcastPhbStateChangedIntent(Z)V

    goto :goto_0
.end method
