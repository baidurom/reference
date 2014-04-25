.class public Lcom/android/phone/PhoneRecorderHandler;
.super Ljava/lang/Object;
.source "PhoneRecorderHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneRecorderHandler$Listener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneRecorderHandler"

.field private static final VDBG:Z = true

.field private static mInstance:Lcom/android/phone/PhoneRecorderHandler;


# instance fields
.field public mCallerName:Ljava/lang/String;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCustomValue:I

.field private mHandler:Landroid/os/Handler;

.field public mIsStoreToSdcard:Z

.field private mListener:Lcom/android/phone/PhoneRecorderHandler$Listener;

.field private mPhoneRecordStateListener:Lcom/android/phone/IPhoneRecordStateListener;

.field private mPhoneRecorder:Lcom/android/phone/IPhoneRecorder;

.field private mPhoneRecorderState:I

.field private mRecordDiskCheck:Ljava/lang/Runnable;

.field private mRecordType:I

.field private mRecorderServiceIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/android/phone/PhoneRecorderHandler;

    invoke-direct {v0}, Lcom/android/phone/PhoneRecorderHandler;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneRecorderHandler;->mInstance:Lcom/android/phone/PhoneRecorderHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const-class v2, Lcom/android/phone/PhoneRecorderServices;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/phone/PhoneRecorderHandler;->mRecorderServiceIntent:Landroid/content/Intent;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/PhoneRecorderHandler;->mPhoneRecorder:Lcom/android/phone/IPhoneRecorder;

    .line 27
    iput v3, p0, Lcom/android/phone/PhoneRecorderHandler;->mPhoneRecorderState:I

    .line 28
    iput v3, p0, Lcom/android/phone/PhoneRecorderHandler;->mCustomValue:I

    .line 29
    iput v3, p0, Lcom/android/phone/PhoneRecorderHandler;->mRecordType:I

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/PhoneRecorderHandler;->mIsStoreToSdcard:Z

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/PhoneRecorderHandler;->mCallerName:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/android/phone/PhoneRecorderHandler$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneRecorderHandler$1;-><init>(Lcom/android/phone/PhoneRecorderHandler;)V

    iput-object v0, p0, Lcom/android/phone/PhoneRecorderHandler;->mHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Lcom/android/phone/PhoneRecorderHandler$2;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneRecorderHandler$2;-><init>(Lcom/android/phone/PhoneRecorderHandler;)V

    iput-object v0, p0, Lcom/android/phone/PhoneRecorderHandler;->mRecordDiskCheck:Ljava/lang/Runnable;

    .line 64
    new-instance v0, Lcom/android/phone/PhoneRecorderHandler$3;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneRecorderHandler$3;-><init>(Lcom/android/phone/PhoneRecorderHandler;)V

    iput-object v0, p0, Lcom/android/phone/PhoneRecorderHandler;->mConnection:Landroid/content/ServiceConnection;

    .line 84
    new-instance v0, Lcom/android/phone/PhoneRecorderHandler$4;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneRecorderHandler$4;-><init>(Lcom/android/phone/PhoneRecorderHandler;)V

    iput-object v0, p0, Lcom/android/phone/PhoneRecorderHandler;->mPhoneRecordStateListener:Lcom/android/phone/IPhoneRecordStateListener;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PhoneRecorderHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/phone/PhoneRecorderHandler;->checkRecordDisk()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/PhoneRecorderHandler;)Lcom/android/phone/IPhoneRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderHandler;->mPhoneRecorder:Lcom/android/phone/IPhoneRecorder;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/PhoneRecorderHandler;Lcom/android/phone/IPhoneRecorder;)Lcom/android/phone/IPhoneRecorder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/phone/PhoneRecorderHandler;->mPhoneRecorder:Lcom/android/phone/IPhoneRecorder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/PhoneRecorderHandler;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneRecorderHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/PhoneRecorderHandler;)Lcom/android/phone/IPhoneRecordStateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderHandler;->mPhoneRecordStateListener:Lcom/android/phone/IPhoneRecordStateListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/PhoneRecorderHandler;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderHandler;->mRecordDiskCheck:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/PhoneRecorderHandler;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/PhoneRecorderHandler;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/android/phone/PhoneRecorderHandler;->mPhoneRecorderState:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/phone/PhoneRecorderHandler;)Lcom/android/phone/PhoneRecorderHandler$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderHandler;->mListener:Lcom/android/phone/PhoneRecorderHandler$Listener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/PhoneRecorderHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/android/phone/PhoneRecorderHandler;->mCustomValue:I

    return v0
.end method

