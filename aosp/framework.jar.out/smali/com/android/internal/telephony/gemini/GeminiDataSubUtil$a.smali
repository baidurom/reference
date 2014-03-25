.class Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 176
    monitor-enter p0

    .line 177
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 179
    const-string/jumbo v1, "simId"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 180
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v2

    aget-boolean v2, v2, v1

    .line 181
    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 183
    packed-switch v0, :pswitch_data_0

    .line 205
    const-string v0, "Recv SERVICE_STATE_CHANGED invalid state"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 209
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[I

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I

    move-result v2

    aget v0, v0, v2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current SIM is none and default SIM is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", then enableApnTypeGemini()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const-string v2, "default"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableApnTypeGemini(Ljava/lang/String;I)I

    .line 217
    :cond_1
    monitor-exit p0

    .line 218
    return-void

    .line 185
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v0

    const/4 v3, 0x1

    aput-boolean v3, v0, v1

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recv STATE_POWER_OFF Intent from simId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 192
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v0

    const/4 v3, 0x0

    aput-boolean v3, v0, v1

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recv STATE_IN_SERVICE Intent from simId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 196
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recv STATE_OUT_OF_SERVICE Intent from simId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v0

    const/4 v3, 0x0

    aput-boolean v3, v0, v1

    goto/16 :goto_0

    .line 202
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recv STATE_EMERGENCY_ONLY Intent from simId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
