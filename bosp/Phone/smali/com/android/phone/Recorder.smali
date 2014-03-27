.class public Lcom/android/phone/Recorder;
.super Ljava/lang/Object;
.source "Recorder.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Recorder$CallerRecordInfo;,
        Lcom/android/phone/Recorder$OnStateChangedListener;
    }
.end annotation


# static fields
.field public static final IDLE_STATE:I = 0x0

.field public static final INTERNAL_ERROR:I = 0x2

.field public static final NO_ERROR:I = 0x0

.field public static final PLAYING_STATE:I = 0x2

.field public static final RECORDING_STATE:I = 0x1

.field static final SAMPLE_LENGTH_KEY:Ljava/lang/String; = "sample_length"

.field static final SAMPLE_PATH_KEY:Ljava/lang/String; = "sample_path"

.field static final SAMPLE_PREFIX:Ljava/lang/String; = "recording"

.field public static final SDCARD_ACCESS_ERROR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Recorder"


# instance fields
.field public callerName:Ljava/lang/String;

.field public callerPhoneNumber:Ljava/lang/String;

.field public isStoreToSdcard:Z

.field mOnStateChangedListener:Lcom/android/phone/Recorder$OnStateChangedListener;

.field mRecorder:Landroid/media/MediaRecorder;

.field mSampleFile:Ljava/io/File;

.field mSampleLength:I

.field mSampleStart:J

.field mState:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v3, p0, Lcom/android/phone/Recorder;->mState:I

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/Recorder;->isStoreToSdcard:Z

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/Recorder;->callerName:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/Recorder;->callerPhoneNumber:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/android/phone/Recorder;->mOnStateChangedListener:Lcom/android/phone/Recorder$OnStateChangedListener;

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/Recorder;->mSampleStart:J

    .line 45
    iput v3, p0, Lcom/android/phone/Recorder;->mSampleLength:I

    .line 46
    iput-object v2, p0, Lcom/android/phone/Recorder;->mSampleFile:Ljava/io/File;

    .line 47
    iput-object v2, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 69
    return-void
.end method

