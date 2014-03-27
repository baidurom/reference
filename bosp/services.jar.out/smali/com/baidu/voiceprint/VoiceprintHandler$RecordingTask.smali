.class Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;
.super Ljava/lang/Thread;
.source "VoiceprintHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/voiceprint/VoiceprintHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordingTask"
.end annotation


# instance fields
.field private isExiting:Z

.field private isRecording:Z

.field final synthetic this$0:Lcom/baidu/voiceprint/VoiceprintHandler;


# direct methods
.method private constructor <init>(Lcom/baidu/voiceprint/VoiceprintHandler;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 151
    iput-object p1, p0, Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;->this$0:Lcom/baidu/voiceprint/VoiceprintHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 153
    iput-boolean v0, p0, Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;->isRecording:Z

    .line 154
    iput-boolean v0, p0, Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;->isExiting:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/voiceprint/VoiceprintHandler;Lcom/baidu/voiceprint/VoiceprintHandler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;-><init>(Lcom/baidu/voiceprint/VoiceprintHandler;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 238
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;->isRecording:Z

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;->isExiting:Z

    .line 240
    invoke-virtual {p0}, Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 159
    const-string v1, "VoiceprintHandler"

    const-string v2, "ReadingTask began"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/16 v1, -0x13

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 166
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :try_start_1
    iget-boolean v1, p0, Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;->isRecording:Z

    if-nez v1, :cond_0

    .line 168
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 170
    :cond_0
    iget-boolean v1, p0, Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;->isRecording:Z

    if-nez v1, :cond_1

    .line 171
    const-string v1, "VoiceprintHandler"

    const-string v2, "Fake wakeup? "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    monitor-exit p0

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Ljava/lang/InterruptedException;
    monitor-enter p0

    .line 186
    :try_start_3
    iget-boolean v1, p0, Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;->isExiting:Z

    if-eqz v1, :cond_2

    .line 187
    const-string v1, "VoiceprintHandler"

    const-string v2, "RecordingTask Exited"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-void

    .line 174
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 177
    :try_start_5
    iget-object v1, p0, Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;->this$0:Lcom/baidu/voiceprint/VoiceprintHandler;

    #calls: Lcom/baidu/voiceprint/VoiceprintHandler;->doRecording()V
    invoke-static {v1}, Lcom/baidu/voiceprint/VoiceprintHandler;->access$000(Lcom/baidu/voiceprint/VoiceprintHandler;)V

    .line 180
    monitor-enter p0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 181
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;->isRecording:Z

    .line 182
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    .line 190
    .restart local v0       #e:Ljava/lang/InterruptedException;
    :cond_2
    :try_start_8
    iget-boolean v1, p0, Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;->isRecording:Z

    if-nez v1, :cond_3

    .line 193
    const-string v1, "VoiceprintHandler"

    const-string v2, "RecordingTask stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1

    .line 195
    :cond_3
    :try_start_9
    const-string v1, "VoiceprintHandler"

    const-string v2, "Recording thread interrupted by something unknown."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_0
.end method

.method public declared-synchronized startRecording()V
    .locals 2

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    const-string v0, "VoiceprintHandler"

    const-string v1, "startRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-boolean v0, p0, Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;->isRecording:Z

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "VoiceprintHandler"

    const-string v1, "Double start recording."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :goto_0
    monitor-exit p0

    return-void

    .line 215
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;->this$0:Lcom/baidu/voiceprint/VoiceprintHandler;

    iget-object v1, p0, Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;->this$0:Lcom/baidu/voiceprint/VoiceprintHandler;

    #getter for: Lcom/baidu/voiceprint/VoiceprintHandler;->mRegisteredStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;
    invoke-static {v1}, Lcom/baidu/voiceprint/VoiceprintHandler;->access$200(Lcom/baidu/voiceprint/VoiceprintHandler;)Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    move-result-object v1

    #setter for: Lcom/baidu/voiceprint/VoiceprintHandler;->mStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;
    invoke-static {v0, v1}, Lcom/baidu/voiceprint/VoiceprintHandler;->access$102(Lcom/baidu/voiceprint/VoiceprintHandler;Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;)Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;->isRecording:Z

    .line 217
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopRecording()V
    .locals 2

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;->isRecording:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 232
    :goto_0
    monitor-exit p0

    return-void

    .line 227
    :cond_0
    :try_start_1
    const-string v0, "VoiceprintHandler"

    const-string v1, "stopRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;->this$0:Lcom/baidu/voiceprint/VoiceprintHandler;

    invoke-static {}, Lcom/baidu/voiceprint/VoiceprintHandler;->access$300()Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    move-result-object v1

    #setter for: Lcom/baidu/voiceprint/VoiceprintHandler;->mStateListener:Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;
    invoke-static {v0, v1}, Lcom/baidu/voiceprint/VoiceprintHandler;->access$102(Lcom/baidu/voiceprint/VoiceprintHandler;Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;)Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;->isRecording:Z

    .line 231
    invoke-virtual {p0}, Lcom/baidu/voiceprint/VoiceprintHandler$RecordingTask;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
