.class public Lyi/support/v1/blend/SketchBlend$Task;
.super Lyi/support/v1/blend/BlendService$BlendTask;
.source "SketchBlend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/blend/SketchBlend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation


# instance fields
.field private final mShade:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;ILyi/support/v1/blend/BlendService$Observer;)V
    .locals 0
    .parameter "bitmap"
    .parameter "shade"
    .parameter "observer"

    .prologue
    .line 25
    invoke-direct {p0, p1, p3}, Lyi/support/v1/blend/BlendService$BlendTask;-><init>(Landroid/graphics/Bitmap;Lyi/support/v1/blend/BlendService$Observer;)V

    .line 26
    iput p2, p0, Lyi/support/v1/blend/SketchBlend$Task;->mShade:I

    .line 27
    return-void
.end method

.method public static deceaseColorCompound([I[B)V
    .locals 9
    .parameter "pixels"
    .parameter "grays"

    .prologue
    const/high16 v8, 0x437f

    .line 75
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v6, p0

    if-ge v4, v6, :cond_0

    .line 76
    aget v1, p0, v4

    .line 77
    .local v1, color:I
    and-int/lit16 v0, v1, 0xff

    .line 78
    .local v0, blue:I
    aget-byte v6, p1, v4

    and-int/lit16 v3, v6, 0xff

    .line 80
    .local v3, gray:I
    mul-int v6, v3, v0

    rsub-int v7, v0, 0x100

    div-int/2addr v6, v7

    add-int v5, v3, v6

    .line 81
    .local v5, temp:I
    mul-int v6, v5, v5

    int-to-float v6, v6

    const/high16 v7, 0x3f80

    mul-float/2addr v6, v7

    div-float/2addr v6, v8

    div-float v2, v6, v8

    .line 82
    .local v2, ex:F
    int-to-float v6, v5

    mul-float/2addr v6, v2

    float-to-int v5, v6

    .line 84
    const/16 v6, 0xff

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 85
    aget v6, p0, v4

    const/high16 v7, -0x100

    and-int/2addr v6, v7

    shl-int/lit8 v7, v3, 0x10

    or-int/2addr v6, v7

    shl-int/lit8 v7, v3, 0x8

    or-int/2addr v6, v7

    or-int/2addr v6, v3

    aput v6, p0, v4

    .line 75
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 87
    .end local v0           #blue:I
    .end local v1           #color:I
    .end local v2           #ex:F
    .end local v3           #gray:I
    .end local v5           #temp:I
    :cond_0
    return-void
.end method

.method private static grayAndInverse([I[B)V
    .locals 6
    .parameter "pixels"
    .parameter "grays"

    .prologue
    .line 65
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_0

    .line 66
    aget v0, p0, v2

    .line 67
    .local v0, color:I
    const/high16 v4, 0xff

    and-int/2addr v4, v0

    shr-int/lit8 v4, v4, 0x10

    mul-int/lit8 v4, v4, 0x3

    const v5, 0xff00

    and-int/2addr v5, v0

    shr-int/lit8 v5, v5, 0x8

    mul-int/lit8 v5, v5, 0x6

    add-int/2addr v4, v5

    and-int/lit16 v5, v0, 0xff

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    div-int/lit8 v1, v4, 0xa

    .line 68
    .local v1, gray:I
    int-to-byte v4, v1

    aput-byte v4, p1, v2

    .line 69
    rsub-int v3, v1, 0xff

    .line 70
    .local v3, inverse:I
    aget v4, p0, v2

    const/high16 v5, -0x100

    and-int/2addr v4, v5

    or-int/2addr v4, v3

    aput v4, p0, v2

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    .end local v0           #color:I
    .end local v1           #gray:I
    .end local v3           #inverse:I
    :cond_0
    return-void
.end method

.method private monoFastBlur([IIII)[I
    .locals 30
    .parameter "pixels"
    .parameter "w"
    .parameter "h"
    .parameter "radius"

    .prologue
    .line 93
    if-eqz p1, :cond_0

    const/16 v28, 0x1

    move/from16 v0, p4

    move/from16 v1, v28

    if-ge v0, v1, :cond_2

    .line 94
    :cond_0
    const/16 p1, 0x0

    .line 297
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 97
    .restart local p1
    :cond_2
    if-eqz p2, :cond_3

    if-nez p3, :cond_4

    .line 98
    :cond_3
    const/16 p1, 0x0

    goto :goto_0

    .line 101
    :cond_4
    mul-int v21, p2, p3

    .line 102
    .local v21, wh:I
    add-int/lit8 v22, p2, -0x1

    .line 103
    .local v22, wm:I
    add-int/lit8 v11, p3, -0x1

    .line 104
    .local v11, hm:I
    add-int v28, p4, p4

    add-int/lit8 v7, v28, 0x1

    .line 107
    .local v7, div:I
    const/16 v25, 0x0

    .local v25, yi:I
    move/from16 v27, v25

    .line 109
    .local v27, yw:I
    add-int/lit8 v28, v7, 0x1

    shr-int/lit8 v8, v28, 0x1

    .line 110
    .local v8, divsum:I
    mul-int/2addr v8, v8

    .line 111
    mul-int/lit16 v0, v8, 0x100

    move/from16 v28, v0

    move/from16 v0, v28

    new-array v10, v0, [I

    .line 112
    .local v10, dvtable:[I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    mul-int/lit16 v0, v8, 0x100

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v12, v0, :cond_5

    .line 113
    div-int v28, v12, v8

    aput v28, v10, v12

    .line 112
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 116
    :cond_5
    move/from16 v0, v21

    new-array v9, v0, [I

    .line 117
    .local v9, dvcolor:[I
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v28

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 119
    .local v20, vmin:[I
    new-array v0, v7, [I

    move-object/from16 v18, v0

    .line 121
    .local v18, rgbStack:[I
    add-int/lit8 v15, p4, 0x1

    .line 126
    .local v15, r1:I
    const/16 v24, 0x0

    .local v24, y:I
    :goto_2
    move/from16 v0, v24

    move/from16 v1, p3

    if-ge v0, v1, :cond_b

    .line 127
    const/4 v4, 0x0

    .local v4, boutsum:I
    move v3, v4

    .local v3, binsum:I
    move v5, v4

    .line 132
    .local v5, bsum:I
    move/from16 v0, p4

    neg-int v12, v0

    :goto_3
    move/from16 v0, p4

    if-gt v12, v0, :cond_7

    .line 134
    add-int v28, v12, p4

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v29

    move/from16 v0, v22

    move/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v29

    add-int v29, v29, v25

    aget v6, p1, v29

    aput v6, v18, v28

    .line 137
    .local v6, color:I
    and-int/lit16 v2, v6, 0xff

    .line 139
    .local v2, b:I
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v28

    sub-int v16, v15, v28

    .line 142
    .local v16, rbs:I
    mul-int v28, v2, v16

    add-int v5, v5, v28

    .line 144
    if-lez v12, :cond_6

    .line 147
    add-int/2addr v3, v2

    .line 132
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 151
    :cond_6
    add-int/2addr v4, v2

    goto :goto_4

    .line 154
    .end local v2           #b:I
    .end local v6           #color:I
    .end local v16           #rbs:I
    :cond_7
    move/from16 v19, p4

    .line 157
    .local v19, stackpointer:I
    const/16 v23, 0x0

    .local v23, x:I
    :goto_5
    move/from16 v0, v23

    move/from16 v1, p2

    if-ge v0, v1, :cond_9

    .line 159
    aget v28, v10, v5

    aput v28, v9, v25

    .line 163
    sub-int/2addr v5, v4

    .line 165
    sub-int v28, v19, p4

    add-int v14, v28, v7

    .line 166
    .local v14, pos:I
    rem-int v28, v14, v7

    aget v17, v18, v28

    .line 169
    .local v17, rgb:I
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    sub-int v4, v4, v28

    .line 171
    if-nez v24, :cond_8

    .line 172
    add-int v28, v23, p4

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v28

    aput v28, v20, v23

    .line 174
    :cond_8
    aget v28, v20, v23

    add-int v28, v28, v27

    aget v6, p1, v28

    .line 175
    .restart local v6       #color:I
    rem-int v28, v14, v7

    aput v6, v18, v28

    .line 178
    and-int/lit16 v2, v6, 0xff

    .line 182
    .restart local v2       #b:I
    add-int/2addr v3, v2

    .line 186
    add-int/2addr v5, v3

    .line 188
    add-int/lit8 v28, v19, 0x1

    rem-int v19, v28, v7

    .line 189
    rem-int v28, v19, v7

    aget v6, v18, v28

    .line 192
    and-int/lit16 v2, v6, 0xff

    .line 196
    add-int/2addr v4, v2

    .line 200
    sub-int/2addr v3, v2

    .line 202
    add-int/lit8 v25, v25, 0x1

    .line 157
    add-int/lit8 v23, v23, 0x1

    goto :goto_5

    .line 204
    .end local v2           #b:I
    .end local v6           #color:I
    .end local v14           #pos:I
    .end local v17           #rgb:I
    :cond_9
    add-int v27, v27, p2

    .line 206
    invoke-virtual/range {p0 .. p0}, Lyi/support/v1/blend/SketchBlend$Task;->isInterrupted()Z

    move-result v28

    if-eqz v28, :cond_a

    const/16 p1, 0x0

    goto/16 :goto_0

    .line 126
    :cond_a
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_2

    .line 209
    .end local v3           #binsum:I
    .end local v4           #boutsum:I
    .end local v5           #bsum:I
    .end local v19           #stackpointer:I
    .end local v23           #x:I
    :cond_b
    const/16 v23, 0x0

    .restart local v23       #x:I
    :goto_6
    move/from16 v0, v23

    move/from16 v1, p2

    if-ge v0, v1, :cond_1

    .line 210
    const/4 v4, 0x0

    .restart local v4       #boutsum:I
    move v3, v4

    .restart local v3       #binsum:I
    move v5, v4

    .line 214
    .restart local v5       #bsum:I
    move/from16 v0, p4

    neg-int v0, v0

    move/from16 v28, v0

    mul-int v26, v28, p2

    .line 216
    .local v26, yp:I
    move/from16 v0, p4

    neg-int v12, v0

    :goto_7
    move/from16 v0, p4

    if-gt v12, v0, :cond_e

    .line 217
    const/16 v28, 0x0

    move/from16 v0, v28

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v28

    add-int v25, v28, v23

    .line 219
    add-int v28, v12, p4

    aget v6, v9, v25

    aput v6, v18, v28

    .line 222
    .restart local v6       #color:I
    and-int/lit16 v2, v6, 0xff

    .line 224
    .restart local v2       #b:I
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v28

    sub-int v16, v15, v28

    .line 227
    .restart local v16       #rbs:I
    mul-int v28, v2, v16

    add-int v5, v5, v28

    .line 229
    if-lez v12, :cond_d

    .line 232
    add-int/2addr v3, v2

    .line 239
    :goto_8
    if-ge v12, v11, :cond_c

    .line 240
    add-int v26, v26, p2

    .line 216
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 236
    :cond_d
    add-int/2addr v4, v2

    goto :goto_8

    .line 243
    .end local v2           #b:I
    .end local v6           #color:I
    .end local v16           #rbs:I
    :cond_e
    move/from16 v25, v23

    .line 244
    move/from16 v19, p4

    .line 246
    .restart local v19       #stackpointer:I
    const/16 v24, 0x0

    :goto_9
    move/from16 v0, v24

    move/from16 v1, p3

    if-ge v0, v1, :cond_10

    .line 248
    const/high16 v28, -0x100

    aget v29, p1, v25

    and-int v28, v28, v29

    aget v29, v10, v5

    or-int v28, v28, v29

    aput v28, p1, v25

    .line 252
    sub-int/2addr v5, v4

    .line 254
    sub-int v28, v19, p4

    add-int v14, v28, v7

    .line 255
    .restart local v14       #pos:I
    rem-int v28, v14, v7

    aget v17, v18, v28

    .line 258
    .restart local v17       #rgb:I
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    sub-int v4, v4, v28

    .line 260
    if-nez v23, :cond_f

    .line 261
    add-int v28, v24, v15

    move/from16 v0, v28

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v28

    mul-int v28, v28, p2

    aput v28, v20, v24

    .line 263
    :cond_f
    aget v28, v20, v24

    add-int v13, v23, v28

    .line 264
    .local v13, p:I
    rem-int v28, v14, v7

    aget v6, v9, v13

    aput v6, v18, v28

    .line 267
    .restart local v6       #color:I
    and-int/lit16 v2, v6, 0xff

    .line 271
    .restart local v2       #b:I
    add-int/2addr v3, v2

    .line 275
    add-int/2addr v5, v3

    .line 277
    add-int/lit8 v28, v19, 0x1

    rem-int v19, v28, v7

    .line 278
    aget v6, v18, v19

    .line 281
    and-int/lit16 v2, v6, 0xff

    .line 285
    add-int/2addr v4, v2

    .line 289
    sub-int/2addr v3, v2

    .line 291
    add-int v25, v25, p2

    .line 246
    add-int/lit8 v24, v24, 0x1

    goto :goto_9

    .line 294
    .end local v2           #b:I
    .end local v6           #color:I
    .end local v13           #p:I
    .end local v14           #pos:I
    .end local v17           #rgb:I
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lyi/support/v1/blend/SketchBlend$Task;->isInterrupted()Z

    move-result v28

    if-eqz v28, :cond_11

    const/16 p1, 0x0

    goto/16 :goto_0

    .line 209
    :cond_11
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_6
.end method


# virtual methods
.method protected blend()Z
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lyi/support/v1/blend/SketchBlend$Task;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lyi/support/v1/blend/SketchBlend$Task;->sketch(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic interrupt()V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0}, Lyi/support/v1/blend/BlendService$BlendTask;->interrupt()V

    return-void
.end method

.method public bridge synthetic run()V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0}, Lyi/support/v1/blend/BlendService$BlendTask;->run()V

    return-void
.end method

.method sketch(Landroid/graphics/Bitmap;)Z
    .locals 10
    .parameter "src"

    .prologue
    const/4 v2, 0x0

    .line 35
    if-nez p1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v2

    .line 39
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 40
    .local v3, w:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 41
    .local v7, h:I
    if-eqz v3, :cond_0

    if-eqz v7, :cond_0

    .line 45
    mul-int v9, v3, v7

    .line 46
    .local v9, wh:I
    new-array v1, v9, [I

    .line 47
    .local v1, pixels:[I
    new-array v8, v9, [B

    .local v8, grays:[B
    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 48
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 50
    invoke-static {v1, v8}, Lyi/support/v1/blend/SketchBlend$Task;->grayAndInverse([I[B)V

    .line 52
    invoke-virtual {p0}, Lyi/support/v1/blend/SketchBlend$Task;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget v0, p0, Lyi/support/v1/blend/SketchBlend$Task;->mShade:I

    invoke-direct {p0, v1, v3, v7, v0}, Lyi/support/v1/blend/SketchBlend$Task;->monoFastBlur([IIII)[I

    move-result-object v1

    .line 56
    if-eqz v1, :cond_0

    .line 58
    invoke-static {v1, v8}, Lyi/support/v1/blend/SketchBlend$Task;->deceaseColorCompound([I[B)V

    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 60
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 61
    const/4 v2, 0x1

    goto :goto_0
.end method
