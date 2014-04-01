.class public Landroid/media/OmaSettingHelper;
.super Ljava/lang/Object;
.source "OmaSettingHelper.java"


# static fields
.field private static final DEFAULT_HTTP_BUFFER_SIZE:I = 0xa

.field private static final DEFAULT_RTSP_BUFFER_SIZE:I = 0x6

.field private static final KEY_HTTP_BUFFER_SIZE:Ljava/lang/String; = "MTK-HTTP-CACHE-SIZE"

.field private static final KEY_HTTP_PROXY_HOST:Ljava/lang/String; = "MTK-HTTP-PROXY-HOST"

.field private static final KEY_HTTP_PROXY_PORT:Ljava/lang/String; = "MTK-HTTP-PROXY-PORT"

.field private static final KEY_MAX_BANDWIDTH:Ljava/lang/String; = "MAX-BANDWIDTH"

.field private static final KEY_MAX_UDP_PORT:Ljava/lang/String; = "MAX-UDP-PORT"

.field private static final KEY_MIN_UDP_PORT:Ljava/lang/String; = "MIN-UDP-PORT"

.field private static final KEY_NAME:Ljava/lang/String; = "NAME"

.field private static final KEY_NETINFO:Ljava/lang/String; = "NETINFO"

.field private static final KEY_PROVIDER_ID:Ljava/lang/String; = "PROVIDER-ID"

.field private static final KEY_RTSP_BUFFER_SIZE:Ljava/lang/String; = "MTK-RTSP-CACHE-SIZE"

.field private static final KEY_RTSP_PROXY_HOST:Ljava/lang/String; = "MTK-RTSP-PROXY-HOST"

.field private static final KEY_RTSP_PROXY_PORT:Ljava/lang/String; = "MTK-RTSP-PROXY-PORT"

.field private static final KEY_SIM_ID:Ljava/lang/String; = "SIM-ID"

.field private static final KEY_TO_NAPID:Ljava/lang/String; = "TO-NAPID"

.field private static final KEY_TO_PROXY:Ljava/lang/String; = "TO-PROXY"

.field private static final LOG:Z = true

.field private static final OPERATOR_OPTR:Ljava/lang/String; = "ro.operator.optr"

.field private static final OPERATOR_OPTR_CMCC:Ljava/lang/String; = "OP01"

.field private static final OPERATOR_OPTR_ORANGE:Ljava/lang/String; = "OP03"

.field private static final OPERATOR_SEG:Ljava/lang/String; = "ro.operator.seg"

.field private static final OPERATOR_SPEC:Ljava/lang/String; = "ro.operator.spec"

.field public static final STREAMING_HTTP:I = 0x1

.field public static final STREAMING_LOCAL:I = 0x0

.field public static final STREAMING_RTSP:I = 0x2

.field public static final STREAMING_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OmaSettingHelper"

.field private static final UNKNOWN_PORT:I = -0x1

.field private static sIsGetOperatorInfo:Z

.field private static sOperatorOptr:Ljava/lang/String;

.field private static sOperatorSeg:Ljava/lang/String;

.field private static sOperatorSpec:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    sput-boolean v0, Landroid/media/OmaSettingHelper;->sIsGetOperatorInfo:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fillHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    const-string v0, "OmaSettingHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot fill key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getOperatorInfo()V
    .locals 3

    .prologue
    .line 296
    const-string/jumbo v0, "ro.operator.optr"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/OmaSettingHelper;->sOperatorOptr:Ljava/lang/String;

    .line 297
    const-string/jumbo v0, "ro.operator.spec"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/OmaSettingHelper;->sOperatorSpec:Ljava/lang/String;

    .line 298
    const-string/jumbo v0, "ro.operator.seg"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/OmaSettingHelper;->sOperatorSeg:Ljava/lang/String;

    .line 299
    const-string v0, "OmaSettingHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOperatorInfo() sOperatorOptr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/media/OmaSettingHelper;->sOperatorOptr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v0, "OmaSettingHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOperatorInfo() sOperatorSpec="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/media/OmaSettingHelper;->sOperatorSpec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v0, "OmaSettingHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOperatorInfo() sOperatorSeg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/media/OmaSettingHelper;->sOperatorSeg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void
.end method

