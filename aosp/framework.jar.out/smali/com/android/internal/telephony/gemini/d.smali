.class Lcom/android/internal/telephony/gemini/d;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    iget v1, p1, Landroid/os/Message;->what:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I

    move-result v1

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_SIM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_DETACH: request_use_gprs_sim_id["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[I

    move-result-object v2

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[I

    move-result-object v0

    aput v3, v0, v1

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[I

    move-result-object v0

    aget v0, v0, v1

    if-eq v0, v3, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[I

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[I

    move-result-object v2

    aget v2, v2, v1

    aput v2, v0, v1

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[I

    move-result-object v0

    aput v3, v0, v1

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    iget-object v0, v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mApnTypes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 139
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[I

    move-result-object v3

    aget v3, v3, v1

    aget-object v3, v0, v3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->connectSync(Ljava/lang/String;)I

    goto :goto_1

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    iget-object v0, v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mApnTypes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto/16 :goto_0

    .line 150
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    add-int/lit8 v1, v1, -0x5

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_RADIO_OFF."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    add-int/lit8 v1, v1, -0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    goto/16 :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
