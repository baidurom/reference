.class Lcom/android/internal/telephony/gemini/GeminiPhone$a;
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
.field final synthetic a:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 1
    .parameter

    .prologue
    .line 3270
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3271
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/gemini/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3270
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone$a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 3274
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->b:I

    .line 3275
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 3279
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3280
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

    .line 3281
    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_PRE_3G_SWITCH:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3282
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 3283
    const-string v0, "PHONE"

    const-string v1, "No need to reset modem, set preferred network mode to NT_MODE_GSM_ONLY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3284
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->b:I

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->set3GSim(I)V

    .line 3285
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "preferred_network_mode"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3287
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 3308
    :cond_0
    :goto_0
    return-void

    .line 3289
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a()Z

    move-result v0

    .line 3290
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->b:I

    if-eq v1, v2, :cond_3

    :cond_2
    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->b:I

    if-nez v0, :cond_5

    .line 3291
    :cond_3
    const-string v0, "PHONE"

    const-string v1, "No need to reset modem, set preferred network mode to NT_MODE_WCDMA_PREF"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3292
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->b:I

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->set3GSim(I)V

    .line 3293
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(Lcom/android/internal/telephony/gemini/GeminiPhone;)[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    aget-object v0, v0, v5

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isWCDMAPrefered()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3294
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "preferred_network_mode"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3296
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 3298
    :cond_4
    const-string v0, "PHONE"

    const-string v1, "SwitchBroadcastReceiver:setPreferredNetworkType  networkType=NT_MODE_GSM_UMTS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3299
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "preferred_network_mode"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3301
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 3304
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->b:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;I)Z

    goto :goto_0
.end method
