.class public final Lcom/android/internal/telephony/SmsStorageMonitor;
.super Landroid/os/Handler;
.source "SmsStorageMonitor.java"


# static fields
.field private static final EVENT_ICC_FULL:I = 0x1

.field private static final EVENT_ME_FULL:I = 0x64

.field private static final EVENT_RADIO_ON:I = 0x3

.field private static final EVENT_REPORT_MEMORY_STATUS_DONE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SmsStorageMonitor"

.field private static final WAKE_LOCK_TIMEOUT:I = 0x1388


# instance fields
.field final mCm:Lcom/android/internal/telephony/CommandsInterface;

.field private final mContext:Landroid/content/Context;

.field mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mReportMemoryStatusPending:Z

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field mStorageAvailable:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .parameter "phone"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 84
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 67
    iput-boolean v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    .line 190
    new-instance v1, Lcom/android/internal/telephony/SmsStorageMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SmsStorageMonitor$1;-><init>(Lcom/android/internal/telephony/SmsStorageMonitor;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    .line 86
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 89
    iput-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 92
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsStorageMonitor;->createWakelock()V

    .line 94
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 96
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x64

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnMeSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 98
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 103
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v1, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    return-void
.end method

.method private createWakelock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 164
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 165
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "SmsStorageMonitor"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 166
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 167
    return-void
.end method

.method private handleMeFull()V
    .locals 4

    .prologue
    .line 210
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "result"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    const-string v1, "simId"

    iget-object v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 214
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 215
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnIccSmsFull(Landroid/os/Handler;)V

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 112
    return-void
.end method

.method public handleIccFull()V
    .locals 4

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SIM_FULL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "simId"

    iget-object v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 181
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 122
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 124
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsStorageMonitor;->handleIccFull()V

    goto :goto_0

    .line 128
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 129
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 130
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mReportMemoryStatusPending:Z

    .line 131
    const-string v1, "SmsStorageMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Memory status report to modem pending : mStorageAvailable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mReportMemoryStatusPending:Z

    goto :goto_0

    .line 148
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_2
    const-string v1, "SmsStorageMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending pending memory status report : mStorageAvailable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SmsStorageMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    goto :goto_0

    .line 157
    :sswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsStorageMonitor;->handleMeFull()V

    goto :goto_0

    .line 122
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x64 -> :sswitch_3
    .end sparse-switch
.end method

.method public isStorageAvailable()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    return v0
.end method
