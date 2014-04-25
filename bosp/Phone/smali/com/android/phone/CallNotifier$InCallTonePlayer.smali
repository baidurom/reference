.class Lcom/android/phone/CallNotifier$InCallTonePlayer;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallTonePlayer"
.end annotation


# static fields
.field public static final TONE_BATTERY_LOW:I = 0x4

.field public static final TONE_BUSY:I = 0x2

.field public static final TONE_CALL_ENDED:I = 0x5

.field public static final TONE_CALL_REMINDER:I = 0xf

.field public static final TONE_CALL_WAITING:I = 0x1

.field public static final TONE_CDMA_DROP:I = 0x9

.field public static final TONE_CONGESTION:I = 0x3

.field public static final TONE_INTERCEPT:I = 0x8

.field public static final TONE_NONE:I = 0x0

.field private static final TONE_OFF:I = 0x0

.field private static final TONE_ON:I = 0x1

.field public static final TONE_OTA_CALL_END:I = 0xc

.field public static final TONE_OUT_OF_SERVICE:I = 0xa

.field public static final TONE_REDIAL:I = 0xb

.field private static final TONE_RELATIVE_VOLUME_HIPRI:I = 0x258

.field private static final TONE_RELATIVE_VOLUME_HIPRIEST:I = 0x64

.field private static final TONE_RELATIVE_VOLUME_LOPRI:I = 0x32

.field public static final TONE_REORDER:I = 0x7

.field public static final TONE_RING_BACK:I = 0xd

.field private static final TONE_STOPPED:I = 0x2

.field private static final TONE_TIMEOUT_BUFFER:I = 0x14

.field public static final TONE_UNOBTAINABLE_NUMBER:I = 0xe

.field public static final TONE_VOICE_PRIVACY:I = 0x6


# instance fields
.field private mState:I

