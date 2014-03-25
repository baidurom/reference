.class public Landroid/os/MessageLogger;
.super Ljava/lang/Object;
.source "MessageLogger.java"

# interfaces
.implements Landroid/util/Printer;


# static fields
.field static final FLUSHOUT_SIZE:I = 0x800

.field static final LONGER_TIME:I = 0xc8

.field static final LONGER_TIME_MESSAGE_SIZE:I = 0x28

.field static final MESSAGE_SIZE:I = 0x28

.field private static final TAG:Ljava/lang/String; = "MessageLogger"

.field public static mEnableLooperLog:Z


# instance fields
.field private MSL_Warn:Ljava/lang/String;

.field private mElapsedLongTimeRecord:Ljava/util/LinkedList;

.field private mLastRecord:Ljava/lang/String;

.field private mLastRecordDateTime:J

.field private mLastRecordKernelTime:J

.field private mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

.field private mMessageHistoryRecord:Ljava/util/LinkedList;

.field private mMessageTimeRecord:Ljava/util/LinkedList;

.field private mMsgCnt:J

.field private mName:Ljava/lang/String;

.field private mNonSleepLastRecordKernelTime:J

.field private mNonSleepLongTimeRecord:Ljava/util/LinkedList;

.field private mNonSleepMessageTimeRecord:Ljava/util/LinkedList;

.field private mState:I

.field private messageInfo:Ljava/lang/String;

.field public nonSleepWallStart:J

.field public nonSleepWallTime:J

.field private sInstNotCreated:Ljava/lang/String;

.field public wallStart:J

.field public wallTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/MessageLogger;->mEnableLooperLog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageLogger;->mMessageTimeRecord:Ljava/util/LinkedList;

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageLogger;->mNonSleepMessageTimeRecord:Ljava/util/LinkedList;

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageLogger;->mNonSleepLongTimeRecord:Ljava/util/LinkedList;

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageLogger;->mElapsedLongTimeRecord:Ljava/util/LinkedList;

    .line 38
    iput-object v2, p0, Landroid/os/MessageLogger;->mLastRecord:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/MessageLogger;->mState:I

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/MessageLogger;->mMsgCnt:J

    .line 44
    iput-object v2, p0, Landroid/os/MessageLogger;->mName:Ljava/lang/String;

    .line 46
    const-string v0, "MSL Waraning:"

    iput-object v0, p0, Landroid/os/MessageLogger;->MSL_Warn:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/os/MessageLogger;->MSL_Warn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!!! MessageLoggerInstance might not be created !!!\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/MessageLogger;->sInstNotCreated:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .parameter "mValue"

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageLogger;->mMessageTimeRecord:Ljava/util/LinkedList;

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageLogger;->mNonSleepMessageTimeRecord:Ljava/util/LinkedList;

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageLogger;->mNonSleepLongTimeRecord:Ljava/util/LinkedList;

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageLogger;->mElapsedLongTimeRecord:Ljava/util/LinkedList;

    .line 38
    iput-object v2, p0, Landroid/os/MessageLogger;->mLastRecord:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/MessageLogger;->mState:I

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/MessageLogger;->mMsgCnt:J

    .line 44
    iput-object v2, p0, Landroid/os/MessageLogger;->mName:Ljava/lang/String;

    .line 46
    const-string v0, "MSL Waraning:"

    iput-object v0, p0, Landroid/os/MessageLogger;->MSL_Warn:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/os/MessageLogger;->MSL_Warn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!!! MessageLoggerInstance might not be created !!!\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/MessageLogger;->sInstNotCreated:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;

    .line 55
    sput-boolean p1, Landroid/os/MessageLogger;->mEnableLooperLog:Z

    .line 56
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 3
    .parameter "mValue"
    .parameter "Name"

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageLogger;->mMessageTimeRecord:Ljava/util/LinkedList;

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageLogger;->mNonSleepMessageTimeRecord:Ljava/util/LinkedList;

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageLogger;->mNonSleepLongTimeRecord:Ljava/util/LinkedList;

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageLogger;->mElapsedLongTimeRecord:Ljava/util/LinkedList;

    .line 38
    iput-object v2, p0, Landroid/os/MessageLogger;->mLastRecord:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/MessageLogger;->mState:I

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/MessageLogger;->mMsgCnt:J

    .line 44
    iput-object v2, p0, Landroid/os/MessageLogger;->mName:Ljava/lang/String;

    .line 46
    const-string v0, "MSL Waraning:"

    iput-object v0, p0, Landroid/os/MessageLogger;->MSL_Warn:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/os/MessageLogger;->MSL_Warn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!!! MessageLoggerInstance might not be created !!!\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/MessageLogger;->sInstNotCreated:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Landroid/os/MessageLogger;->mName:Ljava/lang/String;

    .line 59
    sput-boolean p1, Landroid/os/MessageLogger;->mEnableLooperLog:Z

    .line 60
    return-void
