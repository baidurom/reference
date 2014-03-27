.class Lcom/android/phone/Ringer$1;
.super Landroid/os/Handler;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/Ringer;->makeLooper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Ringer;


# direct methods
.method constructor <init>(Lcom/android/phone/Ringer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, r:Landroid/media/Ringtone;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 438
    :goto_0
    return-void

    .line 372
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #setter for: Lcom/android/phone/Ringer;->mIsCompleted:Z
    invoke-static {v3, v1}, Lcom/android/phone/Ringer;->access$102(Lcom/android/phone/Ringer;Z)Z

    .line 373
    iget-object v3, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    invoke-static {v3}, Lcom/android/phone/Ringer;->access$208(Lcom/android/phone/Ringer;)I

    .line 374
    invoke-static {}, Lcom/android/phone/Ringer;->access$300()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Ringer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run PLAY_TTS_INFO mTimes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mTimes:I
    invoke-static {v5}, Lcom/android/phone/Ringer;->access$200(Lcom/android/phone/Ringer;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    :pswitch_1
    iget-object v4, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    monitor-enter v4

    .line 377
    :try_start_0
    invoke-static {}, Lcom/android/phone/Ringer;->access$300()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Ringer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "====run PLAY_TTS_INFO mTimes:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mTimes:I
    invoke-static {v6}, Lcom/android/phone/Ringer;->access$200(Lcom/android/phone/Ringer;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mBroadCastCon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mBroadCastCon:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/phone/Ringer;->access$400(Lcom/android/phone/Ringer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_1
    iget-object v3, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v3, v3, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-nez v3, :cond_3

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/phone/Ringer$1;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 380
    invoke-static {}, Lcom/android/phone/Ringer;->access$300()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Ringer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "====creating ringtone:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v6, v6, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_2
    iget-object v3, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v3, v3, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v5, v5, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-static {v3, v5}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 382
    iget-object v3, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iput-object v0, v3, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 389
    :cond_3
    iget-object v3, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v0, v3, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 390
    invoke-static {}, Lcom/android/phone/Ringer;->access$300()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "Ringer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "====ringtone is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v6, v6, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_4
    invoke-static {}, Lcom/android/phone/Ringer;->access$300()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v5, "Ringer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "====!hasMessages(STOP_RING): "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/phone/Ringer$1;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_b

    move v3, v1

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_5
    invoke-static {}, Lcom/android/phone/Ringer;->access$300()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "Ringer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "====!r.isPlaying(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v6

    if-nez v6, :cond_c

    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_6
    if-eqz v0, :cond_a

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/phone/Ringer$1;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_a

    .line 394
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 395
    invoke-static {}, Lcom/android/phone/Ringer;->access$300()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "Ringer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeLooper mIsTtsOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mIsTtsOn:Z
    invoke-static {v3}, Lcom/android/phone/Ringer;->access$500(Lcom/android/phone/Ringer;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_7
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mIsTtsOn:Z
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$500(Lcom/android/phone/Ringer;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$600(Lcom/android/phone/Ringer;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mBroadCastCon:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$400(Lcom/android/phone/Ringer;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mBroadCastCon:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$400(Lcom/android/phone/Ringer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 397
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mTimes:I
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$200(Lcom/android/phone/Ringer;)I

    move-result v1

    if-ge v1, v7, :cond_d

    .line 398
    invoke-static {}, Lcom/android/phone/Ringer;->access$300()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "Ringer"

    const-string v2, "mIsCompleted broadCastByTts();"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_8
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #calls: Lcom/android/phone/Ringer;->broadCastByTts()V
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$700(Lcom/android/phone/Ringer;)V

    .line 408
    :goto_3
    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mFirstRingStartTime:J
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$800(Lcom/android/phone/Ringer;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-gez v1, :cond_9

    .line 410
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    #setter for: Lcom/android/phone/Ringer;->mFirstRingStartTime:J
    invoke-static {v1, v5, v6}, Lcom/android/phone/Ringer;->access$802(Lcom/android/phone/Ringer;J)J

    .line 412
    :cond_9
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 414
    :cond_a
    :try_start_2
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_b
    move v3, v2

    .line 391
    goto/16 :goto_1

    :cond_c
    move v1, v2

    .line 392
    goto/16 :goto_2

    .line 401
    :cond_d
    :try_start_3
    invoke-static {}, Lcom/android/phone/Ringer;->access$300()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "Ringer"

    const-string v2, "ring default 1"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_e
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_3

    .line 405
    :cond_f
    invoke-static {}, Lcom/android/phone/Ringer;->access$300()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "Ringer"

    const-string v2, "ring default 2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_10
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 412
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 417
    :pswitch_2
    invoke-static {}, Lcom/android/phone/Ringer;->access$300()Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "mRingHandler: STOP_RING..."

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/Ringer;->access$900(Ljava/lang/String;)V

    .line 418
    :cond_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #r:Landroid/media/Ringtone;
    check-cast v0, Landroid/media/Ringtone;

    .line 419
    .restart local v0       #r:Landroid/media/Ringtone;
    if-eqz v0, :cond_15

    .line 420
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 424
    :cond_12
    :goto_4
    iget-object v3, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v3}, Lcom/android/phone/Ringer;->access$600(Lcom/android/phone/Ringer;)Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 425
    iget-object v3, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v3}, Lcom/android/phone/Ringer;->access$600(Lcom/android/phone/Ringer;)Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 426
    iget-object v3, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v3}, Lcom/android/phone/Ringer;->access$600(Lcom/android/phone/Ringer;)Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 428
    :cond_13
    iget-object v3, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #setter for: Lcom/android/phone/Ringer;->mTimes:I
    invoke-static {v3, v2}, Lcom/android/phone/Ringer;->access$202(Lcom/android/phone/Ringer;I)I

    .line 429
    iget-object v3, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #setter for: Lcom/android/phone/Ringer;->mIsCompleted:Z
    invoke-static {v3, v1}, Lcom/android/phone/Ringer;->access$102(Lcom/android/phone/Ringer;Z)Z

    .line 430
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$600(Lcom/android/phone/Ringer;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 431
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #setter for: Lcom/android/phone/Ringer;->mTtsInited:Z
    invoke-static {v1, v2}, Lcom/android/phone/Ringer;->access$1002(Lcom/android/phone/Ringer;Z)Z

    .line 432
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #setter for: Lcom/android/phone/Ringer;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1, v5}, Lcom/android/phone/Ringer;->access$602(Lcom/android/phone/Ringer;Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech;

    .line 434
    :cond_14
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #setter for: Lcom/android/phone/Ringer;->mBroadCastCon:Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/android/phone/Ringer;->access$402(Lcom/android/phone/Ringer;Ljava/lang/String;)Ljava/lang/String;

    .line 435
    invoke-virtual {p0}, Lcom/android/phone/Ringer$1;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 422
    :cond_15
    invoke-static {}, Lcom/android/phone/Ringer;->access$300()Z

    move-result v3

    if-eqz v3, :cond_12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- STOP_RING with null ringtone!  msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/Ringer;->access$900(Ljava/lang/String;)V

    goto :goto_4

    .line 370
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