.method private static getOperatorOptr()Ljava/lang/String;
    .locals 3

    .prologue
    .line 287
    sget-boolean v0, Landroid/media/OmaSettingHelper;->sIsGetOperatorInfo:Z

    if-nez v0, :cond_0

    .line 288
    invoke-static {}, Landroid/media/OmaSettingHelper;->getOperatorInfo()V

    .line 289
    const/4 v0, 0x1

    sput-boolean v0, Landroid/media/OmaSettingHelper;->sIsGetOperatorInfo:Z

    .line 291
    :cond_0
    const-string v0, "OmaSettingHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOperatorOptr() sOperatorOptr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/media/OmaSettingHelper;->sOperatorOptr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    sget-object v0, Landroid/media/OmaSettingHelper;->sOperatorOptr:Ljava/lang/String;

    return-object v0
.end method

.method public static isCMCCOperator()Z
    .locals 5

    .prologue
    .line 309
    const/4 v1, 0x0

    .line 310
    .local v1, result:Z
    invoke-static {}, Landroid/media/OmaSettingHelper;->getOperatorOptr()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, optr:Ljava/lang/String;
    const-string v2, "OP01"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    const/4 v1, 0x1

    .line 314
    :cond_0
    const-string v2, "OmaSettingHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCMCCOperator() return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return v1
.end method

.method public static isEnabledOMA()Z
    .locals 4

    .prologue
    .line 145
    const/4 v0, 0x1

    .line 147
    .local v0, enabled:Z
    const-string v1, "OmaSettingHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnabledOMA()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return v0
.end method

