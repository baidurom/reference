.class public Landroid/widget/BookmarkAdapter;
.super Landroid/widget/BaseAdapter;
.source "BookmarkAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/BookmarkAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DEFAULT_DISPLAY_HEIGHT:I = 0xa0

.field private static final DEFAULT_DISPLAY_WIDTH:I = 0x78

.field private static final DEFAULT_REFLECTION:F = 0.25f

.field private static final DEFAULT_REFLECTION_GAP:I = 0x4

.field private static final DELICON_MARGIN_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "BookmarkAdapter"


# instance fields
.field private final mBitmapCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBookmarkItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/BookmarkItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDeleteDrawable:Landroid/graphics/drawable/Drawable;

.field private mDeleteMode:Z

.field private mDispHeight:I

.field private mDispWidth:I

.field private mGradientPaint:Landroid/graphics/Paint;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mLock:Ljava/lang/Object;

.field private mNormalPaint:Landroid/graphics/Paint;

.field private mReflection:F

.field private mTotalDispHeight:I

.field private mTransMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/BookmarkItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p2, bookmarkItems:Ljava/util/List;,"Ljava/util/List<Landroid/widget/BookmarkItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 88
    const/16 v0, 0x78

    iput v0, p0, Landroid/widget/BookmarkAdapter;->mDispWidth:I

    .line 89
    const/16 v0, 0xa0

    iput v0, p0, Landroid/widget/BookmarkAdapter;->mDispHeight:I

    .line 90
    const/high16 v0, 0x3e80

    iput v0, p0, Landroid/widget/BookmarkAdapter;->mReflection:F

    .line 92
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/BookmarkAdapter;->mTransMatrix:Landroid/graphics/Matrix;

    .line 94
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/BookmarkAdapter;->mNormalPaint:Landroid/graphics/Paint;

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/BookmarkAdapter;->mGradientPaint:Landroid/graphics/Paint;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/BookmarkAdapter;->mDeleteMode:Z

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/BookmarkAdapter;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/BookmarkAdapter;->mLock:Ljava/lang/Object;

    .line 114
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/BookmarkAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    .line 117
    iput-object p1, p0, Landroid/widget/BookmarkAdapter;->mContext:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    .line 119
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/BookmarkAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 120
    return-void
.end method

