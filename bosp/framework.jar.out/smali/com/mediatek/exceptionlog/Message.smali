.class public Lcom/mediatek/exceptionlog/Message;
.super Ljava/lang/Object;
.source "Message.java"


# instance fields
.field public mArg:I

.field public mCmdId:I

.field public mCmdType:I

.field public mLen:I

.field public mSeq:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCmdId(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 68
    packed-switch p1, :pswitch_data_0

    .line 83
    const-string v0, "AE_CMD_UNDEF"

    :goto_0
    return-object v0

    .line 69
    :pswitch_0
    const-string v0, "AE_REQ_IDX"

    goto :goto_0

    .line 70
    :pswitch_1
    const-string v0, "AE_REQ_CLASS"

    goto :goto_0

    .line 71
    :pswitch_2
    const-string v0, "AE_REQ_TYPE"

    goto :goto_0

    .line 72
    :pswitch_3
    const-string v0, "AE_REQ_PROCESS"

    goto :goto_0

    .line 73
    :pswitch_4
    const-string v0, "AE_REQ_MODULE"

    goto :goto_0

    .line 74
    :pswitch_5
    const-string v0, "AE_REQ_BACKTRACE"

    goto :goto_0

    .line 75
    :pswitch_6
    const-string v0, "AE_REQ_DETAIL"

    goto :goto_0

    .line 76
    :pswitch_7
    const-string v0, "AE_REQ_ROOT_LOG_DIR"

    goto :goto_0

    .line 77
    :pswitch_8
    const-string v0, "AE_REQ_CURR_LOG_DIR"

    goto :goto_0

    .line 78
    :pswitch_9
    const-string v0, "AE_REQ_DFLT_LOG_DIR"

    goto :goto_0

    .line 79
    :pswitch_a
    const-string v0, "AE_REQ_MAIN_LOG_FILE_PATH"

    goto :goto_0

    .line 80
    :pswitch_b
    const-string v0, "AE_IND_EXP_RAISED"

    goto :goto_0

    .line 81
    :pswitch_c
    const-string v0, "AE_IND_LOG_STATUS"

    goto :goto_0

    .line 82
    :pswitch_d
    const-string v0, "AE_IND_LOG_CLOSE"

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public getExceptionClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/exceptionlog/Message;->mArg:I

    packed-switch v0, :pswitch_data_0

    .line 92
    const-string v0, "Unknown Eexception"

    :goto_0
    return-object v0

    .line 88
    :pswitch_0
    const-string v0, "Kernel Exception"

    goto :goto_0

    .line 89
    :pswitch_1
    const-string v0, "Native Exception"

    goto :goto_0

    .line 90
    :pswitch_2
    const-string v0, "Java Exception"

    goto :goto_0

    .line 91
    :pswitch_3
    const-string v0, "External Exception"

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 60
    packed-switch p1, :pswitch_data_0

    .line 64
    const-string v0, "AE_TYPE_UNDEF"

    :goto_0
    return-object v0

    .line 61
    :pswitch_0
    const-string v0, "AE_REQ"

    goto :goto_0

    .line 62
    :pswitch_1
    const-string v0, "AE_RSP"

    goto :goto_0

    .line 63
    :pswitch_2
    const-string v0, "AE_IND"

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public read([B)V
    .locals 2
    .parameter "buf"

    .prologue
    .line 51
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 52
    .local v0, bb:Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 53
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/mediatek/exceptionlog/Message;->mCmdType:I

    .line 54
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/mediatek/exceptionlog/Message;->mCmdId:I

    .line 55
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/mediatek/exceptionlog/Message;->mSeq:I

    .line 56
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/mediatek/exceptionlog/Message;->mArg:I

    .line 57
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/mediatek/exceptionlog/Message;->mLen:I

    .line 58
    return-void
.end method
