.class Lcom/android/internal/telephony/cat/RilMessageDecoder;
.super Lcom/android/internal/util/StateMachine;
.source "RilMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/RilMessageDecoder$1;,
        Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;,
        Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;
    }
.end annotation


# static fields
.field private static final CMD_PARAMS_READY:I = 0x2

.field private static final CMD_START:I = 0x1

.field public static final GEMINI_SIM_1:I = 0x0

.field public static final GEMINI_SIM_2:I = 0x1

.field private static sInstanceSim1:Lcom/android/internal/telephony/cat/RilMessageDecoder;

.field private static sInstanceSim2:Lcom/android/internal/telephony/cat/RilMessageDecoder;


# instance fields
.field private mCaller:Landroid/os/Handler;

.field private mCmdParamsFactory:Lcom/android/internal/telephony/cat/CommandParamsFactory;

.field private mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

.field private mStateCmdParamsReady:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;

.field private mStateStart:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    sput-object v0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sInstanceSim1:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 46
    sput-object v0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sInstanceSim2:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 2
    .parameter "caller"
    .parameter "fh"

    .prologue
    const/4 v1, 0x0

    .line 116
    const-string v0, "RilMessageDecoder"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    .line 40
    iput-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    .line 41
    iput-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 56
    new-instance v0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;-><init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessageDecoder$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;

    .line 57
    new-instance v0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;-><init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessageDecoder$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->addState(Lcom/android/internal/util/State;)V

    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->addState(Lcom/android/internal/util/State;)V

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->setInitialState(Lcom/android/internal/util/State;)V

    .line 122
    iput-object p1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCaller is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    check-cast v0, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->getInstance(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/IccFileHandler;Landroid/content/Context;)Lcom/android/internal/telephony/cat/CommandParamsFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    .line 130
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessage;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->decodeMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cat/RilMessageDecoder;)Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/cat/RilMessageDecoder;)Lcom/android/internal/telephony/cat/RilMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/cat/RilMessage;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/cat/RilMessageDecoder;)Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/cat/RilMessageDecoder;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method private decodeMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)Z
    .locals 5
    .parameter "rilMsg"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    .line 168
    iget v3, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    packed-switch v3, :pswitch_data_0

    .line 203
    const/4 v0, 0x0

    .line 206
    .local v0, decodingStarted:Z
    :goto_0
    return v0

    .line 171
    .end local v0           #decodingStarted:Z
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v4, v3, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 172
    iget-object v3, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 173
    const/4 v0, 0x0

    .line 174
    .restart local v0       #decodingStarted:Z
    goto :goto_0

    .line 178
    .end local v0           #decodingStarted:Z
    :pswitch_1
    const/4 v2, 0x0

    .line 180
    .local v2, rawData:[B
    :try_start_0
    iget-object v3, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 189
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    invoke-static {v2}, Lcom/android/internal/telephony/cat/BerTlv;->decode([B)Lcom/android/internal/telephony/cat/BerTlv;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->make(Lcom/android/internal/telephony/cat/BerTlv;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    const/4 v0, 0x1

    .restart local v0       #decodingStarted:Z
    goto :goto_0

    .line 181
    .end local v0           #decodingStarted:Z
    :catch_0
    move-exception v1

    .line 183
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "decodeMessageParams dropping zombie messages"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x0

    .line 185
    .restart local v0       #decodingStarted:Z
    goto :goto_0

    .line 191
    .end local v0           #decodingStarted:Z
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 195
    .local v1, e:Lcom/android/internal/telephony/cat/ResultException;
    iget-object v3, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    const/4 v4, 0x1

    iput v4, v3, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    .line 197
    iget-object v3, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 198
    iget-object v3, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 199
    const/4 v0, 0x0

    .line 201
    .restart local v0       #decodingStarted:Z
    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/IccFileHandler;I)Lcom/android/internal/telephony/cat/RilMessageDecoder;
    .locals 5
    .parameter "caller"
    .parameter "fh"
    .parameter "simId"

    .prologue
    const/4 v4, 0x1

    .line 67
    const-class v3, Lcom/android/internal/telephony/cat/RilMessageDecoder;

    monitor-enter v3

    const/4 v0, 0x0

    .line 69
    .local v0, tempInstance:Lcom/android/internal/telephony/cat/RilMessageDecoder;
    if-ne v4, p2, :cond_0

    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sInstanceSim2:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    if-eqz v2, :cond_1

    :cond_0
    if-nez p2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sInstanceSim1:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    if-nez v2, :cond_2

    .line 70
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;-><init>(Landroid/os/Handler;Lcom/android/internal/telephony/IccFileHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .end local v0           #tempInstance:Lcom/android/internal/telephony/cat/RilMessageDecoder;
    .local v1, tempInstance:Lcom/android/internal/telephony/cat/RilMessageDecoder;
    :try_start_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 74
    .end local v1           #tempInstance:Lcom/android/internal/telephony/cat/RilMessageDecoder;
    .restart local v0       #tempInstance:Lcom/android/internal/telephony/cat/RilMessageDecoder;
    :cond_2
    if-ne v4, p2, :cond_3

    .line 75
    :try_start_2
    sput-object v0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sInstanceSim2:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 76
    sget-object v2, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sInstanceSim2:Lcom/android/internal/telephony/cat/RilMessageDecoder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    :goto_0
    monitor-exit v3

    return-object v2

    .line 78
    :cond_3
    :try_start_3
    sput-object v0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sInstanceSim1:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 79
    sget-object v2, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sInstanceSim1:Lcom/android/internal/telephony/cat/RilMessageDecoder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v2

    :goto_1
    monitor-exit v3

    throw v2

    .end local v0           #tempInstance:Lcom/android/internal/telephony/cat/RilMessageDecoder;
    .restart local v1       #tempInstance:Lcom/android/internal/telephony/cat/RilMessageDecoder;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #tempInstance:Lcom/android/internal/telephony/cat/RilMessageDecoder;
    .restart local v0       #tempInstance:Lcom/android/internal/telephony/cat/RilMessageDecoder;
    goto :goto_1
.end method

.method private sendCmdForExecution(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 4
    .parameter "rilMsg"

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    const/16 v2, 0xa

    new-instance v3, Lcom/android/internal/telephony/cat/RilMessage;

    invoke-direct {v3, p1}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(Lcom/android/internal/telephony/cat/RilMessage;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 112
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 113
    return-void
.end method


# virtual methods
.method public sendMsgParamsDecoded(Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 2
    .parameter "resCode"
    .parameter "cmdParams"

    .prologue
    .line 103
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 104
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 105
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendMessage(Landroid/os/Message;)V

    .line 107
    return-void
.end method

.method public sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 2
    .parameter "rilMsg"

    .prologue
    .line 91
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 92
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendMessage(Landroid/os/Message;)V

    .line 94
    return-void
.end method
