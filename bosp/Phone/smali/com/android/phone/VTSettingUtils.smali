.class public Lcom/android/phone/VTSettingUtils;
.super Ljava/lang/Object;
.source "VTSettingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DBGEM:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "VTSettingUtils"

.field private static final mVTSettingUtils:Lcom/android/phone/VTSettingUtils;


# instance fields
.field public mAutoDropBack:Z

.field public mEnableBackCamera:Z

.field public mPeerBigger:Z

.field public mPicToReplaceLocal:Ljava/lang/String;

.field public mPicToReplacePeer:Ljava/lang/String;

.field public mShowLocalMO:Z

.field public mShowLocalMT:Ljava/lang/String;

.field public mToReplacePeer:Z

.field public mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/android/phone/VTSettingUtils;

    invoke-direct {v0}, Lcom/android/phone/VTSettingUtils;-><init>()V

    sput-object v0, Lcom/android/phone/VTSettingUtils;->mVTSettingUtils:Lcom/android/phone/VTSettingUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    invoke-direct {v0, p0}, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;-><init>(Lcom/android/phone/VTSettingUtils;)V

    iput-object v0, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    .line 42
    invoke-virtual {p0}, Lcom/android/phone/VTSettingUtils;->resetVTSettingToDefaultValue()V

    .line 43
    return-void
.end method

.method public static getInstance()Lcom/android/phone/VTSettingUtils;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/phone/VTSettingUtils;->mVTSettingUtils:Lcom/android/phone/VTSettingUtils;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 17
    const-string v0, "VTSettingUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method


