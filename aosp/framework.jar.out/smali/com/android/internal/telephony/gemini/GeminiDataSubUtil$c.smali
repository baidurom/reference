.class final Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private synthetic a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;


# direct methods
.method synthetic constructor <init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)V
    .locals 1
    .parameter

    .prologue
    .line 785
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$c;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;B)V

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 785
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$c;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 787
    monitor-enter p0

    .line 788
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 790
    const-string/jumbo v1, "simId"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 791
    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 793
    packed-switch v0, :pswitch_data_0

    .line 815
    const-string v0, "Recv SERVICE_STATE_CHANGED invalid state"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 823
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 795
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$c;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recv STATE_POWER_OFF Intent from simId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 799
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$c;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->resetGprsRelatedContext(I)V

    goto :goto_0

    .line 823
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 802
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$c;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v0

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recv STATE_IN_SERVICE Intent from simId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 806
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recv STATE_OUT_OF_SERVICE Intent from simId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$c;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$c;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v0

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 812
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recv STATE_EMERGENCY_ONLY Intent from simId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 819
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MMS_PDP_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    const-string/jumbo v0, "simId"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 821
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$c;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 793
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
