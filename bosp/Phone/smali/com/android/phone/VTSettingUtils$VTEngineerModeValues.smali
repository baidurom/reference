.class public Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;
.super Ljava/lang/Object;
.source "VTSettingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VTSettingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VTEngineerModeValues"
.end annotation


# instance fields
.field public auto_answer:Z

.field public auto_answer_time:Ljava/lang/String;

.field public config_audio_channel_adapt:Ljava/lang/String;

.field public config_multiplex_level:Ljava/lang/String;

.field public config_terminal_type:Ljava/lang/String;

.field public config_use_wnsrp:Ljava/lang/String;

.field public config_video_channel_adapt:Ljava/lang/String;

.field public config_video_channel_reverse:Ljava/lang/String;

.field public config_video_codec_preference:Ljava/lang/String;

.field public debug_message:Z

.field public h223_raw_data:Z

.field public h263_only:Z

.field public log_filter_tag_0_value:I

.field public log_filter_tag_1_value:I

.field public log_filter_tag_2_value:I

.field public log_filter_tag_3_value:I

.field public log_filter_tag_4_value:I

.field public log_filter_tag_5_value:I

.field public log_filter_tag_6_value:I

.field public log_to_file:Z

.field public peer_audio_recoder_format:Ljava/lang/String;

.field public peer_audio_recoder_service:Z

.field public peer_video_recoder_format:Ljava/lang/String;

.field public peer_video_recoder_service:Z

.field final synthetic this$0:Lcom/android/phone/VTSettingUtils;

.field public working_mode:Ljava/lang/String;

.field public working_mode_detail:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/phone/VTSettingUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->this$0:Lcom/android/phone/VTSettingUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-virtual {p0}, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->resetValuesToDefault()V

    .line 144
    return-void
.end method


# virtual methods
.method public resetValuesToDefault()V
    .locals 3

    .prologue
    const/16 v2, 0x1c

    const/4 v1, 0x0

    .line 147
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->working_mode:Ljava/lang/String;

    .line 148
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->working_mode_detail:Ljava/lang/String;

    .line 149
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->config_audio_channel_adapt:Ljava/lang/String;

    .line 150
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->config_video_channel_adapt:Ljava/lang/String;

    .line 151
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->config_video_channel_reverse:Ljava/lang/String;

    .line 152
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->config_multiplex_level:Ljava/lang/String;

    .line 153
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->config_video_codec_preference:Ljava/lang/String;

    .line 154
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->config_use_wnsrp:Ljava/lang/String;

    .line 155
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->config_terminal_type:Ljava/lang/String;

    .line 156
    iput-boolean v1, p0, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->auto_answer:Z

    .line 157
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->auto_answer_time:Ljava/lang/String;

    .line 158
    iput-boolean v1, p0, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->peer_audio_recoder_service:Z

    .line 159
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->peer_audio_recoder_format:Ljava/lang/String;

    .line 160
    iput-boolean v1, p0, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->peer_video_recoder_service:Z

    .line 161
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->peer_video_recoder_format:Ljava/lang/String;

    .line 162
    iput-boolean v1, p0, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->debug_message:Z

    .line 163
    iput-boolean v1, p0, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->h223_raw_data:Z

    .line 164
    iput-boolean v1, p0, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_to_file:Z

    .line 165
    iput-boolean v1, p0, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->h263_only:Z

    .line 167
    iput v2, p0, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_0_value:I

    .line 168
    iput v2, p0, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_1_value:I

    .line 169
    iput v2, p0, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_2_value:I

    .line 170
    iput v2, p0, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_3_value:I

    .line 171
    iput v2, p0, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_4_value:I

    .line 172
    iput v2, p0, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_5_value:I

    .line 173
    iput v2, p0, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_6_value:I

    .line 174
    return-void
.end method
