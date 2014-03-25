.class Lcom/android/internal/telephony/gemini/GeminiDataConn$a;
.super Lcom/android/internal/util/State;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gemini/GeminiDataConn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/internal/telephony/gemini/GeminiDataConn;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gemini/GeminiDataConn;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gemini/GeminiDataConn;Lcom/android/internal/telephony/gemini/GeminiDataConn$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataConn$a;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataConn;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    .line 345
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 350
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 356
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 401
    const/4 v0, 0x0

    .line 404
    :goto_0
    return v0

    .line 359
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 361
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GeminiDcActedState: REQ_CONNECT/EVENT_CONNECT("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->log(Ljava/lang/String;)V

    .line 363
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->a(Lcom/android/internal/telephony/gemini/GeminiDataConn;Ljava/lang/String;)I

    move-result v0

    .line 364
    iget v2, p1, Landroid/os/Message;->what:I

    const v3, 0x44000

    if-ne v2, v3, :cond_0

    .line 365
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    iget-object v2, v2, Lcom/android/internal/telephony/gemini/GeminiDataConn;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x44001

    invoke-virtual {v2, p1, v3, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    :cond_0
    move v0, v1

    .line 368
    goto :goto_0

    .line 371
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 373
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GeminiDcActedState: GeminiDataConnAc.REQ_DISCONNECT type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->log(Ljava/lang/String;)V

    .line 375
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->b(Lcom/android/internal/telephony/gemini/GeminiDataConn;Ljava/lang/String;)I

    move-result v0

    .line 376
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    iget-object v2, v2, Lcom/android/internal/telephony/gemini/GeminiDataConn;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x44003

    invoke-virtual {v2, p1, v3, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    move v0, v1

    .line 378
    goto :goto_0

    .line 382
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    const-string v2, "GeminiDcActedState: EVENT_CONNECTED"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->log(Ljava/lang/String;)V

    move v0, v1

    .line 385
    goto :goto_0

    .line 389
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    const-string v2, "GeminiDcActedState: EVENT_CLEANUP_ALL"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->log(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->b(Lcom/android/internal/telephony/gemini/GeminiDataConn;)V

    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->d(Lcom/android/internal/telephony/gemini/GeminiDataConn;)Lcom/android/internal/telephony/gemini/GeminiDataConn$b;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->d(Lcom/android/internal/telephony/gemini/GeminiDataConn;Lcom/android/internal/util/IState;)V

    move v0, v1

    .line 394
    goto/16 :goto_0

    .line 356
    :sswitch_data_0
    .sparse-switch
        0x43000 -> :sswitch_0
        0x43002 -> :sswitch_3
        0x43003 -> :sswitch_2
        0x44000 -> :sswitch_0
        0x44002 -> :sswitch_1
    .end sparse-switch
.end method