.method private checkRecordDisk()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x32

    const v3, 0x7f0b03ce

    const/4 v2, 0x0

    .line 196
    invoke-static {}, Lcom/android/phone/PhoneRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 198
    iget-boolean v0, p0, Lcom/android/phone/PhoneRecorderHandler;->mIsStoreToSdcard:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneRecorder;->sdcardFullFlag()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/PhoneRecorderHandler;->mIsStoreToSdcard:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneRecorder;->phoneMemeoryFullFlag()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    :cond_1
    const-string v0, "AN: "

    const-string v1, "Checking result, disk is full, stop recording..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 201
    invoke-virtual {p0}, Lcom/android/phone/PhoneRecorderHandler;->stopVoiceRecord()V

    .line 214
    :cond_2
    :goto_0
    return-void

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/PhoneRecorderHandler;->mRecordDiskCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 205
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/PhoneRecorderHandler;->isVTRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->diskSpaceAvailable(J)Z

    move-result v0

    if-nez v0, :cond_5

    .line 207
    const-string v0, "AN: "

    const-string v1, "Checking result, disk is full, stop recording..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 209
    invoke-virtual {p0}, Lcom/android/phone/PhoneRecorderHandler;->stopVideoRecord()V

    goto :goto_0

    .line 212
    :cond_5
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/PhoneRecorderHandler;->mRecordDiskCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/phone/PhoneRecorderHandler;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/phone/PhoneRecorderHandler;->mInstance:Lcom/android/phone/PhoneRecorderHandler;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 217
    const-string v0, "PhoneRecorderHandler"

    invoke-static {v0, p1}, Lcom/android/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method


# virtual methods
.method public getCustomValue()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/android/phone/PhoneRecorderHandler;->mCustomValue:I

    return v0
.end method

.method public getPhoneRecorderState()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/android/phone/PhoneRecorderHandler;->mPhoneRecorderState:I

    return v0
.end method

.method public getRecordType()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/android/phone/PhoneRecorderHandler;->mRecordType:I

    return v0
.end method

.method public isVTRecording()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 191
    iget v1, p0, Lcom/android/phone/PhoneRecorderHandler;->mCustomValue:I

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/android/phone/PhoneRecorderHandler;->mPhoneRecorderState:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallerName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/phone/PhoneRecorderHandler;->mCallerName:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setCustomValue(I)V
    .locals 0
    .parameter "customValue"

    .prologue
    .line 179
    iput p1, p0, Lcom/android/phone/PhoneRecorderHandler;->mCustomValue:I

    .line 180
    return-void
.end method

.method public setExternalStorage(Z)V
    .locals 0
    .parameter "storeToSdcard"

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/android/phone/PhoneRecorderHandler;->mIsStoreToSdcard:Z

    .line 222
    return-void
.end method