.method public static createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 7
    .parameter "prefix"
    .parameter "suffix"
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_0

    .line 281
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "prefix must be at least 3 characters"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 283
    :cond_0
    if-nez p1, :cond_1

    .line 284
    const-string p1, ".tmp"

    .line 286
    :cond_1
    move-object v4, p2

    .line 287
    .local v4, tmpDirFile:Ljava/io/File;
    if-nez v4, :cond_2

    .line 288
    const-string v5, "java.io.tmpdir"

    const-string v6, "."

    invoke-static {v5, v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, tmpDir:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    .end local v4           #tmpDirFile:Ljava/io/File;
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .end local v3           #tmpDir:Ljava/lang/String;
    .restart local v4       #tmpDirFile:Ljava/io/File;
    :cond_2
    const/4 v0, 0x0

    .line 293
    .local v0, i:I
    move-object v2, p0

    .line 295
    .local v2, tempPrefix:Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 296
    .local v1, result:Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    .line 297
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 298
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 299
    return-object v1
.end method

.method private setError(I)V
    .locals 1
    .parameter "error"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/phone/Recorder;->mOnStateChangedListener:Lcom/android/phone/Recorder$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/phone/Recorder;->mOnStateChangedListener:Lcom/android/phone/Recorder$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/android/phone/Recorder$OnStateChangedListener;->onError(I)V

    .line 257
    :cond_0
    return-void
.end method

.method private setState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 242
    iget v0, p0, Lcom/android/phone/Recorder;->mState:I

    if-ne p1, v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    iput p1, p0, Lcom/android/phone/Recorder;->mState:I

    .line 246
    iget v0, p0, Lcom/android/phone/Recorder;->mState:I

    invoke-direct {p0, v0}, Lcom/android/phone/Recorder;->signalStateChanged(I)V

    goto :goto_0
.end method

.method private signalStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/phone/Recorder;->mOnStateChangedListener:Lcom/android/phone/Recorder$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/phone/Recorder;->mOnStateChangedListener:Lcom/android/phone/Recorder$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/android/phone/Recorder$OnStateChangedListener;->onStateChanged(I)V

    .line 252
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/android/phone/Recorder;->stop()V

    .line 148
    iput v0, p0, Lcom/android/phone/Recorder;->mSampleLength:I

    .line 150
    invoke-direct {p0, v0}, Lcom/android/phone/Recorder;->signalStateChanged(I)V

    .line 151
    return-void
.end method

.method public delete()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/android/phone/Recorder;->stop()V

    .line 133
    iget-object v0, p0, Lcom/android/phone/Recorder;->mSampleFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/phone/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 135
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/Recorder;->mSampleFile:Ljava/io/File;

    .line 136
    iput v1, p0, Lcom/android/phone/Recorder;->mSampleLength:I

    .line 138
    invoke-direct {p0, v1}, Lcom/android/phone/Recorder;->signalStateChanged(I)V

    .line 139
    return-void
.end method

.method public getMaxAmplitude()I
    .locals 2

    .prologue
    .line 77
    iget v0, p0, Lcom/android/phone/Recorder;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    goto :goto_0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 273
    const-string v0, "Recorder"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 264
    const-string v0, "onError"

    invoke-virtual {p0, v0}, Lcom/android/phone/Recorder;->log(Ljava/lang/String;)V

    .line 265
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/android/phone/Recorder;->stop()V

    .line 269
    :cond_0
    return-void
.end method

.method public progress()I
    .locals 4

    .prologue
    .line 114
    iget v0, p0, Lcom/android/phone/Recorder;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/Recorder;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 115
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/phone/Recorder;->mSampleStart:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 116
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "recorderState"

    .prologue
    const/4 v4, -0x1

    .line 83
    const-string v3, "sample_path"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, samplePath:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const-string v3, "sample_length"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 87
    .local v1, sampleLength:I
    if-eq v1, v4, :cond_0

    .line 90
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    iget-object v3, p0, Lcom/android/phone/Recorder;->mSampleFile:Ljava/io/File;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/Recorder;->delete()V

    .line 99
    iput-object v0, p0, Lcom/android/phone/Recorder;->mSampleFile:Ljava/io/File;

    .line 100
    iput v1, p0, Lcom/android/phone/Recorder;->mSampleLength:I

    .line 102
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/phone/Recorder;->signalStateChanged(I)V

    goto :goto_0
.end method

.method public sampleFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/phone/Recorder;->mSampleFile:Ljava/io/File;

    return-object v0
.end method

.method public sampleLength()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/android/phone/Recorder;->mSampleLength:I

    return v0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "recorderState"

    .prologue
    .line 72
    const-string v0, "sample_path"

    iget-object v1, p0, Lcom/android/phone/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "sample_length"

    iget v1, p0, Lcom/android/phone/Recorder;->mSampleLength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    return-void
.end method

.method public setOnStateChangedListener(Lcom/android/phone/Recorder$OnStateChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/phone/Recorder;->mOnStateChangedListener:Lcom/android/phone/Recorder$OnStateChangedListener;

    .line 107
    return-void
.end method

.method public startRecording(ILjava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "outputfileformat"
    .parameter "extension"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 154
    const-string v8, "startRecording"

    invoke-virtual {p0, v8}, Lcom/android/phone/Recorder;->log(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/phone/Recorder;->stop()V

    .line 157
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v6, sb:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd_HH.mm.ss"

    invoke-direct {v0, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    iget-object v8, p0, Lcom/android/phone/Recorder;->callerName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, prefix:Ljava/lang/String;
    iget-boolean v8, p0, Lcom/android/phone/Recorder;->isStoreToSdcard:Z

    if-eqz v8, :cond_2

    .line 167
    invoke-static {}, Lcom/android/phone/FileUtils;->getSdCardFile()Ljava/io/File;

    move-result-object v4

    .line 172
    .local v4, sampleDir:Ljava/io/File;
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v8

    if-nez v8, :cond_0

    .line 173
    const-string v8, "Recorder"

    const-string v9, "----- file can\'t write!! ---"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v4, Ljava/io/File;

    .end local v4           #sampleDir:Ljava/io/File;
    const-string v8, "/sdcard/sdcard"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .restart local v4       #sampleDir:Ljava/io/File;
    :cond_0
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/PhoneRecord"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .end local v4           #sampleDir:Ljava/io/File;
    .local v5, sampleDir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 180
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 184
    :cond_1
    :try_start_0
    invoke-static {v3, p2, v5}, Lcom/android/phone/Recorder;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/Recorder;->mSampleFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    new-instance v8, Landroid/media/MediaRecorder;

    invoke-direct {v8}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v8, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 192
    iget-object v8, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 193
    iget-object v8, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 194
    iget-object v8, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8, p1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 195
    iget-object v8, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8, v10}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 196
    iget-object v8, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/android/phone/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 199
    :try_start_1
    iget-object v8, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8}, Landroid/media/MediaRecorder;->prepare()V

    .line 200
    iget-object v8, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8}, Landroid/media/MediaRecorder;->start()V

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/phone/Recorder;->mSampleStart:J

    .line 202
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/phone/Recorder;->setState(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 218
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Call record file path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/Recorder;->log(Ljava/lang/String;)V

    .line 219
    iget-object v7, p0, Lcom/android/phone/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    :goto_1
    return-object v7

    .line 169
    .end local v5           #sampleDir:Ljava/io/File;
    :cond_2
    invoke-static {}, Lcom/android/phone/FileUtils;->getPhoneMemoryFile()Ljava/io/File;

    move-result-object v4

    .restart local v4       #sampleDir:Ljava/io/File;
    goto/16 :goto_0

    .line 185
    .end local v4           #sampleDir:Ljava/io/File;
    .restart local v5       #sampleDir:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 186
    .local v1, e:Ljava/io/IOException;
    invoke-direct {p0, v10}, Lcom/android/phone/Recorder;->setError(I)V

    .line 187
    const-string v8, "Recorder"

    const-string v9, "----***------- can\'t access sdcard !!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 203
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 204
    .local v2, exception:Ljava/io/IOException;
    const-string v8, "startRecording, IOException"

    invoke-virtual {p0, v8}, Lcom/android/phone/Recorder;->log(Ljava/lang/String;)V

    .line 205
    invoke-direct {p0, v11}, Lcom/android/phone/Recorder;->setError(I)V

    .line 206
    iget-object v8, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8}, Landroid/media/MediaRecorder;->reset()V

    .line 207
    iget-object v8, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8}, Landroid/media/MediaRecorder;->release()V

    .line 208
    iput-object v7, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    goto :goto_1

    .line 210
    .end local v2           #exception:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 211
    .local v2, exception:Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startRecording, RuntimeException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/phone/Recorder;->log(Ljava/lang/String;)V

    .line 212
    invoke-direct {p0, v11}, Lcom/android/phone/Recorder;->setError(I)V

    .line 213
    iget-object v8, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8}, Landroid/media/MediaRecorder;->reset()V

    .line 214
    iget-object v8, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8}, Landroid/media/MediaRecorder;->release()V

    .line 215
    iput-object v7, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    goto :goto_1
.end method

.method public state()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/android/phone/Recorder;->mState:I

    return v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 237
    const-string v0, "stop"

    invoke-virtual {p0, v0}, Lcom/android/phone/Recorder;->log(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/phone/Recorder;->stopRecording()V

    .line 239
    return-void
.end method

.method public stopRecording()V
    .locals 4

    .prologue
    .line 224
    const-string v0, "stopRecording"

    invoke-virtual {p0, v0}, Lcom/android/phone/Recorder;->log(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 229
    iget-object v0, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/phone/Recorder;->mSampleStart:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/Recorder;->mSampleLength:I

    .line 233
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/Recorder;->setState(I)V

    goto :goto_0
.end method