.method public static judgeStreamingType(Landroid/net/Uri;)I
    .locals 5
    .parameter "uri"

    .prologue
    .line 122
    const-string v2, "OmaSettingHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "judgeStreamingType("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v1, -0x1

    .line 124
    .local v1, streamingType:I
    if-nez p0, :cond_0

    .line 125
    const-string v2, "OmaSettingHelper"

    const-string/jumbo v3, "uri is null, cannot judge streaming type."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v2, -0x1

    .line 137
    :goto_0
    return v2

    .line 128
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, scheme:Ljava/lang/String;
    const-string/jumbo v2, "rtsp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    const/4 v1, 0x2

    .line 136
    :goto_1
    const-string v2, "OmaSettingHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "judgeStreamingType() return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 137
    goto :goto_0

    .line 131
    :cond_1
    const-string v2, "http"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    const/4 v1, 0x1

    goto :goto_1

    .line 134
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static setOmaSettingHeader(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 24
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v21, "OmaSettingHelper"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "setOmaSettingHeader("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    if-nez p0, :cond_0

    .line 180
    const-string v21, "OmaSettingHelper"

    const-string/jumbo v22, "setOmaSettingHeader() context=null, cannot oma get rtsp setting."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .end local p1           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object p1

    .line 186
    .restart local p1       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 187
    .local v4, cr:Landroid/content/ContentResolver;
    move-object/from16 v20, p1

    .line 188
    .local v20, tempHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v20, :cond_1

    .line 189
    new-instance v20, Ljava/util/HashMap;

    .end local v20           #tempHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 192
    .restart local v20       #tempHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v15, -0x1

    .line 193
    .local v15, minUdpPort:I
    const/4 v14, -0x1

    .line 194
    .local v14, maxUdpPort:I
    const/16 v17, 0x0

    .line 195
    .local v17, rtspProxyEnable:I
    const/16 v18, 0x0

    .line 196
    .local v18, rtspProxyHost:Ljava/lang/String;
    const/16 v19, -0x1

    .line 197
    .local v19, rtspProxyPort:I
    const/4 v6, 0x0

    .line 198
    .local v6, httpProxyEnable:I
    const/4 v7, 0x0

    .line 199
    .local v7, httpProxyHost:Ljava/lang/String;
    const/4 v8, -0x1

    .line 202
    .local v8, httpProxyPort:I
    const-string v21, "MTK-HTTP-CACHE-SIZE"

    const/16 v22, 0xa

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 203
    .local v5, httpBufferSize:I
    const-string v21, "MTK-HTTP-CACHE-SIZE"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Landroid/media/OmaSettingHelper;->fillHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v21, "MTK-RTSP-CACHE-SIZE"

    const/16 v22, 0x6

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 205
    .local v16, rtspBufferSize:I
    const-string v21, "MTK-RTSP-CACHE-SIZE"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Landroid/media/OmaSettingHelper;->fillHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string/jumbo v21, "mtk_rtsp_min_udp_port"

    const/16 v22, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 209
    const-string/jumbo v21, "mtk_rtsp_max_udp_port"

    const/16 v22, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 210
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v15, v0, :cond_2

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v14, v0, :cond_2

    .line 211
    const-string v21, "MIN-UDP-PORT"

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Landroid/media/OmaSettingHelper;->fillHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v21, "MAX-UDP-PORT"

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Landroid/media/OmaSettingHelper;->fillHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_2
    const-string/jumbo v21, "mtk_rtsp_proxy_enabled"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 216
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 217
    const-string/jumbo v21, "mtk_rtsp_proxy_host"

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 218
    const-string/jumbo v21, "mtk_rtsp_proxy_port"

    const/16 v22, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 219
    if-eqz v18, :cond_3

    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 220
    const-string v21, "MTK-RTSP-PROXY-HOST"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/media/OmaSettingHelper;->fillHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v21, "MTK-RTSP-PROXY-PORT"

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Landroid/media/OmaSettingHelper;->fillHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_3
    const-string/jumbo v21, "mtk_http_proxy_enabled"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 226
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v6, v0, :cond_4

    .line 227
    const-string/jumbo v21, "mtk_http_proxy_host"

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 228
    const-string/jumbo v21, "mtk_http_proxy_port"

    const/16 v22, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 233
    :cond_4
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v6, v0, :cond_5

    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v8, v0, :cond_6

    .line 236
    :cond_5
    invoke-static/range {p0 .. p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 237
    invoke-static/range {p0 .. p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v8

    .line 240
    :cond_6
    if-eqz v7, :cond_7

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v8, v0, :cond_7

    .line 241
    const-string v21, "MTK-HTTP-PROXY-HOST"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/media/OmaSettingHelper;->fillHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v21, "MTK-HTTP-PROXY-PORT"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Landroid/media/OmaSettingHelper;->fillHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_7
    const-string v21, "OmaSettingHelper"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getSettings() minUdpPort="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v21, "OmaSettingHelper"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getSettings() maxUdpPort="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v21, "OmaSettingHelper"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getSettings() rtspProxyEnable="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v21, "OmaSettingHelper"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getSettings() rtspProxyHost="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v21, "OmaSettingHelper"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getSettings() rtspProxyPort="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v21, "OmaSettingHelper"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getSettings() httpProxyEnable="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string v21, "OmaSettingHelper"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getSettings() httpProxyHost="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-string v21, "OmaSettingHelper"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getSettings() httpProxyPort="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v21, "OmaSettingHelper"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getSettings() httpBufferSize="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v21, "OmaSettingHelper"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getSettings() rtspBufferSize="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 257
    .local v11, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v12, v0, [Ljava/lang/String;

    .line 258
    .local v12, keys:[Ljava/lang/String;
    invoke-interface {v11, v12}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 259
    move-object v3, v12

    .local v3, arr$:[Ljava/lang/String;
    array-length v13, v3

    .local v13, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v13, :cond_8

    aget-object v10, v3, v9

    .line 260
    .local v10, key:Ljava/lang/String;
    const-string v22, "OmaSettingHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "setHeaders() header "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "="

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v10           #key:Ljava/lang/String;
    :cond_8
    move-object/from16 p1, v20

    .line 263
    goto/16 :goto_0
.end method

.method public static setSettingHeader(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .parameter "context"
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "OmaSettingHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSettingHeader("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {}, Landroid/media/OmaSettingHelper;->isEnabledOMA()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/media/OmaSettingHelper;->isCMCCOperator()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    :cond_0
    invoke-static {p1}, Landroid/media/OmaSettingHelper;->judgeStreamingType(Landroid/net/Uri;)I

    move-result v0

    .line 162
    .local v0, type:I
    const/4 v1, 0x2

    if-eq v1, v0, :cond_1

    const/4 v1, 0x1

    if-ne v1, v0, :cond_2

    .line 163
    :cond_1
    invoke-static {p0, p2}, Landroid/media/OmaSettingHelper;->setOmaSettingHeader(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 166
    .end local v0           #type:I
    .end local p2           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-object p2
.end method
