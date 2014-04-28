.class public Lyi/support/v1/blend/BlurBlend$Task;
.super Lyi/support/v1/blend/BlendService$BlendTask;
.source "BlurBlend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/blend/BlurBlend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation


# instance fields
.field private final mRadius:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;ILyi/support/v1/blend/BlendService$Observer;)V
    .locals 0
    .parameter "bitmap"
    .parameter "radius"
    .parameter "observer"

    .prologue
    .line 25
    invoke-direct {p0, p1, p3}, Lyi/support/v1/blend/BlendService$BlendTask;-><init>(Landroid/graphics/Bitmap;Lyi/support/v1/blend/BlendService$Observer;)V

    .line 26
    iput p2, p0, Lyi/support/v1/blend/BlurBlend$Task;->mRadius:I

    .line 27
    return-void
.end method

.method private fastBlur(Landroid/graphics/Bitmap;I)Z
    .locals 10
    .parameter "src"
    .parameter "radius"

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 35
    if-eqz p1, :cond_0

    if-ge p2, v9, :cond_1

    .line 54
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
    mul-int v8, v3, v7

    .line 46
    .local v8, wh:I
    new-array v1, v8, [I

    .local v1, pixels:[I
    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 47
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 48
    invoke-direct {p0, v1, v3, v7, p2}, Lyi/support/v1/blend/BlurBlend$Task;->fastBlur([IIII)[I

    move-result-object v1

    .line 50
    if-eqz v1, :cond_0

    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 53
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    move v2, v9

    .line 54
    goto :goto_0
.end method

.method private fastBlur([IIII)[I
    .locals 38
    .parameter "pixels"
    .parameter "w"
    .parameter "h"
    .parameter "radius"

    .prologue
    .line 59
    if-eqz p1, :cond_0

    const/16 v36, 0x1

    move/from16 v0, p4

    move/from16 v1, v36

    if-ge v0, v1, :cond_2

    .line 60
    :cond_0
    const/16 p1, 0x0

    .line 263
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 63
    .restart local p1
    :cond_2
    if-eqz p2, :cond_3

    if-nez p3, :cond_4

    .line 64
    :cond_3
    const/16 p1, 0x0

    goto :goto_0

    .line 67
    :cond_4
    mul-int v29, p2, p3

    .line 68
    .local v29, wh:I
    add-int/lit8 v30, p2, -0x1

    .line 69
    .local v30, wm:I
    add-int/lit8 v15, p3, -0x1

    .line 70
    .local v15, hm:I
    add-int v36, p4, p4

    add-int/lit8 v7, v36, 0x1

    .line 73
    .local v7, div:I
    const/16 v33, 0x0

    .local v33, yi:I
    move/from16 v35, v33

    .line 75
    .local v35, yw:I
    add-int/lit8 v36, v7, 0x1

    shr-int/lit8 v8, v36, 0x1

    .line 76
    .local v8, divsum:I
    mul-int/2addr v8, v8

    .line 77
    mul-int/lit16 v0, v8, 0x100

    move/from16 v36, v0

    move/from16 v0, v36

    new-array v10, v0, [I

    .line 78
    .local v10, dvtable:[I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    mul-int/lit16 v0, v8, 0x100

    move/from16 v36, v0

    move/from16 v0, v16

    move/from16 v1, v36

    if-ge v0, v1, :cond_5

    .line 79
    div-int v36, v16, v8

    aput v36, v10, v16

    .line 78
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 82
    :cond_5
    move/from16 v0, v29

    new-array v9, v0, [I

    .line 83
    .local v9, dvcolor:[I
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v0, v36

    new-array v0, v0, [I

    move-object/from16 v28, v0

    .line 85
    .local v28, vmin:[I
    new-array v0, v7, [I

    move-object/from16 v23, v0

    .line 87
    .local v23, rgbStack:[I
    add-int/lit8 v20, p4, 0x1

    .line 92
    .local v20, r1:I
    const/16 v32, 0x0

    .local v32, y:I
    :goto_2
    move/from16 v0, v32

    move/from16 v1, p3

    if-ge v0, v1, :cond_b

    .line 93
    const/4 v4, 0x0

    .local v4, boutsum:I
    move v13, v4

    .local v13, goutsum:I
    move/from16 v25, v4

    .local v25, routsum:I
    move v3, v4

    .local v3, binsum:I
    move v12, v4

    .local v12, ginsum:I
    move/from16 v24, v4

    .local v24, rinsum:I
    move v5, v4

    .local v5, bsum:I
    move v14, v4

    .local v14, gsum:I
    move/from16 v26, v4

    .line 98
    .local v26, rsum:I
    move/from16 v0, p4

    neg-int v0, v0

    move/from16 v16, v0

    :goto_3
    move/from16 v0, v16

    move/from16 v1, p4

    if-gt v0, v1, :cond_7

    .line 100
    add-int v36, v16, p4

    const/16 v37, 0x0

    move/from16 v0, v16

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v0, v30

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v37

    add-int v37, v37, v33

    aget v6, p1, v37

    aput v6, v23, v36

    .line 101
    .local v6, color:I
    const/high16 v36, 0xff

    and-int v36, v36, v6

    shr-int/lit8 v19, v36, 0x10

    .line 102
    .local v19, r:I
    const v36, 0xff00

    and-int v36, v36, v6

    shr-int/lit8 v11, v36, 0x8

    .line 103
    .local v11, g:I
    and-int/lit16 v2, v6, 0xff

    .line 105
    .local v2, b:I
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v36

    sub-int v21, v20, v36

    .line 106
    .local v21, rbs:I
    mul-int v36, v19, v21

    add-int v26, v26, v36

    .line 107
    mul-int v36, v11, v21

    add-int v14, v14, v36

    .line 108
    mul-int v36, v2, v21

    add-int v5, v5, v36

    .line 110
    if-lez v16, :cond_6

    .line 111
    add-int v24, v24, v19

    .line 112
    add-int/2addr v12, v11

    .line 113
    add-int/2addr v3, v2

    .line 98
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 115
    :cond_6
    add-int v25, v25, v19

    .line 116
    add-int/2addr v13, v11

    .line 117
    add-int/2addr v4, v2

    goto :goto_4

    .line 120
    .end local v2           #b:I
    .end local v6           #color:I
    .end local v11           #g:I
    .end local v19           #r:I
    .end local v21           #rbs:I
    :cond_7
    move/from16 v27, p4

    .line 123
    .local v27, stackpointer:I
    const/16 v31, 0x0

    .local v31, x:I
    :goto_5
    move/from16 v0, v31

    move/from16 v1, p2

    if-ge v0, v1, :cond_9

    .line 125
    aget v36, v10, v26

    shl-int/lit8 v36, v36, 0x10

    aget v37, v10, v14

    shl-int/lit8 v37, v37, 0x8

    or-int v36, v36, v37

    aget v37, v10, v5

    or-int v36, v36, v37

    aput v36, v9, v33

    .line 127
    sub-int v26, v26, v25

    .line 128
    sub-int/2addr v14, v13

    .line 129
    sub-int/2addr v5, v4

    .line 131
    sub-int v36, v27, p4

    add-int v18, v36, v7

    .line 132
    .local v18, pos:I
    rem-int v36, v18, v7

    aget v22, v23, v36

    .line 133
    .local v22, rgb:I
    const/high16 v36, 0xff

    and-int v36, v36, v22

    shr-int/lit8 v36, v36, 0x10

    sub-int v25, v25, v36

    .line 134
    const v36, 0xff00

    and-int v36, v36, v22

    shr-int/lit8 v36, v36, 0x8

    sub-int v13, v13, v36

    .line 135
    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v36, v0

    sub-int v4, v4, v36

    .line 137
    if-nez v32, :cond_8

    .line 138
    add-int v36, v31, p4

    add-int/lit8 v36, v36, 0x1

    move/from16 v0, v36

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v36

    aput v36, v28, v31

    .line 140
    :cond_8
    aget v36, v28, v31

    add-int v36, v36, v35

    aget v6, p1, v36

    .line 141
    .restart local v6       #color:I
    rem-int v36, v18, v7

    aput v6, v23, v36

    .line 142
    const/high16 v36, 0xff

    and-int v36, v36, v6

    shr-int/lit8 v19, v36, 0x10

    .line 143
    .restart local v19       #r:I
    const v36, 0xff00

    and-int v36, v36, v6

    shr-int/lit8 v11, v36, 0x8

    .line 144
    .restart local v11       #g:I
    and-int/lit16 v2, v6, 0xff

    .line 146
    .restart local v2       #b:I
    add-int v24, v24, v19

    .line 147
    add-int/2addr v12, v11

    .line 148
    add-int/2addr v3, v2

    .line 150
    add-int v26, v26, v24

    .line 151
    add-int/2addr v14, v12

    .line 152
    add-int/2addr v5, v3

    .line 154
    add-int/lit8 v36, v27, 0x1

    rem-int v27, v36, v7

    .line 155
    rem-int v36, v27, v7

    aget v6, v23, v36

    .line 156
    const/high16 v36, 0xff

    and-int v36, v36, v6

    shr-int/lit8 v19, v36, 0x10

    .line 157
    const v36, 0xff00

    and-int v36, v36, v6

    shr-int/lit8 v11, v36, 0x8

    .line 158
    and-int/lit16 v2, v6, 0xff

    .line 160
    add-int v25, v25, v19

    .line 161
    add-int/2addr v13, v11

    .line 162
    add-int/2addr v4, v2

    .line 164
    sub-int v24, v24, v19

    .line 165
    sub-int/2addr v12, v11

    .line 166
    sub-int/2addr v3, v2

    .line 168
    add-int/lit8 v33, v33, 0x1

    .line 123
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_5

    .line 170
    .end local v2           #b:I
    .end local v6           #color:I
    .end local v11           #g:I
    .end local v18           #pos:I
    .end local v19           #r:I
    .end local v22           #rgb:I
    :cond_9
    add-int v35, v35, p2

    .line 172
    invoke-virtual/range {p0 .. p0}, Lyi/support/v1/blend/BlurBlend$Task;->isInterrupted()Z

    move-result v36

    if-eqz v36, :cond_a

    const/16 p1, 0x0

    goto/16 :goto_0

    .line 92
    :cond_a
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_2

    .line 175
    .end local v3           #binsum:I
    .end local v4           #boutsum:I
    .end local v5           #bsum:I
    .end local v12           #ginsum:I
    .end local v13           #goutsum:I
    .end local v14           #gsum:I
    .end local v24           #rinsum:I
    .end local v25           #routsum:I
    .end local v26           #rsum:I
    .end local v27           #stackpointer:I
    .end local v31           #x:I
    :cond_b
    const/16 v31, 0x0

    .restart local v31       #x:I
    :goto_6
    move/from16 v0, v31

    move/from16 v1, p2

    if-ge v0, v1, :cond_1

    .line 176
    const/4 v4, 0x0

    .restart local v4       #boutsum:I
    move v13, v4

    .restart local v13       #goutsum:I
    move/from16 v25, v4

    .restart local v25       #routsum:I
    move v3, v4

    .restart local v3       #binsum:I
    move v12, v4

    .restart local v12       #ginsum:I
    move/from16 v24, v4

    .restart local v24       #rinsum:I
    move v5, v4

    .restart local v5       #bsum:I
    move v14, v4

    .restart local v14       #gsum:I
    move/from16 v26, v4

    .line 180
    .restart local v26       #rsum:I
    move/from16 v0, p4

    neg-int v0, v0

    move/from16 v36, v0

    mul-int v34, v36, p2

    .line 182
    .local v34, yp:I
    move/from16 v0, p4

    neg-int v0, v0

    move/from16 v16, v0

    :goto_7
    move/from16 v0, v16

    move/from16 v1, p4

    if-gt v0, v1, :cond_e

    .line 183
    const/16 v36, 0x0

    move/from16 v0, v36

    move/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v36

    add-int v33, v36, v31

    .line 185
    add-int v36, v16, p4

    aget v6, v9, v33

    aput v6, v23, v36

    .line 186
    .restart local v6       #color:I
    const/high16 v36, 0xff

    and-int v36, v36, v6

    shr-int/lit8 v19, v36, 0x10

    .line 187
    .restart local v19       #r:I
    const v36, 0xff00

    and-int v36, v36, v6

    shr-int/lit8 v11, v36, 0x8

    .line 188
    .restart local v11       #g:I
    and-int/lit16 v2, v6, 0xff

    .line 190
    .restart local v2       #b:I
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v36

    sub-int v21, v20, v36

    .line 191
    .restart local v21       #rbs:I
    mul-int v36, v19, v21

    add-int v26, v26, v36

    .line 192
    mul-int v36, v11, v21

    add-int v14, v14, v36

    .line 193
    mul-int v36, v2, v21

    add-int v5, v5, v36

    .line 195
    if-lez v16, :cond_d

    .line 196
    add-int v24, v24, v19

    .line 197
    add-int/2addr v12, v11

    .line 198
    add-int/2addr v3, v2

    .line 205
    :goto_8
    move/from16 v0, v16

    if-ge v0, v15, :cond_c

    .line 206
    add-int v34, v34, p2

    .line 182
    :cond_c
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 200
    :cond_d
    add-int v25, v25, v19

    .line 201
    add-int/2addr v13, v11

    .line 202
    add-int/2addr v4, v2

    goto :goto_8

    .line 209
    .end local v2           #b:I
    .end local v6           #color:I
    .end local v11           #g:I
    .end local v19           #r:I
    .end local v21           #rbs:I
    :cond_e
    move/from16 v33, v31

    .line 210
    move/from16 v27, p4

    .line 212
    .restart local v27       #stackpointer:I
    const/16 v32, 0x0

    :goto_9
    move/from16 v0, v32

    move/from16 v1, p3

    if-ge v0, v1, :cond_10

    .line 214
    const/high16 v36, -0x100

    aget v37, p1, v33

    and-int v36, v36, v37

    aget v37, v10, v26

    shl-int/lit8 v37, v37, 0x10

    or-int v36, v36, v37

    aget v37, v10, v14

    shl-int/lit8 v37, v37, 0x8

    or-int v36, v36, v37

    aget v37, v10, v5

    or-int v36, v36, v37

    aput v36, p1, v33

    .line 216
    sub-int v26, v26, v25

    .line 217
    sub-int/2addr v14, v13

    .line 218
    sub-int/2addr v5, v4

    .line 220
    sub-int v36, v27, p4

    add-int v18, v36, v7

    .line 221
    .restart local v18       #pos:I
    rem-int v36, v18, v7

    aget v22, v23, v36

    .line 222
    .restart local v22       #rgb:I
    const/high16 v36, 0xff

    and-int v36, v36, v22

    shr-int/lit8 v36, v36, 0x10

    sub-int v25, v25, v36

    .line 223
    const v36, 0xff00

    and-int v36, v36, v22

    shr-int/lit8 v36, v36, 0x8

    sub-int v13, v13, v36

    .line 224
    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v36, v0

    sub-int v4, v4, v36

    .line 226
    if-nez v31, :cond_f

    .line 227
    add-int v36, v32, v20

    move/from16 v0, v36

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v36

    mul-int v36, v36, p2

    aput v36, v28, v32

    .line 229
    :cond_f
    aget v36, v28, v32

    add-int v17, v31, v36

    .line 230
    .local v17, p:I
    rem-int v36, v18, v7

    aget v6, v9, v17

    aput v6, v23, v36

    .line 231
    .restart local v6       #color:I
    const/high16 v36, 0xff

    and-int v36, v36, v6

    shr-int/lit8 v19, v36, 0x10

    .line 232
    .restart local v19       #r:I
    const v36, 0xff00

    and-int v36, v36, v6

    shr-int/lit8 v11, v36, 0x8

    .line 233
    .restart local v11       #g:I
    and-int/lit16 v2, v6, 0xff

    .line 235
    .restart local v2       #b:I
    add-int v24, v24, v19

    .line 236
    add-int/2addr v12, v11

    .line 237
    add-int/2addr v3, v2

    .line 239
    add-int v26, v26, v24

    .line 240
    add-int/2addr v14, v12

    .line 241
    add-int/2addr v5, v3

    .line 243
    add-int/lit8 v36, v27, 0x1

    rem-int v27, v36, v7

    .line 244
    aget v6, v23, v27

    .line 245
    const/high16 v36, 0xff

    and-int v36, v36, v6

    shr-int/lit8 v19, v36, 0x10

    .line 246
    const v36, 0xff00

    and-int v36, v36, v6

    shr-int/lit8 v11, v36, 0x8

    .line 247
    and-int/lit16 v2, v6, 0xff

    .line 249
    add-int v25, v25, v19

    .line 250
    add-int/2addr v13, v11

    .line 251
    add-int/2addr v4, v2

    .line 253
    sub-int v24, v24, v19

    .line 254
    sub-int/2addr v12, v11

    .line 255
    sub-int/2addr v3, v2

    .line 257
    add-int v33, v33, p2

    .line 212
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_9

    .line 260
    .end local v2           #b:I
    .end local v6           #color:I
    .end local v11           #g:I
    .end local v17           #p:I
    .end local v18           #pos:I
    .end local v19           #r:I
    .end local v22           #rgb:I
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lyi/support/v1/blend/BlurBlend$Task;->isInterrupted()Z

    move-result v36

    if-eqz v36, :cond_11

    const/16 p1, 0x0

    goto/16 :goto_0

    .line 175
    :cond_11
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_6
.end method


# virtual methods
.method protected blend()Z
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lyi/support/v1/blend/BlurBlend$Task;->mSrcBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lyi/support/v1/blend/BlurBlend$Task;->mRadius:I

    invoke-direct {p0, v0, v1}, Lyi/support/v1/blend/BlurBlend$Task;->fastBlur(Landroid/graphics/Bitmap;I)Z

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
