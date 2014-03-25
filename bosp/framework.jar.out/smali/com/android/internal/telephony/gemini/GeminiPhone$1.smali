.class Lcom/android/internal/telephony/gemini/GeminiPhone$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gemini/GeminiPhone;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/internal/telephony/gemini/GeminiPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 843
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$1;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 846
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ne v0, v7, :cond_1

    .line 847
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$1;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/mediatek/common/telephony/ISimInfoUpdate;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$1;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d(Lcom/android/internal/telephony/gemini/GeminiPhone;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$1;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d(Lcom/android/internal/telephony/gemini/GeminiPhone;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v6

    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a()Z

    move-result v5

    move-object v4, v3

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/common/telephony/ISimInfoUpdate;->updateSimInfoByIccIdAdp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 848
    :cond_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ne v0, v5, :cond_2

    .line 849
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$1;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/mediatek/common/telephony/ISimInfoUpdate;

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$1;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d(Lcom/android/internal/telephony/gemini/GeminiPhone;)[Ljava/lang/String;

    move-result-object v0

    aget-object v5, v0, v2

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$1;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d(Lcom/android/internal/telephony/gemini/GeminiPhone;)[Ljava/lang/String;

    move-result-object v0

    aget-object v6, v0, v6

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$1;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d(Lcom/android/internal/telephony/gemini/GeminiPhone;)[Ljava/lang/String;

    move-result-object v0

    aget-object v7, v0, v7

    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a()Z

    move-result v9

    move-object v8, v3

    invoke-interface/range {v4 .. v9}, Lcom/mediatek/common/telephony/ISimInfoUpdate;->updateSimInfoByIccIdAdp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 850
    :cond_2
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 851
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$1;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/mediatek/common/telephony/ISimInfoUpdate;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$1;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d(Lcom/android/internal/telephony/gemini/GeminiPhone;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$1;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d(Lcom/android/internal/telephony/gemini/GeminiPhone;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$1;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d(Lcom/android/internal/telephony/gemini/GeminiPhone;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$1;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d(Lcom/android/internal/telephony/gemini/GeminiPhone;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a()Z

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/common/telephony/ISimInfoUpdate;->updateSimInfoByIccIdAdp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
