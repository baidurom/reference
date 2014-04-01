.class public Lcom/mediatek/audioprofile/AudioProfileService;
.super Lcom/mediatek/audioprofile/IAudioProfileService$Stub;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/audioprofile/AudioProfileService$6;,
        Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;,
        Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;,
        Lcom/mediatek/audioprofile/AudioProfileService$Record;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final IS_CMCC:Z = false

.field private static final MSG_PERSIST_ALARM_VOLUME_TO_DATABASE:I = 0xa

.field private static final MSG_PERSIST_DTMF_TONE_TO_DATABASE:I = 0xf

.field private static final MSG_PERSIST_DTMF_TONE_TO_SYSTEM:I = 0x4

.field private static final MSG_PERSIST_HAPTIC_FEEDBACK_TO_DATABASE:I = 0x12

.field private static final MSG_PERSIST_HAPTIC_FEEDBACK_TO_SYSTEM:I = 0x7

.field private static final MSG_PERSIST_LOCKSCREEN_SOUND_TO_DATABASE:I = 0x11

.field private static final MSG_PERSIST_LOCKSCREEN_SOUND_TO_SYSTEM:I = 0x6

.field private static final MSG_PERSIST_NOTIFICATION_RINGTONE_TO_DATABASE:I = 0xc

.field private static final MSG_PERSIST_NOTIFICATION_RINGTONE_TO_SYSTEM:I = 0x2

.field private static final MSG_PERSIST_NOTIFICATION_VOLUME_TO_DATABASE:I = 0x9

.field private static final MSG_PERSIST_PROFILE_NAME_TO_DATABASE:I = 0x13

.field private static final MSG_PERSIST_RINGER_VOLUME_TO_DATABASE:I = 0x8

.field private static final MSG_PERSIST_SOUND_EFFECT_TO_DATABASE:I = 0x10

.field private static final MSG_PERSIST_SOUND_EFFECT_TO_SYSTEM:I = 0x5

.field private static final MSG_PERSIST_VIBRATION_TO_DATABASE:I = 0xe

.field private static final MSG_PERSIST_VIDEOCALL_RINGTONE_TO_DATABASE:I = 0xd

.field private static final MSG_PERSIST_VIDEOCALL_RINGTONE_TO_SYSTEM:I = 0x3

.field private static final MSG_PERSIST_VOICECALL_RINGTONE_TO_DATABASE:I = 0xb

.field private static final MSG_PERSIST_VOICECALL_RINGTONE_TO_SYSTEM:I = 0x1

.field private static final SILENT_NOTIFICATION_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "AudioProfileService"


# instance fields
.field private mActiveProfileKey:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioProfileHandler:Landroid/os/Handler;

.field private mAudioProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCustomActiveProfileDeleted:Z

.field private mCustomProfileName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastActiveProfileKey:Ljava/lang/String;

.field private mNotificationObserver:Landroid/database/ContentObserver;

.field private mOverrideSystemThread:Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;

.field private mProfileStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/audioprofile/AudioProfileState;",
            ">;"
        }
    .end annotation
.end field

.field private mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/audioprofile/AudioProfileService$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mRingerMode:I

.field private mRingerModeListenr:Lcom/mediatek/audioprofile/AudioProfileListener;

.field private mRingerVolumeListenr:Lcom/mediatek/audioprofile/AudioProfileListener;

.field private mRingtoneObserver:Landroid/database/ContentObserver;

