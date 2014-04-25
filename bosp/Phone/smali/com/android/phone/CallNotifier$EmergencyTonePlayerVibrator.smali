.class Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;
.super Ljava/lang/Object;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyTonePlayerVibrator"
.end annotation


# instance fields
.field private final EMG_VIBRATE_LENGTH:I

.field private final EMG_VIBRATE_PAUSE:I

.field private mEmgVibrator:Landroid/os/SystemVibrator;

.field private mInCallVolume:I

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private final mVibratePattern:[J

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallNotifier;)V
    .locals 1
    .parameter

    .prologue
    const/16 v0, 0x3e8

    .line 3069
    iput-object p1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3057
    iput v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->EMG_VIBRATE_LENGTH:I

    .line 3058
    iput v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->EMG_VIBRATE_PAUSE:I

    .line 3059
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mVibratePattern:[J

    .line 3070
    return-void

    .line 3059
    :array_0
    .array-data 0x8
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$200(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3056
    invoke-direct {p0}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->start()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3056
    invoke-direct {p0}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V

    return-void
.end method

.method private start()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 3077
    iget-object v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$800(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 3079
    .local v0, ringerMode:I
    iget-object v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$1200(Lcom/android/phone/CallNotifier;)I

    move-result v1

    if-ne v1, v5, :cond_1

    if-ne v0, v4, :cond_1

    .line 3081
    iget-object v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    const-string v2, "EmergencyTonePlayerVibrator.start(): emergency tone..."

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 3086
    iget-object v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_0

    .line 3087
    iget-object v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$800(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mInCallVolume:I

    .line 3088
    iget-object v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$800(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$800(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {v1, v3, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3091
    iget-object v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v2, 0x5c

    invoke-virtual {v1, v2}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 3092
    iget-object v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #setter for: Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I
    invoke-static {v1, v5}, Lcom/android/phone/CallNotifier;->access$1302(Lcom/android/phone/CallNotifier;I)I

    .line 3102
    :cond_0
    :goto_0
    return-void

    .line 3094
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$1200(Lcom/android/phone/CallNotifier;)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 3095
    iget-object v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    const-string v2, "EmergencyTonePlayerVibrator.start(): emergency vibrate..."

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 3096
    new-instance v1, Landroid/os/SystemVibrator;

    invoke-direct {v1}, Landroid/os/SystemVibrator;-><init>()V

    iput-object v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mEmgVibrator:Landroid/os/SystemVibrator;

    .line 3097
    iget-object v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mEmgVibrator:Landroid/os/SystemVibrator;

    if-eqz v1, :cond_0

    .line 3098
    iget-object v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mEmgVibrator:Landroid/os/SystemVibrator;

    iget-object v2, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mVibratePattern:[J

    invoke-virtual {v1, v2, v3}, Landroid/os/SystemVibrator;->vibrate([JI)V

    .line 3099
    iget-object v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #setter for: Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I
    invoke-static {v1, v4}, Lcom/android/phone/CallNotifier;->access$1302(Lcom/android/phone/CallNotifier;I)I

    goto :goto_0
.end method

.method private stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3110
    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_1

    .line 3112
    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 3113
    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 3114
    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$800(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mInCallVolume:I

    invoke-virtual {v0, v2, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3121
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #setter for: Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I
    invoke-static {v0, v2}, Lcom/android/phone/CallNotifier;->access$1302(Lcom/android/phone/CallNotifier;I)I

    .line 3122
    return-void

    .line 3117
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mEmgVibrator:Landroid/os/SystemVibrator;

    if-eqz v0, :cond_0

    .line 3119
    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mEmgVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    goto :goto_0
.end method
