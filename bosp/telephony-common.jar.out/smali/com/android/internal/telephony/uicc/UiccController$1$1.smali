.class Lcom/android/internal/telephony/uicc/UiccController$1$1;
.super Ljava/lang/Thread;
.source "UiccController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/UiccController$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/uicc/UiccController$1;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccController$1;)V
    .locals 0
    .parameter

    .prologue
    .line 731
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController$1$1;->this$1:Lcom/android/internal/telephony/uicc/UiccController$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 734
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController$1$1;->this$1:Lcom/android/internal/telephony/uicc/UiccController$1;

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    #getter for: Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController$1$1;->this$1:Lcom/android/internal/telephony/uicc/UiccController$1;

    iget-object v4, v4, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    #getter for: Lcom/android/internal/telephony/uicc/UiccController;->mSimId:I
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 735
    .local v2, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController$1$1;->this$1:Lcom/android/internal/telephony/uicc/UiccController$1;

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    #getter for: Lcom/android/internal/telephony/uicc/UiccController;->mClearMsisdn:Z
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccController;->access$300(Lcom/android/internal/telephony/uicc/UiccController;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 736
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController$1$1;->this$1:Lcom/android/internal/telephony/uicc/UiccController$1;

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    #setter for: Lcom/android/internal/telephony/uicc/UiccController;->mClearMsisdn:Z
    invoke-static {v3, v5}, Lcom/android/internal/telephony/uicc/UiccController;->access$302(Lcom/android/internal/telephony/uicc/UiccController;Z)Z

    .line 737
    const-string v3, "RIL_UiccController"

    const-string v4, "Initial sim info."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController$1$1;->this$1:Lcom/android/internal/telephony/uicc/UiccController$1;

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(I)Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    .line 739
    .local v0, iccRecord:Lcom/android/internal/telephony/IccRecords;
    if-eqz v0, :cond_1

    .line 740
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController$1$1;->this$1:Lcom/android/internal/telephony/uicc/UiccController$1;

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    #getter for: Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Telephony$SIMInfo;->setNumber(Landroid/content/Context;Ljava/lang/String;J)I

    .line 744
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 745
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.permission.READ_PHONE_STATE"

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 747
    .end local v0           #iccRecord:Lcom/android/internal/telephony/IccRecords;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 742
    .restart local v0       #iccRecord:Lcom/android/internal/telephony/IccRecords;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController$1$1;->this$1:Lcom/android/internal/telephony/uicc/UiccController$1;

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    #getter for: Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;)Landroid/content/Context;

    move-result-object v3

    const-string v4, ""

    iget-wide v5, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Telephony$SIMInfo;->setNumber(Landroid/content/Context;Ljava/lang/String;J)I

    goto :goto_0
.end method
