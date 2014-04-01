.class Lcom/android/internal/telephony/cat/BerTlv;
.super Ljava/lang/Object;
.source "BerTlv.java"


# static fields
.field public static final BER_EVENT_DOWNLOAD_TAG:I = 0xd6

.field public static final BER_MENU_SELECTION_TAG:I = 0xd3

.field public static final BER_PROACTIVE_COMMAND_TAG:I = 0xd0

.field public static final BER_UNKNOWN_TAG:I


# instance fields
.field private mCompTlvs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:I


# direct methods
.method private constructor <init>(ILjava/util/List;)V
    .locals 1
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mTag:I

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mCompTlvs:Ljava/util/List;

    .line 38
    iput p1, p0, Lcom/android/internal/telephony/cat/BerTlv;->mTag:I

    .line 39
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BerTlv;->mCompTlvs:Ljava/util/List;

    .line 40
    return-void
.end method

.method public static decode([B)Lcom/android/internal/telephony/cat/BerTlv;
    .locals 17
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v2, 0x0

    .line 69
    .local v2, curIndex:I
    move-object/from16 v0, p0

    array-length v5, v0

    .line 70
    .local v5, endIndex:I
    const/4 v9, 0x0

    .line 74
    .local v9, length:I
    const/4 v8, 0x0

    .line 75
    .local v8, isSetUpMenu:Z
    const/4 v6, 0x0

    .line 80
    .local v6, hasMenuItems:Z
    add-int/lit8 v3, v2, 0x1

    .end local v2           #curIndex:I
    .local v3, curIndex:I
    :try_start_0
    aget-byte v15, p0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_2

    and-int/lit16 v11, v15, 0xff

    .line 81
    .local v11, tag:I
    const/16 v15, 0xd0

    if-ne v11, v15, :cond_3

    .line 83
    add-int/lit8 v2, v3, 0x1

    .end local v3           #curIndex:I
    .restart local v2       #curIndex:I
    :try_start_1
    aget-byte v15, p0, v3
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_1 .. :try_end_1} :catch_3

    and-int/lit16 v12, v15, 0xff

    .line 84
    .local v12, temp:I
    const/16 v15, 0x80

    if-ge v12, v15, :cond_0

    .line 85
    move v9, v12

    .line 110
    .end local v12           #temp:I
    :goto_0
    sub-int v15, v5, v2

    if-ge v15, v9, :cond_4

    .line 111
    new-instance v15, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v16, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v15 .. v16}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v15

    .line 86
    .restart local v12       #temp:I
    :cond_0
    const/16 v15, 0x81

    if-ne v12, v15, :cond_2

    .line 87
    add-int/lit8 v3, v2, 0x1

    .end local v2           #curIndex:I
    .restart local v3       #curIndex:I
    :try_start_2
    aget-byte v15, p0, v2

    and-int/lit16 v12, v15, 0xff

    .line 88
    const/16 v15, 0x80

    if-ge v12, v15, :cond_1

    .line 89
    new-instance v15, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v16, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v15 .. v16}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v15
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_2 .. :try_end_2} :catch_2

    .line 103
    .end local v11           #tag:I
    .end local v12           #temp:I
    :catch_0
    move-exception v4

    move v2, v3

    .line 104
    .end local v3           #curIndex:I
    .restart local v2       #curIndex:I
    .local v4, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_1
    new-instance v15, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v16, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v15 .. v16}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v15

    .line 92
    .end local v2           #curIndex:I
    .end local v4           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v3       #curIndex:I
    .restart local v11       #tag:I
    .restart local v12       #temp:I
    :cond_1
    move v9, v12

    move v2, v3

    .end local v3           #curIndex:I
    .restart local v2       #curIndex:I
    goto :goto_0

    .line 94
    :cond_2
    :try_start_3
    new-instance v15, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v16, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v15 .. v16}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v15
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_3 .. :try_end_3} :catch_3

    .line 103
    .end local v12           #temp:I
    :catch_1
    move-exception v4

    goto :goto_1

    .line 98
    .end local v2           #curIndex:I
    .restart local v3       #curIndex:I
    :cond_3
    :try_start_4
    sget-object v15, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v15}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v15

    and-int/lit16 v0, v11, -0x81

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    .line 99
    const/4 v11, 0x0

    .line 100
    const/4 v2, 0x0

    .end local v3           #curIndex:I
    .restart local v2       #curIndex:I
    goto :goto_0

    .line 105
    .end local v2           #curIndex:I
    .end local v11           #tag:I
    .restart local v3       #curIndex:I
    :catch_2
    move-exception v4

    move v2, v3

    .line 106
    .end local v3           #curIndex:I
    .restart local v2       #curIndex:I
    .local v4, e:Lcom/android/internal/telephony/cat/ResultException;
    :goto_2
    new-instance v15, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v16, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v15 .. v16}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v15

    .line 114
    .end local v4           #e:Lcom/android/internal/telephony/cat/ResultException;
    .restart local v11       #tag:I
    :cond_4
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->decodeMany([BI)Ljava/util/List;

    move-result-object v1

    .line 118
    .local v1, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v15

    if-ge v7, v15, :cond_9

    .line 120
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 121
    .local v13, tlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v15

    sget-object v16, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 123
    const-string v15, "CAT"

    const-string v16, "BerTlv-decode: find command details"

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v13}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v10

    .line 125
    .local v10, rawValues:[B
    invoke-virtual {v13}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v14

    .line 126
    .local v14, valueIndex:I
    add-int/lit8 v15, v14, 0x1

    aget-byte v15, v10, v15

    and-int/lit16 v15, v15, 0xff

    sget-object v16, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 128
    const-string v15, "CAT"

    const-string v16, "BerTlv-decode: command type is SET_UP_MENU"

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v8, 0x1

    .line 132
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 133
    goto :goto_3

    .line 134
    .end local v10           #rawValues:[B
    .end local v14           #valueIndex:I
    :cond_6
    if-eqz v13, :cond_7

    invoke-virtual {v13}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v15

    sget-object v16, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    if-nez v6, :cond_7

    .line 136
    const-string v15, "CAT"

    const-string v16, "BerTlv-decode: find one menu item"

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v6, 0x1

    .line 138
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 140
    :cond_7
    if-nez v13, :cond_8

    .line 142
    const-string v15, "CAT"

    const-string v16, "BerTlv-decode: remove one null object"

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-interface {v1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 147
    :cond_8
    const-string v15, "CAT"

    const-string v16, "BerTlv-decode: other tlv object"

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 152
    .end local v13           #tlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_9
    const/4 v15, 0x1

    if-ne v8, v15, :cond_b

    const/4 v15, 0x1

    if-ne v6, v15, :cond_b

    .line 154
    const-string v15, "CAT"

    const-string v16, "BerTlv-decode: SET_UP_MENU is valid"

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_a
    :goto_4
    new-instance v15, Lcom/android/internal/telephony/cat/BerTlv;

    invoke-direct {v15, v11, v1}, Lcom/android/internal/telephony/cat/BerTlv;-><init>(ILjava/util/List;)V

    return-object v15

    .line 156
    :cond_b
    const/4 v15, 0x1

    if-ne v8, v15, :cond_c

    if-nez v6, :cond_c

    .line 158
    const-string v15, "CAT"

    const-string v16, "BerTlv-decode: command is invalid, no menu item, throw exception"

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v15, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v16, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v15 .. v16}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v15

    .line 161
    :cond_c
    if-nez v8, :cond_a

    .line 163
    const-string v15, "CAT"

    const-string v16, "BerTlv-decode: other proactive command"

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 105
    .end local v1           #ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    .end local v7           #i:I
    :catch_3
    move-exception v4

    goto/16 :goto_2

    .end local v2           #curIndex:I
    .restart local v3       #curIndex:I
    :cond_d
    move v2, v3

    .end local v3           #curIndex:I
    .restart local v2       #curIndex:I
    goto/16 :goto_0
.end method


# virtual methods
.method public getComprehensionTlvs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mCompTlvs:Ljava/util/List;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mTag:I

    return v0
.end method