.method private getCachedBitmap(Landroid/util/LongSparseArray;J)Landroid/graphics/Bitmap;
    .locals 4
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;J)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 453
    .local p1, bmpCache:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;>;"
    iget-object v3, p0, Landroid/widget/BookmarkAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 454
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 455
    .local v1, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_1

    .line 456
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 457
    .local v0, entry:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 458
    monitor-exit v3

    .line 464
    .end local v0           #entry:Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 460
    .restart local v0       #entry:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->delete(J)V

    .line 463
    .end local v0           #entry:Landroid/graphics/Bitmap;
    :cond_1
    monitor-exit v3

    .line 464
    const/4 v0, 0x0

    goto :goto_0

    .line 463
    .end local v1           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private loadImage(Landroid/widget/ImageView;I)V
    .locals 16
    .parameter "child"
    .parameter "position"

    .prologue
    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/BookmarkAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    move/from16 v0, p2

    int-to-long v8, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8, v9}, Landroid/widget/BookmarkAdapter;->getCachedBitmap(Landroid/util/LongSparseArray;J)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 172
    .local v14, cacheBitmap:Landroid/graphics/Bitmap;
    const-string v2, "BookmarkAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadImage: position = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ",cacheBitmap = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    if-eqz v14, :cond_0

    .line 175
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 260
    :goto_0
    return-void

    .line 182
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/BookmarkItem;

    iget-object v2, v2, Landroid/widget/BookmarkItem;->content:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/BookmarkItem;

    iget v2, v2, Landroid/widget/BookmarkItem;->resId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/BookmarkItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/BookmarkAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/BookmarkItem;

    iget v3, v3, Landroid/widget/BookmarkItem;->resId:I

    invoke-static {v8, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Landroid/widget/BookmarkItem;->content:Landroid/graphics/Bitmap;

    .line 190
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/BookmarkItem;

    iget-object v1, v2, Landroid/widget/BookmarkItem;->content:Landroid/graphics/Bitmap;

    .line 191
    .local v1, originalImage:Landroid/graphics/Bitmap;
    if-nez v1, :cond_2

    .line 192
    const-string v2, "BookmarkAdapter"

    const-string v3, "No iamge valid for bookmark when loadImage."

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 197
    .local v4, width:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 199
    .local v5, height:I
    const-string v2, "BookmarkAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadImage: position = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ",width = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ",height = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ",mDispWidth = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/BookmarkAdapter;->mDispWidth:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ",mDispHeight = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/BookmarkAdapter;->mDispHeight:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/BookmarkAdapter;->mTransMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/BookmarkAdapter;->mTransMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BookmarkAdapter;->mDispWidth:I

    int-to-float v3, v3

    int-to-float v8, v4

    div-float/2addr v3, v8

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/BookmarkAdapter;->mDispHeight:I

    int-to-float v8, v8

    int-to-float v9, v5

    div-float/2addr v8, v9

    invoke-virtual {v2, v3, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 206
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/BookmarkAdapter;->mTransMatrix:Landroid/graphics/Matrix;

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 210
    .local v6, scaledBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BookmarkAdapter;->mReflection:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BookmarkAdapter;->mReflection:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 211
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/BookmarkAdapter;->mTransMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/BookmarkAdapter;->mTransMatrix:Landroid/graphics/Matrix;

    const/high16 v3, 0x3f80

    const/high16 v8, -0x4080

    invoke-virtual {v2, v3, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 214
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BookmarkAdapter;->mDispHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/BookmarkAdapter;->mReflection:F

    sub-float/2addr v3, v8

    mul-float/2addr v2, v3

    float-to-int v8, v2

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/BookmarkAdapter;->mDispWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BookmarkAdapter;->mDispHeight:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BookmarkAdapter;->mReflection:F

    mul-float/2addr v2, v3

    float-to-int v10, v2

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/BookmarkAdapter;->mTransMatrix:Landroid/graphics/Matrix;

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 217
    .local v15, reflectedBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BookmarkAdapter;->mDispWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BookmarkAdapter;->mTotalDispHeight:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 220
    .local v13, bitmapWithReflection:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 222
    .local v7, canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v2, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 226
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BookmarkAdapter;->mDispHeight:I

    int-to-float v9, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BookmarkAdapter;->mDispWidth:I

    int-to-float v10, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BookmarkAdapter;->mDispHeight:I

    add-int/lit8 v2, v2, 0x4

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/BookmarkAdapter;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 229
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BookmarkAdapter;->mDispHeight:I

    add-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    const/4 v8, 0x0

    invoke-virtual {v7, v15, v2, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 231
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BookmarkAdapter;->mDispHeight:I

    int-to-float v9, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BookmarkAdapter;->mDispWidth:I

    int-to-float v10, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BookmarkAdapter;->mTotalDispHeight:I

    add-int/lit8 v2, v2, 0x4

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/BookmarkAdapter;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 233
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/BookmarkAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 237
    :try_start_0
    const-string v2, "BookmarkAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadImage cache reflection bitmap: position = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",bitmapWithReflection = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/BookmarkAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    move/from16 v0, p2

    int-to-long v8, v0

    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, v13}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 241
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 258
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v13           #bitmapWithReflection:Landroid/graphics/Bitmap;
    .end local v15           #reflectedBitmap:Landroid/graphics/Bitmap;
    :goto_1
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 259
    const/4 v6, 0x0

    .line 260
    goto/16 :goto_0

    .line 241
    .restart local v7       #canvas:Landroid/graphics/Canvas;
    .restart local v13       #bitmapWithReflection:Landroid/graphics/Bitmap;
    .restart local v15       #reflectedBitmap:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 247
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v13           #bitmapWithReflection:Landroid/graphics/Bitmap;
    .end local v15           #reflectedBitmap:Landroid/graphics/Bitmap;
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/BookmarkAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 250
    :try_start_2
    const-string v2, "BookmarkAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadImage cache scaled bitmap: position = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",scaledBitmap = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/BookmarkAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    move/from16 v0, p2

    int-to-long v8, v0

    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 254
    monitor-exit v3

    goto :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method


# virtual methods
.method public add(Landroid/widget/BookmarkItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 294
    iget-object v0, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-virtual {p0}, Landroid/widget/BookmarkAdapter;->notifyDataSetChanged()V

    .line 296
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 353
    invoke-virtual {p0}, Landroid/widget/BookmarkAdapter;->notifyDataSetChanged()V

    .line 354
    return-void
.end method

.method public clearBitmapCache()V
    .locals 2

    .prologue
    .line 410
    iget-object v1, p0, Landroid/widget/BookmarkAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 411
    :try_start_0
    iget-object v0, p0, Landroid/widget/BookmarkAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 412
    monitor-exit v1

    .line 413
    return-void

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Landroid/widget/BookmarkAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 268
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 275
    iget-object v0, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 278
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 285
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 126
    if-eqz p2, :cond_0

    .line 127
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BookmarkAdapter$ViewHolder;

    .line 137
    .local v0, holder:Landroid/widget/BookmarkAdapter$ViewHolder;
    :goto_0
    iget-object v1, v0, Landroid/widget/BookmarkAdapter$ViewHolder;->content:Landroid/widget/ImageView;

    invoke-direct {p0, v1, p1}, Landroid/widget/BookmarkAdapter;->loadImage(Landroid/widget/ImageView;I)V

    .line 138
    iget-boolean v1, p0, Landroid/widget/BookmarkAdapter;->mDeleteMode:Z

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, v0, Landroid/widget/BookmarkAdapter$ViewHolder;->container:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/Gallery$LayoutParams;

    iget v3, p0, Landroid/widget/BookmarkAdapter;->mDispWidth:I

    add-int/lit8 v3, v3, 0xa

    iget v4, p0, Landroid/widget/BookmarkAdapter;->mTotalDispHeight:I

    add-int/lit8 v4, v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v1, v0, Landroid/widget/BookmarkAdapter$ViewHolder;->delIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object v1, v0, Landroid/widget/BookmarkAdapter$ViewHolder;->delIcon:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/BookmarkAdapter$1;

    invoke-direct {v2, p0, p1}, Landroid/widget/BookmarkAdapter$1;-><init>(Landroid/widget/BookmarkAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    :goto_1
    return-object p2

    .line 129
    .end local v0           #holder:Landroid/widget/BookmarkAdapter$ViewHolder;
    :cond_0
    iget-object v1, p0, Landroid/widget/BookmarkAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x2070003

    invoke-virtual {v1, v2, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 130
    new-instance v0, Landroid/widget/BookmarkAdapter$ViewHolder;

    invoke-direct {v0}, Landroid/widget/BookmarkAdapter$ViewHolder;-><init>()V

    .line 131
    .restart local v0       #holder:Landroid/widget/BookmarkAdapter$ViewHolder;
    const v1, 0x20c0005

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Landroid/widget/BookmarkAdapter$ViewHolder;->container:Landroid/widget/FrameLayout;

    .line 132
    const v1, 0x20c0006

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Landroid/widget/BookmarkAdapter$ViewHolder;->content:Landroid/widget/ImageView;

    .line 133
    const v1, 0x20c0007

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Landroid/widget/BookmarkAdapter$ViewHolder;->delIcon:Landroid/widget/ImageView;

    .line 134
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v1, v0, Landroid/widget/BookmarkAdapter$ViewHolder;->container:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/Gallery$LayoutParams;

    iget v3, p0, Landroid/widget/BookmarkAdapter;->mDispWidth:I

    iget v4, p0, Landroid/widget/BookmarkAdapter;->mTotalDispHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v1, v0, Landroid/widget/BookmarkAdapter$ViewHolder;->delIcon:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    iget-object v1, v0, Landroid/widget/BookmarkAdapter$ViewHolder;->delIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public insert(Landroid/widget/BookmarkItem;I)V
    .locals 1
    .parameter "item"
    .parameter "index"

    .prologue
    .line 305
    iget-object v0, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 306
    invoke-virtual {p0}, Landroid/widget/BookmarkAdapter;->notifyDataSetChanged()V

    .line 307
    return-void
.end method

.method public isDeleteMode()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Landroid/widget/BookmarkAdapter;->mDeleteMode:Z

    return v0
.end method

.method public remove(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 344
    iget-object v0, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 345
    invoke-virtual {p0}, Landroid/widget/BookmarkAdapter;->notifyDataSetChanged()V

    .line 346
    return-void
.end method

.method public remove(Landroid/widget/BookmarkItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 334
    iget-object v0, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 335
    invoke-virtual {p0}, Landroid/widget/BookmarkAdapter;->notifyDataSetChanged()V

    .line 336
    return-void
.end method

.method public replace(Landroid/widget/BookmarkItem;I)Landroid/widget/BookmarkItem;
    .locals 2
    .parameter "item"
    .parameter "index"

    .prologue
    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, replaced:Landroid/widget/BookmarkItem;
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_0

    .line 320
    iget-object v1, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #replaced:Landroid/widget/BookmarkItem;
    check-cast v0, Landroid/widget/BookmarkItem;

    .line 321
    .restart local v0       #replaced:Landroid/widget/BookmarkItem;
    iget-object v1, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v1, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-virtual {p0}, Landroid/widget/BookmarkAdapter;->notifyDataSetChanged()V

    .line 325
    :cond_0
    return-object v0
.end method

.method public setDeleteIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "deleteIcon"

    .prologue
    .line 401
    iput-object p1, p0, Landroid/widget/BookmarkAdapter;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    .line 402
    return-void
.end method

.method public setDeleteMode(Z)V
    .locals 0
    .parameter "delMode"

    .prologue
    .line 383
    iput-boolean p1, p0, Landroid/widget/BookmarkAdapter;->mDeleteMode:Z

    .line 384
    return-void
.end method

.method public setImageDispSize(II)V
    .locals 8
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 422
    iput p1, p0, Landroid/widget/BookmarkAdapter;->mDispWidth:I

    .line 423
    iput p2, p0, Landroid/widget/BookmarkAdapter;->mDispHeight:I

    .line 424
    iget v2, p0, Landroid/widget/BookmarkAdapter;->mDispHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    iget v4, p0, Landroid/widget/BookmarkAdapter;->mReflection:F

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/BookmarkAdapter;->mTotalDispHeight:I

    .line 427
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Landroid/widget/BookmarkAdapter;->mDispHeight:I

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/BookmarkAdapter;->mTotalDispHeight:I

    add-int/lit8 v3, v3, 0x4

    int-to-float v4, v3

    const v5, 0x70ffffff

    const v6, 0xffffff

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 429
    .local v0, shader:Landroid/graphics/LinearGradient;
    iget-object v1, p0, Landroid/widget/BookmarkAdapter;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 432
    iget-object v1, p0, Landroid/widget/BookmarkAdapter;->mGradientPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 433
    return-void
.end method

.method public setImageReflection(F)V
    .locals 3
    .parameter "reflect"

    .prologue
    .line 441
    iput p1, p0, Landroid/widget/BookmarkAdapter;->mReflection:F

    .line 442
    iget v0, p0, Landroid/widget/BookmarkAdapter;->mDispHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    iget v2, p0, Landroid/widget/BookmarkAdapter;->mReflection:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/BookmarkAdapter;->mTotalDispHeight:I

    .line 443
    return-void
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Landroid/widget/BookmarkItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 363
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Landroid/widget/BookmarkItem;>;"
    iget-object v0, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 364
    invoke-virtual {p0}, Landroid/widget/BookmarkAdapter;->notifyDataSetChanged()V

    .line 365
    return-void
.end method
