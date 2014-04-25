.class public Lcom/android/phone/InCallContactPhotoEx;
.super Lcom/android/phone/InCallContactPhoto;
.source "InCallContactPhotoEx.java"


# instance fields
.field mOriginal:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/phone/InCallContactPhoto;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallContactPhotoEx;->mOriginal:Landroid/graphics/drawable/Drawable;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallContactPhoto;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallContactPhotoEx;->mOriginal:Landroid/graphics/drawable/Drawable;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/InCallContactPhoto;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallContactPhotoEx;->mOriginal:Landroid/graphics/drawable/Drawable;

    .line 56
    return-void
.end method


# virtual methods
.method public getOriginalDrawable(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .locals 23
    .parameter "act"

    .prologue
    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    .line 102
    .local v17, windowManager:Landroid/view/WindowManager;
    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 103
    .local v6, display:Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v15

    .line 104
    .local v15, screenWidth:I
    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v14

    .line 105
    .local v14, screenHeight:I
    const/high16 v19, 0x3f80

    int-to-float v0, v15

    move/from16 v20, v0

    mul-float v19, v19, v20

    int-to-float v0, v14

    move/from16 v20, v0

    div-float v11, v19, v20

    .line 107
    .local v11, ratio:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallContactPhotoEx;->mOriginal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallContactPhotoEx;->mOriginal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    .line 149
    :goto_0
    return-object v19

    .line 110
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallContactPhotoEx;->mOriginal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    check-cast v19, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 111
    .local v4, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 112
    .local v16, w:I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 113
    .local v7, h:I
    const/high16 v19, 0x3f80

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    int-to-float v0, v7

    move/from16 v20, v0

    div-float v10, v19, v20

    .line 114
    .local v10, r2:F
    sub-float v19, v10, v11

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const v20, 0x3dcccccd

    cmpl-float v19, v19, v20

    if-lez v19, :cond_3

    .line 115
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 116
    .local v12, rct:Landroid/graphics/Rect;
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 117
    .local v13, rctD:Landroid/graphics/Rect;
    move/from16 v0, v16

    if-lt v0, v7, :cond_2

    .line 118
    int-to-float v0, v7

    move/from16 v19, v0

    mul-float v18, v19, v11

    .line 119
    .local v18, ww:F
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 120
    iput v7, v12, Landroid/graphics/Rect;->bottom:I

    .line 121
    div-int/lit8 v19, v16, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x4000

    div-float v20, v18, v20

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 122
    div-int/lit8 v19, v16, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x4000

    div-float v20, v18, v20

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 132
    .end local v18           #ww:F
    :cond_1
    :goto_1
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v13, Landroid/graphics/Rect;->left:I

    .line 133
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v13, Landroid/graphics/Rect;->top:I

    .line 134
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v19

    move/from16 v0, v19

    iput v0, v13, Landroid/graphics/Rect;->right:I

    .line 135
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v19

    move/from16 v0, v19

    iput v0, v13, Landroid/graphics/Rect;->bottom:I

    .line 137
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v19

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v20

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 139
    .local v9, pic:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 140
    .local v5, cvs:Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 141
    .local v8, paint:Landroid/graphics/Paint;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 143
    new-instance v19, Landroid/graphics/PorterDuffXfermode;

    sget-object v20, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v19 .. v20}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 144
    invoke-virtual {v5, v4, v12, v13, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 146
    new-instance v19, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallContactPhotoEx;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 124
    .end local v5           #cvs:Landroid/graphics/Canvas;
    .end local v8           #paint:Landroid/graphics/Paint;
    .end local v9           #pic:Landroid/graphics/Bitmap;
    :cond_2
    move/from16 v0, v16

    if-le v7, v0, :cond_1

    .line 125
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v19, v11

    .line 126
    .restart local v18       #ww:F
    div-int/lit8 v19, v7, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x4000

    div-float v20, v18, v20

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 127
    div-int/lit8 v19, v7, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x4000

    div-float v20, v18, v20

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v12, Landroid/graphics/Rect;->bottom:I

    .line 128
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 129
    move/from16 v0, v16

    iput v0, v12, Landroid/graphics/Rect;->right:I

    goto/16 :goto_1

    .line 149
    .end local v12           #rct:Landroid/graphics/Rect;
    .end local v13           #rctD:Landroid/graphics/Rect;
    .end local v18           #ww:F
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallContactPhotoEx;->mOriginal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    goto/16 :goto_0
.end method

.method public getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 26
    .parameter "bitmap"
    .parameter "roundPx"

    .prologue
    .line 59
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 60
    .local v6, W:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 61
    .local v5, H:I
    if-le v6, v5, :cond_0

    move/from16 v21, v5

    .line 62
    .local v21, wdth:I
    :goto_0
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, p2

    const/high16 v23, 0x43b4

    div-float p2, v22, v23

    .line 63
    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v21

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 65
    .local v20, roundpic:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 66
    .local v7, canvas:Landroid/graphics/Canvas;
    const v8, -0xbdbdbe

    .line 67
    .local v8, color:I
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 68
    .local v11, paint:Landroid/graphics/Paint;
    new-instance v14, Landroid/graphics/Rect;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v21

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 69
    .local v14, rect:Landroid/graphics/Rect;
    new-instance v17, Landroid/graphics/RectF;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 70
    .local v17, rectF:Landroid/graphics/RectF;
    if-le v6, v5, :cond_1

    new-instance v18, Landroid/graphics/Rect;

    sub-int v22, v6, v5

    div-int/lit8 v22, v22, 0x2

    const/16 v23, 0x0

    sub-int v24, v6, v5

    div-int/lit8 v24, v24, 0x2

    add-int v24, v24, v21

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 73
    .local v18, rectSrc:Landroid/graphics/Rect;
    :goto_1
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 75
    invoke-virtual {v11, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    move-object/from16 v0, v17

    move/from16 v1, p2

    move/from16 v2, p2

    invoke-virtual {v7, v0, v1, v2, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 77
    new-instance v22, Landroid/graphics/PorterDuffXfermode;

    sget-object v23, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v22 .. v23}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 78
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1, v14, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 80
    mul-int/lit8 v22, v21, 0x4

    move/from16 v0, v22

    div-int/lit16 v13, v0, 0x168

    .line 81
    .local v13, rW:I
    new-instance v15, Landroid/graphics/Rect;

    const/16 v22, 0x0

    const/16 v23, 0x0

    mul-int/lit8 v24, v13, 0x2

    add-int v24, v24, v21

    mul-int/lit8 v25, v13, 0x2

    add-int v25, v25, v21

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v15, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 82
    .local v15, rect1:Landroid/graphics/Rect;
    new-instance v16, Landroid/graphics/Rect;

    add-int v22, v21, v13

    add-int v23, v21, v13

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v13, v13, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 83
    .local v16, rect2:Landroid/graphics/Rect;
    new-instance v19, Landroid/graphics/RectF;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 85
    .local v19, rectf1:Landroid/graphics/RectF;
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 86
    .local v12, paint1:Landroid/graphics/Paint;
    const/4 v8, -0x1

    .line 87
    mul-int/lit8 v22, v13, 0x2

    add-int v22, v22, v21

    mul-int/lit8 v23, v13, 0x2

    add-int v23, v23, v21

    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v22 .. v24}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 89
    .local v10, output:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 90
    .local v9, cvs:Landroid/graphics/Canvas;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 92
    invoke-virtual {v12, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    int-to-float v0, v13

    move/from16 v22, v0

    add-float v22, v22, p2

    int-to-float v0, v13

    move/from16 v23, v0

    add-float v23, v23, p2

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v9, v0, v1, v2, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 94
    new-instance v22, Landroid/graphics/PorterDuffXfermode;

    sget-object v23, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v22 .. v23}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 95
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v9, v0, v14, v1, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 97
    return-object v10

    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v8           #color:I
    .end local v9           #cvs:Landroid/graphics/Canvas;
    .end local v10           #output:Landroid/graphics/Bitmap;
    .end local v11           #paint:Landroid/graphics/Paint;
    .end local v12           #paint1:Landroid/graphics/Paint;
    .end local v13           #rW:I
    .end local v14           #rect:Landroid/graphics/Rect;
    .end local v15           #rect1:Landroid/graphics/Rect;
    .end local v16           #rect2:Landroid/graphics/Rect;
    .end local v17           #rectF:Landroid/graphics/RectF;
    .end local v18           #rectSrc:Landroid/graphics/Rect;
    .end local v19           #rectf1:Landroid/graphics/RectF;
    .end local v20           #roundpic:Landroid/graphics/Bitmap;
    .end local v21           #wdth:I
    :cond_0
    move/from16 v21, v6

    .line 61
    goto/16 :goto_0

    .line 70
    .restart local v7       #canvas:Landroid/graphics/Canvas;
    .restart local v8       #color:I
    .restart local v11       #paint:Landroid/graphics/Paint;
    .restart local v14       #rect:Landroid/graphics/Rect;
    .restart local v17       #rectF:Landroid/graphics/RectF;
    .restart local v20       #roundpic:Landroid/graphics/Bitmap;
    .restart local v21       #wdth:I
    :cond_1
    new-instance v18, Landroid/graphics/Rect;

    const/16 v22, 0x0

    sub-int v23, v5, v6

    div-int/lit8 v23, v23, 0x2

    sub-int v24, v5, v6

    div-int/lit8 v24, v24, 0x2

    add-int v24, v24, v21

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v21

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_1
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bm"

    .prologue
    .line 162
    const/high16 v0, 0x41c0

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/InCallContactPhotoEx;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/android/phone/InCallContactPhoto;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 163
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "inputDrawable"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/phone/InCallContactPhotoEx;->mOriginal:Landroid/graphics/drawable/Drawable;

    .line 168
    if-nez p1, :cond_0

    .line 173
    .end local p1
    :goto_0
    return-void

    .line 170
    .restart local p1
    :cond_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 171
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InCallContactPhotoEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x41c0

    invoke-virtual {p0, v0, v3}, Lcom/android/phone/InCallContactPhotoEx;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-super {p0, v1}, Lcom/android/phone/InCallContactPhoto;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 22
    .parameter "inputDrawable"
    .parameter "background"

    .prologue
    .line 176
    if-nez p1, :cond_0

    .line 205
    :goto_0
    return-void

    :cond_0
    move-object/from16 v18, p2

    .line 178
    check-cast v18, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .local v4, bbmp:Landroid/graphics/Bitmap;
    move-object/from16 v18, p1

    .line 179
    check-cast v18, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 180
    .local v10, ibmp:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 181
    .local v6, bw:I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 182
    .local v5, bh:I
    const/high16 v9, 0x3f80

    .line 183
    .local v9, factor:F
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v9

    move/from16 v0, v18

    float-to-int v14, v0

    .line 184
    .local v14, iw:I
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v9

    move/from16 v0, v18

    float-to-int v11, v0

    .line 185
    .local v11, ih:I
    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v18

    invoke-static {v6, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 187
    .local v17, wt:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 188
    .local v7, canvas:Landroid/graphics/Canvas;
    const v8, -0xbdbdbe

    .line 189
    .local v8, color:I
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 191
    .local v15, paint:Landroid/graphics/Paint;
    new-instance v16, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 192
    .local v16, rect:Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/Rect;

    sub-int v18, v6, v14

    div-int/lit8 v18, v18, 0x2

    sub-int v19, v5, v11

    div-int/lit8 v19, v19, 0x2

    sub-int v20, v6, v14

    div-int/lit8 v20, v20, 0x2

    add-int v20, v20, v14

    sub-int v21, v5, v11

    div-int/lit8 v21, v21, 0x2

    add-int v21, v21, v11

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 194
    .local v12, irect_d:Landroid/graphics/Rect;
    new-instance v13, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 195
    .local v13, irect_s:Landroid/graphics/Rect;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 196
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 197
    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    new-instance v18, Landroid/graphics/PorterDuffXfermode;

    sget-object v19, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v18 .. v19}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 199
    move-object/from16 v0, v16

    move-object/from16 v1, v16

    invoke-virtual {v7, v4, v0, v1, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 200
    invoke-virtual {v7, v10, v13, v12, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 202
    new-instance v18, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallContactPhotoEx;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallContactPhotoEx;->mOriginal:Landroid/graphics/drawable/Drawable;

    .line 203
    invoke-super/range {p0 .. p1}, Lcom/android/phone/InCallContactPhoto;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-super {v0, v1}, Lcom/android/phone/InCallContactPhoto;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public setImageResource(I)V
    .locals 4
    .parameter "resId"

    .prologue
    .line 154
    const v1, 0x7f0201db

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/phone/InCallContactPhotoEx;->mOriginal:Landroid/graphics/drawable/Drawable;

    .line 155
    invoke-virtual {p0}, Lcom/android/phone/InCallContactPhotoEx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InCallContactPhotoEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x41c0

    invoke-virtual {p0, v0, v3}, Lcom/android/phone/InCallContactPhotoEx;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-super {p0, v1}, Lcom/android/phone/InCallContactPhoto;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    return-void

    .line 154
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallContactPhotoEx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method