# virtual methods
.method public resetVTSettingToDefaultValue()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 47
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/phone/VTSettingUtils;->mPicToReplaceLocal:Ljava/lang/String;

    .line 48
    iput-boolean v1, p0, Lcom/android/phone/VTSettingUtils;->mEnableBackCamera:Z

    .line 49
    iput-boolean v1, p0, Lcom/android/phone/VTSettingUtils;->mPeerBigger:Z

    .line 50
    iput-boolean v1, p0, Lcom/android/phone/VTSettingUtils;->mShowLocalMO:Z

    .line 51
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/phone/VTSettingUtils;->mShowLocalMT:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/VTSettingUtils;->mAutoDropBack:Z

    .line 54
    iput-boolean v1, p0, Lcom/android/phone/VTSettingUtils;->mToReplacePeer:Z

    .line 55
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/phone/VTSettingUtils;->mPicToReplacePeer:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public updateVTEngineerModeValues()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 179
    const-string v3, "updateVTEngineerModeValues()..."

    invoke-static {v3}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 181
    const/4 v1, 0x0

    .line 183
    .local v1, emContext:Landroid/content/Context;
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    const-string v4, "com.mediatek.engineermode"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/PhoneApp;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 190
    const-string v3, "engineermode_vt_preferences"

    invoke-virtual {v1, v3, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 193
    .local v2, sp:Landroid/content/SharedPreferences;
    if-nez v2, :cond_0

    .line 194
    const-string v3, "updateVTEngineerModeValues() : can not find \'engineermode_vt_preferences\'..."

    invoke-static {v3}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 315
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "updateVTEngineerModeValues() : can not find \'com.mediatek.engineermode\'..."

    invoke-static {v3}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #sp:Landroid/content/SharedPreferences;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "working_mode"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->working_mode:Ljava/lang/String;

    .line 200
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "working_mode_detail"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->working_mode_detail:Ljava/lang/String;

    .line 201
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "config_audio_channel_adapt"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->config_audio_channel_adapt:Ljava/lang/String;

    .line 202
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "config_video_channel_adapt"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->config_video_channel_adapt:Ljava/lang/String;

    .line 203
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "config_video_channel_reverse"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->config_video_channel_reverse:Ljava/lang/String;

    .line 204
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "config_multiplex_level"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->config_multiplex_level:Ljava/lang/String;

    .line 205
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "config_video_codec_preference"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->config_video_codec_preference:Ljava/lang/String;

    .line 206
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "config_use_wnsrp"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->config_use_wnsrp:Ljava/lang/String;

    .line 207
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "config_terminal_type"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->config_terminal_type:Ljava/lang/String;

    .line 208
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "auto_answer"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->auto_answer:Z

    .line 209
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "auto_answer_time"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->auto_answer_time:Ljava/lang/String;

    .line 210
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "peer_audio_recoder_service"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->peer_audio_recoder_service:Z

    .line 211
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "peer_audio_recoder_format"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->peer_audio_recoder_format:Ljava/lang/String;

    .line 212
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "peer_video_recoder_service"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->peer_video_recoder_service:Z

    .line 213
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "peer_video_recoder_format"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->peer_video_recoder_format:Ljava/lang/String;

    .line 214
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "debug_message"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->debug_message:Z

    .line 215
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "h223_raw_data"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->h223_raw_data:Z

    .line 216
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "log_to_file"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_to_file:Z

    .line 217
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "h263_only"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->h263_only:Z

    .line 219
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "log_filter_tag_0_value"

    const/16 v5, 0x1c

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_0_value:I

    .line 220
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "log_filter_tag_1_value"

    const/16 v5, 0x1c

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_1_value:I

    .line 221
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "log_filter_tag_2_value"

    const/16 v5, 0x1c

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_2_value:I

    .line 222
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "log_filter_tag_3_value"

    const/16 v5, 0x1c

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_3_value:I

    .line 223
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "log_filter_tag_4_value"

    const/16 v5, 0x1c

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_4_value:I

    .line 224
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "log_filter_tag_5_value"

    const/16 v5, 0x1c

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_5_value:I

    .line 225
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "log_filter_tag_6_value"

    const/16 v5, 0x1c

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_6_value:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 231
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.working_mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->working_mode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.working_mode_detail = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->working_mode_detail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.config_audio_channel_adapt = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->config_audio_channel_adapt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.config_video_channel_adapt = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->config_video_channel_adapt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.config_video_channel_reverse = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->config_video_channel_reverse:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.config_multiplex_level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->config_multiplex_level:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.config_video_codec_preference = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->config_video_codec_preference:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.config_use_wnsrp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->config_use_wnsrp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.config_terminal_type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->config_terminal_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.auto_answer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-boolean v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->auto_answer:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.auto_answer_time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->auto_answer_time:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.peer_audio_recoder_service = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-boolean v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->peer_audio_recoder_service:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.peer_audio_recoder_format = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->peer_audio_recoder_format:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.peer_video_recoder_service = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-boolean v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->peer_video_recoder_service:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.peer_video_recoder_format = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->peer_video_recoder_format:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.debug_message = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-boolean v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->debug_message:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.h223_raw_data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-boolean v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->h223_raw_data:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.log_to_file = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-boolean v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_to_file:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.h263_only = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-boolean v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->h263_only:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.log_filter_tag_0_value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_0_value:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.log_filter_tag_1_value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_1_value:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.log_filter_tag_2_value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_2_value:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.log_filter_tag_3_value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_3_value:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.log_filter_tag_4_value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_4_value:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.log_filter_tag_5_value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_5_value:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.log_filter_tag_6_value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_6_value:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 260
    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->working_mode:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-object v5, v5, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->working_mode_detail:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v6, v3, v4}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 262
    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->config_audio_channel_adapt:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v7, v6, v3}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 263
    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->config_video_channel_adapt:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v7, v7, v3}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 264
    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-object v5, v5, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->config_video_channel_reverse:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v7, v3, v4}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 265
    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->config_multiplex_level:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v7, v9, v3}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 266
    const/4 v3, 0x4

    new-instance v4, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-object v5, v5, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->config_video_codec_preference:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v7, v3, v4}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 267
    const/4 v3, 0x5

    new-instance v4, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-object v5, v5, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->config_use_wnsrp:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v7, v3, v4}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 268
    const/4 v3, 0x6

    new-instance v4, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-object v5, v5, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->config_terminal_type:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v7, v3, v4}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 270
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-boolean v3, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->peer_audio_recoder_service:Z

    if-eqz v3, :cond_1

    .line 271
    invoke-static {v9, v6, v7}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 275
    :goto_2
    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->peer_audio_recoder_format:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v9, v7, v3}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 277
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-boolean v3, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->peer_video_recoder_service:Z

    if-eqz v3, :cond_2

    .line 278
    const/4 v3, 0x4

    invoke-static {v3, v6, v7}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 282
    :goto_3
    const/4 v3, 0x4

    new-instance v4, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-object v5, v5, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->peer_video_recoder_format:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v7, v4}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 284
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-boolean v3, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->debug_message:Z

    if-eqz v3, :cond_3

    .line 285
    const/4 v3, 0x5

    invoke-static {v3, v7, v6}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 290
    :goto_4
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-boolean v3, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->h223_raw_data:Z

    if-eqz v3, :cond_4

    .line 291
    const/4 v3, 0x6

    invoke-static {v3, v7, v6}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 296
    :goto_5
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-boolean v3, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_to_file:Z

    if-eqz v3, :cond_5

    .line 297
    const/4 v3, 0x7

    invoke-static {v3, v7, v6}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 302
    :goto_6
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget v3, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_0_value:I

    invoke-static {v8, v6, v3}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 303
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget v3, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_1_value:I

    invoke-static {v8, v7, v3}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 304
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_2_value:I

    invoke-static {v8, v3, v4}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 305
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget v3, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_3_value:I

    invoke-static {v8, v9, v3}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 306
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_4_value:I

    invoke-static {v8, v3, v4}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 307
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_5_value:I

    invoke-static {v8, v3, v4}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 308
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget v4, v4, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_6_value:I

    invoke-static {v8, v3, v4}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 310
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-boolean v3, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->h263_only:Z

    if-eqz v3, :cond_6

    .line 311
    const/16 v3, 0x9

    invoke-static {v3, v7, v6}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    goto/16 :goto_0

    .line 226
    :catch_1
    move-exception v0

    .line 227
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "updateVTEngineerModeValues() : can not get the em value successfully, and reset default value..."

    invoke-static {v3}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 228
    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    invoke-virtual {v3}, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->resetValuesToDefault()V

    goto/16 :goto_1

    .line 273
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-static {v9, v6, v6}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    goto/16 :goto_2

    .line 280
    :cond_2
    const/4 v3, 0x4

    invoke-static {v3, v6, v6}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    goto/16 :goto_3

    .line 287
    :cond_3
    const/4 v3, 0x5

    invoke-static {v3, v6, v6}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    goto :goto_4

    .line 293
    :cond_4
    const/4 v3, 0x6

    invoke-static {v3, v6, v6}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    goto :goto_5

    .line 299
    :cond_5
    const/4 v3, 0x7

    invoke-static {v3, v6, v6}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    goto :goto_6

    .line 313
    :cond_6
    const/16 v3, 0x9

    invoke-static {v3, v6, v6}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    goto/16 :goto_0
