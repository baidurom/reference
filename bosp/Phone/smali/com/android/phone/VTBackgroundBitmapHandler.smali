.class public Lcom/android/phone/VTBackgroundBitmapHandler;
.super Ljava/lang/Object;
.source "VTBackgroundBitmapHandler.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/VTBackgroundBitmapHandler;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public forceUpdateBitmapBySetting()V
    .locals 2

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/android/phone/VTBackgroundBitmapHandler;->recycle()V

    .line 18
    invoke-static {}, Lcom/android/phone/VTSettingUtils;->getInstance()Lcom/android/phone/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/VTSettingUtils;->mPicToReplacePeer:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathDefault2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VTBackgroundBitmapHandler;->mBitmap:Landroid/graphics/Bitmap;

    .line 25
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    invoke-static {}, Lcom/android/phone/VTSettingUtils;->getInstance()Lcom/android/phone/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/VTSettingUtils;->mPicToReplacePeer:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathUserselect2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VTBackgroundBitmapHandler;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/phone/VTBackgroundBitmapHandler;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/android/phone/VTBackgroundBitmapHandler;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/phone/VTBackgroundBitmapHandler;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 13
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/VTBackgroundBitmapHandler;->mBitmap:Landroid/graphics/Bitmap;

    .line 14
    return-void
.end method

.method public updateBitmapBySetting()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/phone/VTBackgroundBitmapHandler;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/VTBackgroundBitmapHandler;->forceUpdateBitmapBySetting()V

    goto :goto_0
.end method
