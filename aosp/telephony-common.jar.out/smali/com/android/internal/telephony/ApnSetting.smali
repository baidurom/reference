.class public Lcom/android/internal/telephony/ApnSetting;
.super Ljava/lang/Object;
.source "ApnSetting.java"

# interfaces
.implements Lcom/mediatek/common/telephony/IApnSetting;


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final V2_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV2\\]\\s*"


# instance fields
.field public final apn:Ljava/lang/String;

.field public final authType:I

.field public final bearer:I

.field public final carrier:Ljava/lang/String;

.field public final carrierEnabled:Z

.field public final id:I

.field public final mmsPort:Ljava/lang/String;

.field public final mmsProxy:Ljava/lang/String;

.field public final mmsc:Ljava/lang/String;

.field public final numeric:Ljava/lang/String;

.field public final password:Ljava/lang/String;

.field public final port:Ljava/lang/String;

.field public final protocol:Ljava/lang/String;

.field public final proxy:Ljava/lang/String;

.field public final roamingProtocol:Ljava/lang/String;

.field public final types:[Ljava/lang/String;

.field public final user:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1
    .parameter "id"
    .parameter "numeric"
    .parameter "carrier"
    .parameter "apn"
    .parameter "proxy"
    .parameter "port"
    .parameter "mmsc"
    .parameter "mmsProxy"
    .parameter "mmsPort"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "types"
    .parameter "protocol"
    .parameter "roamingProtocol"
    .parameter "carrierEnabled"
    .parameter "bearer"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/android/internal/telephony/ApnSetting;->id:I

    .line 66
    if-nez p2, :cond_0

    const-string p2, ""

    .end local p2
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    .line 67
    if-nez p3, :cond_1

    const-string p3, ""

    .end local p3
    :cond_1
    iput-object p3, p0, Lcom/android/internal/telephony/ApnSetting;->carrier:Ljava/lang/String;

    .line 68
    if-nez p4, :cond_2

    const-string p4, ""

    .end local p4
    :cond_2
    iput-object p4, p0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    .line 69
    if-nez p5, :cond_3

    const-string p5, ""

    .end local p5
    :cond_3
    iput-object p5, p0, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    .line 70
    if-nez p6, :cond_4

    const-string p6, ""

    .end local p6
    :cond_4
    iput-object p6, p0, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    .line 71
    if-nez p7, :cond_5

    const-string p7, ""

    .end local p7
    :cond_5
    iput-object p7, p0, Lcom/android/internal/telephony/ApnSetting;->mmsc:Ljava/lang/String;

    .line 72
    if-nez p8, :cond_6

    const-string p8, ""

    .end local p8
    :cond_6
    iput-object p8, p0, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 73
    if-nez p9, :cond_7

    const-string p9, ""

    .end local p9
    :cond_7
    iput-object p9, p0, Lcom/android/internal/telephony/ApnSetting;->mmsPort:Ljava/lang/String;

    .line 74
    if-nez p10, :cond_8

    const-string p10, ""

    .end local p10
    :cond_8
    iput-object p10, p0, Lcom/android/internal/telephony/ApnSetting;->user:Ljava/lang/String;

    .line 75
    if-nez p11, :cond_9

    const-string p11, ""

    .end local p11
    :cond_9
    iput-object p11, p0, Lcom/android/internal/telephony/ApnSetting;->password:Ljava/lang/String;

    .line 76
    iput p12, p0, Lcom/android/internal/telephony/ApnSetting;->authType:I

    .line 77
    iput-object p13, p0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    .line 78
    if-nez p14, :cond_a

    const-string p14, ""

    .end local p14
    :cond_a
    iput-object p14, p0, Lcom/android/internal/telephony/ApnSetting;->protocol:Ljava/lang/String;

    .line 79
    if-nez p15, :cond_b

    const-string p15, ""

    .end local p15
    :cond_b
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/internal/telephony/ApnSetting;->roamingProtocol:Ljava/lang/String;

    .line 80
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/internal/telephony/ApnSetting;->carrierEnabled:Z

    .line 81
    move/from16 v0, p17

    iput v0, p0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    .line 82
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/internal/telephony/ApnSetting;
    .locals 22
    .parameter "data"

    .prologue
    .line 108
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 157
    :goto_0
    return-object v1

    .line 112
    :cond_0
    const-string v1, "^\\[ApnSettingV2\\]\\s*.*"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    const/16 v21, 0x2

    .line 114
    .local v21, version:I
    const-string v1, "^\\[ApnSettingV2\\]\\s*"

    const-string v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 119
    :goto_1
    const-string v1, "\\s*,\\s*"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 120
    .local v19, a:[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v1, v0

    const/16 v2, 0xe

    if-ge v1, v2, :cond_2

    .line 121
    const/4 v1, 0x0

    goto :goto_0

    .line 116
    .end local v19           #a:[Ljava/lang/String;
    .end local v21           #version:I
    :cond_1
    const/16 v21, 0x1

    .restart local v21       #version:I
    goto :goto_1

    .line 126
    .restart local v19       #a:[Ljava/lang/String;
    :cond_2
    const/16 v1, 0xc

    :try_start_0
    aget-object v1, v19, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 135
    .local v13, authType:I
    :goto_2
    const/4 v1, 0x1

    move/from16 v0, v21

    if-ne v0, v1, :cond_3

    .line 136
    move-object/from16 v0, v19

    array-length v1, v0

    add-int/lit8 v1, v1, -0xd

    new-array v14, v1, [Ljava/lang/String;

    .line 137
    .local v14, typeArray:[Ljava/lang/String;
    const/16 v1, 0xd

    const/4 v2, 0x0

    move-object/from16 v0, v19

    array-length v3, v0

    add-int/lit8 v3, v3, -0xd

    move-object/from16 v0, v19

    invoke-static {v0, v1, v14, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    const-string v15, "IP"

    .line 139
    .local v15, protocol:Ljava/lang/String;
    const-string v16, "IP"

    .line 140
    .local v16, roamingProtocol:Ljava/lang/String;
    const/16 v17, 0x1

    .line 141
    .local v17, carrierEnabled:Z
    const/16 v18, 0x0

    .line 157
    .local v18, bearer:I
    :goto_3
    new-instance v1, Lcom/android/internal/telephony/ApnSetting;

    const/4 v2, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xa

    aget-object v4, v19, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xb

    aget-object v4, v19, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v19, v4

    const/4 v5, 0x1

    aget-object v5, v19, v5

    const/4 v6, 0x2

    aget-object v6, v19, v6

    const/4 v7, 0x3

    aget-object v7, v19, v7

    const/4 v8, 0x7

    aget-object v8, v19, v8

    const/16 v9, 0x8

    aget-object v9, v19, v9

    const/16 v10, 0x9

    aget-object v10, v19, v10

    const/4 v11, 0x4

    aget-object v11, v19, v11

    const/4 v12, 0x5

    aget-object v12, v19, v12

    invoke-direct/range {v1 .. v18}, Lcom/android/internal/telephony/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto/16 :goto_0

    .line 127
    .end local v13           #authType:I
    .end local v14           #typeArray:[Ljava/lang/String;
    .end local v15           #protocol:Ljava/lang/String;
    .end local v16           #roamingProtocol:Ljava/lang/String;
    .end local v17           #carrierEnabled:Z
    .end local v18           #bearer:I
    :catch_0
    move-exception v20

    .line 128
    .local v20, e:Ljava/lang/Exception;
    const/4 v13, 0x0

    .restart local v13       #authType:I
    goto :goto_2

    .line 143
    .end local v20           #e:Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, v19

    array-length v1, v0

    const/16 v2, 0x12

    if-ge v1, v2, :cond_4

    .line 144
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 146
    :cond_4
    const/16 v1, 0xd

    aget-object v1, v19, v1

    const-string v2, "\\s*\\|\\s*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 147
    .restart local v14       #typeArray:[Ljava/lang/String;
    const/16 v1, 0xe

    aget-object v15, v19, v1

    .line 148
    .restart local v15       #protocol:Ljava/lang/String;
    const/16 v1, 0xf

    aget-object v16, v19, v1

    .line 150
    .restart local v16       #roamingProtocol:Ljava/lang/String;
    const/16 v1, 0x10

    :try_start_1
    aget-object v1, v19, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v17

    .line 154
    .restart local v17       #carrierEnabled:Z
    :goto_4
    const/16 v1, 0x11

    aget-object v1, v19, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .restart local v18       #bearer:I
    goto :goto_3

    .line 151
    .end local v17           #carrierEnabled:Z
    .end local v18           #bearer:I
    :catch_1
    move-exception v20

    .line 152
    .restart local v20       #e:Ljava/lang/Exception;
    const/16 v17, 0x1

    .restart local v17       #carrierEnabled:Z
    goto :goto_4
.end method


# virtual methods
.method public canHandleType(Ljava/lang/String;)Z
    .locals 9
    .parameter "type"

    .prologue
    const/4 v5, 0x1

    .line 188
    const-string v6, "ro.operator.optr"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, optr:Ljava/lang/String;
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "optr "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 191
    .local v4, t:Ljava/lang/String;
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "canHandleType(): entry in types="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", reqType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "*"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 218
    .end local v4           #t:Ljava/lang/String;
    :cond_0
    :goto_1
    return v5

    .line 212
    .restart local v4       #t:Ljava/lang/String;
    :cond_1
    const-string v6, "default"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "hipri"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 213
    const-string v6, "GSM"

    const-string v7, "canHandleType(): use DEFAULT for HIPRI type"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 190
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v4           #t:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 224
    instance-of v0, p1, Lcom/android/internal/telephony/ApnSetting;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 225
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "[ApnSettingV2] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->carrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/ApnSetting;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->mmsc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->mmsPort:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/ApnSetting;->authType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 175
    iget-object v2, p0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v2, p0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 177
    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_1
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->roamingProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/ApnSetting;->carrierEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 183
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