.field private mShouldSyncToSystem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mUpgradeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    sget-boolean v0, Lcom/mediatek/audioprofile/AudioProfileManager;->IS_CMCC:Z

    sput-boolean v0, Lcom/mediatek/audioprofile/AudioProfileService;->IS_CMCC:Z

    .line 104
    const-string v0, "com.mediatek.uri.silent_notificaton"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 451
    invoke-direct {p0}, Lcom/mediatek/audioprofile/IAudioProfileService$Stub;-><init>()V

    .line 115
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    .line 116
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    .line 122
    new-instance v5, Ljava/util/HashMap;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    .line 127
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    .line 133
    iput-boolean v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomActiveProfileDeleted:Z

    .line 135
    const/4 v5, -0x1

    iput v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 142
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    .line 147
    new-instance v5, Lcom/mediatek/audioprofile/AudioProfileService$1;

    invoke-direct {v5, p0}, Lcom/mediatek/audioprofile/AudioProfileService$1;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    iput-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerModeListenr:Lcom/mediatek/audioprofile/AudioProfileListener;

    .line 219
    new-instance v5, Lcom/mediatek/audioprofile/AudioProfileService$2;

    invoke-direct {v5, p0}, Lcom/mediatek/audioprofile/AudioProfileService$2;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    iput-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerVolumeListenr:Lcom/mediatek/audioprofile/AudioProfileListener;

    .line 283
    new-instance v5, Lcom/mediatek/audioprofile/AudioProfileService$3;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService$3;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingtoneObserver:Landroid/database/ContentObserver;

    .line 347
    new-instance v5, Lcom/mediatek/audioprofile/AudioProfileService$4;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService$4;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mNotificationObserver:Landroid/database/ContentObserver;

    .line 412
    new-instance v5, Lcom/mediatek/audioprofile/AudioProfileService$5;

    invoke-direct {v5, p0}, Lcom/mediatek/audioprofile/AudioProfileService$5;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    iput-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUpgradeReceiver:Landroid/content/BroadcastReceiver;

    .line 452
    const-string v5, "AudioProfileService"

    const-string v6, "Initial AudioProfileService!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    .line 454
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    .line 455
    const-string v5, "audio"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    .line 456
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    const-string v6, "audioprofile"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 459
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "mtk_audioprofile_active"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, activeProfileKey:Ljava/lang/String;
    if-nez v0, :cond_0

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v0

    .end local v0           #activeProfileKey:Ljava/lang/String;
    :cond_0
    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    .line 461
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "mtk_audioprofile_last_active"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 462
    .local v3, lastActiveProfileKey:Ljava/lang/String;
    if-nez v3, :cond_1

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v3

    .end local v3           #lastActiveProfileKey:Ljava/lang/String;
    :cond_1
    iput-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    .line 463
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "mtk_audioprofile_custom_deleted"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomActiveProfileDeleted:Z

    .line 465
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->createOverrideSystemThread()V

    .line 467
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->readProfileKeys()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    .line 468
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 469
    .local v4, profileKey:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->readPersistedSettings(Ljava/lang/String;)V

    goto :goto_0

    .line 473
    .end local v4           #profileKey:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    iput v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 474
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerModeListenr:Lcom/mediatek/audioprofile/AudioProfileListener;

    iget-object v6, v6, Lcom/mediatek/audioprofile/AudioProfileListener;->callback:Lcom/mediatek/audioprofile/IAudioProfileListener;

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/media/AudioManager;->listenRingerModeAndVolume(Lcom/mediatek/audioprofile/IAudioProfileListener;I)V

    .line 475
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerVolumeListenr:Lcom/mediatek/audioprofile/AudioProfileListener;

    iget-object v6, v6, Lcom/mediatek/audioprofile/AudioProfileListener;->callback:Lcom/mediatek/audioprofile/IAudioProfileListener;

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Landroid/media/AudioManager;->listenRingerModeAndVolume(Lcom/mediatek/audioprofile/IAudioProfileListener;I)V

    .line 478
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "ringtone"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingtoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v9, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 479
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "notification_sound"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mNotificationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v9, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 482
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->readShouldSyncToSystem()V

    .line 487
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 488
    .local v1, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_4

    .line 489
    const-string v5, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 490
    const-string v5, "file"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 491
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUpgradeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 500
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->checkDefaultProfiles()V

    .line 501
    return-void

    .line 492
    :cond_4
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_5

    .line 494
    invoke-direct {p0, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    goto :goto_1

    .line 495
    :cond_5
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v5, v10}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_3

    .line 496
    invoke-direct {p0, v10}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/mediatek/audioprofile/AudioProfileService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/audioprofile/AudioProfileService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1200()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUpgradeReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/mediatek/audioprofile/AudioProfileService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Lcom/mediatek/audioprofile/AudioProfileService;->IS_CMCC:Z

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->syncRingerVolumeToProfile(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/audioprofile/AudioProfileService;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->notifyRingerVolumeChanged(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    return-object v0
.end method

.method private checkDefaultProfiles()V
    .locals 9

    .prologue
    .line 2490
    sget-boolean v7, Lcom/mediatek/audioprofile/AudioProfileService;->IS_CMCC:Z

    if-eqz v7, :cond_0

    .line 2516
    :goto_0
    return-void

    .line 2493
    :cond_0
    const-string v7, "AudioProfileService"

    const-string v8, "checkDefaultProfiles>>>"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v1

    .line 2495
    .local v1, generalKey:Ljava/lang/String;
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v4

    .line 2496
    .local v4, outdoorKey:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->getPredefinedProfileKeys()Ljava/util/List;

    move-result-object v0

    .line 2497
    .local v0, defaultKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2498
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2499
    .local v6, profileKey:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;)V

    goto :goto_1

    .line 2503
    .end local v6           #profileKey:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v2

    .line 2504
    .local v2, generalState:Lcom/mediatek/audioprofile/AudioProfileState;
    invoke-direct {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v5

    .line 2507
    .local v5, outdoorState:Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v7, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    iput-object v7, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 2508
    iget-object v7, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    iput-object v7, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 2509
    iget-object v7, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    iput-object v7, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 2512
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2513
    .restart local v6       #profileKey:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v8

    iget v8, v8, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    iput v8, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    goto :goto_2

    .line 2515
    .end local v6           #profileKey:Ljava/lang/String;
    :cond_2
    const-string v7, "AudioProfileService"

    const-string v8, "checkDefaultProfiles<<<"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createOverrideSystemThread()V
    .locals 3

    .prologue
    .line 2695
    new-instance v1, Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;

    invoke-direct {v1, p0}, Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    iput-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mOverrideSystemThread:Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;

    .line 2696
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mOverrideSystemThread:Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;->start()V

    .line 2698
    monitor-enter p0

    .line 2699
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2702
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2703
    :catch_0
    move-exception v0

    .line 2704
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "AudioProfileService"

    const-string v2, "Interrupted while waiting on AudioProfileHandler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2707
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2709
    return-void
.end method

.method private genCustomKey()Ljava/lang/String;
    .locals 7

    .prologue
    .line 950
    const/4 v2, 0x6

    .line 951
    .local v2, maxCustom:I
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 952
    .local v3, rand:Ljava/util/Random;
    const/4 v1, 0x0

    .line 954
    .local v1, key:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v4

    rem-int v0, v4, v2

    .line 955
    .local v0, customNo:I
    if-gez v0, :cond_1

    .line 956
    neg-int v0, v0

    .line 958
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mtk_audioprofile_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 961
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 962
    const-string v4, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "genCustomKey: newKey = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    return-object v1
.end method

.method private getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;I)I
    .locals 2
    .parameter "name"
    .parameter
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 2565
    .local p2, initValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 2566
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2567
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2569
    .end local v0           #value:Ljava/lang/String;
    .end local p3
    :cond_0
    :goto_0
    return p3

    .line 2567
    .restart local v0       #value:Ljava/lang/String;
    .restart local p3
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0
.end method

.method private getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter "name"
    .parameter
    .parameter "defaultUri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 2549
    .local p2, initValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 2550
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2551
    .local v0, uriString:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2553
    .end local v0           #uriString:Ljava/lang/String;
    .end local p3
    :cond_0
    :goto_0
    return-object p3

    .line 2551
    .restart local v0       #uriString:Ljava/lang/String;
    .restart local p3
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    goto :goto_0
.end method

.method private getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z
    .locals 2
    .parameter "name"
    .parameter
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 2581
    .local p2, initValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 2582
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2583
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2585
    .end local v0           #value:Ljava/lang/String;
    .end local p3
    :cond_0
    :goto_0
    return p3

    .line 2583
    .restart local v0       #value:Ljava/lang/String;
    .restart local p3
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    goto :goto_0
.end method

.method private getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;
    .locals 5
    .parameter "profileKey"

    .prologue
    .line 1395
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 1396
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 1397
    .local v0, profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_0

    .line 1399
    const-string v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProfileState of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is null, so create new one instead!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->readPersistedSettings(Ljava/lang/String;)V

    .line 1401
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 1403
    .restart local v0       #profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    :cond_0
    monitor-exit v2

    return-object v0

    .line 1404
    .end local v0           #profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getStreamValidVolume(II)I
    .locals 1
    .parameter "streamType"
    .parameter "volume"

    .prologue
    .line 1275
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getStreamMaxVolume(I)I

    move-result v0

    .line 1276
    .local v0, max:I
    if-gez p2, :cond_1

    .line 1277
    const/4 p2, 0x0

    .line 1281
    :cond_0
    :goto_0
    return p2

    .line 1278
    :cond_1
    if-le p2, v0, :cond_0

    .line 1279
    move p2, v0

    goto :goto_0
.end method

.method private notifyAudioProfileChanged()V
    .locals 7

    .prologue
    .line 745
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 746
    const-string v3, "AudioProfileService"

    const-string/jumbo v4, "notifyAudioProfileChanged falled, because active profile key is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :goto_0
    return-void

    .line 749
    :cond_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 750
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyAudioProfileChanged: New profile = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", clients = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 752
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 753
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 754
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;

    .line 755
    .local v2, record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    iget v3, v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mEvent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 757
    :try_start_1
    iget-object v3, v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mCallback:Lcom/mediatek/audioprofile/IAudioProfileListener;

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-interface {v3, v5}, Lcom/mediatek/audioprofile/IAudioProfileListener;->onAudioProfileChanged(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 758
    :catch_0
    move-exception v0

    .line 759
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 760
    const-string v3, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dead object in notifyAudioProfileChanged, remove listener\'s callback: record.mBinder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", clients = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 767
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    .end local v2           #record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 769
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_3
    const-string v3, "AudioProfileService"

    const-string/jumbo v4, "notifyAudioProfileChanged falled, because there are no listener!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private notifyRingerVolumeChanged(IILjava/lang/String;)V
    .locals 7
    .parameter "oldVolume"
    .parameter "newVolume"
    .parameter "profileKey"

    .prologue
    .line 778
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 779
    const-string v3, "AudioProfileService"

    const-string/jumbo v4, "notifyRingerVolumeChanged falled, because active profile key is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :goto_0
    return-void

    .line 782
    :cond_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 783
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyRingerVolumeChanged: oldVolume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newVolume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", profile = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", client = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 786
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 787
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 788
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;

    .line 789
    .local v2, record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    iget v3, v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mEvent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x4

    if-ne v3, v5, :cond_1

    .line 791
    :try_start_1
    iget-object v3, v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mCallback:Lcom/mediatek/audioprofile/IAudioProfileListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/audioprofile/IAudioProfileListener;->onRingerVolumeChanged(IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 792
    :catch_0
    move-exception v0

    .line 793
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 794
    const-string v3, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dead object in notifyAudioProfileChanged, remove listener\'s callback: record.mBinder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", clients = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 801
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    .end local v2           #record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 803
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_3
    const-string v3, "AudioProfileService"

    const-string/jumbo v4, "notifyRingerVolumeChanged falled, because there are no listener!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private persistDtmfToneToDatabase(Ljava/lang/String;Z)V
    .locals 6
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    const/4 v5, -0x1

    .line 1941
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1942
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1943
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDtmfToneKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1944
    .local v2, name:Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1945
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0xf

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1946
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1947
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1948
    return-void
.end method

.method private persistDtmfToneToSystem()V
    .locals 6

    .prologue
    .line 2133
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2134
    .local v1, msg:Landroid/os/Message;
    const-string v2, "dtmf_tone"

    .line 2135
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2136
    .local v0, enabled:I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2137
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2138
    return-void

    .line 2135
    .end local v0           #enabled:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private persistHapticFeedbackToDatabase(Ljava/lang/String;Z)V
    .locals 6
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    const/4 v5, -0x1

    .line 1989
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1990
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1991
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getHapticKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1992
    .local v2, name:Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x12

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1994
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1995
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1996
    return-void
.end method

.method private persistHapticFeedbackToSystem()V
    .locals 6

    .prologue
    .line 2166
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2167
    .local v1, msg:Landroid/os/Message;
    const-string v2, "haptic_feedback_enabled"

    .line 2168
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2169
    .local v0, enabled:I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2170
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2171
    return-void

    .line 2168
    .end local v0           #enabled:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private persistLockScreenToDatabase(Ljava/lang/String;Z)V
    .locals 6
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    const/4 v5, -0x1

    .line 1973
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1974
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1975
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getLockScreenKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1976
    .local v2, name:Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x11

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1978
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1979
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1980
    return-void
.end method

.method private persistLockScreenToSystem()V
    .locals 6

    .prologue
    .line 2155
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2156
    .local v1, msg:Landroid/os/Message;
    const-string v2, "lockscreen_sounds_enabled"

    .line 2157
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2158
    .local v0, enabled:I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2159
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2160
    return-void

    .line 2157
    .end local v0           #enabled:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private persistProfileNameToDatabase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "profileKey"
    .parameter "profileName"

    .prologue
    const/4 v5, -0x1

    .line 2004
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2005
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2006
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileNameKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2007
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x13

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2009
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2010
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2011
    return-void
.end method

.method private persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 6
    .parameter "profileKey"
    .parameter "type"
    .parameter "uri"

    .prologue
    const/4 v5, -0x1

    .line 1867
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1868
    .local v1, msg:Landroid/os/Message;
    invoke-static {p1, p2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1869
    .local v2, name:Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1870
    .local v0, bundle:Landroid/os/Bundle;
    if-nez p3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    sparse-switch p2, :sswitch_data_0

    .line 1885
    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1886
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1887
    return-void

    .line 1870
    :cond_0
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1873
    :sswitch_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1874
    goto :goto_1

    .line 1877
    :sswitch_1
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1878
    goto :goto_1

    .line 1881
    :sswitch_2
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    goto :goto_1

    .line 1871
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method private persistRingtoneUriToSystem(I)V
    .locals 7
    .parameter "type"

    .prologue
    const/4 v6, -0x1

    .line 2027
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2028
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2029
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 2030
    .local v2, name:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2032
    .local v3, uri:Landroid/net/Uri;
    sparse-switch p1, :sswitch_data_0

    .line 2055
    const-string v4, "AudioProfileService"

    const-string/jumbo v5, "persistRingtoneUriToSystem with unsupport type!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    :goto_0
    return-void

    .line 2034
    :sswitch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2035
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v4

    iget-object v3, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 2036
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2058
    :goto_1
    if-nez v3, :cond_1

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2060
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2040
    :sswitch_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2041
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v4

    iget-object v3, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 2043
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v4, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2044
    const/4 v3, 0x0

    .line 2046
    :cond_0
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2047
    goto :goto_1

    .line 2050
    :sswitch_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2051
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v4

    iget-object v3, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 2052
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2053
    goto :goto_1

    .line 2058
    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 2032
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method private persistSoundEffectToDatabase(Ljava/lang/String;Z)V
    .locals 6
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    const/4 v5, -0x1

    .line 1957
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1958
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1959
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getSoundEffectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1960
    .local v2, name:Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x10

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1962
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1963
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1964
    return-void
.end method

.method private persistSoundEffectToSystem()V
    .locals 6

    .prologue
    .line 2144
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2145
    .local v1, msg:Landroid/os/Message;
    const-string/jumbo v2, "sound_effects_enabled"

    .line 2146
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2147
    .local v0, enabled:I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2148
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2149
    return-void

    .line 2146
    .end local v0           #enabled:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private persistStreamVolumeToDatabase(Ljava/lang/String;II)V
    .locals 5
    .parameter "profileKey"
    .parameter "streamType"
    .parameter "value"

    .prologue
    const/4 v4, -0x1

    .line 1899
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1900
    .local v0, msg:Landroid/os/Message;
    invoke-static {p1, p2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1901
    .local v1, name:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 1915
    :goto_0
    :pswitch_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1916
    return-void

    .line 1903
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, p3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1904
    goto :goto_0

    .line 1907
    :pswitch_2
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, p3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1908
    goto :goto_0

    .line 1911
    :pswitch_3
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, p3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 1901
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private persistStreamVolumeToSystem(I)V
    .locals 6
    .parameter "streamType"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 2073
    const/4 v0, 0x0

    .line 2074
    .local v0, flags:I
    const/4 v1, 0x0

    .line 2075
    .local v1, volume:I
    sget-boolean v2, Lcom/mediatek/audioprofile/AudioProfileManager;->IS_CMCC:Z

    if-eqz v2, :cond_0

    .line 2076
    packed-switch p1, :pswitch_data_0

    .line 2090
    :pswitch_0
    const-string v2, "AudioProfileService"

    const-string v3, "CMCC: persistStreamVolumeToSystem with unsupport type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    :goto_0
    return-void

    .line 2078
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 2079
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3, v1, v0}, Landroid/media/AudioManager;->setAudioProfileStreamVolume(III)V

    .line 2093
    :goto_1
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMCC: persistStreamVolumeToSystem: streamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2082
    :pswitch_2
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 2083
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5, v1, v0}, Landroid/media/AudioManager;->setAudioProfileStreamVolume(III)V

    goto :goto_1

    .line 2086
    :pswitch_3
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 2087
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4, v1, v0}, Landroid/media/AudioManager;->setAudioProfileStreamVolume(III)V

    goto :goto_1

    .line 2095
    :cond_0
    packed-switch p1, :pswitch_data_1

    .line 2109
    :pswitch_4
    const-string v2, "AudioProfileService"

    const-string/jumbo v3, "persistStreamVolumeToSystem with unsupport type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2097
    :pswitch_5
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 2098
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3, v1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2112
    :goto_2
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "persistStreamVolumeToSystem: streamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2101
    :pswitch_6
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 2102
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5, v1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_2

    .line 2105
    :pswitch_7
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 2106
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4, v1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_2

    .line 2076
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 2095
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private persistValues(Z)V
    .locals 5
    .parameter "overrideSystem"

    .prologue
    const/4 v4, 0x2

    .line 1053
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 1054
    .local v0, activeProfileState:Lcom/mediatek/audioprofile/AudioProfileState;
    if-eqz v0, :cond_1

    .line 1055
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persistValues: override = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistVibrationToSystem()V

    .line 1063
    if-eqz p1, :cond_0

    .line 1064
    invoke-direct {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1065
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1066
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1067
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1068
    invoke-direct {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1069
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1072
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistDtmfToneToSystem()V

    .line 1073
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistSoundEffectToSystem()V

    .line 1074
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistLockScreenToSystem()V

    .line 1075
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistHapticFeedbackToSystem()V

    .line 1076
    return-void

    .line 1057
    :cond_1
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persistValues error with no "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private persistVibrationToDatabase(Ljava/lang/String;Z)V
    .locals 6
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    const/4 v5, -0x1

    .line 1924
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1925
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1926
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1927
    .local v2, name:Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    const-string v3, "Vibration"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0xe

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1930
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1931
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1932
    return-void
.end method

.method private persistVibrationToSystem()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2122
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    if-eqz v2, :cond_0

    move v0, v1

    .line 2125
    .local v0, vibrationStatus:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 2126
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1, v0}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 2127
    return-void

    .line 2122
    .end local v0           #vibrationStatus:I
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private readPersistedSettings(Ljava/lang/String;)V
    .locals 20
    .parameter "profileKey"

    .prologue
    .line 2301
    if-nez p1, :cond_0

    .line 2302
    const-string v2, "AudioProfileService"

    const-string/jumbo v3, "readPersistedSettings with Null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    :goto_0
    return-void

    .line 2306
    :cond_0
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "name"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "value"

    aput-object v3, v4, v2

    .line 2311
    .local v4, projection:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "name like \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2312
    .local v5, selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2314
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 2315
    .local v10, initValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2316
    const-string/jumbo v2, "name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 2317
    .local v12, nameIndex:I
    const-string/jumbo v2, "value"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 2319
    .local v19, valueIndex:I
    :cond_1
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2320
    .local v11, name:Ljava/lang/String;
    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2321
    .local v18, value:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2322
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2327
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #nameIndex:I
    .end local v18           #value:Ljava/lang/String;
    .end local v19           #valueIndex:I
    :goto_1
    if-eqz v8, :cond_2

    .line 2328
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2331
    :cond_2
    const/4 v2, 0x3

    new-array v15, v2, [Landroid/net/Uri;

    .line 2332
    .local v15, persistedUri:[Landroid/net/Uri;
    const/4 v2, 0x3

    new-array v0, v2, [I

    move-object/from16 v16, v0

    .line 2333
    .local v16, persistedVolume:[I
    const/4 v2, 0x5

    new-array v13, v2, [Z

    .line 2334
    .local v13, persistedEnabled:[Z
    const/4 v11, 0x0

    .line 2335
    .restart local v11       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDefaultState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v9

    .line 2337
    .local v9, defaultState:Lcom/mediatek/audioprofile/AudioProfileState;
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 2338
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v15, v2

    .line 2340
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 2341
    const/4 v2, 0x1

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v15, v2

    .line 2343
    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 2344
    const/4 v2, 0x2

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v15, v2

    .line 2347
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 2348
    const/4 v2, 0x0

    iget v3, v9, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;I)I

    move-result v3

    aput v3, v16, v2

    .line 2350
    const/4 v2, 0x5

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 2351
    const/4 v2, 0x1

    iget v3, v9, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;I)I

    move-result v3

    aput v3, v16, v2

    .line 2353
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 2354
    const/4 v2, 0x2

    iget v3, v9, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;I)I

    move-result v3

    aput v3, v16, v2

    .line 2357
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2358
    const/4 v2, 0x0

    iget-boolean v3, v9, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v3

    aput-boolean v3, v13, v2

    .line 2360
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDtmfToneKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2361
    const/4 v2, 0x1

    iget-boolean v3, v9, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v3

    aput-boolean v3, v13, v2

    .line 2363
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getSoundEffectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2364
    const/4 v2, 0x2

    iget-boolean v3, v9, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v3

    aput-boolean v3, v13, v2

    .line 2366
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getLockScreenKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2367
    const/4 v2, 0x3

    iget-boolean v3, v9, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v3

    aput-boolean v3, v13, v2

    .line 2369
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getHapticKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2370
    const/4 v2, 0x4

    iget-boolean v3, v9, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v3

    aput-boolean v3, v13, v2

    .line 2373
    new-instance v14, Lcom/mediatek/audioprofile/AudioProfileState;

    move-object/from16 v0, v16

    invoke-direct {v14, v15, v0, v13}, Lcom/mediatek/audioprofile/AudioProfileState;-><init>([Landroid/net/Uri;[I[Z)V

    .line 2374
    .local v14, persistedState:Lcom/mediatek/audioprofile/AudioProfileState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2376
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2377
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileNameKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2378
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 2379
    .local v17, profileName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2382
    .end local v17           #profileName:Ljava/lang/String;
    :cond_3
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readPersistedSettings with "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ": "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/mediatek/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2324
    .end local v9           #defaultState:Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v11           #name:Ljava/lang/String;
    .end local v13           #persistedEnabled:[Z
    .end local v14           #persistedState:Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v15           #persistedUri:[Landroid/net/Uri;
    .end local v16           #persistedVolume:[I
    :cond_4
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readPersistedSettings: No value for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private readProfileKeys()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2247
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2250
    .local v9, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->getPredefinedProfileKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2253
    const-string/jumbo v10, "name"

    .line 2254
    .local v10, nameColumn:Ljava/lang/String;
    const-string/jumbo v12, "value"

    .line 2256
    .local v12, valueColumn:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    aput-object v12, v2, v0

    .line 2261
    .local v2, projection:[Ljava/lang/String;
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v7

    .line 2262
    .local v7, customPrefix:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 2263
    .local v11, selection:Ljava/lang/StringBuffer;
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " like \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "_%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2265
    const-string v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readProfileKeys: selection = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    const-string v5, "_id desc"

    .line 2268
    .local v5, sortOrder:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2274
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 2275
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 2276
    .local v13, valueIndex:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2277
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2278
    .local v8, key:Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v0, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2279
    :cond_0
    const-string v0, "AudioProfileService"

    const-string/jumbo v1, "readProfileKeys: Null custom key!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2282
    :cond_1
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2283
    const-string v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readProfileKeys: Get custom key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2286
    .end local v8           #key:Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2291
    .end local v13           #valueIndex:I
    :goto_1
    return-object v9

    .line 2288
    :cond_3
    const-string v0, "AudioProfileService"

    const-string v1, "getProfileKeys: Null cursor!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private readShouldSyncToSystem()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x5

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 2391
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->values()[Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    move-result-object v6

    array-length v6, v6

    if-ge v1, v6, :cond_0

    .line 2392
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2391
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2394
    :cond_0
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .line 2395
    .local v0, activeScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-boolean v6, Lcom/mediatek/audioprofile/AudioProfileService;->IS_CMCC:Z

    if-eqz v6, :cond_d

    .line 2398
    sget-object v6, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v6, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2400
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 2401
    .local v5, systemVolume:I
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v6

    iget v3, v6, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 2402
    .local v3, profileVolume:I
    if-eq v3, v5, :cond_1

    .line 2403
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v7}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2406
    :cond_1
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v12}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 2407
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v6

    iget v3, v6, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 2408
    if-eq v3, v5, :cond_2

    .line 2409
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v7}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2412
    :cond_2
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 2413
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v6

    iget v3, v6, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 2414
    if-eq v3, v5, :cond_3

    .line 2415
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v7}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2419
    :cond_3
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v6, v9}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    .line 2420
    .local v4, systemUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v6

    iget-object v2, v6, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 2421
    .local v2, profileUri:Landroid/net/Uri;
    if-eqz v2, :cond_4

    invoke-virtual {v2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    if-nez v2, :cond_6

    if-eqz v4, :cond_6

    .line 2422
    :cond_5
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v7}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2425
    :cond_6
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v6, v10}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    .line 2426
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v6

    iget-object v2, v6, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 2427
    if-eqz v2, :cond_7

    invoke-virtual {v2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    if-nez v2, :cond_9

    if-eqz v4, :cond_9

    .line 2428
    :cond_8
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v7}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2431
    :cond_9
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v6, v13}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    .line 2432
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v6

    iget-object v2, v6, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 2433
    if-eqz v2, :cond_a

    invoke-virtual {v2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_a
    if-nez v2, :cond_c

    if-eqz v4, :cond_c

    .line 2434
    :cond_b
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->videocall_Stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v7}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2437
    .end local v2           #profileUri:Landroid/net/Uri;
    .end local v3           #profileVolume:I
    .end local v4           #systemUri:Landroid/net/Uri;
    .end local v5           #systemVolume:I
    :cond_c
    const-string v6, "AudioProfileService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CMCC: readShouldSyncToSystem: mShouldSyncToSystem = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    :goto_1
    return-void

    .line 2441
    :cond_d
    sget-object v6, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v6, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    sget-object v6, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v6, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 2443
    :cond_e
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 2444
    .restart local v5       #systemVolume:I
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v6

    iget v3, v6, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 2445
    .restart local v3       #profileVolume:I
    if-eq v3, v5, :cond_f

    .line 2446
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v7}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2449
    :cond_f
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v12}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 2450
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v6

    iget v3, v6, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 2451
    if-eq v3, v5, :cond_10

    .line 2452
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v7}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2455
    :cond_10
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 2456
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v6

    iget v3, v6, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 2457
    if-eq v3, v5, :cond_11

    .line 2458
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v7}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2462
    :cond_11
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v6, v9}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    .line 2463
    .restart local v4       #systemUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v6

    iget-object v2, v6, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 2464
    .restart local v2       #profileUri:Landroid/net/Uri;
    if-eqz v2, :cond_12

    invoke-virtual {v2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    :cond_12
    if-nez v2, :cond_14

    if-eqz v4, :cond_14

    .line 2465
    :cond_13
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v7}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2468
    :cond_14
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v6, v10}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    .line 2469
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v6

    iget-object v2, v6, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 2470
    if-eqz v2, :cond_15

    invoke-virtual {v2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    :cond_15
    if-nez v2, :cond_17

    if-eqz v4, :cond_17

    .line 2471
    :cond_16
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v7}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2474
    :cond_17
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v6, v13}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    .line 2475
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v6

    iget-object v2, v6, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 2476
    if-eqz v2, :cond_18

    invoke-virtual {v2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    :cond_18
    if-nez v2, :cond_1a

    if-eqz v4, :cond_1a

    .line 2477
    :cond_19
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->videocall_Stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v7}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2480
    .end local v2           #profileUri:Landroid/net/Uri;
    .end local v3           #profileVolume:I
    .end local v4           #systemUri:Landroid/net/Uri;
    .end local v5           #systemVolume:I
    :cond_1a
    const-string v6, "AudioProfileService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "readShouldSyncToSystem: mShouldSyncToSystem = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 6
    .parameter "binder"

    .prologue
    .line 2646
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2647
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2648
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2649
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/audioprofile/AudioProfileService$Record;

    .line 2650
    .local v1, record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    iget-object v2, v1, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2651
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2652
    const-string v2, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removed AudioProfile change listener for: record.mBinder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", clients = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2656
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    .end local v1           #record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2657
    return-void
