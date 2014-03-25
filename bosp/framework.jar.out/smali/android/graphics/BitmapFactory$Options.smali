.class public Landroid/graphics/BitmapFactory$Options;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/BitmapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public inBitmap:Landroid/graphics/Bitmap;

.field public inDensity:I

.field public inDither:Z

.field public inInputShareable:Z

.field public inJustDecodeBounds:Z

.field public inMutable:Z

.field public inPostProc:Z

.field public inPostProcFlag:I

.field public inPreferQualityOverSpeed:Z

.field public inPreferSize:I

.field public inPreferredConfig:Landroid/graphics/Bitmap$Config;

.field public inPurgeable:Z

.field public inSampleSize:I

.field public inScaled:Z

.field public inScreenDensity:I

.field public inTargetDensity:I

.field public inTempStorage:[B

.field public mCancel:Z

.field public outHeight:I

.field public outMimeType:Ljava/lang/String;

.field public outWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 44
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 46
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inPreferSize:I

    .line 47
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inPostProc:Z

    .line 48
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inPostProcFlag:I

    .line 49
    return-void
.end method

.method private native requestCancel()V
.end method


# virtual methods
.method public requestCancelDecode()V
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    .line 304
    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;->requestCancel()V

    .line 305
    return-void
.end method
