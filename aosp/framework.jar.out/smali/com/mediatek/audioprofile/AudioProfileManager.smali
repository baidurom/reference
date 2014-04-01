.class public Lcom/mediatek/audioprofile/AudioProfileManager;
.super Ljava/lang/Object;
.source "AudioProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;,
        Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;
    }
.end annotation


# static fields
.field public static final ACTION_PROFILE_CHANGED:Ljava/lang/String; = "com.mediatek.audioprofile.ACTION_PROFILE_CHANGED"

.field private static final DEFAULTSTATES:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/audioprofile/AudioProfileState;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ALARM_VOLUME_GENERAL:I = 0x4

#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_ALARM_VOLUME_MEETING:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_ALARM_VOLUME_OUTDOOR:I = 0x0

.field private static final DEFAULT_ALARM_VOLUME_SILENT:I = 0x0

.field private static final DEFAULT_DTMFTONE_GENERAL:Z = true

.field private static final DEFAULT_DTMFTONE_MEETING:Z = false

.field private static final DEFAULT_DTMFTONE_OUTDOOR:Z = true

.field private static final DEFAULT_DTMFTONE_SILENT:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_HAPTIC_FEEDBACK_GENERAL:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_HAPTIC_FEEDBACK_MEETING:Z = false

.field private static final DEFAULT_HAPTIC_FEEDBACK_OUTDOOR:Z = true

.field private static final DEFAULT_HAPTIC_FEEDBACK_SILENT:Z = false

.field private static final DEFAULT_LOCK_SCREEN_GENERAL:Z = true

.field private static final DEFAULT_LOCK_SCREEN_MEETING:Z = false

.field private static final DEFAULT_LOCK_SCREEN_OUTDOOR:Z = true

.field private static final DEFAULT_LOCK_SCREEN_SILENT:Z = false

.field public static final DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri; = null

.field private static final DEFAULT_NOTIFICATION_VOLUME_GENERAL:I = 0x4

.field private static final DEFAULT_NOTIFICATION_VOLUME_MEETING:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_NOTIFICATION_VOLUME_OUTDOOR:I = 0x0

.field private static final DEFAULT_NOTIFICATION_VOLUME_SILENT:I = 0x0

.field public static final DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri; = null

.field private static final DEFAULT_RINGER_VOLUME_GENERAL:I = 0x4

.field private static final DEFAULT_RINGER_VOLUME_MEETING:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_RINGER_VOLUME_OUTDOOR:I = 0x0

.field private static final DEFAULT_RINGER_VOLUME_SILENT:I = 0x0

.field private static final DEFAULT_SOUNDEFFECT_GENERAL:Z = false

.field private static final DEFAULT_SOUNDEFFECT_MEETING:Z = false

.field private static final DEFAULT_SOUNDEFFECT_OUTDOOR:Z = false

.field private static final DEFAULT_SOUNDEFFECT_SILENT:Z = false

.field private static final DEFAULT_VIBRATION_GENERAL:Z = false

.field private static final DEFAULT_VIBRATION_MEETING:Z = true

.field private static final DEFAULT_VIBRATION_OUTDOOR:Z = true

.field private static final DEFAULT_VIBRATION_SILENT:Z = false

.field public static final DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri; = null

.field public static final EXTRA_PROFILE_SCENARIO:Ljava/lang/String; = "com.mediatek.audioprofile.EXTRA_PROFILE_SCENARIO"

#the value of this static final field might be set in the static constructor
.field protected static final IS_CMCC:Z = false

.field public static final KEY_ACTIVE_PROFILE:Ljava/lang/String; = "mtk_audioprofile_active"

.field public static final KEY_DEFAULT_NOTIFICATION:Ljava/lang/String; = "mtk_audioprofile_default_notification"

.field public static final KEY_DEFAULT_RINGTONE:Ljava/lang/String; = "mtk_audioprofile_default_ringtone"

.field public static final KEY_DEFAULT_VIDEO_CALL:Ljava/lang/String; = "mtk_audioprofile_default_video_call"

.field public static final LAST_ACTIVE_CUSTOM_DELETED:Ljava/lang/String; = "mtk_audioprofile_custom_deleted"

.field public static final LAST_ACTIVE_PROFILE:Ljava/lang/String; = "mtk_audioprofile_last_active"

.field public static final MAX_PROFILES_COUNT:I = 0xa

.field private static final OP:Ljava/lang/String; = null

.field public static final PREDEFINED_PROFILES_COUNT:I = 0x4

.field public static final PROFILE_PREFIX:Ljava/lang/String; = "mtk_audioprofile_"

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field private static final SUFFIX_ALARM_VOLUME:Ljava/lang/String; = "_volume_alarm"

.field private static final SUFFIX_DTMFTONE:Ljava/lang/String; = "_dtmf_tone_enabled"

.field private static final SUFFIX_HAPTICFEEDBACK:Ljava/lang/String; = "_haptic_feedback_enabled"