.method public setListener(Lcom/android/phone/PhoneRecorderHandler$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/phone/PhoneRecorderHandler;->mListener:Lcom/android/phone/PhoneRecorderHandler$Listener;

    .line 62
    return-void
.end method

.method public setPhoneRecorderState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 171
    iput p1, p0, Lcom/android/phone/PhoneRecorderHandler;->mPhoneRecorderState:I

    .line 172
    return-void
.end method

.method public setRecordType(I)V
    .locals 0
    .parameter "recordType"

    .prologue
    .line 187
    iput p1, p0, Lcom/android/phone/PhoneRecorderHandler;->mRecordType:I

    .line 188
    return-void
.end method

.method public startVideoRecord(IJI)V
    .locals 4
    .parameter "type"
    .parameter "sdMaxSize"
    .parameter "customValue"

    .prologue
    .line 144
    iput p1, p0, Lcom/android/phone/PhoneRecorderHandler;->mRecordType:I

    .line 145
    iput p4, p0, Lcom/android/phone/PhoneRecorderHandler;->mCustomValue:I

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- start call VTManager.startRecording() : type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sd max size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneRecorderHandler;->log(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/vt/VTManager;->startRecording(IJ)I

    .line 148
    const-string v0, "- end call VTManager.startRecording()"

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneRecorderHandler;->log(Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/PhoneRecorderHandler;->mPhoneRecorderState:I

    .line 150
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderHandler;->mListener:Lcom/android/phone/PhoneRecorderHandler$Listener;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderHandler;->mListener:Lcom/android/phone/PhoneRecorderHandler$Listener;

    iget v1, p0, Lcom/android/phone/PhoneRecorderHandler;->mPhoneRecorderState:I

    iget v2, p0, Lcom/android/phone/PhoneRecorderHandler;->mCustomValue:I

    invoke-interface {v0, v1, v2}, Lcom/android/phone/PhoneRecorderHandler$Listener;->requestUpdateRecordState(II)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/PhoneRecorderHandler;->mRecordDiskCheck:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    return-void
.end method

.method public startVoiceRecord(I)V
    .locals 6
    .parameter "customValue"

    .prologue
    .line 110
    iput p1, p0, Lcom/android/phone/PhoneRecorderHandler;->mCustomValue:I

    .line 111
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/PhoneRecorderHandler;->mRecordType:I

    .line 112
    iget-object v1, p0, Lcom/android/phone/PhoneRecorderHandler;->mRecorderServiceIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/PhoneRecorderHandler;->mPhoneRecorder:Lcom/android/phone/IPhoneRecorder;

    if-nez v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/android/phone/PhoneRecorderHandler;->mRecorderServiceIntent:Landroid/content/Intent;

    const-string v2, "isStoreToSdcard"

    iget-boolean v3, p0, Lcom/android/phone/PhoneRecorderHandler;->mIsStoreToSdcard:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/android/phone/PhoneRecorderHandler;->mRecorderServiceIntent:Landroid/content/Intent;

    const-string v2, "callerName"

    iget-object v3, p0, Lcom/android/phone/PhoneRecorderHandler;->mCallerName:Ljava/lang/String;

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneRecorderHandler;->mRecorderServiceIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/PhoneRecorderHandler;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/phone/PhoneApp;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/android/phone/PhoneRecorderHandler;->mRecorderServiceIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneRecorderHandler;->mPhoneRecorder:Lcom/android/phone/IPhoneRecorder;

    if-eqz v1, :cond_0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneRecorderHandler;->mPhoneRecorder:Lcom/android/phone/IPhoneRecorder;

    invoke-interface {v1}, Lcom/android/phone/IPhoneRecorder;->startRecord()V

    .line 120
    iget-object v1, p0, Lcom/android/phone/PhoneRecorderHandler;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/PhoneRecorderHandler;->mRecordDiskCheck:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PhoneRecorderHandler"

    const-string v2, "start Record failed"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopVideoRecord()V
    .locals 3

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- start call VTManager.stopRecording() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/PhoneRecorderHandler;->mRecordType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneRecorderHandler;->log(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/PhoneRecorderHandler;->mRecordType:I

    invoke-virtual {v0, v1}, Lcom/mediatek/vt/VTManager;->stopRecording(I)I

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- end call VTManager.stopRecording() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/PhoneRecorderHandler;->mRecordType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneRecorderHandler;->log(Ljava/lang/String;)V

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/PhoneRecorderHandler;->mPhoneRecorderState:I

    .line 161
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderHandler;->mListener:Lcom/android/phone/PhoneRecorderHandler$Listener;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderHandler;->mListener:Lcom/android/phone/PhoneRecorderHandler$Listener;

    iget v1, p0, Lcom/android/phone/PhoneRecorderHandler;->mPhoneRecorderState:I

    iget v2, p0, Lcom/android/phone/PhoneRecorderHandler;->mCustomValue:I

    invoke-interface {v0, v1, v2}, Lcom/android/phone/PhoneRecorderHandler$Listener;->requestUpdateRecordState(II)V

    .line 164
    :cond_0
    return-void
.end method

.method public stopVoiceRecord()V
    .locals 4

    .prologue
    .line 129
    :try_start_0
    const-string v1, "stopRecord"

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneRecorderHandler;->log(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/android/phone/PhoneRecorderHandler;->mPhoneRecorder:Lcom/android/phone/IPhoneRecorder;

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/android/phone/PhoneRecorderHandler;->mPhoneRecorder:Lcom/android/phone/IPhoneRecorder;

    invoke-interface {v1}, Lcom/android/phone/IPhoneRecorder;->stopRecord()V

    .line 132
    iget-object v1, p0, Lcom/android/phone/PhoneRecorderHandler;->mPhoneRecorder:Lcom/android/phone/IPhoneRecorder;

    invoke-interface {v1}, Lcom/android/phone/IPhoneRecorder;->remove()V

    .line 133
    iget-object v1, p0, Lcom/android/phone/PhoneRecorderHandler;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    .line 134
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneRecorderHandler;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->unbindService(Landroid/content/ServiceConnection;)V

    .line 136
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/PhoneRecorderHandler;->mPhoneRecorder:Lcom/android/phone/IPhoneRecorder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_1
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PhoneRecorderHandler"

    const-string v2, "stopRecord: couldn\'t call to record service"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
