.class public Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;
.super Landroid/view/View;
.source "ImageElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/ImageElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageElementView"
.end annotation


# instance fields
.field debBoolean:Ljava/lang/Boolean;

.field private mCurrentBitmap:Landroid/graphics/Bitmap;

.field private mMaskBitmap:Landroid/graphics/Bitmap;

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mType:I

.field private pdm:Landroid/graphics/PorterDuffXfermode;

.field final synthetic this$0:Lcom/baidu/themeanimation/element/ImageElement;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/element/ImageElement;Landroid/content/Context;Lcom/baidu/themeanimation/element/VisibleElement;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "element"
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 118
    iput-object p1, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    .line 119
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 111
    iput-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 112
    iput-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 113
    iput-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMaskPaint:Landroid/graphics/Paint;

    .line 114
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMatrix:Landroid/graphics/Matrix;

    .line 254
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->debBoolean:Ljava/lang/Boolean;

    .line 120
    iput p4, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mType:I

    .line 121
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->pdm:Landroid/graphics/PorterDuffXfermode;

    .line 122
    return-void
.end method


# virtual methods
.method public getCurrentBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 141
    iget v0, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->updateImage()V

    .line 144
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter "canvas"

    .prologue
    .line 148
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 220
    :goto_0
    return-void

    .line 153
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 156
    .local v14, width:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 158
    .local v9, height:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/ImageElement;->getAngle()I

    move-result v1

    if-eqz v1, :cond_4

    .line 159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/ImageElement;->getAngle()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/ImageElement;->getCenterX()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/ImageElement;->getCenterY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 165
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/ImageElement;->getMask()Lcom/baidu/themeanimation/element/MaskElement;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMaskPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMaskPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/ImageElement;->getAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMaskPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 171
    const/4 v15, 0x0

    .line 172
    .local v15, x:I
    const/16 v16, 0x0

    .line 174
    .local v16, y:I
    int-to-float v2, v15

    move/from16 v0, v16

    int-to-float v3, v0

    add-int v1, v15, v14

    int-to-float v4, v1

    add-int v1, v16, v9

    int-to-float v5, v1

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v12

    .line 180
    .local v12, sc:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMaskPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMaskPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->pdm:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/ImageElement;->getMask()Lcom/baidu/themeanimation/element/MaskElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/MaskElement;->getAngle()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/ImageElement;->getMask()Lcom/baidu/themeanimation/element/MaskElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/MaskElement;->getCenterX()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/ImageElement;->getMask()Lcom/baidu/themeanimation/element/MaskElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/MaskElement;->getCenterY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 190
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/ImageElement;->getMask()Lcom/baidu/themeanimation/element/MaskElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/MaskElement;->getAlign()I

    move-result v1

    if-nez v1, :cond_5

    .line 191
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMaskBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/ImageElement;->getMask()Lcom/baidu/themeanimation/element/MaskElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/MaskElement;->getX()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/ImageElement;->getMask()Lcom/baidu/themeanimation/element/MaskElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/MaskElement;->getY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMaskPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 201
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMaskPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 202
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 212
    .end local v12           #sc:I
    .end local v15           #x:I
    .end local v16           #y:I
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/ImageElement;->getAngleY()I

    move-result v1

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_3

    .line 213
    const/high16 v1, -0x4080

    const/high16 v2, 0x3f80

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 216
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 217
    .end local v9           #height:I
    .end local v14           #width:I
    :catch_0
    move-exception v8

    .line 218
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "exception-image"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "draw image"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/ImageElement;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/themeanimation/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 160
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v9       #height:I
    .restart local v14       #width:I
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/ImageElement;->getAngleY()I

    move-result v1

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_1

    .line 161
    int-to-float v1, v14

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 162
    const/high16 v1, -0x4080

    const/high16 v2, 0x3f80

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_1

    .line 194
    .restart local v12       #sc:I
    .restart local v15       #x:I
    .restart local v16       #y:I
    :cond_5
    const/16 v1, 0x9

    new-array v13, v1, [F

    .line 195
    .local v13, values:[F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/graphics/Matrix;->getValues([F)V

    .line 196
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/ImageElement;->getX()I

    move-result v10

    .line 197
    .local v10, sX:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/ImageElement;->getY()I

    move-result v11

    .line 198
    .local v11, sY:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMaskBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/ImageElement;->getMask()Lcom/baidu/themeanimation/element/MaskElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/MaskElement;->getX()I

    move-result v2

    sub-int/2addr v2, v10

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/ImageElement;->getMask()Lcom/baidu/themeanimation/element/MaskElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/MaskElement;->getY()I

    move-result v3

    sub-int/2addr v3, v11

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMaskPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 204
    .end local v10           #sX:I
    .end local v11           #sY:I
    .end local v12           #sc:I
    .end local v13           #values:[F
    .end local v15           #x:I
    .end local v16           #y:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 205
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/ImageElement;->hasW()Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/ImageElement;->hasH()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 208
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    iget-object v4, v4, Lcom/baidu/themeanimation/element/ImageElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 225
    invoke-super {p0, v1, v1}, Landroid/view/View;->onMeasure(II)V

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_0
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "bitmap"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 237
    iget-object v4, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    .line 238
    iget-object v4, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/ImageElement;->hasW()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/ImageElement;->hasH()Z

    move-result v4

    if-nez v4, :cond_1

    .line 239
    :cond_0
    iget-object v4, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    iget-object v5, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/baidu/themeanimation/element/ImageElement;->setRealW(I)V

    .line 240
    iget-object v4, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    iget-object v5, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/baidu/themeanimation/element/ImageElement;->setRealH(I)V

    .line 242
    :cond_1
    iget-object v4, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/ImageElement;->getW()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 243
    .local v1, mScaleX:F
    iget-object v4, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/ImageElement;->getH()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 244
    .local v2, mScaleY:F
    iget-object v4, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 245
    iget-object v4, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/ImageElement;->genLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 246
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/ImageElement;->getAngleY()I

    move-result v4

    const/16 v5, 0xb4

    if-ne v4, v5, :cond_2

    .line 247
    iget-object v4, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/ImageElement;->getX()I

    move-result v3

    .line 248
    .local v3, posX:I
    sget v4, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_WIDTH:I

    sub-int/2addr v4, v3

    iget-object v5, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v5}, Lcom/baidu/themeanimation/element/ImageElement;->getW()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 250
    .end local v3           #posX:I
    :cond_2
    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    .end local v0           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #mScaleX:F
    .end local v2           #mScaleY:F
    :cond_3
    return-void
.end method

.method public setMask(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bmp"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 136
    return-void
.end method

.method public updateImage()V
    .locals 3

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->updateSrc()V

    .line 126
    iget-object v1, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/ImageElement;->getMask()Lcom/baidu/themeanimation/element/MaskElement;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 127
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->mMaskPaint:Landroid/graphics/Paint;

    .line 128
    iget-object v1, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/ImageElement;->getMask()Lcom/baidu/themeanimation/element/MaskElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/MaskElement;->getSrc()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, filename:Ljava/lang/String;
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Lcom/baidu/themeanimation/util/FileUtil;->setBitmap(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 132
    .end local v0           #filename:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public updateSrc()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 257
    iget-object v2, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/ImageElement;->getSrc()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, filename:Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/ImageElement;->getSrcid()I

    move-result v2

    if-lez v2, :cond_0

    .line 260
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 261
    .local v0, dotIndex:I
    if-lez v0, :cond_0

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->this$0:Lcom/baidu/themeanimation/element/ImageElement;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/ImageElement;->getSrcid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    .end local v0           #dotIndex:I
    :cond_0
    if-eqz v1, :cond_1

    const-string v2, "unlocker_button.png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->debBoolean:Ljava/lang/Boolean;

    .line 271
    :cond_1
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v2

    invoke-virtual {v2, v1, p0, v4}, Lcom/baidu/themeanimation/util/FileUtil;->setBitmap(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 272
    return-void
.end method
