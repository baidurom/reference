.class Lcom/android/internal/telephony/gsm/GSMPhone$2;
.super Landroid/content/BroadcastReceiver;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GSMPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 3087
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3090
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3091
    .local v0, action:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "received broadcast "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/telephony/gsm/GSMPhone;->LOGW(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$000(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)V

    .line 3093
    const-string v5, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3094
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v5

    invoke-static {p1, v5}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v3

    .line 3095
    .local v3, mySimInfo:Landroid/provider/Telephony$SIMInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "persist.radio.cfu.iccid."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3096
    .local v2, mySettingName:Ljava/lang/String;
    const-string v5, ""

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3098
    .local v4, oldIccId:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 3099
    iget-object v5, v3, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3100
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mySimId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    #getter for: Lcom/android/internal/telephony/gsm/GSMPhone;->mySimId:I
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$100(Lcom/android/internal/telephony/gsm/GSMPhone;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mySettingName "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " old iccid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " new iccid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/telephony/gsm/GSMPhone;->LOGW(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$000(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)V

    .line 3101
    iget-object v5, v3, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3102
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "persist.radio.cfu.change."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3103
    .local v1, isChanged:Ljava/lang/String;
    const-string v5, "1"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3104
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v6, 0x1

    #setter for: Lcom/android/internal/telephony/gsm/GSMPhone;->needQueryCfu:Z
    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$202(Lcom/android/internal/telephony/gsm/GSMPhone;Z)Z

    .line 3108
    .end local v1           #isChanged:Ljava/lang/String;
    .end local v2           #mySettingName:Ljava/lang/String;
    .end local v3           #mySimInfo:Landroid/provider/Telephony$SIMInfo;
    .end local v4           #oldIccId:Ljava/lang/String;
    :cond_0
    return-void
.end method