.field protected static final SUFFIX_KEY:Ljava/lang/String; = "_key"

.field private static final SUFFIX_LOCK_SCRREN:Ljava/lang/String; = "_lockscreen_sounds_enabled"

.field protected static final SUFFIX_NAME:Ljava/lang/String; = "_name"

.field private static final SUFFIX_NOTIFICATION_URI:Ljava/lang/String; = "_notification_sound"

.field private static final SUFFIX_NOTIFICATION_USE_RING:Ljava/lang/String; = "_notifications_use_ring_volume"

.field private static final SUFFIX_NOTIFICATION_VOLUME:Ljava/lang/String; = "_volume_notification"

.field private static final SUFFIX_RINGER_URI:Ljava/lang/String; = "_ringtone"

.field private static final SUFFIX_RINGER_VOLUME:Ljava/lang/String; = "_volume_ring"

.field private static final SUFFIX_SOUNDEFFECT:Ljava/lang/String; = "_sound_effects_enabled"

.field private static final SUFFIX_VIBRATION:Ljava/lang/String; = "_vibrate_on"

.field private static final SUFFIX_VIDEO_CALL_URI:Ljava/lang/String; = "_video_call"

.field private static final TAG:Ljava/lang/String; = "AudioProfileManager"

.field public static final TYPE_NOTIFICATION:I = 0x2

.field public static final TYPE_RINGTONE:I = 0x1

.field public static final TYPE_VIDEO_CALL:I = 0x8

.field public static final UNSUPPORT_STREAM_VOLUME:I

