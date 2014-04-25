.class public Lcom/android/phone/NotificationMgr;
.super Ljava/lang/Object;
.source "NotificationMgr.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NotificationMgr$QueryHandler;,
        Lcom/android/phone/NotificationMgr$StatusBarHelper;
    }
.end annotation


# static fields
.field static final CALL_FORWARD_NOTIFICATION:I = 0x6

.field static final CALL_FORWARD_NOTIFICATION_EX:I = 0xa

.field private static final CALL_LOG_PROJECTION:[Ljava/lang/String; = null

.field private static final CALL_LOG_TOKEN:I = -0x1

.field private static final CONTACT_TOKEN:I = -0x2

.field static final DATA_DISCONNECTED_ROAMING_NOTIFICATION:I = 0x7

.field private static final DBG:Z = false

.field private static final INTENTFORSIM1:Ljava/lang/String; = "com.android.notifysim1"

.field private static final INTENTFORSIM2:Ljava/lang/String; = "com.android.notifysim2"

.field static final IN_CALL_NOTIFICATION:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "NotificationMgr"

.field private static final MAX_VM_NUMBER_RETRIES:I = 0x5

.field private static final MISSECALL_EXTRA:Ljava/lang/String; = "MissedCallNumber"

.field private static final MISSEDCALL_INTENT:Ljava/lang/String; = "com.android.phone.NotificationMgr.MissedCall_intent"

.field static final MISSED_CALL_NOTIFICATION:I = 0x1

.field static final MMI_NOTIFICATION:I = 0x3

.field public static final NETWORK_SELECTION_NOTIFICATION:I = 0x4

.field static final PHONES_PROJECTION:[Ljava/lang/String; = null

.field static final SELECTED_OPERATOR_FAIL_NOTIFICATION:I = 0x8

.field static final SELECTED_OPERATOR_FAIL_NOTIFICATION_2:I = 0x9

.field private static final UNAVAILABLE_NOTIFY_SIM1:I = 0x1

.field private static final UNAVAILABLE_NOTIFY_SIM2:I = 0x2

.field private static final VM_NUMBER_RETRY_DELAY_MILLIS:I = 0x2710

.field static final VOICEMAIL_NOTIFICATION:I = 0x5

.field static final VOICEMAIL_NOTIFICATION_2:I = 0x14

.field private static sInstance:Lcom/android/phone/NotificationMgr;


# instance fields
.field private CALL_FORWARD_INDICATOR_SIM1:Z

.field private CALL_FORWARD_INDICATOR_SIM2:Z

.field private mApp:Lcom/android/phone/PhoneApp;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mInCallResId:I

.field private mMissedCallsNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMissedCallsSimIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNumberMissedCalls:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectedUnavailableNotify:I

.field private mShowingMuteIcon:Z

.field private mShowingSpeakerphoneIcon:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mToast:Landroid/widget/Toast;

.field private mVmNumberRetriesRemaining:I

.field public statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 99
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "duration"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "vtcall"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "simid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/NotificationMgr;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 375
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/NotificationMgr;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 4
    .parameter "app"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput v2, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mMissedCallsNumbers:Ljava/util/ArrayList;

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mMissedCallsSimIds:Ljava/util/ArrayList;

    .line 150
    iput v2, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:I

    .line 157
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    .line 160
    iput-object v3, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    .line 164
    iput-boolean v2, p0, Lcom/android/phone/NotificationMgr;->CALL_FORWARD_INDICATOR_SIM1:Z

    .line 165
    iput-boolean v2, p0, Lcom/android/phone/NotificationMgr;->CALL_FORWARD_INDICATOR_SIM2:Z

    .line 171
    new-instance v1, Lcom/android/phone/NotificationMgr$1;

    invoke-direct {v1, p0}, Lcom/android/phone/NotificationMgr$1;-><init>(Lcom/android/phone/NotificationMgr;)V

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 194
    iput-object p1, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    .line 195
    iput-object p1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    .line 196
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    .line 198
    const-string v1, "statusbar"

    invoke-virtual {p1, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 200
    const-string v1, "power"

    invoke-virtual {p1, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mPowerManager:Landroid/os/PowerManager;

    .line 202
    iget-object v1, p1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 203
    iget-object v1, p1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 204
    new-instance v1, Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-direct {v1, p0, v3}, Lcom/android/phone/NotificationMgr$StatusBarHelper;-><init>(Lcom/android/phone/NotificationMgr;Lcom/android/phone/NotificationMgr$1;)V

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    .line 206
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 207
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.notifysim1"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string v1, "com.android.notifysim2"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 211
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/NotificationMgr;)Landroid/app/StatusBarManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/NotificationMgr;)Lcom/android/phone/NotificationMgr$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/NotificationMgr;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    return v0
.end method

.method private broadcastMissCallIntent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 548
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/phone/PhoneApp;->createCallLogIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v4, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 550
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.UPDATE_HOME_ICON_NUMBER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 551
    .local v0, broadcastIntent:Landroid/content/Intent;
    const-string v2, "ComponentName"

    const-string v3, "com.android.contacts.activities.DialtactsActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    const-string v2, "count"

    iget v3, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 553
    const-string v2, "contentIntent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 556
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 557
    return-void
.end method

.method private cancelInCall()V
    .locals 2

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1401
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    .line 1402
    return-void
.end method

.method private cancelMute()V
    .locals 2

    .prologue
    .line 873
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "mute"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 875
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    .line 877
    :cond_0
    return-void
.end method

.method private cancelNetworkSelection(I)V
    .locals 2
    .parameter "simId"

    .prologue
    .line 1819
    if-nez p1, :cond_0

    .line 1820
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1824
    :goto_0
    return-void

    .line 1822
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private cancelSpeakerphone()V
    .locals 2

    .prologue
    .line 797
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "speakerphone"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 799
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    .line 801
    :cond_0
    return-void
.end method

.method private static configureLedNotification(Landroid/app/Notification;)V
    .locals 1
    .parameter "note"

    .prologue
    .line 543
    iget v0, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/Notification;->flags:I

    .line 544
    iget v0, p0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/app/Notification;->defaults:I

    .line 545
    return-void
.end method

.method private createClearMissedCallsIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 748
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/phone/ClearMissedCallsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 749
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone.intent.CLEAR_MISSED_CALLS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 750
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getSimId(I)J
    .locals 3
    .parameter "slot"

    .prologue
    .line 1911
    invoke-static {}, Lcom/android/phone/SIMInfoWrapper;->getDefault()Lcom/android/phone/SIMInfoWrapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1912
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_0

    .line 1913
    iget-wide v1, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    .line 1916
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method static init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/NotificationMgr;
    .locals 4
    .parameter "app"

    .prologue
    .line 222
    const-class v1, Lcom/android/phone/NotificationMgr;

    monitor-enter v1

    .line 223
    :try_start_0
    sget-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lcom/android/phone/NotificationMgr;

    invoke-direct {v0, p0}, Lcom/android/phone/NotificationMgr;-><init>(Lcom/android/phone/PhoneApp;)V

    sput-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    .line 226
    sget-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    invoke-direct {v0}, Lcom/android/phone/NotificationMgr;->updateNotificationsAtStartup()V

    .line 230
    :goto_0
    sget-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    monitor-exit v1

    return-object v0

    .line 228
    :cond_0
    const-string v0, "NotificationMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1924
    const-string v0, "NotificationMgr"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    return-void
.end method

.method private notifyMissedCallCount()V
    .locals 7

    .prologue
    .line 562
    new-instance v1, Lcom/android/phone/NotificationMgr$2;

    invoke-direct {v1, p0}, Lcom/android/phone/NotificationMgr$2;-><init>(Lcom/android/phone/NotificationMgr;)V

    .line 579
    .local v1, r:Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/phone/Worker;->getWorkerInstance()Lcom/android/phone/Worker;

    move-result-object v2

    .line 580
    .local v2, w:Lcom/android/phone/Worker;
    if-eqz v2, :cond_0

    .line 581
    invoke-virtual {v2}, Lcom/android/phone/Worker;->prepair()V

    .line 582
    invoke-virtual {v2, v1}, Lcom/android/phone/Worker;->postJob(Ljava/lang/Runnable;)V

    .line 594
    :goto_0
    return-void

    .line 584
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.mediatek.action.UNREAD_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 585
    .local v0, newIntent:Landroid/content/Intent;
    const-string v3, "com.mediatek.intent.extra.UNREAD_NUMBER"

    iget v4, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 586
    const-string v3, "com.mediatek.intent.extra.UNREAD_COMPONENT"

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.contacts"

    const-string v6, "com.android.contacts.activities.DialtactsActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 589
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 590
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com_android_contacts_mtk_unread"

    iget v5, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private notifyMute()V
    .locals 6

    .prologue
    .line 865
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    if-nez v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "mute"

    const v2, 0x1080076

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0b02cd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 868
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    .line 870
    :cond_0
    return-void
.end method

.method private notifySpeakerphone()V
    .locals 6

    .prologue
    .line 789
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    if-nez v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "speakerphone"

    const v2, 0x1080087

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0b02cc

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 792
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    .line 794
    :cond_0
    return-void
.end method

.method private resetNewCallsFlag()V
    .locals 6

    .prologue
    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 772
    .local v1, where:Ljava/lang/StringBuilder;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 773
    const-string v2, " AND new=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 776
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "new"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 779
    return-void
.end method

.method private showNetworkSelection(Ljava/lang/String;I)V
    .locals 11
    .parameter "operator"
    .parameter "simId"

    .prologue
    const/high16 v10, 0x800

    const/4 v9, 0x0

    .line 1762
    const/16 v3, 0x8

    .line 1763
    .local v3, notificationId:I
    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0b01a5

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1765
    .local v5, titleText:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 1775
    :goto_0
    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0b01a6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1778
    .local v0, expandedText:Ljava/lang/String;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 1779
    .local v2, notification:Landroid/app/Notification;
    const v6, 0x108008a

    iput v6, v2, Landroid/app/Notification;->icon:I

    .line 1780
    const-wide/16 v6, 0x0

    iput-wide v6, v2, Landroid/app/Notification;->when:J

    .line 1781
    const/4 v6, 0x2

    iput v6, v2, Landroid/app/Notification;->flags:I

    .line 1782
    const/4 v6, 0x0

    iput-object v6, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1784
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1787
    .local v1, intent:Landroid/content/Intent;
    if-nez p2, :cond_1

    .line 1788
    const-string v6, "com.android.notifysim1"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1789
    const-string v6, "simId"

    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1790
    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v6, v9, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1807
    .local v4, pi:Landroid/app/PendingIntent;
    :goto_1
    invoke-direct {p0, p2}, Lcom/android/phone/NotificationMgr;->getSimId(I)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/app/Notification;->simId:J

    .line 1808
    const/4 v6, 0x3

    iput v6, v2, Landroid/app/Notification;->simInfoType:I

    .line 1809
    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6, v5, v0, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1811
    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1812
    return-void

    .line 1769
    .end local v0           #expandedText:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #notification:Landroid/app/Notification;
    .end local v4           #pi:Landroid/app/PendingIntent;
    :cond_0
    const/16 v3, 0x9

    goto :goto_0

    .line 1792
    .restart local v0       #expandedText:Ljava/lang/String;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #notification:Landroid/app/Notification;
    :cond_1
    const-string v6, "com.android.notifysim2"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1793
    const-string v6, "simId"

    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1794
    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v6, v9, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .restart local v4       #pi:Landroid/app/PendingIntent;
    goto :goto_1
.end method

.method private updateInCallNotification(Z)V
    .locals 35
    .parameter "allowFullScreenIntent"

    .prologue
    .line 978
    const v27, 0x7f0201ee

    .line 985
    .local v27, resId:I
    sget-boolean v31, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v31, :cond_0

    .line 1362
    :goto_0
    return-void

    .line 992
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v31

    sget-object v32, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_1

    .line 993
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    .line 994
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    .line 995
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    goto :goto_0

    .line 999
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v20

    .line 1000
    .local v20, hasRingingCall:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v18

    .line 1001
    .local v18, hasActiveCall:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v19

    .line 1012
    .local v19, hasHoldingCall:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v30

    .line 1020
    .local v30, suppressNotification:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v23

    .line 1022
    .local v23, isScreenOn:Z
    if-nez v23, :cond_2

    const/16 v30, 0x1

    .line 1033
    :cond_2
    if-eqz v20, :cond_3

    const/16 v30, 0x0

    .line 1037
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/phone/CallNotifier;->getVoicePrivacyState()Z

    move-result v14

    .line 1039
    .local v14, enhancedVoicePrivacy:Z
    if-eqz v14, :cond_4

    const/16 v30, 0x0

    .line 1040
    :cond_4
    if-eqz v30, :cond_5

    .line 1042
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    .line 1045
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    .line 1046
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    goto :goto_0

    .line 1053
    :cond_5
    if-eqz v20, :cond_10

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/android/phone/BaiduPhoneAdapter;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;

    move-result-object v5

    .line 1056
    .local v5, bsi:Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;
    if-eqz v5, :cond_f

    .line 1057
    iget v0, v5, Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;->simSlotId:I

    move/from16 v29, v0

    .line 1058
    .local v29, slotid:I
    if-nez v29, :cond_e

    .line 1059
    const v27, 0x7f0201ed

    .line 1104
    .end local v5           #bsi:Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;
    .end local v29           #slotid:I
    :cond_6
    :goto_1
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    .line 1107
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    .line 1119
    .local v15, expandedViewIcon:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v28

    .line 1120
    .local v28, ring_call:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v17

    .line 1121
    .local v17, fg_call:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 1124
    .local v3, bg_call:Lcom/android/internal/telephony/Call;
    if-eqz v20, :cond_18

    .line 1125
    move-object/from16 v11, v28

    .line 1131
    .local v11, currentCall:Lcom/android/internal/telephony/Call;
    :goto_2
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v12

    .line 1133
    .local v12, currentConn:Lcom/android/internal/telephony/Connection;
    new-instance v6, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-direct {v6, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1134
    .local v6, builder:Landroid/app/Notification$Builder;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v31

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1141
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v21

    .line 1142
    .local v21, inCallIntent:Landroid/content/Intent;
    const-string v31, "com.android.phone.extra.notification"

    const/16 v32, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v33

    const/16 v34, 0x0

    invoke-static/range {v31 .. v34}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v22

    .line 1146
    .local v22, inCallPendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1151
    const/4 v9, 0x0

    .line 1152
    .local v9, callerInfo:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v12, :cond_7

    .line 1153
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v26

    .line 1154
    .local v26, o:Ljava/lang/Object;
    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v31, v0

    if-eqz v31, :cond_1a

    move-object/from16 v9, v26

    .line 1155
    check-cast v9, Lcom/android/internal/telephony/CallerInfo;

    .line 1162
    .end local v26           #o:Ljava/lang/Object;
    :cond_7
    :goto_3
    const/16 v24, 0x0

    .line 1163
    .local v24, largeIconWasSet:Z
    if-eqz v9, :cond_9

    .line 1166
    iget-boolean v0, v9, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    move/from16 v31, v0

    if-eqz v31, :cond_8

    .line 1170
    iget-object v0, v9, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1c

    .line 1171
    iget-object v0, v9, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1172
    const/16 v24, 0x1

    .line 1188
    :cond_8
    :goto_4
    if-nez v24, :cond_9

    iget v0, v9, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    move/from16 v31, v0

    if-lez v31, :cond_9

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    iget v0, v9, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 1195
    .local v13, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v0, v13, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v31, v0

    if-eqz v31, :cond_9

    .line 1196
    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    .end local v13           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1197
    .local v4, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1198
    const/16 v24, 0x1

    .line 1211
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    :cond_9
    if-nez v24, :cond_a

    .line 1219
    :cond_a
    if-eqz v12, :cond_b

    .line 1221
    if-eqz v20, :cond_1d

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const v32, 0x7f0b019e

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1224
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 1253
    :cond_b
    :goto_5
    const-string v16, ""

    .line 1258
    .local v16, expandedViewLine2:Ljava/lang/String;
    if-eqz v11, :cond_1f

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v31

    if-eqz v31, :cond_1f

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const v32, 0x7f0b018f

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1274
    :cond_c
    :goto_6
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1284
    if-eqz v20, :cond_20

    .line 1289
    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1297
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1299
    if-eqz p1, :cond_d

    .line 1306
    const/16 v31, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v31

    invoke-virtual {v6, v0, v1}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v31

    if-nez v31, :cond_d

    .line 1334
    const-string v31, "NotificationMgr"

    const-string v32, "updateInCallNotification: call-waiting! force relaunch..."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    invoke-virtual/range {v31 .. v32}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1353
    :cond_d
    :goto_7
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v25

    .line 1355
    .local v25, notification:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    move-object/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1360
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->updateSpeakerNotification()V

    .line 1361
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->updateMuteNotification()V

    goto/16 :goto_0

    .line 1060
    .end local v3           #bg_call:Lcom/android/internal/telephony/Call;
    .end local v6           #builder:Landroid/app/Notification$Builder;
    .end local v9           #callerInfo:Lcom/android/internal/telephony/CallerInfo;
    .end local v11           #currentCall:Lcom/android/internal/telephony/Call;
    .end local v12           #currentConn:Lcom/android/internal/telephony/Connection;
    .end local v15           #expandedViewIcon:I
    .end local v16           #expandedViewLine2:Ljava/lang/String;
    .end local v17           #fg_call:Lcom/android/internal/telephony/Call;
    .end local v21           #inCallIntent:Landroid/content/Intent;
    .end local v22           #inCallPendingIntent:Landroid/app/PendingIntent;
    .end local v24           #largeIconWasSet:Z
    .end local v25           #notification:Landroid/app/Notification;
    .end local v28           #ring_call:Lcom/android/internal/telephony/Call;
    .restart local v5       #bsi:Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;
    .restart local v29       #slotid:I
    :cond_e
    const v27, 0x7f0201ee

    goto/16 :goto_1

    .line 1063
    .end local v29           #slotid:I
    :cond_f
    const v27, 0x7f0201f5

    goto/16 :goto_1

    .line 1064
    .end local v5           #bsi:Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;
    :cond_10
    if-nez v18, :cond_12

    if-eqz v19, :cond_12

    .line 1066
    if-eqz v14, :cond_11

    .line 1067
    const v27, 0x7f0201fa

    goto/16 :goto_1

    .line 1069
    :cond_11
    const v27, 0x7f0201f4

    goto/16 :goto_1

    .line 1071
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v31

    if-eqz v31, :cond_14

    .line 1073
    if-eqz v14, :cond_13

    .line 1074
    const v27, 0x7f0201f9

    goto/16 :goto_1

    .line 1076
    :cond_13
    const v27, 0x7f0201ef

    goto/16 :goto_1

    .line 1079
    :cond_14
    if-eqz v14, :cond_15

    .line 1080
    const v27, 0x7f0201f8

    goto/16 :goto_1

    .line 1082
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/phone/PhoneUtils;->hasActivefgEccCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v31

    if-eqz v31, :cond_16

    const v27, 0x7f0201ed

    goto/16 :goto_1

    .line 1086
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/android/phone/BaiduPhoneAdapter;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;

    move-result-object v5

    .line 1087
    .restart local v5       #bsi:Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;
    if-eqz v5, :cond_6

    .line 1088
    iget v0, v5, Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;->simSlotId:I

    move/from16 v29, v0

    .line 1089
    .restart local v29       #slotid:I
    if-nez v29, :cond_17

    .line 1090
    const v27, 0x7f0201ed

    goto/16 :goto_1

    .line 1091
    :cond_17
    const v27, 0x7f0201ee

    goto/16 :goto_1

    .line 1126
    .end local v5           #bsi:Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;
    .end local v29           #slotid:I
    .restart local v3       #bg_call:Lcom/android/internal/telephony/Call;
    .restart local v15       #expandedViewIcon:I
    .restart local v17       #fg_call:Lcom/android/internal/telephony/Call;
    .restart local v28       #ring_call:Lcom/android/internal/telephony/Call;
    :cond_18
    if-eqz v18, :cond_19

    .line 1127
    move-object/from16 v11, v17

    .restart local v11       #currentCall:Lcom/android/internal/telephony/Call;
    goto/16 :goto_2

    .line 1129
    .end local v11           #currentCall:Lcom/android/internal/telephony/Call;
    :cond_19
    move-object v11, v3

    .restart local v11       #currentCall:Lcom/android/internal/telephony/Call;
    goto/16 :goto_2

    .line 1156
    .restart local v6       #builder:Landroid/app/Notification$Builder;
    .restart local v9       #callerInfo:Lcom/android/internal/telephony/CallerInfo;
    .restart local v12       #currentConn:Lcom/android/internal/telephony/Connection;
    .restart local v21       #inCallIntent:Landroid/content/Intent;
    .restart local v22       #inCallPendingIntent:Landroid/app/PendingIntent;
    .restart local v26       #o:Ljava/lang/Object;
    :cond_1a
    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move/from16 v31, v0

    if-eqz v31, :cond_1b

    .line 1157
    check-cast v26, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v26           #o:Ljava/lang/Object;
    move-object/from16 v0, v26

    iget-object v9, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_3

    .line 1159
    .restart local v26       #o:Ljava/lang/Object;
    :cond_1b
    const-string v31, "NotificationMgr"

    const-string v32, "CallerInfo isn\'t available while Call object is available."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1173
    .end local v26           #o:Ljava/lang/Object;
    .restart local v24       #largeIconWasSet:Z
    :cond_1c
    iget-object v0, v9, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v31, v0

    if-eqz v31, :cond_8

    .line 1175
    iget-object v0, v9, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    move-object/from16 v31, v0

    check-cast v31, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1176
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1177
    const/16 v24, 0x1

    goto/16 :goto_4

    .line 1225
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    :cond_1d
    if-eqz v19, :cond_1e

    if-nez v18, :cond_1e

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const v32, 0x7f0b019d

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1228
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    goto/16 :goto_5

    .line 1231
    :cond_1e
    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 1240
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v7

    .line 1241
    .local v7, callDurationMsec:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    sub-long v31, v31, v7

    move-wide/from16 v0, v31

    invoke-virtual {v6, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const v32, 0x7f0b019f

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_5

    .line 1261
    .end local v7           #callDurationMsec:J
    .restart local v16       #expandedViewLine2:Ljava/lang/String;
    :cond_1f
    if-eqz v11, :cond_c

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-static {v0, v11, v1, v2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v10

    .line 1265
    .local v10, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v0, v10, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v31 .. v32}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_6

    .line 1343
    .end local v10           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_20
    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1346
    const-string v31, "Will show \"hang-up\" action in the ongoing active call Notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1348
    const v31, 0x7f0201f0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const v33, 0x7f0b01a7

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/phone/PhoneApp;->createHangUpOngoingCallPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v33

    move/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_7
.end method

.method private updateNotificationsAtStartup()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 336
    new-instance v0, Lcom/android/phone/NotificationMgr$QueryHandler;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NotificationMgr$QueryHandler;-><init>(Lcom/android/phone/NotificationMgr;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    .line 339
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    .local v9, where:Ljava/lang/StringBuilder;
    const/4 v0, 0x3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    const-string v0, " AND new=1"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    const/4 v1, -0x1

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/phone/NotificationMgr;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "date DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v8

    .line 360
    .local v8, state:Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v8, v0, :cond_0

    .line 363
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    .line 372
    :goto_0
    return-void

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto :goto_0
.end method


# virtual methods
.method cancelCallInProgressNotifications()V
    .locals 1

    .prologue
    .line 1410
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    if-nez v0, :cond_0

    .line 1418
    :goto_0
    return-void

    .line 1415
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    .line 1416
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    .line 1417
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    goto :goto_0
.end method

.method cancelMissedCallNotification()V
    .locals 2

    .prologue
    .line 760
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 761
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mMissedCallsNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 762
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mMissedCallsSimIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 763
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 764
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->notifyMissedCallCount()V

    .line 766
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->broadcastMissCallIntent()V

    .line 767
    return-void
.end method

.method public getMissedCallCount()I
    .locals 1

    .prologue
    .line 1920
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    return v0
.end method

.method hideDataDisconnectedRoaming()V
    .locals 2

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1753
    return-void
.end method

.method notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;JIJ)V
    .locals 22
    .parameter "name"
    .parameter "number"
    .parameter "type"
    .parameter "photo"
    .parameter "photoIcon"
    .parameter "date"
    .parameter "callVideo"
    .parameter "simId"

    .prologue
    .line 620
    invoke-static {}, Lcom/android/phone/PhoneApp;->createCallLogIntent()Landroid/content/Intent;

    move-result-object v4

    .line 622
    .local v4, callLogIntent:Landroid/content/Intent;
    move-wide/from16 v13, p9

    .line 627
    .local v13, showSimId:J
    sget-boolean v17, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v17, :cond_0

    .line 744
    .end local p4
    :goto_0
    return-void

    .line 644
    .restart local p4
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 645
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mMissedCallsNumbers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    :goto_1
    const-wide/16 v17, 0x0

    cmp-long v17, p9, v17

    if-lez v17, :cond_2

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mMissedCallsSimIds:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mMissedCallsSimIds:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 654
    .local v9, missedSimId:J
    cmp-long v17, v9, p9

    if-eqz v17, :cond_1

    .line 655
    const-wide/16 v13, -0x1

    .line 662
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #missedSimId:J
    :cond_2
    if-eqz p1, :cond_5

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 663
    move-object/from16 v5, p1

    .line 674
    .local v5, callName:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 675
    const v16, 0x7f0b0198

    .line 676
    .local v16, titleResId:I
    move-object v7, v5

    .line 683
    .local v7, expandedText:Ljava/lang/String;
    :goto_3
    const/16 v17, 0x1

    move/from16 v0, v17

    move/from16 v1, p8

    if-ne v0, v1, :cond_8

    const v15, 0x7f0201b4

    .line 686
    .local v15, smallIconId:I
    :goto_4
    new-instance v3, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 687
    .local v3, builder:Landroid/app/Notification$Builder;
    invoke-virtual {v3, v15}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b019b

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v5, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v4, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v17

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->createClearMissedCallsIntent()Landroid/app/PendingIntent;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 700
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0b0010

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0b000f

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 708
    const v17, 0x7f0201ed

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b01a8

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->getCallBackPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v3, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 712
    const v17, 0x7f0201b6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b01a9

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->getSendSmsFromNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v3, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 716
    if-eqz p5, :cond_9

    .line 717
    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 728
    .end local p4
    :cond_3
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v4, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 729
    .local v6, calllogIntentPlus:Landroid/app/PendingIntent;
    new-instance v17, Lcom/mediatek/notification/NotificationPlus$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lcom/mediatek/notification/NotificationPlus$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/mediatek/notification/NotificationPlus$Builder;->setTitle(Ljava/lang/String;)Lcom/mediatek/notification/NotificationPlus$Builder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b019b

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v5, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/mediatek/notification/NotificationPlus$Builder;->setMessage(Ljava/lang/String;)Lcom/mediatek/notification/NotificationPlus$Builder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b0035

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lcom/mediatek/notification/NotificationPlus$Builder;->setPositiveButton(Ljava/lang/String;Landroid/app/PendingIntent;)Lcom/mediatek/notification/NotificationPlus$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/notification/NotificationPlus$Builder;->create()Lcom/mediatek/notification/NotificationPlus;

    move-result-object v11

    .line 734
    .local v11, notiPlus:Lcom/mediatek/notification/NotificationPlus;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v0, v11}, Lcom/mediatek/notification/NotificationManagerPlus;->notify(ILcom/mediatek/notification/NotificationPlus;)V

    .line 736
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v12

    .line 737
    .local v12, notification:Landroid/app/Notification;
    iput-wide v13, v12, Landroid/app/Notification;->simId:J

    .line 738
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v12, Landroid/app/Notification;->simInfoType:I

    .line 739
    invoke-static {v12}, Lcom/android/phone/NotificationMgr;->configureLedNotification(Landroid/app/Notification;)V

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 741
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->notifyMissedCallCount()V

    .line 743
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->broadcastMissCallIntent()V

    goto/16 :goto_0

    .line 648
    .end local v3           #builder:Landroid/app/Notification$Builder;
    .end local v5           #callName:Ljava/lang/String;
    .end local v6           #calllogIntentPlus:Landroid/app/PendingIntent;
    .end local v7           #expandedText:Ljava/lang/String;
    .end local v11           #notiPlus:Lcom/mediatek/notification/NotificationPlus;
    .end local v12           #notification:Landroid/app/Notification;
    .end local v15           #smallIconId:I
    .end local v16           #titleResId:I
    .restart local p4
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mMissedCallsNumbers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b000f

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 664
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 665
    move-object/from16 v5, p2

    .restart local v5       #callName:Ljava/lang/String;
    goto/16 :goto_2

    .line 668
    .end local v5           #callName:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0b000f

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #callName:Ljava/lang/String;
    goto/16 :goto_2

    .line 678
    :cond_7
    const v16, 0x7f0b0199

    .line 679
    .restart local v16       #titleResId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0b019a

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #expandedText:Ljava/lang/String;
    goto/16 :goto_3

    .line 683
    :cond_8
    const v15, 0x108007f

    goto/16 :goto_4

    .line 718
    .restart local v3       #builder:Landroid/app/Notification$Builder;
    .restart local v15       #smallIconId:I
    :cond_9
    move-object/from16 v0, p4

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 719
    check-cast p4, Landroid/graphics/drawable/BitmapDrawable;

    .end local p4
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto/16 :goto_5
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 1375
    if-ne p2, p0, :cond_0

    .line 1387
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 1392
    :goto_0
    return-void

    .line 1389
    :cond_0
    const-string v0, "NotificationMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete: caller-id query from unknown source! cookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public postTransientNotification(ILjava/lang/CharSequence;)V
    .locals 2
    .parameter "notifyId"
    .parameter "msg"

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1903
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1906
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    .line 1907
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1908
    return-void
.end method

.method resetMissedCallNumber()V
    .locals 1

    .prologue
    .line 783
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 784
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->notifyMissedCallCount()V

    .line 785
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->resetNewCallsFlag()V

    .line 786
    return-void
.end method

.method showDataDisconnectedRoaming(I)V
    .locals 7
    .parameter "simId"

    .prologue
    const/4 v6, 0x0

    .line 1720
    const/4 v0, 0x0

    .line 1723
    .local v0, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1724
    .restart local v0       #intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.gemini.SimDataRoamingSettings"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1732
    new-instance v1, Landroid/app/Notification;

    const v2, 0x108008a

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1736
    .local v1, notification:Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v4, 0x7f0b00bb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0b00be

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1742
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1745
    return-void
.end method

.method updateCfi(ZI)V
    .locals 9
    .parameter "visible"
    .parameter "simId"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 1628
    const/4 v2, 0x6

    .line 1633
    .local v2, notifyId:I
    if-nez p2, :cond_1

    .line 1635
    iput-boolean v4, p0, Lcom/android/phone/NotificationMgr;->CALL_FORWARD_INDICATOR_SIM1:Z

    .line 1642
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CALL_FORWARD_INDICATOR - sim1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/phone/NotificationMgr;->CALL_FORWARD_INDICATOR_SIM1:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",sim2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/phone/NotificationMgr;->CALL_FORWARD_INDICATOR_SIM2:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1645
    if-eqz p1, :cond_2

    .line 1658
    const/4 v3, 0x1

    .line 1660
    .local v3, showExpandedNotification:Z
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1661
    .local v0, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1663
    const-string v4, "com.android.phone"

    const-class v5, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1665
    const-string v4, "simId"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1666
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "simid://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1668
    new-instance v1, Landroid/app/Notification;

    const v4, 0x7f0201f1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1688
    .local v1, notification:Landroid/app/Notification;
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0070

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0073

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v7, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1702
    iget v4, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v1, Landroid/app/Notification;->flags:I

    .line 1703
    invoke-direct {p0, p2}, Lcom/android/phone/NotificationMgr;->getSimId(I)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/app/Notification;->simId:J

    .line 1704
    const/4 v4, 0x3

    iput v4, v1, Landroid/app/Notification;->simInfoType:I

    .line 1705
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1711
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #notification:Landroid/app/Notification;
    .end local v3           #showExpandedNotification:Z
    :goto_1
    return-void

    .line 1637
    :cond_1
    if-ne p2, v4, :cond_0

    .line 1639
    iput-boolean v4, p0, Lcom/android/phone/NotificationMgr;->CALL_FORWARD_INDICATOR_SIM2:Z

    .line 1640
    const/16 v2, 0xa

    goto/16 :goto_0

    .line 1709
    :cond_2
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method

.method public updateInCallNotification()V
    .locals 1

    .prologue
    .line 922
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification(Z)V

    .line 923
    return-void
.end method

.method updateMuteNotification()V
    .locals 2

    .prologue
    .line 891
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 892
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    .line 909
    :goto_0
    return-void

    .line 898
    :cond_0
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 902
    .local v0, state:Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 904
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->notifyMute()V

    goto :goto_0

    .line 907
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    goto :goto_0
.end method

.method updateMwi(ZI)V
    .locals 11
    .parameter "visible"
    .parameter "simId"

    .prologue
    .line 1429
    const/4 v2, 0x0

    .line 1430
    .local v2, notification:Landroid/app/Notification;
    const/4 v1, 0x0

    .line 1431
    .local v1, intent:Landroid/content/Intent;
    const/4 v5, 0x0

    .line 1433
    .local v5, pendingIntent:Landroid/app/PendingIntent;
    if-eqz p1, :cond_5

    .line 1434
    const v6, 0x108007e

    .line 1448
    .local v6, resId:I
    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v9, 0x7f0b036f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1453
    .local v4, notificationTitle:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v8, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v8, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getVoiceMailNumberGemini(I)Ljava/lang/String;

    move-result-object v7

    .line 1475
    .local v7, vmNumber:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1479
    .local v0, iccRecordloaded:Z
    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v8, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v8, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccRecordsLoadedGemini(I)Z

    move-result v0

    .line 1486
    if-nez v7, :cond_1

    if-nez v0, :cond_1

    .line 1500
    iget v8, p0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    add-int/lit8 v9, v8, -0x1

    iput v9, p0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    if-lez v8, :cond_0

    .line 1502
    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    const-wide/16 v9, 0x2710

    invoke-virtual {v8, v9, v10, p2}, Lcom/android/phone/CallNotifier;->sendMwiChangedDelayed(JI)V

    .line 1619
    .end local v0           #iccRecordloaded:Z
    .end local v4           #notificationTitle:Ljava/lang/String;
    .end local v6           #resId:I
    .end local v7           #vmNumber:Ljava/lang/String;
    :goto_0
    return-void

    .line 1505
    .restart local v0       #iccRecordloaded:Z
    .restart local v4       #notificationTitle:Ljava/lang/String;
    .restart local v6       #resId:I
    .restart local v7       #vmNumber:Ljava/lang/String;
    :cond_0
    const-string v8, "NotificationMgr"

    const-string v9, "NotificationMgr.updateMwi: getVoiceMailNumber() failed after 5 retries; giving up."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    :cond_1
    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v9, 0x7f0b01a0

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1531
    .local v3, notificationText:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1532
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1533
    const-string v8, "voicemail_number"

    invoke-virtual {v1, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1538
    :goto_1
    const/4 v8, 0x1

    if-ne p2, v8, :cond_3

    .line 1539
    const-string v8, "VoiceMailSIM2"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1546
    :goto_2
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.android.phone"

    const-string v10, "com.mediatek.phone.VoicemailDialog"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1547
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateMwi(): new intent CALL, simId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1548
    const-string v8, "simId"

    invoke-virtual {v1, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1550
    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/high16 v10, 0x800

    invoke-static {v8, v9, v1, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 1585
    new-instance v2, Landroid/app/Notification;

    .end local v2           #notification:Landroid/app/Notification;
    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v2, v6, v8, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1592
    .restart local v2       #notification:Landroid/app/Notification;
    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8, v4, v3, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1600
    invoke-direct {p0, p2}, Lcom/android/phone/NotificationMgr;->getSimId(I)J

    move-result-wide v8

    iput-wide v8, v2, Landroid/app/Notification;->simId:J

    .line 1601
    const/4 v8, 0x3

    iput v8, v2, Landroid/app/Notification;->simInfoType:I

    .line 1602
    iget v8, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v8, v8, 0x1

    iput v8, v2, Landroid/app/Notification;->defaults:I

    .line 1603
    iget v8, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v2, Landroid/app/Notification;->defaults:I

    .line 1605
    iget v8, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x20

    iput v8, v2, Landroid/app/Notification;->flags:I

    .line 1606
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->configureLedNotification(Landroid/app/Notification;)V

    .line 1607
    const/4 v8, 0x1

    if-ne p2, v8, :cond_4

    .line 1608
    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v9, 0x14

    invoke-virtual {v8, v9, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1535
    :cond_2
    const-string v8, "voicemail_number"

    const-string v9, ""

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1541
    :cond_3
    const-string v8, "VoiceMailSIM"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 1610
    :cond_4
    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v9, 0x5

    invoke-virtual {v8, v9, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1613
    .end local v0           #iccRecordloaded:Z
    .end local v3           #notificationText:Ljava/lang/String;
    .end local v4           #notificationTitle:Ljava/lang/String;
    .end local v6           #resId:I
    .end local v7           #vmNumber:Ljava/lang/String;
    :cond_5
    const/4 v8, 0x1

    if-ne p2, v8, :cond_6

    .line 1614
    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v9, 0x14

    invoke-virtual {v8, v9}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 1616
    :cond_6
    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0
.end method

.method updateNetworkSelection(II)V
    .locals 6
    .parameter "serviceState"
    .parameter "simId"

    .prologue
    const/4 v5, 0x1

    .line 1832
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 1836
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1840
    .local v2, sp:Landroid/content/SharedPreferences;
    if-nez p2, :cond_2

    .line 1841
    const-string v3, "network_selection_name_key"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1846
    .local v0, networkSelection:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1847
    if-nez p2, :cond_3

    .line 1848
    const-string v3, "network_selection_key"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1857
    :cond_0
    :goto_1
    if-ne p1, v5, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1864
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    .line 1869
    .local v1, sim:Lcom/android/internal/telephony/IccCard;
    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v3, v4, :cond_5

    .line 1870
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_4

    const-string v3, "1"

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not ready, don\'t alert network service notification"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1899
    .end local v0           #networkSelection:Ljava/lang/String;
    .end local v1           #sim:Lcom/android/internal/telephony/IccCard;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_1
    :goto_3
    return-void

    .line 1843
    .restart local v2       #sp:Landroid/content/SharedPreferences;
    :cond_2
    const-string v3, "network_selection_name_key_2"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #networkSelection:Ljava/lang/String;
    goto :goto_0

    .line 1850
    :cond_3
    const-string v3, "network_selection_key_2"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1870
    .restart local v1       #sim:Lcom/android/internal/telephony/IccCard;
    :cond_4
    const-string v3, "2"

    goto :goto_2

    .line 1874
    :cond_5
    if-nez p2, :cond_6

    .line 1875
    iget v3, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    .line 1876
    invoke-direct {p0, v0, p2}, Lcom/android/phone/NotificationMgr;->showNetworkSelection(Ljava/lang/String;I)V

    .line 1877
    iget v3, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:I

    goto :goto_3

    .line 1880
    :cond_6
    iget v3, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    .line 1881
    invoke-direct {p0, v0, p2}, Lcom/android/phone/NotificationMgr;->showNetworkSelection(Ljava/lang/String;I)V

    .line 1882
    iget v3, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:I

    goto :goto_3

    .line 1886
    .end local v1           #sim:Lcom/android/internal/telephony/IccCard;
    :cond_7
    if-nez p2, :cond_8

    .line 1887
    iget v3, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:I

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_1

    .line 1888
    invoke-direct {p0, p2}, Lcom/android/phone/NotificationMgr;->cancelNetworkSelection(I)V

    .line 1889
    iget v3, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:I

    goto :goto_3

    .line 1892
    :cond_8
    iget v3, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:I

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_1

    .line 1893
    invoke-direct {p0, p2}, Lcom/android/phone/NotificationMgr;->cancelNetworkSelection(I)V

    .line 1894
    iget v3, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:I

    goto :goto_3
.end method

.method public updateNotificationAndLaunchIncomingCallUi()V
    .locals 1

    .prologue
    .line 959
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification(Z)V

    .line 960
    return-void
.end method

.method public updateSpeakerNotification()V
    .locals 5

    .prologue
    .line 815
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 818
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    .line 822
    .local v2, state:Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 829
    .local v1, showNotification:Z
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/phone/NotificationMgr;->updateSpeakerNotification(Z)V

    .line 830
    return-void

    .line 822
    .end local v1           #showNotification:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateSpeakerNotification(Z)V
    .locals 1
    .parameter "showNotification"

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    .line 862
    :goto_0
    return-void

    .line 857
    :cond_0
    if-eqz p1, :cond_1

    .line 858
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->notifySpeakerphone()V

    goto :goto_0

    .line 860
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    goto :goto_0
.end method
