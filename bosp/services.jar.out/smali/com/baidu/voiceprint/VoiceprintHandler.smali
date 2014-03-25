.class public final Lcom/baidu/voiceprint/VoiceprintHandler;
.super Ljava/lang/Object;
.source "VoiceprintHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;,
        Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x10000

.field private static final CHANNEL_CONF:I = 0x10

.field public static final DATA_NOT_VALID:I = 0x1

.field public static final DATA_TOO_MUCH:I = 0x4

.field private static final DBG:Z = true

.field public static final ENROLL_PRIVATE:I = 0x1

.field public static final ENROLL_PUBLIC:I = 0x0

.field public static final FILE_WRITING_ERROR:I = 0x5

.field private static final MAX_SP_DURATION:I = 0x118

.field private static final MAX_WAIT_DURATION:I = 0x96

.field public static final MODEL_LOADING_FAILED:I = 0x2

.field public static final MORE_DATA_REQUIRED:I = 0x3

.field public static final OTHER_ERROR:I = 0x5

.field private static final OUTPUT_FORMAT:I = 0x2

.field private static final PP_BUFFER_SIZE:I = 0x4000

.field public static final PRIVATE:I = 0x2

.field public static final PUBLIC:I = 0x1

.field private static final RCV_BUFFER_SIZE:I = 0x2000

.field private static final RECORDING_INTERVAL:I = 0x64

.field public static final REJECT:I = 0x0

.field private static final SAMPLE_RATE:I = 0x3e80

.field public static final SUCCESSFUL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VoiceprintHandler"

.field public static final TEST:I = 0x2

.field public static final VOICE_TRANS_ADD_BUFFER:I = 0x1

.field public static final VOICE_TRANS_CLEAR_UTTERANCE:I = 0x4

.field public static final VOICE_TRANS_ENROLL:I = 0x3

.field public static final VOICE_TRANS_INIT:I = 0x0

.field public static final VOICE_TRANS_INIT_NEW_TEST:I = 0x5

.field public static final VOICE_TRANS_TEST:I = 0x2

.field public static final VOICE_TRANS_UNINIT:I = 0x6

.field public static final mEnrollDumpDir:Ljava/lang/String;

.field private static mInstance:Lcom/baidu/voiceprint/VoiceprintHandler;

.field public static final mModelPath:Ljava/lang/String;

.field private static final mNullStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

.field private static mPostProcessor:Lcom/baidu/android/vad/JNI;

