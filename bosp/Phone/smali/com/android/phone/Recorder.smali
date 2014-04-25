.class public Lcom/android/phone/Recorder;
.super Ljava/lang/Object;
.source "Recorder.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Recorder$OnStateChangedListener;,
        Lcom/android/phone/Recorder$CallerRecordInfo;
    }
.end annotation


# static fields
.field public static final IDLE_STATE:I = 0x0

.field public static final INTERNAL_ERROR:I = 0x2

.field public static final NO_ERROR:I = 0x0

.field public static final RECORDING_STATE:I = 0x1

.field public static final RECORD_FOLDER:Ljava/lang/String; = "AudioRecordings"

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

.field mSampleLength:J

.field mSampleStart:J

.field mState:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/Recorder;->mState:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/Recorder;->isStoreToSdcard:Z

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/Recorder;->callerName:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/Recorder;->callerPhoneNumber:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/android/phone/Recorder;->mOnStateChangedListener:Lcom/android/phone/Recorder$OnStateChangedListener;

    .line 65
    iput-wide v2, p0, Lcom/android/phone/Recorder;->mSampleStart:J

    .line 66
    iput-wide v2, p0, Lcom/android/phone/Recorder;->mSampleLength:J

    .line 67
    iput-object v1, p0, Lcom/android/phone/Recorder;->mSampleFile:Ljava/io/File;

    .line 68
    iput-object v1, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 71
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
    .line 289
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_0

    .line 290
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "prefix must be at least 3 characters"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 292
    :cond_0
    if-nez p1, :cond_1

    .line 293
    const-string p1, ".tmp"

    .line 295
    :cond_1
    move-object v4, p2

    .line 296
    .local v4, tmpDirFile:Ljava/io/File;
    if-nez v4, :cond_2

    .line 297
    const-string v5, "java.io.tmpdir"

    const-string v6, "."

    invoke-static {v5, v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, tmpDir:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    .end local v4           #tmpDirFile:Ljava/io/File;
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    .end local v3           #tmpDir:Ljava/lang/String;
    .restart local v4       #tmpDirFile:Ljava/io/File;
    :cond_2
    const/4 v0, 0x0

    .line 302
    .local v0, i:I
    move-object v2, p0

    .line 304
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

    .line 305
    .local v1, result:Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    .line 306
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

    .line 307
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 308
    return-object v1
.end method

.method private setError(I)V
    .locals 1
    .parameter "error"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/phone/Recorder;->mOnStateChangedListener:Lcom/android/phone/Recorder$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/phone/Recorder;->mOnStateChangedListener:Lcom/android/phone/Recorder$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/android/phone/Recorder$OnStateChangedListener;->onError(I)V

    .line 266
    :cond_0
    return-void
.end method

.method private setState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 251
    iget v0, p0, Lcom/android/phone/Recorder;->mState:I

    if-ne p1, v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    iput p1, p0, Lcom/android/phone/Recorder;->mState:I

    .line 255
    iget v0, p0, Lcom/android/phone/Recorder;->mState:I

    invoke-direct {p0, v0}, Lcom/android/phone/Recorder;->signalStateChanged(I)V

    goto :goto_0
.end method

.method private signalStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/phone/Recorder;->mOnStateChangedListener:Lcom/android/phone/Recorder$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/phone/Recorder;->mOnStateChangedListener:Lcom/android/phone/Recorder$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/android/phone/Recorder$OnStateChangedListener;->onStateChanged(I)V

    .line 261
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/phone/Recorder;->stop()V

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/Recorder;->mSampleLength:J

    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/Recorder;->signalStateChanged(I)V

    .line 153
    return-void
.end method

.method public delete()V
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/phone/Recorder;->stop()V

    .line 135
    iget-object v0, p0, Lcom/android/phone/Recorder;->mSampleFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/phone/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 137
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/Recorder;->mSampleFile:Ljava/io/File;

    .line 138
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/Recorder;->mSampleLength:J

    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/Recorder;->signalStateChanged(I)V

    .line 141
    return-void
.end method

.method public getMaxAmplitude()I
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Lcom/android/phone/Recorder;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 81
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
    .line 282
    const-string v0, "Recorder"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 273
    const-string v0, "onError"

    invoke-virtual {p0, v0}, Lcom/android/phone/Recorder;->log(Ljava/lang/String;)V

    .line 274
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/android/phone/Recorder;->stop()V

    .line 278
    :cond_0
    return-void
.end method

.method public progress()I
    .locals 4

    .prologue
    .line 116
    iget v0, p0, Lcom/android/phone/Recorder;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/phone/Recorder;->mSampleStart:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 118
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "recorderState"

    .prologue
    const-wide/16 v5, -0x1

    .line 85
    const-string v4, "sample_path"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, samplePath:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const-string v4, "sample_length"

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 89
    .local v1, sampleLength:J
    cmp-long v4, v1, v5

    if-eqz v4, :cond_0

    .line 92
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    iget-object v4, p0, Lcom/android/phone/Recorder;->mSampleFile:Ljava/io/File;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/Recorder;->delete()V

    .line 101
    iput-object v0, p0, Lcom/android/phone/Recorder;->mSampleFile:Ljava/io/File;

    .line 102
    iput-wide v1, p0, Lcom/android/phone/Recorder;->mSampleLength:J

    .line 104
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/phone/Recorder;->signalStateChanged(I)V

    goto :goto_0
.end method

.method public sampleFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/phone/Recorder;->mSampleFile:Ljava/io/File;

    return-object v0
.end method

.method public sampleLength()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/android/phone/Recorder;->mSampleLength:J

    return-wide v0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "recorderState"

    .prologue
    .line 74
    const-string v0, "sample_path"

    iget-object v1, p0, Lcom/android/phone/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "sample_length"

    iget-wide v1, p0, Lcom/android/phone/Recorder;->mSampleLength:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 76
    return-void
.end method

.method public setOnStateChangedListener(Lcom/android/phone/Recorder$OnStateChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/phone/Recorder;->mOnStateChangedListener:Lcom/android/phone/Recorder$OnStateChangedListener;

    .line 109
    return-void
.end method

.method public startRecording(ILjava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "outputfileformat"
    .parameter "extension"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 156
    const-string v7, "startRecording"

    invoke-virtual {p0, v7}, Lcom/android/phone/Recorder;->log(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/phone/Recorder;->stop()V

    .line 159
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v6, sb:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd_HH.mm.ss"

    invoke-direct {v0, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    iget-object v7, p0, Lcom/android/phone/Recorder;->callerName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, prefix:Ljava/lang/String;
    iget-boolean v7, p0, Lcom/android/phone/Recorder;->isStoreToSdcard:Z

    if-eqz v7, :cond_2

    .line 169
    invoke-static {}, Lcom/android/phone/PhoneRecorder;->getSdCardFile()Ljava/io/File;

    move-result-object v4

    .line 181
    .local v4, sampleDir:Ljava/io/File;
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-nez v7, :cond_0

    .line 182
    const-string v7, "Recorder"

    const-string v8, "----- file can\'t write!! ---"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v4, Ljava/io/File;

    .end local v4           #sampleDir:Ljava/io/File;
    const-string v7, "/sdcard/sdcard"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .restart local v4       #sampleDir:Ljava/io/File;
    :cond_0
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "AudioRecordings"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .end local v4           #sampleDir:Ljava/io/File;
    .local v5, sampleDir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 189
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 193
    :cond_1
    :try_start_0
    invoke-static {v3, p2, v5}, Lcom/android/phone/Recorder;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/Recorder;->mSampleFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    const-string v7, "finish creating temp file, start to record"

    invoke-virtual {p0, v7}, Lcom/android/phone/Recorder;->log(Ljava/lang/String;)V

    .line 202
    new-instance v7, Landroid/media/MediaRecorder;

    invoke-direct {v7}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v7, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 203
    iget-object v7, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 204
    iget-object v7, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7, v9}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 205
    iget-object v7, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7, p1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 206
    iget-object v7, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7, v9}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 207
    iget-object v7, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v8, p0, Lcom/android/phone/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 210
    :try_start_1
    iget-object v7, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7}, Landroid/media/MediaRecorder;->prepare()V

    .line 211
    iget-object v7, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7}, Landroid/media/MediaRecorder;->start()V

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/phone/Recorder;->mSampleStart:J

    .line 213
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/phone/Recorder;->setState(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 229
    iget-object v7, p0, Lcom/android/phone/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 171
    .end local v5           #sampleDir:Ljava/io/File;
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneRecorder;->getPhoneMemoryFile()Ljava/io/File;

    move-result-object v4

    .restart local v4       #sampleDir:Ljava/io/File;
    goto/16 :goto_0

    .line 194
    .end local v4           #sampleDir:Ljava/io/File;
    .restart local v5       #sampleDir:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 195
    .local v1, e:Ljava/io/IOException;
    invoke-direct {p0, v9}, Lcom/android/phone/Recorder;->setError(I)V

    .line 196
    const-string v7, "Recorder"

    const-string v8, "----***------- can\'t access sdcard !!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    throw v1

    .line 214
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 215
    .local v2, exception:Ljava/io/IOException;
    const-string v7, "startRecording, IOException"

    invoke-virtual {p0, v7}, Lcom/android/phone/Recorder;->log(Ljava/lang/String;)V

    .line 216
    invoke-direct {p0, v10}, Lcom/android/phone/Recorder;->setError(I)V

    .line 217
    iget-object v7, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7}, Landroid/media/MediaRecorder;->reset()V

    .line 218
    iget-object v7, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7}, Landroid/media/MediaRecorder;->release()V

    .line 219
    iput-object v11, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 220
    throw v2

    .line 221
    .end local v2           #exception:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 222
    .local v2, exception:Ljava/lang/RuntimeException;
    const-string v7, "startRecording, RuntimeException"

    invoke-virtual {p0, v7}, Lcom/android/phone/Recorder;->log(Ljava/lang/String;)V

    .line 223
    invoke-direct {p0, v10}, Lcom/android/phone/Recorder;->setError(I)V

    .line 224
    iget-object v7, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7}, Landroid/media/MediaRecorder;->reset()V

    .line 225
    iget-object v7, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7}, Landroid/media/MediaRecorder;->release()V

    .line 226
    iput-object v11, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 227
    throw v2
.end method

.method public state()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/android/phone/Recorder;->mState:I

    return v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 246
    const-string v0, "stop"

    invoke-virtual {p0, v0}, Lcom/android/phone/Recorder;->log(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/android/phone/Recorder;->stopRecording()V

    .line 248
    return-void
.end method

.method public stopRecording()V
    .locals 4

    .prologue
    .line 233
    const-string v0, "stopRecording"

    invoke-virtual {p0, v0}, Lcom/android/phone/Recorder;->log(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/phone/Recorder;->mSampleStart:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/phone/Recorder;->mSampleLength:J

    .line 238
    iget-object v0, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 239
    iget-object v0, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/Recorder;->setState(I)V

    goto :goto_0
.end method