.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .locals 1
    .parameter
    .parameter "toneId"

    .prologue
    .line 2503
    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    .line 2504
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2505
    iput p2, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    .line 2506
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2507
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 2511
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer.run(toneId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2513
    const/4 v9, 0x0

    .line 2516
    .local v9, toneType:I
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 2518
    .local v3, phoneType:I
    iget v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    packed-switch v11, :pswitch_data_0

    .line 2622
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad toneId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2520
    :pswitch_0
    const/16 v9, 0x16

    .line 2521
    const/16 v10, 0x258

    .line 2523
    .local v10, toneVolume:I
    const v8, 0x7fffffeb

    .line 2634
    .local v8, toneLengthMillis:I
    :goto_0
    :try_start_0
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$700(Lcom/android/phone/CallNotifier;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v11

    if-eqz v11, :cond_c

    .line 2635
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$700(Lcom/android/phone/CallNotifier;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v11

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothHeadset;->isAudioOn()Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v6, 0x6

    .line 2640
    .local v6, stream:I
    :goto_1
    if-nez v6, :cond_0

    iget v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    const/16 v12, 0xf

    if-ne v11, v12, :cond_0

    .line 2642
    const/4 v6, 0x1

    .line 2644
    :cond_0
    new-instance v7, Landroid/media/ToneGenerator;

    invoke-direct {v7, v6, v10}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2666
    .end local v6           #stream:I
    .local v7, toneGenerator:Landroid/media/ToneGenerator;
    :goto_2
    const/4 v1, 0x1

    .line 2667
    .local v1, needToStopTone:Z
    const/4 v2, 0x0

    .line 2669
    .local v2, okToPlayTone:Z
    if-eqz v7, :cond_5

    .line 2670
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$800(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 2671
    .local v4, ringerMode:I
    const/4 v11, 0x2

    if-ne v3, v11, :cond_14

    .line 2672
    const/16 v11, 0x5d

    if-ne v9, v11, :cond_d

    .line 2673
    if-eqz v4, :cond_2

    const/4 v11, 0x1

    if-eq v4, v11, :cond_2

    .line 2675
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$900()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "- InCallTonePlayer: start playing call tone="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2676
    :cond_1
    const/4 v2, 0x1

    .line 2677
    const/4 v1, 0x0

    .line 2704
    :cond_2
    :goto_3
    monitor-enter p0

    .line 2705
    if-eqz v2, :cond_4

    :try_start_1
    iget v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_4

    .line 2706
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2707
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$900()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v12, "- InCallTonePlayer: startTone"

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2708
    :cond_3
    invoke-virtual {v7, v9}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2710
    add-int/lit8 v11, v8, 0x14

    int-to-long v11, v11

    :try_start_2
    invoke-virtual {p0, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2715
    :goto_4
    if-eqz v1, :cond_4

    .line 2716
    :try_start_3
    invoke-virtual {v7}, Landroid/media/ToneGenerator;->stopTone()V

    .line 2720
    :cond_4
    invoke-virtual {v7}, Landroid/media/ToneGenerator;->release()V

    .line 2721
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2722
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2738
    .end local v4           #ringerMode:I
    :cond_5
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    .line 2739
    .local v5, state:Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v11, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v11, :cond_6

    .line 2740
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #calls: Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$1000(Lcom/android/phone/CallNotifier;)V

    .line 2742
    :cond_6
    return-void

    .line 2531
    .end local v1           #needToStopTone:Z
    .end local v2           #okToPlayTone:Z
    .end local v5           #state:Lcom/android/internal/telephony/PhoneConstants$State;
    .end local v7           #toneGenerator:Landroid/media/ToneGenerator;
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_1
    const/4 v11, 0x2

    if-ne v3, v11, :cond_7

    .line 2532
    const/16 v9, 0x60

    .line 2533
    const/16 v10, 0x32

    .line 2534
    .restart local v10       #toneVolume:I
    const/16 v8, 0x3e8

    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2535
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :cond_7
    const/4 v11, 0x1

    if-eq v3, v11, :cond_8

    const/4 v11, 0x3

    if-ne v3, v11, :cond_9

    .line 2537
    :cond_8
    const/16 v9, 0x11

    .line 2538
    const/16 v10, 0x258

    .line 2539
    .restart local v10       #toneVolume:I
    const/16 v8, 0xfa0

    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2541
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :cond_9
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected phone type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2545
    :pswitch_2
    const/16 v9, 0x12

    .line 2546
    const/16 v10, 0x258

    .line 2547
    .restart local v10       #toneVolume:I
    const/16 v8, 0xfa0

    .line 2548
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2554
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_3
    const/16 v9, 0x19

    .line 2555
    const/16 v10, 0x258

    .line 2556
    .restart local v10       #toneVolume:I
    const/16 v8, 0x3e8

    .line 2557
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2559
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_4
    const/16 v9, 0x1b

    .line 2560
    const/16 v10, 0x258

    .line 2564
    .restart local v10       #toneVolume:I
    const/16 v8, 0x200

    .line 2565
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2567
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_5
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v11, v11, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a

    .line 2569
    const/16 v9, 0x5d

    .line 2570
    const/16 v10, 0x258

    .line 2571
    .restart local v10       #toneVolume:I
    const/16 v8, 0x2ee

    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2573
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :cond_a
    const/16 v9, 0x1b

    .line 2574
    const/16 v10, 0x258

    .line 2575
    .restart local v10       #toneVolume:I
    const/16 v8, 0xc8

    .line 2577
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2579
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_6
    const/16 v9, 0x56

    .line 2580
    const/16 v10, 0x258

    .line 2581
    .restart local v10       #toneVolume:I
    const/16 v8, 0x1388

    .line 2582
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2584
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_7
    const/16 v9, 0x26

    .line 2585
    const/16 v10, 0x258

    .line 2586
    .restart local v10       #toneVolume:I
    const/16 v8, 0xfa0

    .line 2587
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2589
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_8
    const/16 v9, 0x25

    .line 2590
    const/16 v10, 0x32

    .line 2591
    .restart local v10       #toneVolume:I
    const/16 v8, 0x1f4

    .line 2592
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2595
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_9
    const/16 v9, 0x5f

    .line 2596
    const/16 v10, 0x32

    .line 2597
    .restart local v10       #toneVolume:I
    const/16 v8, 0x177

    .line 2598
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2600
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_a
    const/16 v9, 0x57

    .line 2601
    const/16 v10, 0x32

    .line 2602
    .restart local v10       #toneVolume:I
    const/16 v8, 0x1388

    .line 2603
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2605
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_b
    const/16 v9, 0x17

    .line 2606
    const/16 v10, 0x258

    .line 2608
    .restart local v10       #toneVolume:I
    const v8, 0x7fffffeb

    .line 2609
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2611
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_c
    const/16 v9, 0x15

    .line 2612
    const/16 v10, 0x258

    .line 2613
    .restart local v10       #toneVolume:I
    const/16 v8, 0x3e8

    .line 2614
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2617
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_d
    const/16 v9, 0x1b

    .line 2618
    const/16 v10, 0x64

    .line 2619
    .restart local v10       #toneVolume:I
    const/16 v8, 0x1f4

    .line 2620
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2635
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 2638
    :cond_c
    const/4 v6, 0x0

    .restart local v6       #stream:I
    goto/16 :goto_1

    .line 2646
    .end local v6           #stream:I
    :catch_0
    move-exception v0

    .line 2647
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v11, "CallNotifier"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    const/4 v7, 0x0

    .restart local v7       #toneGenerator:Landroid/media/ToneGenerator;
    goto/16 :goto_2

    .line 2679
    .end local v0           #e:Ljava/lang/RuntimeException;
    .restart local v1       #needToStopTone:Z
    .restart local v2       #okToPlayTone:Z
    .restart local v4       #ringerMode:I
    :cond_d
    const/16 v11, 0x60

    if-eq v9, v11, :cond_e

    const/16 v11, 0x26

    if-eq v9, v11, :cond_e

    const/16 v11, 0x27

    if-eq v9, v11, :cond_e

    const/16 v11, 0x25

    if-eq v9, v11, :cond_e

    const/16 v11, 0x5f

    if-ne v9, v11, :cond_10

    .line 2684
    :cond_e
    if-eqz v4, :cond_2

    .line 2685
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$900()Z

    move-result v11

    if-eqz v11, :cond_f

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer:playing call fail tone:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2686
    :cond_f
    const/4 v2, 0x1

    .line 2687
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 2689
    :cond_10
    const/16 v11, 0x57

    if-eq v9, v11, :cond_11

    const/16 v11, 0x56

    if-ne v9, v11, :cond_13

    .line 2691
    :cond_11
    if-eqz v4, :cond_2

    const/4 v11, 0x1

    if-eq v4, v11, :cond_2

    .line 2693
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$900()Z

    move-result v11

    if-eqz v11, :cond_12

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer:playing tone for toneType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2694
    :cond_12
    const/4 v2, 0x1

    .line 2695
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 2698
    :cond_13
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 2701
    :cond_14
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 2711
    :catch_1
    move-exception v0

    .line 2712
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v11, "CallNotifier"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer stopped: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2722
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v11

    .line 2518
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public stopTone()V
    .locals 2

    .prologue
    .line 2745
    monitor-enter p0

    .line 2746
    :try_start_0
    iget v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2747
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 2749
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2750
    monitor-exit p0

    .line 2751
    return-void

    .line 2750
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