.field private static mService:Lcom/mediatek/audioprofile/IAudioProfileService;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v8, 0x4

    const/4 v12, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 175
    sget-object v7, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    sput-object v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    .line 178
    sget-object v7, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    sput-object v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    .line 181
    sget-object v7, Landroid/provider/Settings$System;->DEFAULT_VIDEO_CALL_URI:Landroid/net/Uri;

    sput-object v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    .line 184
    const-string/jumbo v7, "ro.operator.optr"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/mediatek/audioprofile/AudioProfileManager;->OP:Ljava/lang/String;

    .line 185
    const-string v7, "OP01"

    sget-object v11, Lcom/mediatek/audioprofile/AudioProfileManager;->OP:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    sput-boolean v7, Lcom/mediatek/audioprofile/AudioProfileManager;->IS_CMCC:Z

    .line 191
    sget-boolean v7, Lcom/mediatek/audioprofile/AudioProfileManager;->IS_CMCC:Z

    if-eqz v7, :cond_0

    const/4 v7, 0x6

    :goto_0
    sput v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_VOLUME_OUTDOOR:I

    .line 197
    sget-boolean v7, Lcom/mediatek/audioprofile/AudioProfileManager;->IS_CMCC:Z

    if-eqz v7, :cond_1

    const/4 v7, 0x6

    :goto_1
    sput v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_VOLUME_OUTDOOR:I

    .line 202
    sget-boolean v7, Lcom/mediatek/audioprofile/AudioProfileManager;->IS_CMCC:Z

    if-eqz v7, :cond_2

    move v7, v8

    :goto_2
    sput v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_ALARM_VOLUME_MEETING:I

    .line 203
    sget-boolean v7, Lcom/mediatek/audioprofile/AudioProfileManager;->IS_CMCC:Z

    if-eqz v7, :cond_3

    const/4 v7, 0x6

    :goto_3
    sput v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_ALARM_VOLUME_OUTDOOR:I

    .line 236
    sget-boolean v7, Lcom/mediatek/audioprofile/AudioProfileManager;->IS_CMCC:Z

    if-eqz v7, :cond_4

    move v7, v9

    :goto_4
    sput-boolean v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_HAPTIC_FEEDBACK_GENERAL:Z

    .line 238
    sget-boolean v7, Lcom/mediatek/audioprofile/AudioProfileManager;->IS_CMCC:Z

    if-eqz v7, :cond_5

    move v7, v10

    :goto_5
    sput-boolean v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_HAPTIC_FEEDBACK_MEETING:Z

    .line 246
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    sput-object v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULTSTATES:Ljava/util/HashMap;

    .line 247
    new-array v1, v13, [Landroid/net/Uri;

    .line 248
    .local v1, defaultUri:[Landroid/net/Uri;
    new-array v2, v13, [I

    .line 249
    .local v2, defaultVolume:[I
    const/4 v7, 0x5

    new-array v0, v7, [Z

    .line 252
    .local v0, defaultEnabled:[Z
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    aput-object v7, v1, v9

    .line 253
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    aput-object v7, v1, v10

    .line 254
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    aput-object v7, v1, v12

    .line 256
    aput v8, v2, v9

    .line 257
    aput v8, v2, v10

    .line 258
    aput v8, v2, v12

    .line 260
    aput-boolean v9, v0, v9

    .line 261
    aput-boolean v10, v0, v10

    .line 262
    aput-boolean v9, v0, v12

    .line 263
    aput-boolean v10, v0, v13

    .line 264
    sget-boolean v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_HAPTIC_FEEDBACK_GENERAL:Z

    aput-boolean v7, v0, v8

    .line 266
    new-instance v3, Lcom/mediatek/audioprofile/AudioProfileState;

    invoke-direct {v3, v1, v2, v0}, Lcom/mediatek/audioprofile/AudioProfileState;-><init>([Landroid/net/Uri;[I[Z)V

    .line 267
    .local v3, generalState:Lcom/mediatek/audioprofile/AudioProfileState;
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULTSTATES:Ljava/util/HashMap;

    sget-object v11, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v11}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    aput-object v7, v1, v9

    .line 271
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    aput-object v7, v1, v10

    .line 272
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    aput-object v7, v1, v12

    .line 274
    aput v9, v2, v9

    .line 275
    aput v9, v2, v10

    .line 276
    aput v9, v2, v12

    .line 278
    aput-boolean v9, v0, v9

    .line 279
    aput-boolean v9, v0, v10

    .line 280
    aput-boolean v9, v0, v12

    .line 281
    aput-boolean v9, v0, v13

    .line 282
    aput-boolean v9, v0, v8

    .line 284
    new-instance v6, Lcom/mediatek/audioprofile/AudioProfileState;

    invoke-direct {v6, v1, v2, v0}, Lcom/mediatek/audioprofile/AudioProfileState;-><init>([Landroid/net/Uri;[I[Z)V

    .line 285
    .local v6, silentState:Lcom/mediatek/audioprofile/AudioProfileState;
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULTSTATES:Ljava/util/HashMap;

    sget-object v11, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v11}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    aput-object v7, v1, v9

    .line 289
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    aput-object v7, v1, v10

    .line 290
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    aput-object v7, v1, v12

    .line 292
    aput v9, v2, v9

    .line 293
    aput v9, v2, v10

    .line 294
    sget v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_ALARM_VOLUME_MEETING:I

    aput v7, v2, v12

    .line 296
    aput-boolean v10, v0, v9

    .line 297
    aput-boolean v9, v0, v10

    .line 298
    aput-boolean v9, v0, v12

    .line 299
    aput-boolean v9, v0, v13

    .line 300
    sget-boolean v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_HAPTIC_FEEDBACK_MEETING:Z

    aput-boolean v7, v0, v8

    .line 302
    new-instance v4, Lcom/mediatek/audioprofile/AudioProfileState;

    invoke-direct {v4, v1, v2, v0}, Lcom/mediatek/audioprofile/AudioProfileState;-><init>([Landroid/net/Uri;[I[Z)V

    .line 303
    .local v4, meetingState:Lcom/mediatek/audioprofile/AudioProfileState;
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULTSTATES:Ljava/util/HashMap;

    sget-object v11, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v11}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    aput-object v7, v1, v9

    .line 307
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    aput-object v7, v1, v10

    .line 308
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    aput-object v7, v1, v12

    .line 310
    sget v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_VOLUME_OUTDOOR:I

    aput v7, v2, v9

    .line 311
    sget v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_VOLUME_OUTDOOR:I

    aput v7, v2, v10

    .line 312
    sget v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_ALARM_VOLUME_OUTDOOR:I

    aput v7, v2, v12

    .line 314
    aput-boolean v10, v0, v9

    .line 315
    aput-boolean v10, v0, v10

    .line 316
    aput-boolean v9, v0, v12

    .line 317
    aput-boolean v10, v0, v13

    .line 318
    aput-boolean v10, v0, v8

    .line 320
    new-instance v5, Lcom/mediatek/audioprofile/AudioProfileState;

    invoke-direct {v5, v1, v2, v0}, Lcom/mediatek/audioprofile/AudioProfileState;-><init>([Landroid/net/Uri;[I[Z)V

    .line 321
    .local v5, outdoorState:Lcom/mediatek/audioprofile/AudioProfileState;
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULTSTATES:Ljava/util/HashMap;

    sget-object v8, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v8}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    return-void

    .line 191
    .end local v0           #defaultEnabled:[Z
    .end local v1           #defaultUri:[Landroid/net/Uri;
    .end local v2           #defaultVolume:[I
    .end local v3           #generalState:Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v4           #meetingState:Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v5           #outdoorState:Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v6           #silentState:Lcom/mediatek/audioprofile/AudioProfileState;
    :cond_0
    const/4 v7, 0x7

    goto/16 :goto_0

    .line 197
    :cond_1
    const/4 v7, 0x7

    goto/16 :goto_1

    :cond_2
    move v7, v9

    .line 202
    goto/16 :goto_2

    .line 203
    :cond_3
    const/4 v7, 0x7

    goto/16 :goto_3

    :cond_4
    move v7, v10

    .line 236
    goto/16 :goto_4

    :cond_5
    move v7, v9

    .line 238
    goto/16 :goto_5
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 329
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileManager;->mContext:Landroid/content/Context;

    .line 331
    return-void
.end method

.method public static getAllKeys(Ljava/lang/String;)Ljava/util/List;
    .locals 3
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
    const/4 v2, 0x2

    .line 654
    if-nez p0, :cond_0

    .line 655
    const-string v1, "AudioProfileManager"

    const-string v2, "getAllKeys: Null profileKey!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v0, 0x0

    .line 673
    :goto_0
    return-object v0

    .line 658
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 659
    .local v0, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileNameKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getNotificationUseRingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getLockScreenKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getHapticKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDtmfToneKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getSoundEffectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    const/4 v1, 0x5

    invoke-static {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    invoke-static {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    invoke-static {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getDtmfToneKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 419
    if-eqz p0, :cond_0

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_dtmf_tone_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getHapticKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 434
    if-eqz p0, :cond_0

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_haptic_feedback_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 591
    if-eqz p0, :cond_0

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 594
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLockScreenKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 548
    if-eqz p0, :cond_0

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_lockscreen_sounds_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNotificationUseRingKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 563
    if-eqz p0, :cond_0

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_notifications_use_ring_volume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 566
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;
    .locals 2
    .parameter "scenario"

    .prologue
    .line 606
    if-nez p0, :cond_0

    .line 607
    const-string v0, "AudioProfileManager"

    const-string v1, "getProfileKey with null scenario!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const/4 v0, 0x0

    .line 610
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mtk_audioprofile_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getProfileNameKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 577
    if-eqz p0, :cond_0

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 580
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .locals 8
    .parameter "profileKey"

    .prologue
    .line 621
    if-nez p0, :cond_0

    .line 622
    const-string v5, "AudioProfileManager"

    const-string v6, "getScenario: Null key! Return CUSTOM as default!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    .line 643
    :goto_0
    return-object v5

    .line 626
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 627
    .local v2, keyLen:I
    const-string/jumbo v5, "mtk_audioprofile_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 628
    .local v4, startIndex:I
    if-ge v2, v4, :cond_1

    .line 629
    const-string v5, "AudioProfileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getScenario: Invalid key :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",Return CUSTOM as default!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    goto :goto_0

    .line 633
    :cond_1
    const/16 v5, 0x5f

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 635
    .local v1, endIndex:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .end local v1           #endIndex:I
    :cond_2
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 638
    .local v3, scenarioStr:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->valueOf(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "AudioProfileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not convert string "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v3, :cond_3

    const-string/jumbo v3, "null"

    .end local v3           #scenarioStr:Ljava/lang/String;
    :cond_3
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to Scenario type!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    goto :goto_0
.end method

.method private static getService()Lcom/mediatek/audioprofile/IAudioProfileService;
    .locals 2

    .prologue
    .line 335
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager;->mService:Lcom/mediatek/audioprofile/IAudioProfileService;

    if-eqz v1, :cond_0

    .line 336
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager;->mService:Lcom/mediatek/audioprofile/IAudioProfileService;

    .line 340
    .local v0, binder:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 338
    .end local v0           #binder:Landroid/os/IBinder;
    :cond_0
    const-string v1, "audioprofile"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 339
    .restart local v0       #binder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/audioprofile/IAudioProfileService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    sput-object v1, Lcom/mediatek/audioprofile/AudioProfileManager;->mService:Lcom/mediatek/audioprofile/IAudioProfileService;

    .line 340
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager;->mService:Lcom/mediatek/audioprofile/IAudioProfileService;

    goto :goto_0
.end method

.method public static getSoundEffectKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 404
    if-eqz p0, :cond_0

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sound_effects_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "profileKey"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 492
    if-eqz p0, :cond_0

    .line 493
    const/4 v0, 0x0

    .line 494
    .local v0, uriKey:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 505
    const-string v2, "AudioProfileManager"

    const-string v3, "getStreamUriKey with unsupport type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 512
    .end local v0           #uriKey:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 496
    .restart local v0       #uriKey:Ljava/lang/String;
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ringtone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    goto :goto_0

    .line 499
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_notification_sound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 500
    goto :goto_0

    .line 502
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_video_call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 503
    goto :goto_0

    .line 511
    .end local v0           #uriKey:Ljava/lang/String;
    :cond_0
    const-string v2, "AudioProfileManager"

    const-string v3, "getStreamUriKey with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 512
    goto :goto_0

    .line 494
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getStreamUriKeys(I)Ljava/util/List;
    .locals 9
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 526
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v3, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->values()[Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .local v0, arr$:[Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v6, v0, v1

    .line 528
    .local v6, scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v6, v7}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v6, v7}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 529
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mtk_audioprofile_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 530
    .local v5, prefix:Ljava/lang/String;
    invoke-static {v5, p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 531
    .local v2, key:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 532
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    .end local v2           #key:Ljava/lang/String;
    .end local v5           #prefix:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 536
    .end local v6           #scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_1
    return-object v3
.end method

.method public static getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "profileKey"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 453
    if-eqz p0, :cond_0

    .line 454
    const/4 v0, 0x0

    .line 455
    .local v0, volumeKey:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 469
    :pswitch_0
    const-string v2, "AudioProfileManager"

    const-string v3, "getStreamVolumeKey with unsupport type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 475
    .end local v0           #volumeKey:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 457
    .restart local v0       #volumeKey:Ljava/lang/String;
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_volume_ring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    goto :goto_0

    .line 461
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_volume_notification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    goto :goto_0

    .line 465
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_volume_alarm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 466
    goto :goto_0

    .line 474
    .end local v0           #volumeKey:Ljava/lang/String;
    :cond_0
    const-string v2, "AudioProfileManager"

    const-string v3, "getStreamVolumeKey with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 475
    goto :goto_0

    .line 455
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static getVibrationKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 388
    if-eqz p0, :cond_0

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_vibrate_on"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addProfile()Ljava/lang/String;
    .locals 4

    .prologue
    .line 706
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 708
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/audioprofile/IAudioProfileService;->addProfile()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 711
    :goto_0
    return-object v2

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setActiveProfile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 711
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public deleteProfile(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 722
    if-nez p1, :cond_0

    .line 723
    const-string v3, "AudioProfileManager"

    const-string v4, "deleteProfile with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :goto_0
    return v2

    .line 727
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 729
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/audioprofile/IAudioProfileService;->deleteProfile(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in deleteProfile"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getActiveProfileKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 841
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 843
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/audioprofile/IAudioProfileService;->getActiveProfileKey()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 846
    :goto_0
    return-object v2

    .line 844
    :catch_0
    move-exception v0

    .line 845
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getActiveProfileKey"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 846
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAllProfileKeys()Ljava/util/List;
    .locals 4
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
    .line 770
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 772
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/audioprofile/IAudioProfileService;->getAllProfileKeys()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 775
    :goto_0
    return-object v2

    .line 773
    :catch_0
    move-exception v0

    .line 774
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getAllProfileKeys"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 775
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCustomizedProfileKeys()Ljava/util/List;
    .locals 4
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
    .line 802
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 804
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/audioprofile/IAudioProfileService;->getCustomizedProfileKeys()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 807
    :goto_0
    return-object v2

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getCustomizedProfileKeys"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 807
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDefaultRingtone(I)Landroid/net/Uri;
    .locals 4
    .parameter "type"

    .prologue
    .line 1377
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1379
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/audioprofile/IAudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1382
    :goto_0
    return-object v2

    .line 1380
    :catch_0
    move-exception v0

    .line 1381
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in isRingtoneExist"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1382
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDefaultState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;
    .locals 4
    .parameter "profileKey"

    .prologue
    .line 357
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v1

    .line 358
    .local v1, scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    if-nez v1, :cond_0

    .line 359
    const-string v2, "AudioProfileManager"

    const-string v3, "getDefaultState: get null scenario and use custom scenario default!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    .line 362
    :cond_0
    sget-boolean v2, Lcom/mediatek/audioprofile/AudioProfileManager;->IS_CMCC:Z

    if-eqz v2, :cond_1

    .line 363
    const-string v2, "AudioProfileManager"

    const-string v3, "getDefaultState from CMCC!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_0
    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v0

    .line 368
    .local v0, index:I
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULTSTATES:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 369
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULTSTATES:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 371
    :goto_1
    return-object v2

    .line 365
    .end local v0           #index:I
    :cond_1
    const-string v2, "AudioProfileManager"

    const-string v3, "getDefaultState from default!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 371
    .restart local v0       #index:I
    :cond_2
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULTSTATES:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/audioprofile/AudioProfileState;

    goto :goto_1
.end method

.method public getDtmfToneEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 960
    if-nez p1, :cond_0

    .line 961
    const-string v3, "AudioProfileManager"

    const-string v4, "getDtmfToneEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :goto_0
    return v2

    .line 965
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 967
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/audioprofile/IAudioProfileService;->getDtmfToneEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 968
    :catch_0
    move-exception v0

    .line 969
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getDtmfToneEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getHapticFeedbackEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 1026
    if-nez p1, :cond_0

    .line 1027
    const-string v3, "AudioProfileManager"

    const-string v4, "getHapticFeedbackEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :goto_0
    return v2

    .line 1031
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1033
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/audioprofile/IAudioProfileService;->getHapticFeedbackEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1034
    :catch_0
    move-exception v0

    .line 1035
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getHapticFeedbackEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getLastActiveProfileKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 856
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 858
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/audioprofile/IAudioProfileService;->getLastActiveProfileKey()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 861
    :goto_0
    return-object v2

    .line 859
    :catch_0
    move-exception v0

    .line 860
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getLastActiveProfileKey"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 861
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLockScreenEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 1004
    if-nez p1, :cond_0

    .line 1005
    const-string v3, "AudioProfileManager"

    const-string v4, "getLockScreenEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :goto_0
    return v2

    .line 1009
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1011
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/audioprofile/IAudioProfileService;->getLockScreenEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1012
    :catch_0
    move-exception v0

    .line 1013
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getLockScreenEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPredefinedProfileKeys()Ljava/util/List;
    .locals 4
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
    .line 787
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 789
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/audioprofile/IAudioProfileService;->getPredefinedProfileKeys()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 792
    :goto_0
    return-object v2

    .line 790
    :catch_0
    move-exception v0

    .line 791
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getPredefinedProfileKeys"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 792
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getProfileCount()I
    .locals 4

    .prologue
    .line 755
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 757
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/audioprofile/IAudioProfileService;->getProfileCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 760
    :goto_0
    return v2

    .line 758
    :catch_0
    move-exception v0

    .line 759
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in deleteProfile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 760
    const/16 v2, 0xa

    goto :goto_0
.end method

.method public getProfileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 1105
    if-nez p1, :cond_0

    .line 1106
    const-string v3, "AudioProfileManager"

    const-string v4, "getProfileName with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :goto_0
    return-object v2

    .line 1110
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1112
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/audioprofile/IAudioProfileService;->getProfileName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1113
    :catch_0
    move-exception v0

    .line 1114
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getProfileName"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;
    .locals 12
    .parameter "profileKey"

    .prologue
    .line 1048
    if-nez p1, :cond_0

    .line 1049
    const-string v9, "AudioProfileManager"

    const-string v10, "getProfileState with null profile key!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    const/4 v2, 0x0

    .line 1094
    :goto_0
    return-object v2

    .line 1053
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->values()[Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    move-result-object v9

    array-length v6, v9

    .line 1054
    .local v6, size:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1056
    .local v7, state:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v5

    .line 1058
    .local v5, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v5, p1}, Lcom/mediatek/audioprofile/IAudioProfileService;->getProfileStateString(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1063
    const/4 v9, 0x3

    new-array v3, v9, [Landroid/net/Uri;

    .line 1064
    .local v3, profileUri:[Landroid/net/Uri;
    const/4 v9, 0x3

    new-array v4, v9, [I

    .line 1065
    .local v4, profileVolume:[I
    const/4 v9, 0x5

    new-array v1, v9, [Z

    .line 1067
    .local v1, profileEnabled:[Z
    sget-object v9, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v9}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v9

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1068
    .local v8, value:Ljava/lang/String;
    const/4 v10, 0x0

    if-nez v8, :cond_1

    const/4 v9, 0x0

    :goto_1
    aput-object v9, v3, v10

    .line 1069
    sget-object v9, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v9}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v9

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #value:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 1070
    .restart local v8       #value:Ljava/lang/String;
    const/4 v10, 0x1

    if-nez v8, :cond_2

    const/4 v9, 0x0

    :goto_2
    aput-object v9, v3, v10

    .line 1071
    sget-object v9, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v9}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v9

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #value:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 1072
    .restart local v8       #value:Ljava/lang/String;
    const/4 v10, 0x2

    if-nez v8, :cond_3

    const/4 v9, 0x0

    :goto_3
    aput-object v9, v3, v10

    .line 1074
    sget-object v9, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v9}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v9

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #value:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 1075
    .restart local v8       #value:Ljava/lang/String;
    const/4 v10, 0x0

    if-nez v8, :cond_4

    const/4 v9, 0x0

    :goto_4
    aput v9, v4, v10

    .line 1076
    sget-object v9, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v9}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v9

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #value:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 1077
    .restart local v8       #value:Ljava/lang/String;
    const/4 v10, 0x1

    if-nez v8, :cond_5

    const/4 v9, 0x0

    :goto_5
    aput v9, v4, v10

    .line 1078
    sget-object v9, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v9}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v9

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #value:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 1079
    .restart local v8       #value:Ljava/lang/String;
    const/4 v10, 0x2

    if-nez v8, :cond_6

    const/4 v9, 0x0

    :goto_6
    aput v9, v4, v10

    .line 1081
    sget-object v9, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->vibration_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v9}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v9

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #value:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 1082
    .restart local v8       #value:Ljava/lang/String;
    const/4 v9, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    aput-boolean v10, v1, v9

    .line 1083
    sget-object v9, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->dtmftone_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v9}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v9

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #value:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 1084
    .restart local v8       #value:Ljava/lang/String;
    const/4 v9, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    aput-boolean v10, v1, v9

    .line 1085
    sget-object v9, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->soundeffect_enbled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v9}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v9

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #value:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 1086
    .restart local v8       #value:Ljava/lang/String;
    const/4 v9, 0x2

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    aput-boolean v10, v1, v9

    .line 1087
    sget-object v9, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->lockscreensound_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v9}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v9

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #value:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 1088
    .restart local v8       #value:Ljava/lang/String;
    const/4 v9, 0x3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    aput-boolean v10, v1, v9

    .line 1089
    sget-object v9, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->hapticfeedback_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v9}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v9

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #value:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 1090
    .restart local v8       #value:Ljava/lang/String;
    const/4 v9, 0x4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    aput-boolean v10, v1, v9

    .line 1092
    new-instance v2, Lcom/mediatek/audioprofile/AudioProfileState;

    invoke-direct {v2, v3, v4, v1}, Lcom/mediatek/audioprofile/AudioProfileState;-><init>([Landroid/net/Uri;[I[Z)V

    .line 1093
    .local v2, profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    const-string v9, "AudioProfileManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getProfileState for profileKey = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1059
    .end local v1           #profileEnabled:[Z
    .end local v2           #profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v3           #profileUri:[Landroid/net/Uri;
    .end local v4           #profileVolume:[I
    .end local v8           #value:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1060
    .local v0, e:Landroid/os/RemoteException;
    const-string v9, "AudioProfileManager"

    const-string v10, "Dead object in getProfileState"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1061
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1068
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #profileEnabled:[Z
    .restart local v3       #profileUri:[Landroid/net/Uri;
    .restart local v4       #profileVolume:[I
    .restart local v8       #value:Ljava/lang/String;
    :cond_1
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    goto/16 :goto_1

    .line 1070
    :cond_2
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    goto/16 :goto_2

    .line 1072
    :cond_3
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    goto/16 :goto_3

    .line 1075
    :cond_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto/16 :goto_4

    .line 1077
    :cond_5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto/16 :goto_5

    .line 1079
    :cond_6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto/16 :goto_6
.end method

.method public getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 5
    .parameter "profileKey"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 880
    if-nez p1, :cond_0

    .line 881
    const-string v3, "AudioProfileManager"

    const-string v4, "getRingtoneUri with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :goto_0
    return-object v2

    .line 885
    :cond_0
    const/4 v3, 0x1

    if-eq p2, v3, :cond_1

    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    const/16 v3, 0x8

    if-eq p2, v3, :cond_1

    .line 886
    const-string v3, "AudioProfileManager"

    const-string v4, "getRingtoneUri with unsupport stream type!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 890
    :cond_1
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 892
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/audioprofile/IAudioProfileService;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 893
    :catch_0
    move-exception v0

    .line 894
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getRingtoneUri"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSoundEffectEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 982
    if-nez p1, :cond_0

    .line 983
    const-string v3, "AudioProfileManager"

    const-string v4, "getSoundEffectEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :goto_0
    return v2

    .line 987
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 989
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/audioprofile/IAudioProfileService;->getSoundEffectEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 990
    :catch_0
    move-exception v0

    .line 991
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getSoundEffectEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getStreamMaxVolume(I)I
    .locals 4
    .parameter "streamType"

    .prologue
    .line 1358
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1360
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/audioprofile/IAudioProfileService;->getStreamMaxVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1363
    :goto_0
    return v2

    .line 1361
    :catch_0
    move-exception v0

    .line 1362
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in isRingtoneExist"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1363
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getStreamVolume(Ljava/lang/String;I)I
    .locals 5
    .parameter "profileKey"
    .parameter "streamType"

    .prologue
    const/4 v2, 0x0

    .line 911
    if-nez p1, :cond_0

    .line 912
    const-string v3, "AudioProfileManager"

    const-string v4, "getStreamVolume with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :goto_0
    return v2

    .line 916
    :cond_0
    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    const/4 v3, 0x5

    if-eq p2, v3, :cond_1

    const/4 v3, 0x4

    if-eq p2, v3, :cond_1

    .line 917
    const-string v3, "AudioProfileManager"

    const-string v4, "getStreamVolume with unsupport stream type!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 921
    :cond_1
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 923
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/audioprofile/IAudioProfileService;->getStreamVolume(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 924
    :catch_0
    move-exception v0

    .line 925
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getStreamVolume"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getVibrationEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 938
    if-nez p1, :cond_0

    .line 939
    const-string v3, "AudioProfileManager"

    const-string v4, "getVibrationEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :goto_0
    return v2

    .line 943
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 945
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/audioprofile/IAudioProfileService;->getVibrationEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 946
    :catch_0
    move-exception v0

    .line 947
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getVibrationEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isActive(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 1319
    if-nez p1, :cond_0

    .line 1320
    const-string v3, "AudioProfileManager"

    const-string v4, "isActive with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :goto_0
    return v2

    .line 1324
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1326
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/audioprofile/IAudioProfileService;->isActive(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1327
    :catch_0
    move-exception v0

    .line 1328
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in isActive"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isNameExist(Ljava/lang/String;)Z
    .locals 5
    .parameter "name"

    .prologue
    const/4 v2, 0x1

    .line 820
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 821
    :cond_0
    const-string v3, "AudioProfileManager"

    const-string v4, "isNameExist: Null or empty name!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :goto_0
    return v2

    .line 825
    :cond_1
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 827
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/audioprofile/IAudioProfileService;->isNameExist(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 828
    :catch_0
    move-exception v0

    .line 829
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in setActiveProfile"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isRingtoneExist(Landroid/net/Uri;)Z
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 1334
    if-nez p1, :cond_0

    .line 1335
    const-string v3, "AudioProfileManager"

    const-string v4, "isRingtoneExist with null uri!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    :goto_0
    return v2

    .line 1339
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1341
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/audioprofile/IAudioProfileService;->isRingtoneExist(Landroid/net/Uri;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1342
    :catch_0
    move-exception v0

    .line 1343
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in isRingtoneExist"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public listenAudioProfie(Lcom/mediatek/audioprofile/IAudioProfileListener;I)V
    .locals 4
    .parameter "callback"
    .parameter "event"

    .prologue
    .line 1398
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1400
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/audioprofile/IAudioProfileService;->listenAudioProfie(Lcom/mediatek/audioprofile/IAudioProfileListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1404
    :goto_0
    return-void

    .line 1401
    :catch_0
    move-exception v0

    .line 1402
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in listenAudioProfie"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 740
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 742
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/audioprofile/IAudioProfileService;->reset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    :goto_0
    return-void

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in reset"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActiveProfile(Ljava/lang/String;)V
    .locals 5
    .parameter "profileKey"

    .prologue
    .line 686
    if-nez p1, :cond_0

    .line 687
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setActiveProfile with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :goto_0
    return-void

    .line 691
    :cond_0
    const-string v2, "AudioProfileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setActiveProfile: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 694
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/audioprofile/IAudioProfileService;->setActiveProfile(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setActiveProfile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDtmfToneEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 1211
    if-nez p1, :cond_0

    .line 1212
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setDtmfToneEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :goto_0
    return-void

    .line 1216
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1218
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/audioprofile/IAudioProfileService;->setDtmfToneEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1219
    :catch_0
    move-exception v0

    .line 1220
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setDtmfToneEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setHapticFeedbackEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 1274
    if-nez p1, :cond_0

    .line 1275
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setHapticFeedbackEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :goto_0
    return-void

    .line 1279
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1281
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/audioprofile/IAudioProfileService;->setHapticFeedbackEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1282
    :catch_0
    move-exception v0

    .line 1283
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setHapticFeedbackEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setLockScreenEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 1253
    if-nez p1, :cond_0

    .line 1254
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setLockScreenEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :goto_0
    return-void

    .line 1258
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1260
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/audioprofile/IAudioProfileService;->setLockScreenEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1261
    :catch_0
    move-exception v0

    .line 1262
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setLockScreenEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setProfileName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "profileKey"
    .parameter "newName"

    .prologue
    .line 1295
    if-nez p1, :cond_0

    .line 1296
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setProfileName with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    :goto_0
    return-void

    .line 1300
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1302
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/audioprofile/IAudioProfileService;->setProfileName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1303
    :catch_0
    move-exception v0

    .line 1304
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setProfileName"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRingtoneUri(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 4
    .parameter "profileKey"
    .parameter "type"
    .parameter "ringtoneUri"

    .prologue
    .line 1134
    if-nez p1, :cond_0

    .line 1135
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setStreamVolume with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :goto_0
    return-void

    .line 1139
    :cond_0
    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/16 v2, 0x8

    if-eq p2, v2, :cond_1

    .line 1140
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setStreamVolume with unsupport stream type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1144
    :cond_1
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1146
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/mediatek/audioprofile/IAudioProfileService;->setRingtoneUri(Ljava/lang/String;ILandroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1147
    :catch_0
    move-exception v0

    .line 1148
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setRingtoneUri"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSoundEffectEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 1232
    if-nez p1, :cond_0

    .line 1233
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setSoundEffectEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :goto_0
    return-void

    .line 1237
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1239
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/audioprofile/IAudioProfileService;->setSoundEffectEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1240
    :catch_0
    move-exception v0

    .line 1241
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setSoundEffectEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setStreamVolume(Ljava/lang/String;II)V
    .locals 4
    .parameter "profileKey"
    .parameter "streamType"
    .parameter "index"

    .prologue
    .line 1164
    if-nez p1, :cond_0

    .line 1165
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setStreamVolume with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :goto_0
    return-void

    .line 1169
    :cond_0
    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v2, 0x5

    if-eq p2, v2, :cond_1

    const/4 v2, 0x4

    if-eq p2, v2, :cond_1

    .line 1170
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setStreamVolume with unsupport stream type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1174
    :cond_1
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1176
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/mediatek/audioprofile/IAudioProfileService;->setStreamVolume(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1177
    :catch_0
    move-exception v0

    .line 1178
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVibrationEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 1190
    if-nez p1, :cond_0

    .line 1191
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setVibrationEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :goto_0
    return-void

    .line 1195
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1197
    .local v1, service:Lcom/mediatek/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/audioprofile/IAudioProfileService;->setVibrationEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1198
    :catch_0
    move-exception v0

    .line 1199
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setVibrationEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
