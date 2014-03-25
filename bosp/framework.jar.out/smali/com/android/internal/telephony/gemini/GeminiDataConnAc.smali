.class public Lcom/android/internal/telephony/gemini/GeminiDataConnAc;
.super Lcom/android/internal/util/AsyncChannel;
.source "SourceFile"


# static fields
.field protected static final BASE:I = 0x44000

.field public static final REQ_CONNECT:I = 0x44000

.field public static final REQ_DISCONNECT:I = 0x44002

.field public static final REQ_IS_IDLE_DEACTING_STATE:I = 0x44006

.field public static final REQ_IS_IDLE_STATE:I = 0x44004

.field public static final RSP_CONNECT:I = 0x44001

.field public static final RSP_DISCONNECT:I = 0x44003

.field public static final RSP_IS_IDLE_DEACTING_STATE:I = 0x44007

.field public static final RSP_IS_IDLE_STATE:I = 0x44005

.field private static b:[Ljava/lang/String;


# instance fields
.field private a:I

.field public dataConnection:Lcom/android/internal/telephony/gemini/GeminiDataConn;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->b:[Ljava/lang/String;

    .line 86
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "REQ_CONNECT"

    aput-object v2, v0, v1

    .line 87
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->b:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "RSP_CONNECT"

    aput-object v2, v0, v1

    .line 88
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->b:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "REQ_DISCONNECT"

    aput-object v2, v0, v1

    .line 89
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->b:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "RSP_DISCONNECT"

    aput-object v2, v0, v1

    .line 90
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->b:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "REQ_IS_IDLE_STATE"

    aput-object v2, v0, v1

    .line 91
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->b:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "RSP_IS_IDLE_STATE"

    aput-object v2, v0, v1

    .line 92
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->b:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "REQ_IS_IDLE_DEACTING_STATE"

    aput-object v2, v0, v1

    .line 93
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->b:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "RSP_IS_IDLE_DEACTING_STATE"

    aput-object v2, v0, v1

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gemini/GeminiDataConn;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->a:I

    .line 107
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->dataConnection:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    .line 108
    iput p2, p0, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->a:I

    .line 109
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 201
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiDataConnAc-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void
.end method

.method protected static cmdToString(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const v2, 0x44000

    .line 97
    sub-int v0, p0, v2

    .line 98
    if-ltz v0, :cond_0

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->b:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 99
    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->b:[Ljava/lang/String;

    aget-object v0, v1, v0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    add-int/2addr v0, v2

    invoke-static {v0}, Lcom/android/internal/util/AsyncChannel;->cmdToString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public connectSync(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 123
    const v0, 0x44000

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x44001

    if-ne v1, v2, :cond_0

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->rspConnect(Landroid/os/Message;)I

    move-result v0

    .line 128
    :goto_0
    return v0

    .line 127
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rspConnect error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->a(Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public disconnectSync(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 144
    const v0, 0x44002

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x44003

    if-ne v1, v2, :cond_0

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->rspDisconnect(Landroid/os/Message;)I

    move-result v0

    .line 149
    :goto_0
    return v0

    .line 148
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rspDisconnect error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->a(Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public isIdleDeactingSync()Z
    .locals 3

    .prologue
    .line 186
    const v0, 0x44006

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x44007

    if-ne v1, v2, :cond_0

    .line 188
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->rspIsIdleDeacting(Landroid/os/Message;)Z

    move-result v0

    .line 191
    :goto_0
    return v0

    .line 190
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rspIsIndleDeacting error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->a(Ljava/lang/String;)V

    .line 191
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIdleSync()Z
    .locals 3

    .prologue
    .line 165
    const v0, 0x44004

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x44005

    if-ne v1, v2, :cond_0

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->rspIsIdle(Landroid/os/Message;)Z

    move-result v0

    .line 170
    :goto_0
    return v0

    .line 169
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rspIsIndle error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->a(Ljava/lang/String;)V

    .line 170
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reqConnect(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 112
    const v0, 0x44000

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->sendMessage(ILjava/lang/Object;)V

    .line 113
    const-string/jumbo v0, "reqConnect"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->a(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public reqDisconnect(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 133
    const v0, 0x44002

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->sendMessage(ILjava/lang/Object;)V

    .line 134
    const-string/jumbo v0, "reqDisconnect"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->a(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public reqIsIdle()V
    .locals 1

    .prologue
    .line 154
    const v0, 0x44004

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->sendMessage(I)V

    .line 155
    const-string/jumbo v0, "reqIsIdle"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->a(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public reqIsIdleDeacting()V
    .locals 1

    .prologue
    .line 175
    const v0, 0x44006

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->sendMessage(I)V

    .line 176
    const-string/jumbo v0, "reqIsIdleDeacting"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->a(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public rspConnect(Landroid/os/Message;)I
    .locals 3
    .parameter

    .prologue
    .line 117
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rspConnect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->a(Ljava/lang/String;)V

    .line 119
    return v0
.end method

.method public rspDisconnect(Landroid/os/Message;)I
    .locals 3
    .parameter

    .prologue
    .line 138
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rspDisconnect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->a(Ljava/lang/String;)V

    .line 140
    return v0
.end method

.method public rspIsIdle(Landroid/os/Message;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 159
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    .line 160
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rspIsIdle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->a(Ljava/lang/String;)V

    .line 161
    return v0

    .line 159
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public rspIsIdleDeacting(Landroid/os/Message;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 180
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    .line 181
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rspIsIdleDeacting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->a(Ljava/lang/String;)V

    .line 182
    return v0

    .line 180
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->dataConnection:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
