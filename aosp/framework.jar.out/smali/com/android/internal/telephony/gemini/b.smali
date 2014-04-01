.class final Lcom/android/internal/telephony/gemini/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gemini/GeminiPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/android/internal/telephony/gemini/GeminiPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 3074
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3076
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g(Lcom/android/internal/telephony/gemini/GeminiPhone;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move v1, v2

    .line 3077
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g(Lcom/android/internal/telephony/gemini/GeminiPhone;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    move v4, v2

    .line 3078
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isGSMRadioAvailable()Z

    move-result v5

    .line 3079
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isGSMRadioAvailable()Z

    move-result v0

    .line 3080
    const-string v6, "PHONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "radio status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    if-eqz v1, :cond_4

    move v1, v5

    .line 3082
    :goto_2
    if-eqz v4, :cond_5

    .line 3083
    :goto_3
    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    .line 3084
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->get3GCapabilitySIM()I

    move-result v0

    .line 3085
    new-instance v1, Landroid/content/Intent;

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_DONE:Ljava/lang/String;

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3086
    if-nez v0, :cond_6

    .line 3087
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EXTRA_3G_SIM:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3093
    :goto_4
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z

    .line 3095
    const-string v0, "PHONE"

    const-string v2, "3G switch done"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    monitor-enter v2

    .line 3097
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3098
    const-string v0, "PHONE"

    const-string v3, "Release 3G Switch wakelock"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3101
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3102
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3104
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k(Lcom/android/internal/telephony/gemini/GeminiPhone;)I

    move-result v0

    const/16 v1, -0x63

    if-eq v0, v1, :cond_1

    .line 3107
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set to target radio mode ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k(Lcom/android/internal/telephony/gemini/GeminiPhone;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3108
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k(Lcom/android/internal/telephony/gemini/GeminiPhone;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioMode(I)V

    .line 3114
    :cond_1
    :goto_5
    return-void

    :cond_2
    move v1, v3

    .line 3076
    goto/16 :goto_0

    :cond_3
    move v4, v3

    .line 3077
    goto/16 :goto_1

    :cond_4
    move v1, v2

    .line 3081
    goto/16 :goto_2

    :cond_5
    move v0, v2

    .line 3082
    goto/16 :goto_3

    .line 3088
    :cond_6
    if-ne v0, v2, :cond_7

    .line 3089
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EXTRA_3G_SIM:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_4

    .line 3091
    :cond_7
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EXTRA_3G_SIM:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_4

    .line 3101
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3111
    :cond_8
    const-string v0, "PHONE"

    const-string v1, "3G switch done but radio not ready, retry after a seconds"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5
.end method
