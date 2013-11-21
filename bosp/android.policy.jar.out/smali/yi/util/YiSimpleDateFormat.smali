.class public Lyi/util/YiSimpleDateFormat;
.super Ljava/text/SimpleDateFormat;
.source "YiSimpleDateFormat.java"


# static fields
.field public static final TIME_CHINA:[Ljava/lang/String;

.field public static final TIME_SECTION_FLAG:[C


# instance fields
.field private mLocale:Ljava/util/Locale;

.field private mTimeSectionMarker:[Ljava/lang/String;

.field private mUseNativeMarker:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x18

    .line 42
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " 0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, " 1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, " 2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, " 3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, " 4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, " 5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, " 6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, " 7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, " 8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, " 9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "12"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, " 1"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, " 2"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, " 3"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, " 4"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, " 5"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, " 6"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, " 7"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, " 8"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, " 9"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "11"

    aput-object v2, v0, v1

    sput-object v0, Lyi/util/YiSimpleDateFormat;->TIME_CHINA:[Ljava/lang/String;

    .line 45
    new-array v0, v3, [C

    fill-array-data v0, :array_0

    sput-object v0, Lyi/util/YiSimpleDateFormat;->TIME_SECTION_FLAG:[C

    return-void

    :array_0
    .array-data 0x2
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .parameter "res"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lyi/util/YiSimpleDateFormat;->mUseNativeMarker:Z

    .line 72
    invoke-direct {p0, p1}, Lyi/util/YiSimpleDateFormat;->init(Landroid/content/res/Resources;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 1
    .parameter "res"
    .parameter "template"

    .prologue
    .line 90
    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lyi/util/YiSimpleDateFormat;->mUseNativeMarker:Z

    .line 91
    invoke-direct {p0, p1}, Lyi/util/YiSimpleDateFormat;->init(Landroid/content/res/Resources;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .parameter "res"
    .parameter "template"
    .parameter "locale"

    .prologue
    .line 112
    invoke-direct {p0, p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lyi/util/YiSimpleDateFormat;->mUseNativeMarker:Z

    .line 113
    iput-object p3, p0, Lyi/util/YiSimpleDateFormat;->mLocale:Ljava/util/Locale;

    .line 114
    if-eqz p1, :cond_0

    .line 115
    invoke-direct {p0, p1}, Lyi/util/YiSimpleDateFormat;->importNativeResStr(Landroid/content/res/Resources;)V

    .line 117
    :cond_0
    return-void
.end method

.method private format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 23
    .parameter "date"
    .parameter "newTemplate"

    .prologue
    .line 198
    invoke-virtual/range {p1 .. p1}, Ljava/util/Date;->getHours()I

    move-result v10

    .line 199
    .local v10, hour:I
    sget-object v20, Lyi/util/YiSimpleDateFormat;->TIME_SECTION_FLAG:[C

    aget-char v19, v20, v10

    .line 201
    .local v19, timeSectionFlag:I
    invoke-super/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v15

    .line 202
    .local v15, pattern:Ljava/lang/String;
    move-object/from16 v18, v15

    .line 203
    .local v18, template:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 204
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_0

    .line 205
    move-object/from16 v18, p2

    .line 206
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-super {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 210
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lyi/util/YiSimpleDateFormat;->mUseNativeMarker:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    .line 211
    new-instance v7, Ljava/text/FieldPosition;

    sget-object v20, Ljava/text/DateFormat$Field;->HOUR0:Ljava/text/DateFormat$Field;

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 212
    .local v7, filePos_hour0:Ljava/text/FieldPosition;
    new-instance v8, Ljava/text/FieldPosition;

    sget-object v20, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 213
    .local v8, filePos_hour1:Ljava/text/FieldPosition;
    new-instance v6, Ljava/text/FieldPosition;

    sget-object v20, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 215
    .local v6, filePos_ampm:Ljava/text/FieldPosition;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 217
    .local v9, formatStrBuf:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 218
    .local v4, count_K:I
    const/4 v5, 0x0

    .line 219
    .local v5, count_h:I
    const/16 v20, 0x4b

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 220
    .local v12, index_K:I
    const/16 v20, 0x68

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 221
    .local v13, index_h:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-le v12, v0, :cond_1

    .line 222
    add-int/lit8 v4, v4, 0x1

    .line 223
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super {v0, v1, v9, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 224
    :goto_0
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x4b

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 225
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 228
    :cond_1
    const/16 v20, -0x1

    move/from16 v0, v20

    if-le v13, v0, :cond_2

    .line 229
    add-int/lit8 v5, v5, 0x1

    .line 230
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-super {v0, v1, v2, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 231
    :goto_1
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x68

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 232
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 235
    :cond_2
    const/16 v20, 0x61

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    .line 236
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-super {v0, v1, v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 239
    :cond_3
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v20

    if-lez v20, :cond_d

    .line 240
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 241
    .local v3, c:Ljava/util/Calendar;
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 242
    const/16 v20, 0xb

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 244
    .local v11, hour_num:I
    invoke-virtual {v7}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v20

    if-lez v20, :cond_5

    .line 245
    sget-object v20, Lyi/util/YiSimpleDateFormat;->TIME_CHINA:[Ljava/lang/String;

    aget-object v16, v20, v10

    .line 246
    .local v16, replaceStr:Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v4, v0, :cond_4

    .line 247
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 248
    const/16 v20, 0x1

    const/16 v21, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 251
    :cond_4
    invoke-virtual {v7}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v20

    invoke-virtual {v7}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v9, v0, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 253
    .end local v16           #replaceStr:Ljava/lang/String;
    :cond_5
    invoke-virtual {v8}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v20

    if-lez v20, :cond_8

    .line 254
    sget-object v20, Lyi/util/YiSimpleDateFormat;->TIME_CHINA:[Ljava/lang/String;

    aget-object v16, v20, v10

    .line 255
    .restart local v16       #replaceStr:Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_6

    .line 256
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 257
    const/16 v20, 0x1

    const/16 v21, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 260
    :cond_6
    const/4 v14, 0x0

    .line 261
    .local v14, offset:I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v4, v0, :cond_7

    const/16 v20, 0xc

    move/from16 v0, v20

    if-ne v11, v0, :cond_7

    invoke-virtual {v7}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v20

    invoke-virtual {v8}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 262
    add-int/lit8 v14, v14, 0x1

    .line 264
    :cond_7
    invoke-virtual {v8}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v20

    add-int v20, v20, v14

    invoke-virtual {v8}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v21

    add-int v21, v21, v14

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v9, v0, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 266
    .end local v14           #offset:I
    .end local v16           #replaceStr:Ljava/lang/String;
    :cond_8
    invoke-virtual {v6}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v20

    if-lez v20, :cond_b

    .line 267
    const/4 v14, 0x0

    .line 268
    .restart local v14       #offset:I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v4, v0, :cond_9

    const/16 v20, 0xc

    move/from16 v0, v20

    if-ne v11, v0, :cond_9

    invoke-virtual {v7}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v20

    invoke-virtual {v6}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    .line 269
    add-int/lit8 v14, v14, 0x1

    .line 271
    :cond_9
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_a

    if-nez v11, :cond_a

    invoke-virtual {v8}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v20

    invoke-virtual {v6}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 272
    add-int/lit8 v14, v14, -0x1

    .line 274
    :cond_a
    invoke-virtual {v6}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v20

    add-int v20, v20, v14

    invoke-virtual {v6}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v21

    add-int v21, v21, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lyi/util/YiSimpleDateFormat;->mTimeSectionMarker:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v19

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v9, v0, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 277
    .end local v14           #offset:I
    :cond_b
    move-object/from16 v17, v9

    .line 289
    .end local v3           #c:Ljava/util/Calendar;
    .end local v4           #count_K:I
    .end local v5           #count_h:I
    .end local v6           #filePos_ampm:Ljava/text/FieldPosition;
    .end local v8           #filePos_hour1:Ljava/text/FieldPosition;
    .end local v9           #formatStrBuf:Ljava/lang/StringBuffer;
    .end local v11           #hour_num:I
    .end local v12           #index_K:I
    .end local v13           #index_h:I
    .local v17, resultStrBuffer:Ljava/lang/StringBuffer;
    :goto_2
    if-eqz p2, :cond_c

    .line 290
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_c

    .line 291
    move-object/from16 v0, p0

    invoke-super {v0, v15}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 295
    :cond_c
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    return-object v20

    .line 280
    .end local v17           #resultStrBuffer:Ljava/lang/StringBuffer;
    .restart local v4       #count_K:I
    .restart local v5       #count_h:I
    .restart local v6       #filePos_ampm:Ljava/text/FieldPosition;
    .restart local v8       #filePos_hour1:Ljava/text/FieldPosition;
    .restart local v9       #formatStrBuf:Ljava/lang/StringBuffer;
    .restart local v12       #index_K:I
    .restart local v13       #index_h:I
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super {v0, v1, v9, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v17

    .restart local v17       #resultStrBuffer:Ljava/lang/StringBuffer;
    goto :goto_2

    .line 285
    .end local v4           #count_K:I
    .end local v5           #count_h:I
    .end local v6           #filePos_ampm:Ljava/text/FieldPosition;
    .end local v7           #filePos_hour0:Ljava/text/FieldPosition;
    .end local v8           #filePos_hour1:Ljava/text/FieldPosition;
    .end local v9           #formatStrBuf:Ljava/lang/StringBuffer;
    .end local v12           #index_K:I
    .end local v13           #index_h:I
    .end local v17           #resultStrBuffer:Ljava/lang/StringBuffer;
    :cond_e
    new-instance v7, Ljava/text/FieldPosition;

    sget-object v20, Ljava/text/DateFormat$Field;->HOUR0:Ljava/text/DateFormat$Field;

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 286
    .restart local v7       #filePos_hour0:Ljava/text/FieldPosition;
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-super {v0, v1, v2, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v17

    .restart local v17       #resultStrBuffer:Ljava/lang/StringBuffer;
    goto :goto_2
.end method

.method public static final getDateFormat(Landroid/content/Context;)Lyi/util/YiSimpleDateFormat;
    .locals 3
    .parameter "context"

    .prologue
    .line 407
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, value:Ljava/lang/String;
    invoke-static {p0, v0}, Lyi/util/YiSimpleDateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Lyi/util/YiSimpleDateFormat;

    move-result-object v1

    return-object v1
.end method

.method public static getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Lyi/util/YiSimpleDateFormat;
    .locals 3
    .parameter "context"
    .parameter "value"

    .prologue
    .line 427
    invoke-static {p0, p1}, Lyi/util/YiSimpleDateFormat;->getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, format:Ljava/lang/String;
    new-instance v1, Lyi/util/YiSimpleDateFormat;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lyi/util/YiSimpleDateFormat;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "value"

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 433
    if-eqz p1, :cond_5

    .line 434
    const/16 v5, 0x4d

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 435
    .local v1, month:I
    const/16 v5, 0x64

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 436
    .local v0, day:I
    const/16 v5, 0x79

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 438
    .local v4, year:I
    if-ltz v1, :cond_5

    if-ltz v0, :cond_5

    if-ltz v4, :cond_5

    .line 439
    sget v5, Lyi/util/IDHelper;->STR_NUMERIC_DATA_TEMP:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, template:Ljava/lang/String;
    if-ge v4, v1, :cond_1

    if-ge v4, v0, :cond_1

    .line 441
    if-ge v1, v0, :cond_0

    .line 442
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "yyyy"

    aput-object v6, v5, v7

    const-string v6, "MM"

    aput-object v6, v5, v8

    const-string v6, "dd"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v3, p1

    .line 470
    .end local v0           #day:I
    .end local v1           #month:I
    .end local v2           #template:Ljava/lang/String;
    .end local v4           #year:I
    .end local p1
    .local v3, value:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 444
    .end local v3           #value:Ljava/lang/String;
    .restart local v0       #day:I
    .restart local v1       #month:I
    .restart local v2       #template:Ljava/lang/String;
    .restart local v4       #year:I
    .restart local p1
    :cond_0
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "yyyy"

    aput-object v6, v5, v7

    const-string v6, "dd"

    aput-object v6, v5, v8

    const-string v6, "MM"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 446
    :cond_1
    if-ge v1, v0, :cond_3

    .line 447
    if-ge v0, v4, :cond_2

    .line 448
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "MM"

    aput-object v6, v5, v7

    const-string v6, "dd"

    aput-object v6, v5, v8

    const-string v6, "yyyy"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 450
    :cond_2
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "MM"

    aput-object v6, v5, v7

    const-string v6, "yyyy"

    aput-object v6, v5, v8

    const-string v6, "dd"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 453
    :cond_3
    if-ge v1, v4, :cond_4

    .line 454
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "dd"

    aput-object v6, v5, v7

    const-string v6, "MM"

    aput-object v6, v5, v8

    const-string v6, "yyyy"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 456
    :cond_4
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "dd"

    aput-object v6, v5, v7

    const-string v6, "yyyy"

    aput-object v6, v5, v8

    const-string v6, "MM"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 469
    .end local v0           #day:I
    .end local v1           #month:I
    .end local v2           #template:Ljava/lang/String;
    .end local v4           #year:I
    :cond_5
    sget v5, Lyi/util/IDHelper;->STR_NUMERIC_DATA_FORMAT:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    .line 470
    .end local p1
    .restart local v3       #value:Ljava/lang/String;
    goto :goto_1
.end method

.method public static final getTimeFormat(Landroid/content/Context;)Lyi/util/YiSimpleDateFormat;
    .locals 5
    .parameter "context"

    .prologue
    .line 384
    invoke-static {p0}, Lyi/util/YiSimpleDateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 387
    .local v0, b24:Z
    if-eqz v0, :cond_0

    .line 388
    sget v1, Lyi/util/IDHelper;->STR_24_HOUR_FORMAT:I

    .line 393
    .local v1, res:I
    :goto_0
    new-instance v2, Lyi/util/YiSimpleDateFormat;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lyi/util/YiSimpleDateFormat;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    return-object v2

    .line 390
    .end local v1           #res:I
    :cond_0
    sget v1, Lyi/util/IDHelper;->STR_12_HOUR_FORMAT:I

    .restart local v1       #res:I
    goto :goto_0
.end method

.method private importNativeResStr(Landroid/content/res/Resources;)V
    .locals 4
    .parameter "res"

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 140
    .local v0, cfg:Landroid/content/res/Configuration;
    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 143
    .local v1, locale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    const/high16 v2, 0x50b

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lyi/util/YiSimpleDateFormat;->mTimeSectionMarker:[Ljava/lang/String;

    .line 145
    iget-object v2, p0, Lyi/util/YiSimpleDateFormat;->mTimeSectionMarker:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 146
    const/4 v2, 0x1

    iput-boolean v2, p0, Lyi/util/YiSimpleDateFormat;->mUseNativeMarker:Z

    .line 149
    :cond_0
    return-void
.end method

.method private init(Landroid/content/res/Resources;)V
    .locals 2
    .parameter "res"

    .prologue
    .line 123
    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lyi/util/YiSimpleDateFormat;->mLocale:Ljava/util/Locale;

    .line 126
    new-instance v0, Ljava/text/DateFormatSymbols;

    iget-object v1, p0, Lyi/util/YiSimpleDateFormat;->mLocale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {p0, v0}, Lyi/util/YiSimpleDateFormat;->setDateFormatSymbols(Ljava/text/DateFormatSymbols;)V

    .line 128
    invoke-direct {p0, p1}, Lyi/util/YiSimpleDateFormat;->importNativeResStr(Landroid/content/res/Resources;)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lyi/util/YiSimpleDateFormat;->mLocale:Ljava/util/Locale;

    goto :goto_0
.end method

.method public static is24HourFormat(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 370
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getIsUseNative()Z
    .locals 1

    .prologue
    .line 489
    iget-boolean v0, p0, Lyi/util/YiSimpleDateFormat;->mUseNativeMarker:Z

    return v0
.end method

.method public getNativeTSMarker()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Lyi/util/YiSimpleDateFormat;->mUseNativeMarker:Z

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lyi/util/YiSimpleDateFormat;->mTimeSectionMarker:[Ljava/lang/String;

    .line 481
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nativeFormat(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .parameter "date"

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lyi/util/YiSimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nativeFormat(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "date"
    .parameter "newTemplate"

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lyi/util/YiSimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 11
    .parameter "string"

    .prologue
    .line 311
    move-object v6, p1

    .line 312
    .local v6, strInput:Ljava/lang/String;
    invoke-super {p0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v7

    .line 321
    .local v7, strPattern:Ljava/lang/String;
    iget-object v9, p0, Lyi/util/YiSimpleDateFormat;->mTimeSectionMarker:[Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 322
    .local v3, index_noon:I
    const/16 v9, 0x4b

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 323
    .local v0, index_K:I
    const/16 v9, 0x68

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 324
    .local v2, index_h:I
    const/16 v9, 0x61

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 325
    .local v1, index_a:I
    if-ltz v3, :cond_4

    if-gez v0, :cond_0

    if-ltz v2, :cond_4

    :cond_0
    if-ltz v1, :cond_4

    .line 327
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 328
    .local v8, stringBuf:Ljava/lang/StringBuffer;
    iget-object v9, p0, Lyi/util/YiSimpleDateFormat;->mTimeSectionMarker:[Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v8, v3, v9}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 329
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 332
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 333
    .local v4, patternBuf:Ljava/lang/StringBuffer;
    if-ltz v0, :cond_1

    .line 334
    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    const/16 v10, 0x4b

    if-ne v9, v10, :cond_1

    .line 335
    const/16 v9, 0x48

    invoke-virtual {v4, v0, v9}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    :cond_1
    if-ltz v2, :cond_2

    .line 340
    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    const/16 v10, 0x68

    if-ne v9, v10, :cond_2

    .line 341
    const/16 v9, 0x6b

    invoke-virtual {v4, v2, v9}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 342
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 345
    :cond_2
    if-ltz v1, :cond_3

    .line 346
    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    const/16 v10, 0x61

    if-ne v9, v10, :cond_3

    .line 347
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 351
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-super {p0, v9}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 352
    new-instance v9, Ljava/text/ParsePosition;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-super {p0, v6, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v5

    .line 353
    .local v5, retDate:Ljava/util/Date;
    invoke-super {p0, v7}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 359
    .end local v4           #patternBuf:Ljava/lang/StringBuffer;
    .end local v8           #stringBuf:Ljava/lang/StringBuffer;
    :goto_3
    return-object v5

    .line 356
    .end local v5           #retDate:Ljava/util/Date;
    :cond_4
    new-instance v9, Ljava/text/ParsePosition;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-super {p0, v6, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v5

    .restart local v5       #retDate:Ljava/util/Date;
    goto :goto_3
.end method
