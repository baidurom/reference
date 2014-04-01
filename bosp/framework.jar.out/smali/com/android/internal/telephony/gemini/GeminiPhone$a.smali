.class final Lcom/android/internal/telephony/gemini/GeminiPhone$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gemini/GeminiPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private synthetic b:Lcom/android/internal/telephony/gemini/GeminiPhone;


# direct methods
.method synthetic constructor <init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 1
    .parameter

    .prologue
    .line 2879
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone$a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;B)V

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/gemini/GeminiPhone;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2879
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->b:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2880
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->a:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 2883
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->a:I

    .line 2884
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/16 v5, 0x9

    const/4 v4, 0x1

    .line 2888
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2889
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GeminiPhone m3GSwitchReceiver receive ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2890
    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_PRE_3G_SWITCH:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2891
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2892
    const-string v0, "PHONE"

    const-string v1, "No need to reset modem, set preferred network mode to NT_MODE_GSM_ONLY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->a:I

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->set3GSim(I)V

    .line 2894
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->b:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "preferred_network_mode"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2896
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->b:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->b:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 2917
    :cond_0
    :goto_0
    return-void

    .line 2898
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->b:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z

    move-result v0

    .line 2899
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->a:I

    if-eq v4, v1, :cond_3

    :cond_2
    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->a:I

    if-nez v0, :cond_5

    .line 2900
    :cond_3
    const-string v0, "PHONE"

    const-string v1, "No need to reset modem, set preferred network mode to NT_MODE_WCDMA_PREF"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->a:I

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->set3GSim(I)V

    .line 2902
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->b:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isWCDMAPrefered()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2903
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->b:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "preferred_network_mode"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2905
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->b:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->b:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 2907
    :cond_4
    const-string v0, "PHONE"

    const-string v1, "SwitchBroadcastReceiver:setPreferredNetworkType  networkType=NT_MODE_GSM_UMTS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->b:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "preferred_network_mode"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2910
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->b:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->b:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 2913
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->b:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->a:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;I)Z

    goto :goto_0
.end method
