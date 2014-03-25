.class Lcom/android/internal/telephony/gemini/a;
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
.field final synthetic a:Lcom/android/internal/telephony/gemini/GeminiPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 821
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/a;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z

    .line 824
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const-string v1, "Time out"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 826
    return-void
.end method