.end method

.method public updateVTSettingState()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 60
    const-string v2, "updateVTSettingState()..."

    invoke-static {v2}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.phone_preferences"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 65
    .local v1, sp:Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 66
    const-string v2, "updateVTEngineerModeValues() : can not find \'com.android.phone_preferences\'..."

    invoke-static {v2}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 110
    :goto_0
    return-void

    .line 71
    :cond_0
    :try_start_0
    const-string v2, "button_vt_replace_expand_key"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VTSettingUtils;->mPicToReplaceLocal:Ljava/lang/String;

    .line 72
    const-string v2, "button_vt_enable_back_camera_key"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/VTSettingUtils;->mEnableBackCamera:Z

    .line 73
    const-string v2, "button_vt_peer_bigger_key"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/VTSettingUtils;->mPeerBigger:Z

    .line 74
    const-string v2, "button_vt_mo_local_video_display_key"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/VTSettingUtils;->mShowLocalMO:Z

    .line 75
    const-string v2, "button_vt_mt_local_video_display_key"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VTSettingUtils;->mShowLocalMT:Ljava/lang/String;

    .line 77
    const-string v2, "button_vt_auto_dropback_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/VTSettingUtils;->mAutoDropBack:Z

    .line 78
    const-string v2, "button_vt_enable_peer_replace_key"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/VTSettingUtils;->mToReplacePeer:Z

    .line 79
    const-string v2, "button_vt_replace_peer_expand_key"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VTSettingUtils;->mPicToReplacePeer:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - mPicToReplaceLocal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mPicToReplaceLocal:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - mEnableBackCamera = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/VTSettingUtils;->mEnableBackCamera:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - mPeerBigger = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/VTSettingUtils;->mPeerBigger:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - mShowLocalMO = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/VTSettingUtils;->mShowLocalMO:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - mShowLocalMT = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mShowLocalMT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - mAutoDropBack = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/VTSettingUtils;->mAutoDropBack:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - mToReplacePeer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/VTSettingUtils;->mToReplacePeer:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - mPicToReplacePeer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VTSettingUtils;->mPicToReplacePeer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 95
    const-string v2, "updateVTSettingState() : call VTManager.replacePeerVideoSettings() start !"

    invoke-static {v2}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcom/android/phone/VTSettingUtils;->mPicToReplacePeer:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    iget-boolean v2, p0, Lcom/android/phone/VTSettingUtils;->mToReplacePeer:Z

    if-eqz v2, :cond_1

    .line 98
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathDefault2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/mediatek/vt/VTManager;->replacePeerVideoSettings(ILjava/lang/String;)V

    .line 109
    :goto_2
    const-string v2, "updateVTSettingState() : call VTManager.replacePeerVideoSettings() end !"

    invoke-static {v2}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "updateVTSettingState() : can not get the VT setting value successfully, and reset default value..."

    invoke-static {v2}, Lcom/android/phone/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/phone/VTSettingUtils;->resetVTSettingToDefaultValue()V

    goto/16 :goto_1

    .line 100
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathDefault2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/mediatek/vt/VTManager;->replacePeerVideoSettings(ILjava/lang/String;)V

    goto :goto_2

    .line 103
    :cond_2
    iget-boolean v2, p0, Lcom/android/phone/VTSettingUtils;->mToReplacePeer:Z

    if-eqz v2, :cond_3

    .line 104
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathUserselect2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/mediatek/vt/VTManager;->replacePeerVideoSettings(ILjava/lang/String;)V

    goto :goto_2

    .line 106
    :cond_3
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathUserselect2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/mediatek/vt/VTManager;->replacePeerVideoSettings(ILjava/lang/String;)V

    goto :goto_2
.end method