.field private static final mRawDataBuffer:[S

.field public static final mTestDumpDir:Ljava/lang/String;


# instance fields
.field private isRec:Z

.field private mAmplitude:I

.field private mMode:I

.field private mRawRecorder:Landroid/media/AudioRecord;

.field private mRecordingTask:Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;

.field private mRegisteredStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

.field private mStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

.field private mTestScore:F

.field private mVoiceTransState:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/workspace.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/voiceprint/VoiceprintHandler;->mModelPath:Ljava/lang/String;

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/dumptest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/voiceprint/VoiceprintHandler;->mTestDumpDir:Ljava/lang/String;

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/dumpenroll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/voiceprint/VoiceprintHandler;->mEnrollDumpDir:Ljava/lang/String;

    .line 79
    const/16 v1, 0x2000

    new-array v1, v1, [S

    sput-object v1, Lcom/baidu/voiceprint/VoiceprintHandler;->mRawDataBuffer:[S

    .line 89
    new-instance v1, Lcom/baidu/voiceprint/VoiceprintHandler$1;

    invoke-direct {v1}, Lcom/baidu/voiceprint/VoiceprintHandler$1;-><init>()V

    sput-object v1, Lcom/baidu/voiceprint/VoiceprintHandler;->mNullStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    .line 247
    new-instance v1, Lcom/baidu/android/vad/JNI;

    invoke-direct {v1}, Lcom/baidu/android/vad/JNI;-><init>()V

    sput-object v1, Lcom/baidu/voiceprint/VoiceprintHandler;->mPostProcessor:Lcom/baidu/android/vad/JNI;

    .line 248
    sget-object v1, Lcom/baidu/voiceprint/VoiceprintHandler;->mPostProcessor:Lcom/baidu/android/vad/JNI;

    const/16 v2, 0x96

    invoke-virtual {v1, v4, v2}, Lcom/baidu/android/vad/JNI;->mfeSetParam(II)I

    move-result v0

    .line 249
    .local v0, ret:I
    const-string v1, "VoiceprintHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JNI.PARAM_MAX_WAIT_DURATION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v1, "VoiceprintHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get JNI.PARAM_MAX_WAIT_DURATION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/baidu/voiceprint/VoiceprintHandler;->mPostProcessor:Lcom/baidu/android/vad/JNI;

    invoke-virtual {v3, v4}, Lcom/baidu/android/vad/JNI;->mfeGetParam(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sget-object v1, Lcom/baidu/voiceprint/VoiceprintHandler;->mPostProcessor:Lcom/baidu/android/vad/JNI;

    const/16 v2, 0x118

    invoke-virtual {v1, v5, v2}, Lcom/baidu/android/vad/JNI;->mfeSetParam(II)I

    move-result v0

    .line 252
    const-string v1, "VoiceprintHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JNI.PARAM_MAX_SP_DURATION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v1, "VoiceprintHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get JNI.PARAM_MAX_SP_DURATION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/baidu/voiceprint/VoiceprintHandler;->mPostProcessor:Lcom/baidu/android/vad/JNI;

    invoke-virtual {v3, v5}, Lcom/baidu/android/vad/JNI;->mfeGetParam(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    sget-object v1, Lcom/baidu/voiceprint/VoiceprintHandler;->mPostProcessor:Lcom/baidu/android/vad/JNI;

    const/16 v2, 0x3e80

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/baidu/android/vad/JNI;->mfeInit(II)I

    move-result v1

    if-gez v1, :cond_0

    .line 255
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "mfeInit() failed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 256
    :cond_0
    sget-object v1, Lcom/baidu/voiceprint/VoiceprintHandler;->mPostProcessor:Lcom/baidu/android/vad/JNI;

    invoke-virtual {v1}, Lcom/baidu/android/vad/JNI;->mfeOpen()I

    move-result v1

    if-gez v1, :cond_1

    .line 257
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "mfeOpen() failed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 259
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v2, 0x3e80

    const/16 v3, 0x10

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x6

    iput v0, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mVoiceTransState:I

    .line 59
    iput-boolean v1, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->isRec:Z

    .line 62
    iput v1, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mAmplitude:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mTestScore:F

    .line 84
    sget-object v0, Lcom/baidu/voiceprint/VoiceprintHandler;->mNullStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    iput-object v0, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    .line 276
    invoke-static {v2, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 278
    .local v5, bufferSize:I
    const/high16 v0, 0x1

    if-ge v5, v0, :cond_0

    .line 279
    const/high16 v5, 0x1

    .line 281
    :cond_0
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mRawRecorder:Landroid/media/AudioRecord;

    .line 285
    new-instance v0, Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;-><init>(Lcom/baidu/voiceprint/VoiceprintHandler;Lcom/baidu/voiceprint/VoiceprintHandler$1;)V

    iput-object v0, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mRecordingTask:Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;

    .line 286
    iget-object v0, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mRecordingTask:Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;

    invoke-virtual {v0}, Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;->start()V

    .line 287
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 289
    const-string v0, "VoiceprintHandler"

    const-string v1, "Initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/voiceprint/VoiceprintHandler;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/baidu/voiceprint/VoiceprintHandler;->doRecording()V

    return-void
.end method

.method static synthetic access$102(Lcom/baidu/voiceprint/VoiceprintHandler;Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;)Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    return-object p1
.end method

.method static synthetic access$200(Lcom/baidu/voiceprint/VoiceprintHandler;)Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mRegisteredStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    return-object v0
.end method

.method static synthetic access$300()Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/baidu/voiceprint/VoiceprintHandler;->mNullStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    return-object v0
.end method

.method private doRecording()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v12, -0x2

    const/4 v11, -0x3

    .line 321
    iget-object v7, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    if-nez v7, :cond_0

    .line 322
    const-string v7, "VoiceprintHandler"

    const-string v8, "do recording while these\'s no StateListener registered."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :goto_0
    return-void

    .line 327
    :cond_0
    sget-object v7, Lcom/baidu/voiceprint/VoiceprintHandler;->mPostProcessor:Lcom/baidu/android/vad/JNI;

    invoke-virtual {v7}, Lcom/baidu/android/vad/JNI;->mfeStop()I

    .line 328
    sget-object v7, Lcom/baidu/voiceprint/VoiceprintHandler;->mPostProcessor:Lcom/baidu/android/vad/JNI;

    invoke-virtual {v7}, Lcom/baidu/android/vad/JNI;->mfeStart()I

    move-result v7

    if-gez v7, :cond_1

    .line 329
    iget-object v7, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    invoke-interface {v7, v12}, Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;->onError(I)V

    goto :goto_0

    .line 334
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mRawRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v7}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 343
    :cond_2
    :goto_1
    const-wide/16 v7, 0x64

    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 344
    iget-object v7, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mRawRecorder:Landroid/media/AudioRecord;

    sget-object v8, Lcom/baidu/voiceprint/VoiceprintHandler;->mRawDataBuffer:[S

    const/4 v9, 0x0

    const/16 v10, 0x2000

    invoke-virtual {v7, v8, v9, v10}, Landroid/media/AudioRecord;->read([SII)I

    move-result v2

    .line 346
    .local v2, length:I
    if-ne v2, v11, :cond_4

    .line 348
    iget-object v7, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    invoke-interface {v7}, Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;->onVoiceEnd()V

    .line 349
    sget-object v7, Lcom/baidu/voiceprint/VoiceprintHandler;->mNullStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    iput-object v7, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    :try_start_2
    sget-object v7, Lcom/baidu/voiceprint/VoiceprintHandler;->mPostProcessor:Lcom/baidu/android/vad/JNI;

    invoke-virtual {v7}, Lcom/baidu/android/vad/JNI;->mfeStop()I

    move-result v7

    if-gez v7, :cond_3

    .line 407
    const-string v7, "VoiceprintHandler"

    const-string v8, "Failed to stop PostProcessor"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v7, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    const/4 v8, -0x3

    invoke-interface {v7, v8}, Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;->onError(I)V

    .line 410
    :cond_3
    iget-object v7, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mRawRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v7}, Landroid/media/AudioRecord;->stop()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v7, "VoiceprintHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to stop AudioRecord :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v7, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    invoke-interface {v7, v11}, Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;->onError(I)V

    goto :goto_0

    .line 335
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .end local v2           #length:I
    :catch_1
    move-exception v0

    .line 336
    .restart local v0       #e:Ljava/lang/IllegalStateException;
    sget-object v7, Lcom/baidu/voiceprint/VoiceprintHandler;->mPostProcessor:Lcom/baidu/android/vad/JNI;

    invoke-virtual {v7}, Lcom/baidu/android/vad/JNI;->mfeStop()I

    .line 337
    iget-object v7, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    invoke-interface {v7, v11}, Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;->onError(I)V

    goto :goto_0

    .line 353
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .restart local v2       #length:I
    :cond_4
    if-ne v2, v12, :cond_6

    .line 354
    :try_start_3
    iget-object v7, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    const/4 v8, -0x1

    invoke-interface {v7, v8}, Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;->onError(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 406
    :try_start_4
    sget-object v7, Lcom/baidu/voiceprint/VoiceprintHandler;->mPostProcessor:Lcom/baidu/android/vad/JNI;

    invoke-virtual {v7}, Lcom/baidu/android/vad/JNI;->mfeStop()I

    move-result v7

    if-gez v7, :cond_5

    .line 407
    const-string v7, "VoiceprintHandler"

    const-string v8, "Failed to stop PostProcessor"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v7, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    const/4 v8, -0x3

    invoke-interface {v7, v8}, Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;->onError(I)V

    .line 410
    :cond_5
    iget-object v7, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mRawRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v7}, Landroid/media/AudioRecord;->stop()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 411
    :catch_2
    move-exception v0

    .line 412
    .restart local v0       #e:Ljava/lang/IllegalStateException;
    const-string v7, "VoiceprintHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to stop AudioRecord :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v7, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    invoke-interface {v7, v11}, Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;->onError(I)V

    goto/16 :goto_0

    .line 359
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_6
    if-eqz v2, :cond_2

    .line 362
    :try_start_5
    new-array v4, v2, [S

    .line 363
    .local v4, targetBuffer:[S
    const/4 v6, 0x0

    .line 364
    .local v6, v:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_9

    .line 365
    sget-object v7, Lcom/baidu/voiceprint/VoiceprintHandler;->mRawDataBuffer:[S

    aget-short v5, v7, v1

    .line 366
    .local v5, tmp:S
    aput-short v5, v4, v1

    .line 367
    if-gez v5, :cond_7

    .line 368
    neg-int v7, v5

    int-to-short v5, v7

    .line 370
    :cond_7
    iget v7, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mAmplitude:I

    if-ge v7, v5, :cond_8

    .line 371
    iput v5, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mAmplitude:I

    .line 364
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 375
    .end local v5           #tmp:S
    :cond_9
    sget-object v7, Lcom/baidu/voiceprint/VoiceprintHandler;->mPostProcessor:Lcom/baidu/android/vad/JNI;

    sget-object v8, Lcom/baidu/voiceprint/VoiceprintHandler;->mRawDataBuffer:[S

    invoke-virtual {v7, v8, v2}, Lcom/baidu/android/vad/JNI;->mfeSendData([SI)I

    .line 377
    sget-object v7, Lcom/baidu/voiceprint/VoiceprintHandler;->mPostProcessor:Lcom/baidu/android/vad/JNI;

    invoke-virtual {v7}, Lcom/baidu/android/vad/JNI;->mfeDetect()I

    move-result v3

    .line 379
    .local v3, ppFlag:I
    packed-switch v3, :pswitch_data_0

    .line 396
    :goto_3
    const-string v7, "VoiceprintHandler"

    const-string v8, "vad other error in PostProcessor"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v7, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    const/4 v8, 0x1

    invoke-interface {v7, v4, v2, v8}, Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;->onPartialData([SII)V

    .line 398
    iget-object v7, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    invoke-interface {v7}, Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;->onVoiceEnd()V

    .line 399
    sget-object v7, Lcom/baidu/voiceprint/VoiceprintHandler;->mNullStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    iput-object v7, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 406
    :try_start_6
    sget-object v7, Lcom/baidu/voiceprint/VoiceprintHandler;->mPostProcessor:Lcom/baidu/android/vad/JNI;

    invoke-virtual {v7}, Lcom/baidu/android/vad/JNI;->mfeStop()I

    move-result v7

    if-gez v7, :cond_a

    .line 407
    const-string v7, "VoiceprintHandler"

    const-string v8, "Failed to stop PostProcessor"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v7, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    const/4 v8, -0x3

    invoke-interface {v7, v8}, Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;->onError(I)V

    .line 410
    :cond_a
    iget-object v7, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mRawRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v7}, Landroid/media/AudioRecord;->stop()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 411
    :catch_3
    move-exception v0

    .line 412
    .restart local v0       #e:Ljava/lang/IllegalStateException;
    const-string v7, "VoiceprintHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to stop AudioRecord :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v7, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    invoke-interface {v7, v11}, Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;->onError(I)V

    goto/16 :goto_0

    .line 381
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :pswitch_0
    :try_start_7
    iget-object v7, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    const/4 v8, 0x0

    invoke-interface {v7, v4, v2, v8}, Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;->onPartialData([SII)V

    .line 382
    const-string v7, "VoiceprintHandler"

    const-string v8, "vad voice not begin yet"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 405
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #ppFlag:I
    .end local v4           #targetBuffer:[S
    .end local v6           #v:I
    :catchall_0
    move-exception v7

    .line 406
    :try_start_8
    sget-object v8, Lcom/baidu/voiceprint/VoiceprintHandler;->mPostProcessor:Lcom/baidu/android/vad/JNI;

    invoke-virtual {v8}, Lcom/baidu/android/vad/JNI;->mfeStop()I

    move-result v8

    if-gez v8, :cond_b

    .line 407
    const-string v8, "VoiceprintHandler"

    const-string v9, "Failed to stop PostProcessor"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v8, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    const/4 v9, -0x3

    invoke-interface {v8, v9}, Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;->onError(I)V

    .line 410
    :cond_b
    iget-object v8, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mRawRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v8}, Landroid/media/AudioRecord;->stop()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_4

    .line 414
    :goto_4
    throw v7

    .line 385
    .restart local v1       #i:I
    .restart local v2       #length:I
    .restart local v3       #ppFlag:I
    .restart local v4       #targetBuffer:[S
    .restart local v6       #v:I
    :pswitch_1
    :try_start_9
    const-string v7, "VoiceprintHandler"

    const-string v8, "vad onVoiceStart()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v7, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    invoke-interface {v7}, Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;->onVoiceStart()V

    .line 387
    iget-object v7, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    const/4 v8, 0x0

    invoke-interface {v7, v4, v2, v8}, Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;->onPartialData([SII)V

    goto/16 :goto_1

    .line 390
    :pswitch_2
    const-string v7, "VoiceprintHandler"

    const-string v8, "vad onVoiceEnd()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :pswitch_3
    const-string v7, "VoiceprintHandler"

    const-string v8, "vad onError(SILENCE_TOO_LONG)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :pswitch_4
    const-string v7, "VoiceprintHandler"

    const-string v8, "vad onError(SPEECH_TOO_SHORT)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_3

    .line 411
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #ppFlag:I
    .end local v4           #targetBuffer:[S
    .end local v6           #v:I
    :catch_4
    move-exception v0

    .line 412
    .restart local v0       #e:Ljava/lang/IllegalStateException;
    const-string v8, "VoiceprintHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to stop AudioRecord :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v8, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    invoke-interface {v8, v11}, Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;->onError(I)V

    goto :goto_4

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static declared-synchronized freeRecorder()V
    .locals 2

    .prologue
    .line 306
    const-class v0, Lcom/baidu/voiceprint/VoiceprintHandler;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/baidu/voiceprint/VoiceprintHandler;->mInstance:Lcom/baidu/voiceprint/VoiceprintHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit v0

    return-void

    .line 306
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getRecorder()Lcom/baidu/voiceprint/VoiceprintHandler;
    .locals 2

    .prologue
    .line 265
    const-class v1, Lcom/baidu/voiceprint/VoiceprintHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/voiceprint/VoiceprintHandler;->mInstance:Lcom/baidu/voiceprint/VoiceprintHandler;

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Lcom/baidu/voiceprint/VoiceprintHandler;

    invoke-direct {v0}, Lcom/baidu/voiceprint/VoiceprintHandler;-><init>()V

    sput-object v0, Lcom/baidu/voiceprint/VoiceprintHandler;->mInstance:Lcom/baidu/voiceprint/VoiceprintHandler;

    .line 268
    :cond_0
    sget-object v0, Lcom/baidu/voiceprint/VoiceprintHandler;->mInstance:Lcom/baidu/voiceprint/VoiceprintHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public beginVoiceTransaction(I)Z
    .locals 5
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 475
    iget v2, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mVoiceTransState:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    .line 476
    const-string v2, "VoiceprintHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling beginVoiceTransaction in wrong state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mVoiceTransState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_0
    :goto_0
    return v1

    .line 479
    :cond_1
    const-string v2, "VoiceprintHandler"

    const-string v3, "calling speakerInit:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    sget-object v2, Lcom/baidu/voiceprint/VoiceprintHandler;->mModelPath:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/baidu/voiceprint/SpeakerRec;->speakerInit(ILjava/lang/String;)I

    move-result v0

    .line 481
    .local v0, ret:I
    iput p1, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mMode:I

    .line 482
    const-string v2, "VoiceprintHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "speakerInit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    if-nez v0, :cond_2

    .line 484
    iput v1, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mVoiceTransState:I

    .line 486
    :cond_2
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public beginVoiceTransaction(ILjava/lang/String;)Z
    .locals 5
    .parameter "mode"
    .parameter "modeFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 496
    iget v2, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mVoiceTransState:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    .line 497
    const-string v2, "VoiceprintHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling beginVoiceTransaction in wrong state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mVoiceTransState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_0
    :goto_0
    return v1

    .line 500
    :cond_1
    const-string v2, "VoiceprintHandler"

    const-string v3, "calling speakerInit:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-static {p1, p2}, Lcom/baidu/voiceprint/SpeakerRec;->speakerInit(ILjava/lang/String;)I

    move-result v0

    .line 502
    .local v0, ret:I
    iput p1, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mMode:I

    .line 503
    const-string v2, "VoiceprintHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "speakerInit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    if-nez v0, :cond_2

    .line 505
    iput v1, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mVoiceTransState:I

    .line 507
    :cond_2
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public clearVoiceEnrollTransaction()V
    .locals 4

    .prologue
    .line 529
    iget v1, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mVoiceTransState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 530
    const-string v1, "VoiceprintHandler"

    const-string v2, "mVoiceTransState VOICE_TRANS_ADD_BUFFER"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const-string v1, "VoiceprintHandler"

    const-string v2, "call speakerClearCurrUtterance: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-static {}, Lcom/baidu/voiceprint/SpeakerRec;->speakerClearCurrUtterance()I

    .line 533
    const-string v1, "VoiceprintHandler"

    const-string v2, "speakerClearCurrUtterance: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_0
    const-string v1, "VoiceprintHandler"

    const-string v2, "clearVoiceEnrollTransaction: calling speakerClearSession: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-static {}, Lcom/baidu/voiceprint/SpeakerRec;->speakerClearSession()I

    move-result v0

    .line 538
    .local v0, ret:I
    const-string v1, "VoiceprintHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "speakerClearSession result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/4 v1, 0x6

    iput v1, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mVoiceTransState:I

    .line 541
    return-void
.end method

.method public clearVoiceTestTransaction()V
    .locals 4

    .prologue
    .line 517
    iget v1, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mVoiceTransState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 518
    const-string v1, "VoiceprintHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling clearVoiceTestTransaction in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mVoiceTransState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :goto_0
    return-void

    .line 521
    :cond_0
    const-string v1, "VoiceprintHandler"

    const-string v2, "calling speakerInitNewTest: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-static {}, Lcom/baidu/voiceprint/SpeakerRec;->speakerInitNewTest()I

    move-result v0

    .line 523
    .local v0, ret:I
    const-string v1, "VoiceprintHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "speakerInitNewTest result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v1, 0x5

    iput v1, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mVoiceTransState:I

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 298
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->isRec:Z

    .line 299
    invoke-static {}, Lcom/baidu/voiceprint/VoiceprintHandler;->freeRecorder()V

    .line 300
    iget-object v0, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mRecordingTask:Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;

    invoke-virtual {v0}, Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;->close()V

    .line 301
    iget-object v0, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mRawRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 302
    const-string v0, "VoiceprintHandler"

    const-string v1, "Closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    monitor-exit p0

    return-void

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized endVoiceTransaction()V
    .locals 4

    .prologue
    const/4 v2, 0x6

    .line 547
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/voiceprint/VoiceprintHandler;->close()V

    .line 548
    iget v1, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mVoiceTransState:I

    if-ne v1, v2, :cond_0

    .line 549
    const-string v1, "VoiceprintHandler"

    const-string v2, "double endVoiceTransaction "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    :goto_0
    monitor-exit p0

    return-void

    .line 552
    :cond_0
    :try_start_1
    const-string v1, "VoiceprintHandler"

    const-string v2, "endVoiceTransaction: calling speakerClearSession: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-static {}, Lcom/baidu/voiceprint/SpeakerRec;->speakerClearSession()I

    move-result v0

    .line 554
    .local v0, ret:I
    const-string v1, "VoiceprintHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "speakerClearSession result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v1, 0x6

    iput v1, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mVoiceTransState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 547
    .end local v0           #ret:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized enrollVoiceprint()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 597
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mVoiceTransState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 598
    const-string v1, "VoiceprintHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling enrollVoiceprint in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mVoiceTransState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    const/4 v0, 0x5

    .line 607
    :goto_0
    monitor-exit p0

    return v0

    .line 602
    :cond_0
    :try_start_1
    const-string v1, "VoiceprintHandler"

    const-string v2, "before speakerEnroll  score: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-static {}, Lcom/baidu/voiceprint/SpeakerRec;->speakerEnroll()I

    move-result v0

    .line 604
    .local v0, ret:I
    const-string v1, "VoiceprintHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "speakerEnroll result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v1, 0x3

    iput v1, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mVoiceTransState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 597
    .end local v0           #ret:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAmplitude()I
    .locals 2

    .prologue
    .line 310
    iget v0, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mAmplitude:I

    .line 311
    .local v0, temp:I
    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mAmplitude:I

    .line 312
    return v0
.end method

.method public declared-synchronized getTestScore()F
    .locals 1

    .prologue
    .line 589
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mTestScore:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->isRec:Z

    return v0
.end method

.method public sendData([SII)I
    .locals 4
    .parameter "data"
    .parameter "length"
    .parameter "lastFrame"

    .prologue
    .line 453
    iget v1, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mVoiceTransState:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mVoiceTransState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mVoiceTransState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 455
    :cond_0
    const-string v1, "VoiceprintHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling speakerAddToBuffer in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mVoiceTransState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v0, 0x5

    .line 466
    :cond_1
    :goto_0
    return v0

    .line 458
    :cond_2
    const/4 v1, 0x1

    iput v1, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mVoiceTransState:I

    .line 459
    invoke-static {p1, p2, p3}, Lcom/baidu/voiceprint/SpeakerRec;->speakerAddToBuffer([SII)I

    move-result v0

    .line 460
    .local v0, ret:I
    const-string v1, "VoiceprintHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "speakerAddToBuffer return: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    if-lez p3, :cond_1

    goto :goto_0
.end method

.method public setStateListener(Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;)Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;
    .locals 1
    .parameter "listener"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mRegisteredStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    .line 428
    .local v0, original:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;
    iput-object p1, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mRegisteredStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    .line 429
    return-object v0
.end method

.method public startRecording()V
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->isRec:Z

    .line 437
    iget-object v0, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mRecordingTask:Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;

    invoke-virtual {v0}, Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;->startRecording()V

    .line 438
    return-void
.end method

.method public stopRecording()V
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->isRec:Z

    .line 445
    iget-object v0, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mRecordingTask:Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;

    invoke-virtual {v0}, Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;->stopRecording()V

    .line 446
    return-void
.end method

.method public declared-synchronized testVoiceprint()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 563
    monitor-enter p0

    const/4 v0, 0x0

    .line 564
    .local v0, decision:I
    const/high16 v3, -0x4080

    :try_start_0
    iput v3, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mTestScore:F

    .line 566
    iget v3, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mVoiceTransState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 567
    const-string v3, "VoiceprintHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calling testVoiceprint in wrong state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mVoiceTransState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    .line 582
    .end local v0           #decision:I
    .local v1, decision:I
    :goto_0
    monitor-exit p0

    return v1

    .line 571
    .end local v1           #decision:I
    .restart local v0       #decision:I
    :cond_0
    :try_start_1
    const-string v3, "VoiceprintHandler"

    const-string v4, "before testVoiceprint"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-static {}, Lcom/baidu/voiceprint/SpeakerRec;->speakerTest()I

    move-result v2

    .line 573
    .local v2, ret:I
    const-string v3, "VoiceprintHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "testVoiceprint result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    if-nez v2, :cond_1

    .line 575
    invoke-static {}, Lcom/baidu/voiceprint/SpeakerRec;->speakerGetScore()F

    move-result v3

    iput v3, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mTestScore:F

    .line 576
    iget v3, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mTestScore:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 577
    invoke-static {}, Lcom/baidu/voiceprint/SpeakerRec;->speakerGetDecision()I

    move-result v0

    .line 579
    :cond_1
    const-string v3, "VoiceprintHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Singapore test score: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mTestScore:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; decision: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v3, 0x2

    iput v3, p0, Lcom/baidu/voiceprint/VoiceprintHandler;->mVoiceTransState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v0

    .line 582
    .end local v0           #decision:I
    .restart local v1       #decision:I
    goto :goto_0

    .line 563
    .end local v1           #decision:I
    .end local v2           #ret:I
    .restart local v0       #decision:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