.end method

.method private restoreToDefaultValues(Ljava/lang/String;)V
    .locals 11
    .parameter "profileKey"

    .prologue
    .line 1086
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v8, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDefaultState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1087
    .local v0, defaultState:Lcom/mediatek/audioprofile/AudioProfileState;
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v4

    .line 1088
    .local v4, profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v9

    .line 1089
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {p0, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 1090
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 1091
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 1093
    iget v8, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    iput v8, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 1094
    iget v8, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    iput v8, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 1095
    iget v8, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    iput v8, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 1097
    iget-boolean v8, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    iput-boolean v8, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    .line 1098
    iget-boolean v8, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    iput-boolean v8, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    .line 1099
    iget-boolean v8, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    iput-boolean v8, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    .line 1100
    iget-boolean v8, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    iput-boolean v8, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    .line 1101
    iget-boolean v8, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    iput-boolean v8, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 1102
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1103
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getAllKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1104
    .local v3, keyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1105
    .local v5, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v8, "name"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    const-string v8, " in ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 1108
    .local v6, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    add-int/lit8 v8, v6, -0x1

    if-ge v2, v8, :cond_0

    .line 1109
    const-string v8, "?,"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1102
    .end local v2           #i:I
    .end local v3           #keyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #sb:Ljava/lang/StringBuilder;
    .end local v6           #size:I
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 1111
    .restart local v2       #i:I
    .restart local v3       #keyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5       #sb:Ljava/lang/StringBuilder;
    .restart local v6       #size:I
    :cond_0
    const-string v8, "?)"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1113
    .local v7, where:Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    new-array v8, v6, [Ljava/lang/String;

    invoke-interface {v3, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v9, v10, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1114
    .local v1, deleted:I
    const-string v8, "AudioProfileService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "restoreToDefaultValues: profileKey = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    return-void
.end method

.method private setActiveKey(Ljava/lang/String;)Z
    .locals 4
    .parameter "profileKey"

    .prologue
    .line 692
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "mtk_audioprofile_active"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 693
    .local v0, succeed:Z
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    .line 694
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setActiveKey: succeed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    return v0
.end method

.method private setActiveProfile(Ljava/lang/String;Z)V
    .locals 13
    .parameter "profileKey"
    .parameter "shouldSetRingerMode"

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v3

    .line 516
    .local v3, oldProfileKey:Ljava/lang/String;
    move-object v1, p1

    .line 517
    .local v1, newProfileKey:Ljava/lang/String;
    const-string v9, "AudioProfileService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setActiveProfile>>>: oldProfileKey = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", newProfileKey = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", shouldSetRingerMode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 519
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v10

    .line 520
    :try_start_0
    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->setActiveKey(Ljava/lang/String;)Z

    .line 521
    invoke-static {v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v2

    .line 522
    .local v2, newScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v4

    .line 523
    .local v4, oldScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    const/4 v5, 0x1

    .line 525
    .local v5, overrideSystem:Z
    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    .line 529
    .local v6, ringerMode:I
    sget-boolean v9, Lcom/mediatek/audioprofile/AudioProfileService;->IS_CMCC:Z

    if-eqz v9, :cond_6

    .line 530
    sget-object v9, Lcom/mediatek/audioprofile/AudioProfileService$6;->$SwitchMap$com$mediatek$audioprofile$AudioProfileManager$Scenario:[I

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v11

    aget v9, v9, v11

    packed-switch v9, :pswitch_data_0

    .line 555
    if-eqz p2, :cond_0

    .line 556
    const/4 v9, 0x2

    if-eq v6, v9, :cond_5

    .line 557
    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 558
    const/4 v9, 0x2

    iput v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 559
    const-string v9, "AudioProfileService"

    const-string v11, "CMCC: setActiveProfile: RingerMode is VIBRATE or SILENT, now set NORMAL"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_0
    :goto_0
    sget-object v9, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v9, v4}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 569
    iget-boolean v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomActiveProfileDeleted:Z

    .line 573
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->syncVolumeToSystem()V

    .line 574
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->syncRingtoneToSystem()V

    .line 669
    :cond_1
    :goto_1
    invoke-direct {p0, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->persistValues(Z)V

    .line 671
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->notifyAudioProfileChanged()V

    .line 673
    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v9

    iget v7, v9, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 674
    .local v7, ringerVolume:I
    invoke-direct {p0, v7, v7, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->notifyRingerVolumeChanged(IILjava/lang/String;)V

    .line 675
    const-string v9, "AudioProfileService"

    const-string/jumbo v11, "setActiveProfile<<<"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    monitor-exit v10

    .line 680
    .end local v2           #newScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v4           #oldScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v5           #overrideSystem:Z
    .end local v6           #ringerMode:I
    .end local v7           #ringerVolume:I
    :goto_2
    return-void

    .line 533
    .restart local v2       #newScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .restart local v4       #oldScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .restart local v5       #overrideSystem:Z
    .restart local v6       #ringerMode:I
    :pswitch_0
    if-eqz p2, :cond_2

    .line 534
    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v9

    iget-boolean v9, v9, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    if-eqz v9, :cond_4

    .line 535
    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 536
    const/4 v9, 0x1

    iput v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 537
    const-string v9, "AudioProfileService"

    const-string v11, "CMCC: setActiveProfile: RingerMode is NORMAL, now set VIBRATE"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_2
    :goto_3
    invoke-direct {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->setLastActiveKey(Ljava/lang/String;)Z

    move-result v0

    .line 546
    .local v0, lastActiveChanged:Z
    if-eqz v0, :cond_3

    iget-boolean v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomActiveProfileDeleted:Z

    if-eqz v9, :cond_3

    .line 547
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/mediatek/audioprofile/AudioProfileService;->setCustomActiveDeleted(Z)Z

    .line 549
    :cond_3
    const/4 v5, 0x0

    .line 550
    goto :goto_1

    .line 539
    .end local v0           #lastActiveChanged:Z
    :cond_4
    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 540
    const/4 v9, 0x0

    iput v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 541
    const-string v9, "AudioProfileService"

    const-string v11, "CMCC: setActiveProfile: RingerMode is NORMAL, now set SILENT"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 676
    .end local v2           #newScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v4           #oldScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v5           #overrideSystem:Z
    .end local v6           #ringerMode:I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 561
    .restart local v2       #newScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .restart local v4       #oldScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .restart local v5       #overrideSystem:Z
    .restart local v6       #ringerMode:I
    :cond_5
    :try_start_1
    const-string v9, "AudioProfileService"

    const-string v11, "CMCC: setActiveProfile: RingerMode is already NORMAL"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 581
    :cond_6
    sget-object v9, Lcom/mediatek/audioprofile/AudioProfileService$6;->$SwitchMap$com$mediatek$audioprofile$AudioProfileManager$Scenario:[I

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v11

    aget v9, v9, v11

    packed-switch v9, :pswitch_data_1

    .line 633
    if-eqz p2, :cond_7

    .line 634
    const/4 v9, 0x2

    if-eq v6, v9, :cond_12

    .line 635
    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 636
    const/4 v9, 0x2

    iput v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 637
    const-string v9, "AudioProfileService"

    const-string/jumbo v11, "setActiveProfile: RingerMode is VIBRATE or SILENT, now set NORMAL"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_7
    :goto_4
    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v9

    iget v9, v9, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    if-nez v9, :cond_8

    .line 645
    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v8

    .line 646
    .local v8, volume:I
    invoke-direct {p0, v1, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->syncRingerVolumeToProfile(Ljava/lang/String;I)V

    .line 647
    const-string v9, "AudioProfileService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setActiveProfile: profile volume is 0, change to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    .end local v8           #volume:I
    :cond_8
    sget-object v9, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v9, v4}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    sget-object v9, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v9, v4}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_9
    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 656
    iget-boolean v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomActiveProfileDeleted:Z

    .line 660
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->syncVolumeToSystem()V

    .line 661
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->syncRingtoneToSystem()V

    goto/16 :goto_1

    .line 584
    :pswitch_1
    if-eqz p2, :cond_a

    .line 585
    if-eqz v6, :cond_d

    .line 586
    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 587
    const/4 v9, 0x0

    iput v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 588
    const-string v9, "AudioProfileService"

    const-string/jumbo v11, "setActiveProfile: RingerMode is not SILENT, now set SILENT"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_a
    :goto_5
    sget-object v9, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v9, v4}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    sget-object v9, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v9, v4}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 597
    :cond_b
    invoke-direct {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->setLastActiveKey(Ljava/lang/String;)Z

    move-result v0

    .line 598
    .restart local v0       #lastActiveChanged:Z
    if-eqz v0, :cond_c

    iget-boolean v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomActiveProfileDeleted:Z

    if-eqz v9, :cond_c

    .line 599
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/mediatek/audioprofile/AudioProfileService;->setCustomActiveDeleted(Z)Z

    .line 602
    .end local v0           #lastActiveChanged:Z
    :cond_c
    const/4 v5, 0x0

    .line 603
    goto/16 :goto_1

    .line 590
    :cond_d
    const-string v9, "AudioProfileService"

    const-string/jumbo v11, "setActiveProfile: RingerMode is already SILENT"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 608
    :pswitch_2
    if-eqz p2, :cond_e

    .line 609
    const/4 v9, 0x1

    if-eq v6, v9, :cond_11

    .line 610
    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 611
    const/4 v9, 0x1

    iput v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 612
    const-string v9, "AudioProfileService"

    const-string/jumbo v11, "setActiveProfile: RingerMode is not VIBRATE, now set VIBRATE"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_e
    :goto_6
    sget-object v9, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v9, v4}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    sget-object v9, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v9, v4}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 621
    :cond_f
    invoke-direct {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->setLastActiveKey(Ljava/lang/String;)Z

    move-result v0

    .line 622
    .restart local v0       #lastActiveChanged:Z
    if-eqz v0, :cond_10

    iget-boolean v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomActiveProfileDeleted:Z

    if-eqz v9, :cond_10

    .line 623
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/mediatek/audioprofile/AudioProfileService;->setCustomActiveDeleted(Z)Z

    .line 627
    .end local v0           #lastActiveChanged:Z
    :cond_10
    const/4 v5, 0x0

    .line 628
    goto/16 :goto_1

    .line 614
    :cond_11
    const-string v9, "AudioProfileService"

    const-string/jumbo v11, "setActiveProfile: RingerMode is already VIBRATE"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 639
    :cond_12
    const-string v9, "AudioProfileService"

    const-string/jumbo v11, "setActiveProfile: RingerMode is already NORMAL"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    .line 678
    .end local v2           #newScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v4           #oldScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v5           #overrideSystem:Z
    .end local v6           #ringerMode:I
    :cond_13
    const-string v9, "AudioProfileService"

    const-string/jumbo v10, "setActiveProfile with same profile key with active profile key, do nothing!"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 530
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    .line 581
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setCustomActiveDeleted(Z)Z
    .locals 4
    .parameter "deleted"

    .prologue
    .line 710
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "mtk_audioprofile_custom_deleted"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 711
    .local v0, succeed:Z
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomActiveProfileDeleted:Z

    .line 712
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCustomActiveDeleted: changed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    return v0
.end method

.method private setLastActiveKey(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    .line 699
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "mtk_audioprofile_last_active"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 700
    .local v1, succeed:Z
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    .line 702
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 703
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 702
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 705
    :cond_0
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLastActiveKey: succeed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    return v1
.end method

.method private syncRingerVolumeToProfile(Ljava/lang/String;I)V
    .locals 3
    .parameter "profileKey"
    .parameter "volume"

    .prologue
    .line 2529
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    iget v0, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    if-eq v0, p2, :cond_0

    .line 2530
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2531
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2532
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 2533
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 2534
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    iput p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 2535
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    iput p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 2536
    const-string v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syncRingerVolumeToProfile: profileKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", volume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    :cond_0
    return-void
.end method

.method private syncRingtoneToSystem()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1168
    const/4 v1, 0x0

    .line 1169
    .local v1, systemUri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 1172
    .local v0, profileUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1173
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1174
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 1175
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1176
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 1177
    :cond_1
    invoke-direct {p0, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1178
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncRingtoneToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    :cond_2
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1184
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v2, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1185
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 1186
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1187
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 1188
    :cond_4
    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1189
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncRingtoneToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :cond_5
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->videocall_Stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1195
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v2, v7}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1196
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 1197
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->videocall_Stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1198
    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    if-nez v0, :cond_8

    if-eqz v1, :cond_8

    .line 1199
    :cond_7
    invoke-direct {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1200
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncRingtoneToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :cond_8
    return-void
.end method

.method private syncVolumeToSystem()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 1126
    const/4 v1, 0x0

    .line 1127
    .local v1, systemVolume:I
    const/4 v0, 0x0

    .line 1129
    .local v0, profileVolume:I
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1130
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1131
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->getStreamVolume(Ljava/lang/String;I)I

    move-result v0

    .line 1132
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1133
    if-eq v0, v1, :cond_0

    .line 1134
    invoke-direct {p0, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1135
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncVolumeToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", streamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :cond_0
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1141
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1142
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getStreamVolume(Ljava/lang/String;I)I

    move-result v0

    .line 1143
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1144
    if-eq v0, v1, :cond_1

    .line 1145
    invoke-direct {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1146
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncVolumeToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", streamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_1
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1150
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1151
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->getStreamVolume(Ljava/lang/String;I)I

    move-result v0

    .line 1152
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1153
    if-eq v0, v1, :cond_2

    .line 1154
    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1155
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncVolumeToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", streamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :cond_2
    return-void
.end method


# virtual methods
.method public addProfile()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 814
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileCount()I

    move-result v8

    const/16 v9, 0xa

    if-lt v8, v9, :cond_0

    .line 815
    const-string v8, "AudioProfileService"

    const-string v9, "addProfile: Number of custom audio profile has reached upper limit!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const/4 v2, 0x0

    .line 855
    :goto_0
    return-object v2

    .line 820
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->genCustomKey()Ljava/lang/String;

    move-result-object v2

    .line 821
    .local v2, newKey:Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v8, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDefaultState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 822
    .local v0, defaultState:Lcom/mediatek/audioprofile/AudioProfileState;
    new-array v5, v13, [Landroid/net/Uri;

    .line 823
    .local v5, profileUri:[Landroid/net/Uri;
    new-array v6, v13, [I

    .line 824
    .local v6, profileVolume:[I
    const/4 v8, 0x5

    new-array v4, v8, [Z

    .line 826
    .local v4, profileEnabled:[Z
    invoke-virtual {p0, v10}, Lcom/mediatek/audioprofile/AudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;

    move-result-object v8

    aput-object v8, v5, v12

    .line 827
    invoke-virtual {p0, v11}, Lcom/mediatek/audioprofile/AudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;

    move-result-object v8

    aput-object v8, v5, v10

    .line 828
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;

    move-result-object v8

    aput-object v8, v5, v11

    .line 831
    iget v8, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    aput v8, v6, v12

    .line 832
    iget v8, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    aput v8, v6, v10

    .line 833
    iget v8, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    aput v8, v6, v11

    .line 835
    iget-boolean v8, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    aput-boolean v8, v4, v12

    .line 836
    iget-boolean v8, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    aput-boolean v8, v4, v10

    .line 837
    iget-boolean v8, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    aput-boolean v8, v4, v11

    .line 838
    iget-boolean v8, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    aput-boolean v8, v4, v13

    .line 839
    const/4 v8, 0x4

    iget-boolean v9, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    aput-boolean v9, v4, v8

    .line 840
    new-instance v3, Lcom/mediatek/audioprofile/AudioProfileState;

    invoke-direct {v3, v5, v6, v4}, Lcom/mediatek/audioprofile/AudioProfileState;-><init>([Landroid/net/Uri;[I[Z)V

    .line 843
    .local v3, newProfileState:Lcom/mediatek/audioprofile/AudioProfileState;
    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 844
    .local v1, name:Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 846
    .local v7, succeed:Z
    if-eqz v7, :cond_1

    .line 847
    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v9

    .line 848
    :try_start_0
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v8, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 851
    const-string v8, "AudioProfileService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addProfile: key = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 850
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 853
    :cond_1
    const-string v8, "AudioProfileService"

    const-string v9, "addProfile: Failed!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public deleteProfile(Ljava/lang/String;)Z
    .locals 11
    .parameter "profileKey"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 865
    if-nez p1, :cond_0

    .line 866
    const-string v6, "AudioProfileService"

    const-string v8, "deleteProfile: Null key!"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 897
    :goto_0
    return v6

    .line 870
    :cond_0
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getAllKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 871
    .local v2, keyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 872
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v6, "name"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    const-string v6, " in ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 875
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    add-int/lit8 v6, v4, -0x1

    if-ge v1, v6, :cond_1

    .line 876
    const-string v6, "?,"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 878
    :cond_1
    const-string v6, "?)"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 880
    .local v5, where:Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    new-array v6, v4, [Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v9, v10, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 881
    .local v0, deleted:I
    const-string v6, "AudioProfileService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleteProfile: where = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", deleted = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    if-lez v0, :cond_3

    .line 883
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v7

    .line 884
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 885
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 889
    const-string v6, "AudioProfileService"

    const-string v7, "deleteProfile: Custom active deleted and set to default."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    invoke-direct {p0, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->setCustomActiveDeleted(Z)Z

    .line 891
    sget-object v6, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->setLastActiveKey(Ljava/lang/String;)Z

    .line 893
    :cond_2
    const-string v6, "AudioProfileService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleteProfile: mKeys = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", mCustomProfileName = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 894
    goto/16 :goto_0

    .line 887
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 896
    :cond_3
    const-string v6, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleteProfile: Failed to delete "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 897
    goto/16 :goto_0
.end method

.method public getActiveProfileKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 723
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v1

    .line 724
    :try_start_0
    const-string v0, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveProfile: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 726
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllProfileKeys()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 998
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 999
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1000
    .local v0, allKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1001
    const-string v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllProfileKeys: keys = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    monitor-exit v2

    return-object v0

    .line 1003
    .end local v0           #allKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCustomizedProfileKeys()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 1033
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileCount()I

    move-result v3

    if-gt v3, v4, :cond_0

    .line 1034
    const/4 v0, 0x0

    .line 1044
    :goto_0
    return-object v0

    .line 1037
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1038
    .local v0, customizedProfileKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1039
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 1040
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->values()[Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v3

    aget-object v2, v3, v1

    .line 1041
    .local v2, scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1039
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1043
    .end local v2           #scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_1
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCustomizedProfileKeys: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDefaultRingtone(I)Landroid/net/Uri;
    .locals 5
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 2221
    const/4 v1, 0x0

    .line 2222
    .local v1, uriString:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 2233
    const-string v2, "AudioProfileService"

    const-string v3, "getRingtoneUri with unsupport type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    :goto_0
    return-object v0

    .line 2224
    :sswitch_0
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "mtk_audioprofile_default_ringtone"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2236
    :goto_1
    if-nez v1, :cond_0

    .line 2237
    .local v0, uri:Landroid/net/Uri;
    :goto_2
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultRingtone: type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", default uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2227
    .end local v0           #uri:Landroid/net/Uri;
    :sswitch_1
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "mtk_audioprofile_default_notification"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2228
    goto :goto_1

    .line 2230
    :sswitch_2
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "mtk_audioprofile_default_video_call"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2231
    goto :goto_1

    .line 2236
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    .line 2222
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public getDtmfToneEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "profileKey"

    .prologue
    .line 1343
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-boolean v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    .line 1344
    .local v0, enabled:Z
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDtmfToneEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    return v0
.end method

.method public getHapticFeedbackEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "profileKey"

    .prologue
    .line 1382
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-boolean v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 1383
    .local v0, enabled:Z
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHapticFeedbackEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    return v0
.end method

.method public getLastActiveProfileKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 735
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v1

    .line 736
    :try_start_0
    const-string v0, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastActiveProfileKey: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 738
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLockScreenEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "profileKey"

    .prologue
    .line 1369
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-boolean v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    .line 1370
    .local v0, enabled:Z
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLockScreenEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    return v0
.end method

.method public getPredefinedProfileKeys()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1014
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->values()[Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v4

    array-length v3, v4

    .line 1015
    .local v3, size:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1016
    .local v1, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-ge v0, v4, :cond_1

    .line 1017
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->values()[Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v4

    aget-object v2, v4, v0

    .line 1018
    .local v2, scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    if-eqz v2, :cond_0

    .line 1019
    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1016
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1022
    .end local v2           #scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_1
    const-string v4, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPredefinedProfileKeys: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    return-object v1
.end method

.method public getProfileCount()I
    .locals 5

    .prologue
    .line 985
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 986
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 987
    .local v0, count:I
    const-string v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProfileCount: count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    monitor-exit v2

    return v0

    .line 989
    .end local v0           #count:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProfileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "profileKey"

    .prologue
    .line 1444
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1445
    .local v0, profileName:Ljava/lang/String;
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProfileName: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", profileName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    return-object v0
.end method

.method public getProfileStateString(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "profileKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1415
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 1416
    .local v0, profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->values()[Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    move-result-object v3

    array-length v1, v3

    .line 1417
    .local v1, size:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1418
    .local v2, state:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1419
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1420
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->videocall_Stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1422
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1423
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1424
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1426
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->vibration_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget-boolean v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1427
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->dtmftone_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget-boolean v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1428
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->soundeffect_enbled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget-boolean v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1429
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->lockscreensound_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget-boolean v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1430
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->hapticfeedback_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget-boolean v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1432
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProfileStateString for profileKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    return-object v2
.end method

.method public getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 4
    .parameter "profileKey"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 1220
    if-eqz p1, :cond_3

    .line 1221
    const/4 v0, 0x0

    .line 1222
    .local v0, uri:Landroid/net/Uri;
    sparse-switch p2, :sswitch_data_0

    .line 1233
    const-string v2, "AudioProfileService"

    const-string v3, "getRingtoneUri with unsupport type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1250
    .end local v0           #uri:Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 1224
    .restart local v0       #uri:Landroid/net/Uri;
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 1237
    :goto_1
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1240
    const/4 v0, 0x0

    .line 1246
    :cond_0
    :goto_2
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRingtoneUri: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1227
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 1228
    goto :goto_1

    .line 1230
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 1231
    goto :goto_1

    .line 1241
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->isRingtoneExist(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1243
    :cond_2
    invoke-virtual {p0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    .line 1249
    .end local v0           #uri:Landroid/net/Uri;
    :cond_3
    const-string v2, "AudioProfileService"

    const-string v3, "getRingtoneUri with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1250
    goto :goto_0

    .line 1222
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public getSoundEffectEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "profileKey"

    .prologue
    .line 1356
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-boolean v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    .line 1357
    .local v0, enabled:Z
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSoundEffectEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    return v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public getStreamVolume(Ljava/lang/String;I)I
    .locals 5
    .parameter "profileKey"
    .parameter "streamType"

    .prologue
    const/4 v0, 0x0

    .line 1297
    if-eqz p1, :cond_0

    .line 1298
    const/4 v1, 0x0

    .line 1299
    .local v1, volume:I
    packed-switch p2, :pswitch_data_0

    .line 1310
    :pswitch_0
    const-string v2, "AudioProfileService"

    const-string v3, "getStreamVolume with unsupport type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    .end local v1           #volume:I
    :goto_0
    return v0

    .line 1301
    .restart local v1       #volume:I
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 1313
    :goto_1
    invoke-direct {p0, p2, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getStreamValidVolume(II)I

    move-result v0

    .line 1314
    .local v0, validVolume:I
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStreamVolume: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", streamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1304
    .end local v0           #validVolume:I
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 1305
    goto :goto_1

    .line 1307
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 1308
    goto :goto_1

    .line 1317
    .end local v1           #volume:I
    :cond_0
    const-string v2, "AudioProfileService"

    const-string v3, "getStreamVolume with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1299
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getVibrationEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "profileKey"

    .prologue
    .line 1330
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-boolean v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    .line 1331
    .local v0, enabled:Z
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVibrationEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    return v0
.end method

.method public isActive(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    .line 2184
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v2

    .line 2185
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 2186
    .local v0, actived:Z
    :goto_0
    const-string v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", actived = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    monitor-exit v2

    return v0

    .line 2185
    .end local v0           #actived:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2188
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isNameExist(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    .line 973
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    .line 974
    .local v0, isExisted:Z
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNameExist: name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isExisted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCustomProfileName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    return v0
.end method

.method public isRingtoneExist(Landroid/net/Uri;)Z
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 2193
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "r"

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2194
    .local v1, fd:Landroid/content/res/AssetFileDescriptor;
    if-nez v1, :cond_0

    .line 2206
    .end local v1           #fd:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return v2

    .line 2198
    .restart local v1       #fd:Landroid/content/res/AssetFileDescriptor;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2202
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2199
    :catch_0
    move-exception v0

    .line 2200
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 2204
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fd:Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v0

    .line 2205
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public listenAudioProfie(Lcom/mediatek/audioprofile/IAudioProfileListener;I)V
    .locals 11
    .parameter "callback"
    .parameter "event"

    .prologue
    .line 2600
    if-eqz p2, :cond_4

    .line 2601
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v7

    .line 2603
    const/4 v4, 0x0

    .line 2605
    .local v4, record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :try_start_0
    invoke-interface {p1}, Lcom/mediatek/audioprofile/IAudioProfileListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2606
    .local v1, binder:Landroid/os/IBinder;
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2607
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    move-object v5, v4

    .end local v4           #record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .local v5, record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :goto_0
    if-ge v3, v0, :cond_2

    .line 2608
    :try_start_1
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2609
    .end local v5           #record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .restart local v4       #record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :try_start_2
    iget-object v6, v4, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    if-ne v1, v6, :cond_1

    .line 2618
    :goto_1
    iput p2, v4, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mEvent:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2620
    const/4 v6, 0x1

    if-ne p2, v6, :cond_3

    .line 2622
    :try_start_3
    iget-object v6, v4, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mCallback:Lcom/mediatek/audioprofile/IAudioProfileListener;

    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-interface {v6, v8}, Lcom/mediatek/audioprofile/IAudioProfileListener;->onAudioProfileChanged(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2635
    :cond_0
    :goto_2
    :try_start_4
    const-string v6, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "listenAudioProfie with event = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " sucessed, record.mBinder = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,clients = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2643
    .end local v0           #N:I
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v3           #i:I
    .end local v4           #record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :goto_3
    return-void

    .line 2607
    .restart local v0       #N:I
    .restart local v1       #binder:Landroid/os/IBinder;
    .restart local v3       #i:I
    .restart local v4       #record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    move-object v5, v4

    .end local v4           #record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .restart local v5       #record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    goto :goto_0

    .line 2613
    :cond_2
    :try_start_5
    new-instance v4, Lcom/mediatek/audioprofile/AudioProfileService$Record;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/mediatek/audioprofile/AudioProfileService$Record;-><init>(Lcom/mediatek/audioprofile/AudioProfileService$1;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2614
    .end local v5           #record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .restart local v4       #record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :try_start_6
    iput-object v1, v4, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    .line 2615
    iput-object p1, v4, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mCallback:Lcom/mediatek/audioprofile/IAudioProfileListener;

    .line 2616
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2638
    .end local v0           #N:I
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v3           #i:I
    :catchall_0
    move-exception v6

    :goto_4
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v6

    .line 2623
    .restart local v0       #N:I
    .restart local v1       #binder:Landroid/os/IBinder;
    .restart local v3       #i:I
    :catch_0
    move-exception v2

    .line 2624
    .local v2, e:Landroid/os/RemoteException;
    :try_start_7
    iget-object v6, v4, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->remove(Landroid/os/IBinder;)V

    .line 2625
    const-string v6, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dead object in listenAudioProfie, remove listener\'s callback!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 2627
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_3
    const/4 v6, 0x4

    if-ne p2, v6, :cond_0

    .line 2629
    :try_start_8
    iget-object v6, v4, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mCallback:Lcom/mediatek/audioprofile/IAudioProfileListener;

    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v8

    iget v8, v8, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v9

    iget v9, v9, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-interface {v6, v8, v9, v10}, Lcom/mediatek/audioprofile/IAudioProfileListener;->onRingerVolumeChanged(IILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_2

    .line 2630
    :catch_1
    move-exception v2

    .line 2631
    .restart local v2       #e:Landroid/os/RemoteException;
    :try_start_9
    iget-object v6, v4, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->remove(Landroid/os/IBinder;)V

    .line 2632
    const-string v6, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dead object in listenAudioProfie, remove listener\'s callback!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 2640
    .end local v0           #N:I
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #i:I
    .end local v4           #record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :cond_4
    invoke-interface {p1}, Lcom/mediatek/audioprofile/IAudioProfileListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->remove(Landroid/os/IBinder;)V

    .line 2641
    const-string v6, "AudioProfileService"

    const-string v7, "listenAudioProfie with LISTEN_NONE, so remove this listener\'s callback!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2638
    .restart local v0       #N:I
    .restart local v1       #binder:Landroid/os/IBinder;
    .restart local v3       #i:I
    .restart local v5       #record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .restart local v4       #record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    goto :goto_4
.end method

.method public reset()V
    .locals 11

    .prologue
    const/4 v9, 0x2

    .line 905
    const-string v7, "AudioProfileService"

    const-string/jumbo v8, "reset start!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v1

    .line 907
    .local v1, generalKey:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v3

    .line 908
    .local v3, isGeneralActive:Z
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v8

    .line 913
    :try_start_0
    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;)V

    .line 914
    if-eqz v3, :cond_0

    .line 915
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->persistValues(Z)V

    .line 925
    :goto_0
    const-string v7, "AudioProfileService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "reset: profileKey = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 929
    .local v0, allKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 930
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 931
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 932
    .local v4, profileKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v6

    .line 933
    .local v6, scenaria:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7, v6}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 934
    invoke-virtual {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->deleteProfile(Ljava/lang/String;)Z

    .line 938
    :goto_2
    const-string v7, "AudioProfileService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "reset: profileKey = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 941
    .end local v0           #allKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #profileKey:Ljava/lang/String;
    .end local v6           #scenaria:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 917
    :cond_0
    :try_start_1
    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->setActiveKey(Ljava/lang/String;)Z

    .line 918
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    .line 919
    .local v5, ringerMode:I
    if-eq v5, v9, :cond_1

    .line 920
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 922
    :cond_1
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->persistValues(Z)V

    .line 923
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->notifyAudioProfileChanged()V

    goto/16 :goto_0

    .line 936
    .end local v5           #ringerMode:I
    .restart local v0       #allKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #profileKey:Ljava/lang/String;
    .restart local v6       #scenaria:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_2
    invoke-direct {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;)V

    goto :goto_2

    .line 940
    .end local v4           #profileKey:Ljava/lang/String;
    .end local v6           #scenaria:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_3
    const-string v7, "AudioProfileService"

    const-string/jumbo v9, "reset finish!"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 942
    return-void
.end method

.method public setActiveProfile(Ljava/lang/String;)V
    .locals 1
    .parameter "profileKey"

    .prologue
    .line 688
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;Z)V

    .line 689
    return-void
.end method

.method public setDtmfToneEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 1728
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1729
    .local v0, profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 1730
    const-string v1, "AudioProfileService"

    const-string/jumbo v2, "setDtmfToneEnabled profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    :cond_0
    :goto_0
    return-void

    .line 1734
    :cond_1
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    if-eq v1, p2, :cond_0

    .line 1736
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistDtmfToneToDatabase(Ljava/lang/String;Z)V

    .line 1737
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 1738
    :try_start_0
    iput-boolean p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    .line 1739
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1741
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1742
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistDtmfToneToSystem()V

    .line 1744
    :cond_2
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDtmfToneEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1739
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setHapticFeedbackEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 1812
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1813
    .local v0, profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 1814
    const-string v1, "AudioProfileService"

    const-string/jumbo v2, "setHapticFeedbackEnabled profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    :cond_0
    :goto_0
    return-void

    .line 1818
    :cond_1
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    if-eq v1, p2, :cond_0

    .line 1820
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistHapticFeedbackToDatabase(Ljava/lang/String;Z)V

    .line 1821
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 1822
    :try_start_0
    iput-boolean p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 1823
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1825
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1826
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistHapticFeedbackToSystem()V

    .line 1828
    :cond_2
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHapticFeedbackEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1823
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setLockScreenEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 1784
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1785
    .local v0, profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 1786
    const-string v1, "AudioProfileService"

    const-string/jumbo v2, "setLockScreenEnabled profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    :cond_0
    :goto_0
    return-void

    .line 1790
    :cond_1
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    if-eq v1, p2, :cond_0

    .line 1792
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistLockScreenToDatabase(Ljava/lang/String;Z)V

    .line 1793
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 1794
    :try_start_0
    iput-boolean p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    .line 1795
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1797
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1798
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistLockScreenToSystem()V

    .line 1800
    :cond_2
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLockScreenEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1795
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setProfileName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "profileKey"
    .parameter "newName"

    .prologue
    .line 1840
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1841
    .local v0, profileName:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 1844
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistProfileNameToDatabase(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1846
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setProfileName: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    :goto_0
    return-void

    .line 1848
    :cond_2
    const-string v1, "AudioProfileService"

    const-string/jumbo v2, "setProfileName with Null name!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRingtoneUri(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 7
    .parameter "profileKey"
    .parameter "type"
    .parameter "ringtoneUri"

    .prologue
    const/4 v6, 0x1

    .line 1464
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v2

    .line 1465
    .local v2, profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v2, :cond_0

    .line 1466
    const-string v4, "AudioProfileService"

    const-string/jumbo v5, "setRingtoneUri profile state not exist!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    :goto_0
    return-void

    .line 1469
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 1599
    :cond_1
    :goto_1
    const-string v4, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setRingtoneUri: profileKey = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1471
    :sswitch_0
    iget-object v4, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    if-nez v4, :cond_2

    if-nez p3, :cond_3

    :cond_2
    iget-object v4, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    invoke-virtual {v4, p3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1475
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 1476
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v5

    .line 1477
    :try_start_0
    iput-object p3, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 1478
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1480
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1481
    invoke-direct {p0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1486
    :cond_4
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1487
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1491
    :cond_5
    sget-boolean v4, Lcom/mediatek/audioprofile/AudioProfileService;->IS_CMCC:Z

    if-nez v4, :cond_1

    .line 1494
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v3

    .line 1495
    .local v3, scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v4, v3}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1496
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v0

    .line 1497
    .local v0, outdoorKey:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    .line 1498
    .local v1, outdoorState:Lcom/mediatek/audioprofile/AudioProfileState;
    invoke-direct {p0, v0, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 1499
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v5

    .line 1500
    :try_start_1
    iput-object p3, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 1501
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1503
    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1504
    invoke-direct {p0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1506
    :cond_6
    const-string v4, "AudioProfileService"

    const-string/jumbo v5, "setRingtoneUri: synchronize general to outdoor!"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1478
    .end local v0           #outdoorKey:Ljava/lang/String;
    .end local v1           #outdoorState:Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v3           #scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1501
    .restart local v0       #outdoorKey:Ljava/lang/String;
    .restart local v1       #outdoorState:Lcom/mediatek/audioprofile/AudioProfileState;
    .restart local v3       #scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 1512
    .end local v0           #outdoorKey:Ljava/lang/String;
    .end local v1           #outdoorState:Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v3           #scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :sswitch_1
    iget-object v4, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    if-nez v4, :cond_7

    if-nez p3, :cond_8

    :cond_7
    iget-object v4, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    invoke-virtual {v4, p3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1515
    :cond_8
    if-nez p3, :cond_9

    .line 1516
    sget-object p3, Lcom/mediatek/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 1521
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 1522
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v5

    .line 1523
    :try_start_4
    iput-object p3, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 1524
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1526
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1527
    invoke-direct {p0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1532
    :cond_a
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1533
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1537
    :cond_b
    sget-boolean v4, Lcom/mediatek/audioprofile/AudioProfileService;->IS_CMCC:Z

    if-nez v4, :cond_1

    .line 1540
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v3

    .line 1541
    .restart local v3       #scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v4, v3}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1542
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v0

    .line 1543
    .restart local v0       #outdoorKey:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    .line 1544
    .restart local v1       #outdoorState:Lcom/mediatek/audioprofile/AudioProfileState;
    invoke-direct {p0, v0, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 1545
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v5

    .line 1546
    :try_start_5
    iput-object p3, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 1547
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1549
    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1550
    invoke-direct {p0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1552
    :cond_c
    const-string v4, "AudioProfileService"

    const-string/jumbo v5, "setRingtoneUri: synchronize general to outdoor!"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1524
    .end local v0           #outdoorKey:Ljava/lang/String;
    .end local v1           #outdoorState:Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v3           #scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :catchall_2
    move-exception v4

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v4

    .line 1547
    .restart local v0       #outdoorKey:Ljava/lang/String;
    .restart local v1       #outdoorState:Lcom/mediatek/audioprofile/AudioProfileState;
    .restart local v3       #scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :catchall_3
    move-exception v4

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v4

    .line 1558
    .end local v0           #outdoorKey:Ljava/lang/String;
    .end local v1           #outdoorState:Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v3           #scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :sswitch_2
    iget-object v4, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    if-nez v4, :cond_d

    if-nez p3, :cond_e

    :cond_d
    iget-object v4, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    invoke-virtual {v4, p3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1562
    :cond_e
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 1563
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v5

    .line 1564
    :try_start_8
    iput-object p3, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 1565
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1567
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1568
    invoke-direct {p0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1573
    :cond_f
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1574
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->videocall_Stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1578
    :cond_10
    sget-boolean v4, Lcom/mediatek/audioprofile/AudioProfileService;->IS_CMCC:Z

    if-nez v4, :cond_1

    .line 1581
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v3

    .line 1582
    .restart local v3       #scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v4, v3}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1583
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v0

    .line 1584
    .restart local v0       #outdoorKey:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    .line 1585
    .restart local v1       #outdoorState:Lcom/mediatek/audioprofile/AudioProfileState;
    invoke-direct {p0, v0, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 1586
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v5

    .line 1587
    :try_start_9
    iput-object p3, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 1588
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1590
    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1591
    invoke-direct {p0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1593
    :cond_11
    const-string v4, "AudioProfileService"

    const-string/jumbo v5, "setRingtoneUri: synchronize general to outdoor!"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1565
    .end local v0           #outdoorKey:Ljava/lang/String;
    .end local v1           #outdoorState:Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v3           #scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :catchall_4
    move-exception v4

    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v4

    .line 1588
    .restart local v0       #outdoorKey:Ljava/lang/String;
    .restart local v1       #outdoorState:Lcom/mediatek/audioprofile/AudioProfileState;
    .restart local v3       #scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :catchall_5
    move-exception v4

    :try_start_b
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v4

    .line 1469
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public setSoundEffectEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 1756
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1757
    .local v0, profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 1758
    const-string v1, "AudioProfileService"

    const-string/jumbo v2, "setSoundEffectEnabled profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    :cond_0
    :goto_0
    return-void

    .line 1762
    :cond_1
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    if-eq v1, p2, :cond_0

    .line 1764
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistSoundEffectToDatabase(Ljava/lang/String;Z)V

    .line 1765
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 1766
    :try_start_0
    iput-boolean p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    .line 1767
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1769
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1770
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistSoundEffectToSystem()V

    .line 1772
    :cond_2
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSoundEffectEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1767
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setStreamVolume(Ljava/lang/String;II)V
    .locals 5
    .parameter "profileKey"
    .parameter "streamType"
    .parameter "index"

    .prologue
    const/4 v4, 0x1

    .line 1615
    invoke-direct {p0, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->getStreamValidVolume(II)I

    move-result v1

    .line 1616
    .local v1, validIndex:I
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1617
    .local v0, profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_0

    .line 1618
    const-string v2, "AudioProfileService"

    const-string/jumbo v3, "setStreamVolume profile state not exist!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    :goto_0
    return-void

    .line 1622
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1671
    :cond_1
    :goto_1
    :pswitch_0
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStreamVolume: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", streamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1624
    :pswitch_1
    iget v2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    if-eq v2, v1, :cond_1

    .line 1627
    invoke-direct {p0, p1, p2, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 1628
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v3

    .line 1629
    :try_start_0
    iput v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 1630
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1634
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1635
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1630
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1640
    :pswitch_2
    iget v2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    if-eq v2, v1, :cond_1

    .line 1643
    invoke-direct {p0, p1, p2, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 1644
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v3

    .line 1645
    :try_start_2
    iput v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 1646
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1650
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1651
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1646
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 1656
    :pswitch_3
    iget v2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    if-eq v2, v1, :cond_1

    .line 1659
    invoke-direct {p0, p1, p2, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 1660
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v3

    .line 1661
    :try_start_4
    iput v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 1662
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1666
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1667
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1662
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    .line 1622
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setVibrationEnabled(Ljava/lang/String;Z)V
    .locals 6
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1682
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1683
    .local v0, profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 1684
    const-string v1, "AudioProfileService"

    const-string/jumbo v2, "setVibrationEnabled profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    :cond_0
    :goto_0
    return-void

    .line 1688
    :cond_1
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    if-eq v1, p2, :cond_0

    .line 1691
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1692
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "vibrate_in_silent"

    if-eqz p2, :cond_4

    move v1, v2

    :goto_1
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1695
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1696
    if-eqz p2, :cond_5

    .line 1697
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1698
    iput v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 1699
    const-string v1, "AudioProfileService"

    const-string/jumbo v2, "setVibrationEnabled true,change RingerMode to VIBRATE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    :cond_2
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistVibrationToDatabase(Ljava/lang/String;Z)V

    .line 1709
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 1710
    :try_start_0
    iput-boolean p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    .line 1711
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1713
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1714
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistVibrationToSystem()V

    .line 1716
    :cond_3
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVibrationEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v1, v3

    .line 1692
    goto :goto_1

    .line 1701
    :cond_5
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1702
    iput v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 1703
    const-string v1, "AudioProfileService"

    const-string/jumbo v2, "setVibrationEnabled false,change RingerMode to SILENT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1711
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
