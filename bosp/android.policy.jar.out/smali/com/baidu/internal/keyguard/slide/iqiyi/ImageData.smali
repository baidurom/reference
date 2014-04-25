.class public Lcom/baidu/internal/keyguard/slide/iqiyi/ImageData;
.super Ljava/lang/Object;
.source "ImageData.java"


# static fields
.field private static instance:Lcom/baidu/internal/keyguard/slide/iqiyi/ImageData;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    sput-object v0, Lcom/baidu/internal/keyguard/slide/iqiyi/ImageData;->mContext:Landroid/content/Context;

    .line 13
    sput-object v0, Lcom/baidu/internal/keyguard/slide/iqiyi/ImageData;->instance:Lcom/baidu/internal/keyguard/slide/iqiyi/ImageData;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/internal/keyguard/slide/iqiyi/ImageData;
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    sput-object p0, Lcom/baidu/internal/keyguard/slide/iqiyi/ImageData;->mContext:Landroid/content/Context;

    .line 20
    sget-object v0, Lcom/baidu/internal/keyguard/slide/iqiyi/ImageData;->instance:Lcom/baidu/internal/keyguard/slide/iqiyi/ImageData;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/baidu/internal/keyguard/slide/iqiyi/ImageData;

    invoke-direct {v0}, Lcom/baidu/internal/keyguard/slide/iqiyi/ImageData;-><init>()V

    sput-object v0, Lcom/baidu/internal/keyguard/slide/iqiyi/ImageData;->instance:Lcom/baidu/internal/keyguard/slide/iqiyi/ImageData;

    .line 23
    :cond_0
    sget-object v0, Lcom/baidu/internal/keyguard/slide/iqiyi/ImageData;->instance:Lcom/baidu/internal/keyguard/slide/iqiyi/ImageData;

    return-object v0
.end method


# virtual methods
.method public resizeImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x0

    .line 27
    const/16 v13, 0x280

    .line 28
    .local v13, w:I
    const/16 v7, 0x140

    .line 30
    .local v7, h:I
    move-object v0, p1

    .line 31
    .local v0, BitmapOrg:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 32
    .local v3, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 33
    .local v4, height:I
    move v9, v13

    .line 34
    .local v9, newWidth:I
    move v8, v7

    .line 36
    .local v8, newHeight:I
    int-to-float v2, v9

    int-to-float v6, v3

    div-float v12, v2, v6

    .line 37
    .local v12, scaleWidth:F
    int-to-float v2, v8

    int-to-float v6, v4

    div-float v11, v2, v6

    .line 39
    .local v11, scaleHeight:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 41
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v12, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 45
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 48
    .local v10, resizedBitmap:Landroid/graphics/Bitmap;
    return-object v10
.end method