.end method

.method private flushedOrNot(Ljava/lang/StringBuilder;Z)Z
    .locals 2
    .parameter "sb"
    .parameter "bl"

    .prologue
    .line 148
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x800

    if-le v0, v1, :cond_1

    if-nez p2, :cond_1

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***Flushing, Current Size Is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",bool"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "***TAIL\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const/4 p2, 0x1

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;

    .line 154
    const-string v0, "MessageLogger"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 163
    :cond_0
    :goto_0
    return p2

    .line 160
    :cond_1
    if-eqz p2, :cond_0

    .line 161
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private sizeToIndex(I)I
    .locals 0
    .parameter "size"

    .prologue
    .line 142
    add-int/lit8 p1, p1, -0x1

    return p1
.end method


# virtual methods
.method public addTimeToList(Ljava/util/LinkedList;JJ)V
    .locals 1
    .parameter "mList"
    .parameter "startTime"
    .parameter "durationTime"

    .prologue
    .line 67
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public dump()V
    .locals 24

    .prologue
    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 235
    :try_start_0
    const-string v17, "MessageLogger"

    const-string v19, ">>> Entering MessageLogger.dump. to Dump MSG HISTORY <<<\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, ">>> Entering MessageLogger.dump. to Dump MSG HISTORY <<<\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v17

    if-nez v17, :cond_1

    .line 240
    :cond_0
    const-string v17, "MessageLogger"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageLogger;->sInstNotCreated:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageLogger;->sInstNotCreated:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Landroid/os/MessageLogger;->dumpMsgQueueFromCurrentThread()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :try_start_1
    invoke-static {}, Landroid/app/ANRManagerNative;->getDefault()Landroid/app/IANRManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/app/IANRManager;->informMessageDump(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 247
    :goto_0
    :try_start_2
    monitor-exit v18

    .line 333
    :goto_1
    return-void

    .line 244
    :catch_0
    move-exception v4

    .line 245
    .local v4, ex:Landroid/os/RemoteException;
    const-string v17, "MessageLogger"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "informMessageDump exception "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 332
    .end local v4           #ex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v17

    .line 260
    :cond_1
    const/4 v5, 0x0

    .line 261
    .local v5, flushed:Z
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v17, 0x400

    move/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 262
    .local v6, history:Ljava/lang/StringBuilder;
    const-string v17, "MSG HISTORY IN MAIN THREAD:\n"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Current kernel time : "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    move-object/from16 v0, v17

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v19, "ms\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string/jumbo v17, "yyyy-MM-dd HH:mm:ss.SSS"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 266
    .local v12, simpleDateFormat:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v13

    .line 267
    .local v13, sizeForMsgRecord:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/MessageLogger;->mState:I

    move/from16 v17, v0

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 268
    new-instance v3, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/os/MessageLogger;->mLastRecordDateTime:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x3e8

    div-long v19, v19, v21

    move-wide/from16 v0, v19

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 269
    .local v3, date:Ljava/util/Date;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/os/MessageLogger;->mLastRecordKernelTime:J

    move-wide/from16 v21, v0

    sub-long v14, v19, v21

    .line 270
    .local v14, spent:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/os/MessageLogger;->mNonSleepLastRecordKernelTime:J

    move-wide/from16 v21, v0

    sub-long v9, v19, v21

    .line 272
    .local v9, nonSleepSpent:J
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Last record : "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Last record dispatching elapsedTime:"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " ms/upTime:"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " ms\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Last record dispatching time : "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    add-int/lit8 v13, v13, -0x1

    .line 280
    .end local v3           #date:Ljava/util/Date;
    .end local v9           #nonSleepSpent:J
    .end local v14           #spent:J
    :cond_2
    const/4 v8, 0x0

    .line 281
    .local v8, msg:Ljava/lang/String;
    const/16 v16, 0x0

    .line 282
    .local v16, time:Ljava/lang/Long;
    const/4 v11, 0x0

    .line 283
    .local v11, nonSleepTime:Ljava/lang/Long;
    const/4 v5, 0x0

    .line 284
    :goto_2
    if-lez v13, :cond_4

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/os/MessageLogger;->sizeToIndex(I)I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #msg:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 286
    .restart local v8       #msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageLogger;->mMessageTimeRecord:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/os/MessageLogger;->sizeToIndex(I)I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #time:Ljava/lang/Long;
    check-cast v16, Ljava/lang/Long;

    .line 287
    .restart local v16       #time:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageLogger;->mNonSleepMessageTimeRecord:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/os/MessageLogger;->sizeToIndex(I)I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #nonSleepTime:Ljava/lang/Long;
    check-cast v11, Ljava/lang/Long;

    .line 288
    .restart local v11       #nonSleepTime:Ljava/lang/Long;
    const-string v17, ">"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 289
    new-instance v3, Ljava/util/Date;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    div-long v19, v19, v21

    move-wide/from16 v0, v19

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 290
    .restart local v3       #date:Ljava/util/Date;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " from "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .end local v3           #date:Ljava/util/Date;
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Landroid/os/MessageLogger;->flushedOrNot(Ljava/lang/StringBuilder;Z)Z

    move-result v5

    .line 284
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_2

    .line 293
    :cond_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " elapsedTime:"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    div-long v19, v19, v21

    move-object/from16 v0, v17

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " ms/upTime:"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " ms"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 300
    :cond_4
    const-string v17, "=== Finish Dumping MSG HISTORY===\n"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const/4 v5, 0x0

    .line 304
    const-string v17, "=== LONGER MSG HISTORY IN MAIN THREAD ===\n"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v13

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageLogger;->mNonSleepLongTimeRecord:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v17

    add-int/lit8 v7, v17, -0x1

    .line 307
    .local v7, indexForTimeRecord:I
    :goto_4
    if-lez v13, :cond_5

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/os/MessageLogger;->sizeToIndex(I)I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #msg:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 309
    .restart local v8       #msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageLogger;->mNonSleepLongTimeRecord:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #nonSleepTime:Ljava/lang/Long;
    check-cast v11, Ljava/lang/Long;

    .line 310
    .restart local v11       #nonSleepTime:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageLogger;->mNonSleepLongTimeRecord:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    add-int/lit8 v19, v7, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #time:Ljava/lang/Long;
    check-cast v16, Ljava/lang/Long;

    .line 311
    .restart local v16       #time:Ljava/lang/Long;
    new-instance v3, Ljava/util/Date;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    div-long v19, v19, v21

    move-wide/from16 v0, v19

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 312
    .restart local v3       #date:Ljava/util/Date;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " from "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " elapsedTime:"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageLogger;->mElapsedLongTimeRecord:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " ms/upTime:"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v19, "ms"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Landroid/os/MessageLogger;->flushedOrNot(Ljava/lang/StringBuilder;Z)Z

    move-result v5

    .line 307
    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v7, v7, -0x2

    goto/16 :goto_4

    .line 316
    .end local v3           #date:Ljava/util/Date;
    :cond_5
    const-string v17, "=== Finish Dumping LONGER MSG HISTORY===\n"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;

    .line 319
    const-string v17, "MessageLogger"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 325
    :try_start_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Landroid/os/MessageLogger;->dumpMsgQueueFromCurrentThread()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;

    .line 326
    invoke-static {}, Landroid/app/ANRManagerNative;->getDefault()Landroid/app/IANRManager;

    move-result-object v17

    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/app/IANRManager;->informMessageDump(Ljava/lang/String;I)V

    .line 327
    const-string v17, ""

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 332
    :goto_5
    :try_start_5
    monitor-exit v18

    goto/16 :goto_1

    .line 328
    :catch_1
    move-exception v4

    .line 329
    .restart local v4       #ex:Landroid/os/RemoteException;
    const-string v17, "MessageLogger"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "informMessageDump exception "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5
.end method

.method public dumpMsgQueueFromCurrentThread()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, currLooper:Landroid/os/Looper;
    const/4 v1, 0x0

    .line 191
    .local v1, currMsgQueue:Landroid/os/MessageQueue;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 192
    const-string v6, "MessageLogger"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/os/MessageLogger;->MSL_Warn:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "!!! Current MainLooper is Null !!!\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/os/MessageLogger;->MSL_Warn:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!!! Current MainLooper is Null !!!\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;

    .line 204
    :goto_0
    const/4 v2, 0x0

    .line 205
    .local v2, flushed:Z
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v6, 0x400

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 207
    .local v3, history:Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/os/MessageLogger;->MSL_Warn:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!!! Calling thread from PID:%d\'s TID:%d(%s),Thread\'s type is %s!!!\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v14, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 214
    .local v5, stkTrace:[Ljava/lang/StackTraceElement;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/os/MessageLogger;->MSL_Warn:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!!! get StackTrace: !!!\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const/4 v4, 0x0

    .local v4, index:I
    :goto_1
    array-length v6, v5

    if-ge v4, v6, :cond_2

    .line 217
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/os/MessageLogger;->MSL_Warn:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "File:%s\'s Linenumber:%d, Class:%s, Method:%s\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v14, [Ljava/lang/Object;

    aget-object v8, v5, v4

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    aget-object v8, v5, v4

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    aget-object v8, v5, v4

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    aget-object v8, v5, v4

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-direct {p0, v3, v2}, Landroid/os/MessageLogger;->flushedOrNot(Ljava/lang/StringBuilder;Z)Z

    move-result v2

    .line 215
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 196
    .end local v2           #flushed:Z
    .end local v3           #history:Ljava/lang/StringBuilder;
    .end local v4           #index:I
    .end local v5           #stkTrace:[Ljava/lang/StackTraceElement;
    :cond_0
    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    if-nez v1, :cond_1

    .line 197
    const-string v6, "MessageLogger"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/os/MessageLogger;->MSL_Warn:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "!!! Current MainLooper\'s MsgQueue is Null !!!\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/os/MessageLogger;->MSL_Warn:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/os/MessageLogger;->MSL_Warn:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!!! Current MainLooper\'s MsgQueue is Null !!!\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;

    goto/16 :goto_0

    .line 201
    :cond_1
    invoke-virtual {v1}, Landroid/os/MessageQueue;->dumpMessageQueue()Ljava/lang/String;

    move-result-object v6

    .line 230
    :goto_2
    return-object v6

    .line 225
    .restart local v2       #flushed:Z
    .restart local v3       #history:Ljava/lang/StringBuilder;
    .restart local v4       #index:I
    .restart local v5       #stkTrace:[Ljava/lang/StackTraceElement;
    :cond_2
    if-nez v2, :cond_3

    .line 226
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;

    .line 227
    const-string v6, "MessageLogger"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_3
    const-string v6, ""

    goto :goto_2
.end method

.method public println(Ljava/lang/String;)V
    .locals 10
    .parameter "s"

    .prologue
    const/16 v9, 0x28

    .line 73
    iget-object v8, p0, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    monitor-enter v8

    .line 74
    :try_start_0
    iget v0, p0, Landroid/os/MessageLogger;->mState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/MessageLogger;->mState:I

    .line 75
    iget-object v0, p0, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v7

    .line 76
    .local v7, size:I
    if-le v7, v9, :cond_0

    .line 77
    iget-object v0, p0, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Landroid/os/MessageLogger;->mMessageTimeRecord:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Landroid/os/MessageLogger;->mNonSleepMessageTimeRecord:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Msg#:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/MessageLogger;->mMsgCnt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    iget-wide v0, p0, Landroid/os/MessageLogger;->mMsgCnt:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/MessageLogger;->mMsgCnt:J

    .line 84
    iget-object v0, p0, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageLogger;->mLastRecordKernelTime:J

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageLogger;->mNonSleepLastRecordKernelTime:J

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageLogger;->mLastRecordDateTime:J

    .line 88
    iget v0, p0, Landroid/os/MessageLogger;->mState:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/MessageLogger;->mState:I

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/MessageLogger;->wallStart:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/MessageLogger;->wallTime:J

    .line 91
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/MessageLogger;->nonSleepWallStart:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/MessageLogger;->nonSleepWallTime:J

    .line 92
    iget-object v1, p0, Landroid/os/MessageLogger;->mMessageTimeRecord:Ljava/util/LinkedList;

    iget-wide v2, p0, Landroid/os/MessageLogger;->wallStart:J

    iget-wide v4, p0, Landroid/os/MessageLogger;->wallTime:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/MessageLogger;->addTimeToList(Ljava/util/LinkedList;JJ)V

    .line 93
    iget-object v1, p0, Landroid/os/MessageLogger;->mNonSleepMessageTimeRecord:Ljava/util/LinkedList;

    iget-wide v2, p0, Landroid/os/MessageLogger;->nonSleepWallStart:J

    iget-wide v4, p0, Landroid/os/MessageLogger;->nonSleepWallTime:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/MessageLogger;->addTimeToList(Ljava/util/LinkedList;JJ)V

    .line 95
    iget-wide v0, p0, Landroid/os/MessageLogger;->nonSleepWallTime:J

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 96
    iget-object v0, p0, Landroid/os/MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v0, v9, :cond_1

    .line 98
    iget-object v0, p0, Landroid/os/MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 99
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    const/4 v0, 0x2

    if-ge v6, v0, :cond_1

    .line 101
    iget-object v0, p0, Landroid/os/MessageLogger;->mNonSleepLongTimeRecord:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Landroid/os/MessageLogger;->mElapsedLongTimeRecord:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 99
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 106
    .end local v6           #i:I
    :cond_1
    iget-object v0, p0, Landroid/os/MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, p0, Landroid/os/MessageLogger;->mNonSleepLongTimeRecord:Ljava/util/LinkedList;

    iget-wide v2, p0, Landroid/os/MessageLogger;->wallStart:J

    iget-wide v4, p0, Landroid/os/MessageLogger;->nonSleepWallTime:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/MessageLogger;->addTimeToList(Ljava/util/LinkedList;JJ)V

    .line 108
    iget-object v1, p0, Landroid/os/MessageLogger;->mElapsedLongTimeRecord:Ljava/util/LinkedList;

    iget-wide v2, p0, Landroid/os/MessageLogger;->wallStart:J

    iget-wide v4, p0, Landroid/os/MessageLogger;->wallTime:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/MessageLogger;->addTimeToList(Ljava/util/LinkedList;JJ)V

    .line 131
    :cond_2
    :goto_1
    sget-boolean v0, Landroid/os/MessageLogger;->mEnableLooperLog:Z

    if-eqz v0, :cond_3

    .line 132
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 133
    const-string v0, "MessageLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debugging_MessageLogger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_3
    :goto_2
    monitor-exit v8

    .line 139
    return-void

    .line 112
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageLogger;->wallStart:J

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageLogger;->nonSleepWallStart:J

    goto :goto_1

    .line 138
    .end local v7           #size:I
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 135
    .restart local v7       #size:I
    :cond_5
    :try_start_1
    const-string v0, "MessageLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debugging_MessageLogger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/MessageLogger;->wallTime:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public setInitStr(Ljava/lang/String;)V
    .locals 0
    .parameter "str_tmp"

    .prologue
    .line 145
    iput-object p1, p0, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;

    .line 146
    return-void
.end method
