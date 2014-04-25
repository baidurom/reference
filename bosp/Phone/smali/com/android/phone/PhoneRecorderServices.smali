.class public Lcom/android/phone/PhoneRecorderServices;
.super Landroid/app/Service;
.source "PhoneRecorderServices.java"


# static fields
.field public static final CALLER_NAME:Ljava/lang/String; = "callerName"

.field public static final CALLER_PHONENUMBER:Ljava/lang/String; = "callerPhoneNumber"

.field public static final IS_STORE_TO_SDCARD:Ljava/lang/String; = "isStoreToSdcard"

.field private static final LOG_TAG:Ljava/lang/String; = "RecorderServices"

.field private static final PHONE_VOICE_RECORD_STATE_CHANGE_MESSAGE:Ljava/lang/String; = "com.android.phone.VoiceRecorder.STATE"


# instance fields
.field public callerPhoneNumber:Ljava/lang/String;

.field private final mBinder:Lcom/android/phone/IPhoneRecorder$Stub;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mCallerName:Ljava/lang/String;

.field public mIsStoreToSdcard:Z

.field private mMount:Z

.field private mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

.field private mPhoneRecorderStateListener:Lcom/android/phone/Recorder$OnStateChangedListener;

.field private mPhoneRecorderStatus:I

.field mStateListener:Lcom/android/phone/IPhoneRecordStateListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

    .line 22
    iput-boolean v0, p0, Lcom/android/phone/PhoneRecorderServices;->mMount:Z

    .line 23
    iput-object v1, p0, Lcom/android/phone/PhoneRecorderServices;->mStateListener:Lcom/android/phone/IPhoneRecordStateListener;

    .line 25
    iput-boolean v0, p0, Lcom/android/phone/PhoneRecorderServices;->mIsStoreToSdcard:Z

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/PhoneRecorderServices;->mCallerName:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/PhoneRecorderServices;->callerPhoneNumber:Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/android/phone/PhoneRecorderServices$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneRecorderServices$1;-><init>(Lcom/android/phone/PhoneRecorderServices;)V

    iput-object v0, p0, Lcom/android/phone/PhoneRecorderServices;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorderStatus:I

    .line 100
    new-instance v0, Lcom/android/phone/PhoneRecorderServices$2;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneRecorderServices$2;-><init>(Lcom/android/phone/PhoneRecorderServices;)V

    iput-object v0, p0, Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorderStateListener:Lcom/android/phone/Recorder$OnStateChangedListener;

    .line 130
    new-instance v0, Lcom/android/phone/PhoneRecorderServices$3;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneRecorderServices$3;-><init>(Lcom/android/phone/PhoneRecorderServices;)V

    iput-object v0, p0, Lcom/android/phone/PhoneRecorderServices;->mBinder:Lcom/android/phone/IPhoneRecorder$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PhoneRecorderServices;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/android/phone/PhoneRecorderServices;->mMount:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/PhoneRecorderServices;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/android/phone/PhoneRecorderServices;->mMount:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/PhoneRecorderServices;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorderStatus:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/PhoneRecorderServices;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorderStatus:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/PhoneRecorderServices;)Lcom/android/phone/PhoneRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/PhoneRecorderServices;Lcom/android/phone/PhoneRecorder;)Lcom/android/phone/PhoneRecorder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

    return-object p1
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 96
    const-string v0, "RecorderServices"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 42
    const-string v0, "RecorderServices"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderServices;->mBinder:Lcom/android/phone/IPhoneRecorder$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 53
    const-string v1, "onCreate"

    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneRecorderServices;->log(Ljava/lang/String;)V

    .line 54
    invoke-static {p0}, Lcom/android/phone/PhoneRecorder;->getInstance(Landroid/content/Context;)Lcom/android/phone/PhoneRecorder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 56
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/android/phone/PhoneRecorderServices;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/PhoneRecorderServices;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    iget-object v1, p0, Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

    iget-object v2, p0, Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorderStateListener:Lcom/android/phone/Recorder$OnStateChangedListener;

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneRecorder;->setOnStateChangedListener(Lcom/android/phone/Recorder$OnStateChangedListener;)V

    .line 65
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 69
    const-string v0, "onDestroy"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneRecorderServices;->log(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

    iget-boolean v1, p0, Lcom/android/phone/PhoneRecorderServices;->mMount:Z

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneRecorder;->stopRecord(Z)V

    .line 72
    iput-object v2, p0, Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderServices;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderServices;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneRecorderServices;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 76
    iput-object v2, p0, Lcom/android/phone/PhoneRecorderServices;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    :cond_1
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 82
    const-string v0, "onStart"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneRecorderServices;->log(Ljava/lang/String;)V

    .line 83
    if-eqz p1, :cond_0

    .line 84
    const-string v0, "isStoreToSdcard"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/PhoneRecorderServices;->mIsStoreToSdcard:Z

    .line 85
    const-string v0, "callerName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneRecorderServices;->mCallerName:Ljava/lang/String;

    .line 86
    const-string v0, "callerPhoneNumber"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneRecorderServices;->callerPhoneNumber:Ljava/lang/String;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

    iget-boolean v1, p0, Lcom/android/phone/PhoneRecorderServices;->mIsStoreToSdcard:Z

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneRecorder;->setExternalStorage(Z)V

    .line 90
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

    iget-object v1, p0, Lcom/android/phone/PhoneRecorderServices;->mCallerName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/PhoneRecorderServices;->callerPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneRecorder;->setCallerName(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

    invoke-virtual {v0}, Lcom/android/phone/PhoneRecorder;->startRecord()V

    .line 93
    :cond_1
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 47
    const-string v0, "RecorderServices"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
