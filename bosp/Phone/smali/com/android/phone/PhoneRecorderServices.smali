.class public Lcom/android/phone/PhoneRecorderServices;
.super Landroid/app/Service;
.source "PhoneRecorderServices.java"


# static fields
.field public static final CALLER_NAME:Ljava/lang/String; = "callerName"

.field public static final CALLER_PHONENUMBER:Ljava/lang/String; = "callerPhoneNumber"

.field public static final IS_STORE_TO_SDCARD:Ljava/lang/String; = "isStoreToSdcard"

.field private static final LOG_TAG:Ljava/lang/String; = "RecorderServices"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMount:Z

.field private mPhoneRecorder:Lcom/android/phone/PhoneRecorder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/PhoneRecorderServices;->mMount:Z

    .line 19
    new-instance v0, Lcom/android/phone/PhoneRecorderServices$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneRecorderServices$1;-><init>(Lcom/android/phone/PhoneRecorderServices;)V

    iput-object v0, p0, Lcom/android/phone/PhoneRecorderServices;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/phone/PhoneRecorderServices;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/android/phone/PhoneRecorderServices;->mMount:Z

    return p1
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 69
    const-string v0, "RecorderServices"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 35
    const-string v1, "onCreate"

    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneRecorderServices;->log(Ljava/lang/String;)V

    .line 36
    invoke-static {p0}, Lcom/android/phone/PhoneRecorder;->getInstance(Landroid/content/Context;)Lcom/android/phone/PhoneRecorder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

    .line 37
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 38
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/android/phone/PhoneRecorderServices;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/PhoneRecorderServices;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 46
    const-string v0, "onDestroy"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneRecorderServices;->log(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

    iget-boolean v1, p0, Lcom/android/phone/PhoneRecorderServices;->mMount:Z

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneRecorder;->stopRecord(Z)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

    .line 49
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderServices;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneRecorderServices;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 50
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 5
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 54
    const-string v3, "onStart"

    invoke-virtual {p0, v3}, Lcom/android/phone/PhoneRecorderServices;->log(Ljava/lang/String;)V

    .line 55
    const/4 v2, 0x1

    .line 56
    .local v2, isStoreToSdcard:Z
    const-string v0, ""

    .line 57
    .local v0, callerName:Ljava/lang/String;
    const-string v1, ""

    .line 58
    .local v1, callerPhoneNumber:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 59
    const-string v3, "isStoreToSdcard"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 60
    const-string v3, "callerName"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v3, "callerPhoneNumber"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    :cond_0
    iget-object v3, p0, Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

    invoke-virtual {v3, v2}, Lcom/android/phone/PhoneRecorder;->setExternalStorage(Z)V

    .line 64
    iget-object v3, p0, Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

    invoke-virtual {v3, v0, v1}, Lcom/android/phone/PhoneRecorder;->setCallerName(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v3, p0, Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

    invoke-virtual {v3}, Lcom/android/phone/PhoneRecorder;->startRecord()V

    .line 66
    return-void
.end method
