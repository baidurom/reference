.class public Lcom/baidu/themeanimation/element/LockScreenElement;
.super Lcom/baidu/themeanimation/element/Element;
.source "LockScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LockScreenElement"

.field public static mIsInStartArea:Ljava/lang/Boolean;


# instance fields
.field private mBatteryFullStateViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryLowStateViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCategory:I

.field private mChargingStateViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mContentManager:Lcom/baidu/themeanimation/manager/ContentManager;

.field private mDesignHeight:I

.field private mDesignWidth:I

.field private mDisplayDesktop:Ljava/lang/Boolean;

.field private mEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

.field private mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

.field private mFrameRate:I

.field private mLockScreenView:Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;

.field private mNormalStateViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:I

.field private mWallpaperElement:Lcom/baidu/themeanimation/element/WallpaperElement;

.field private mWallpaperView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/baidu/themeanimation/element/LockScreenElement;->mIsInStartArea:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/Element;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mVersion:I

    .line 36
    const/16 v0, 0x1e

    iput v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mFrameRate:I

    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mDisplayDesktop:Ljava/lang/Boolean;

    .line 41
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mDesignWidth:I

    .line 42
    const/16 v0, 0x320

    iput v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mDesignHeight:I

    .line 44
    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mCategory:I

    .line 186
    iput-object v1, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mWallpaperElement:Lcom/baidu/themeanimation/element/WallpaperElement;

    .line 187
    iput-object v1, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mWallpaperView:Landroid/widget/ImageView;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mNormalStateViews:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mChargingStateViews:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mBatteryFullStateViews:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mBatteryLowStateViews:Ljava/util/List;

    .line 70
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    .line 71
    invoke-static {}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getInstance()Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    .line 72
    return-void
.end method

.method public constructor <init>(IILjava/lang/Boolean;)V
    .locals 2
    .parameter "version"
    .parameter "frameRate"
    .parameter "displayDesktop"

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/Element;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mVersion:I

    .line 36
    const/16 v0, 0x1e

    iput v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mFrameRate:I

    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mDisplayDesktop:Ljava/lang/Boolean;

    .line 41
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mDesignWidth:I

    .line 42
    const/16 v0, 0x320

    iput v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mDesignHeight:I

    .line 44
    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mCategory:I

    .line 186
    iput-object v1, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mWallpaperElement:Lcom/baidu/themeanimation/element/WallpaperElement;

    .line 187
    iput-object v1, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mWallpaperView:Landroid/widget/ImageView;

    .line 49
    iput p1, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mVersion:I

    .line 50
    iput p2, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mFrameRate:I

    .line 51
    iput-object p3, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mDisplayDesktop:Ljava/lang/Boolean;

    .line 52
    return-void
.end method


# virtual methods
.method public addContent(Lcom/baidu/themeanimation/manager/ContentManager$Content;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mContentManager:Lcom/baidu/themeanimation/manager/ContentManager;

    if-nez v0, :cond_0

    .line 142
    invoke-static {}, Lcom/baidu/themeanimation/manager/ContentManager;->getInstance()Lcom/baidu/themeanimation/manager/ContentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mContentManager:Lcom/baidu/themeanimation/manager/ContentManager;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mContentManager:Lcom/baidu/themeanimation/manager/ContentManager;

    invoke-virtual {v0, p1}, Lcom/baidu/themeanimation/manager/ContentManager;->addContent(Lcom/baidu/themeanimation/manager/ContentManager$Content;)V

    .line 145
    return-void
.end method

.method public clearElement()V
    .locals 1

    .prologue
    .line 300
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/themeanimation/util/FileUtil;->clearBitmap()V

    .line 301
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/themeanimation/manager/ExpressionManager;->reset()V

    .line 302
    invoke-static {}, Lcom/baidu/themeanimation/manager/ContentManager;->getInstance()Lcom/baidu/themeanimation/manager/ContentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/themeanimation/manager/ContentManager;->clear()V

    .line 303
    iget-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->clearVariables()V

    .line 304
    return-void
.end method

.method public createElement(Ljava/lang/String;)Lcom/baidu/themeanimation/element/Element;
    .locals 1
    .parameter "tagName"

    .prologue
    .line 62
    new-instance v0, Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/LockScreenElement;-><init>()V

    return-object v0
.end method

.method public dispatchCategoryChange(I)V
    .locals 5
    .parameter "category"

    .prologue
    .line 352
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/LockScreenElement;->getVisibleElements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/LockScreenElement;->getVisibleElements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-virtual {v1, p1}, Lcom/baidu/themeanimation/element/VisibleElement;->onCategoryChange(I)V

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    :cond_0
    iget-object v1, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const/16 v2, 0xa

    iget v3, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mCategory:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(IJ)V

    .line 357
    return-void
.end method

.method public dispatchTimeTick(Landroid/text/format/Time;)V
    .locals 2
    .parameter "time"

    .prologue
    .line 360
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/LockScreenElement;->getVisibleElements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/LockScreenElement;->getVisibleElements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-virtual {v1, p1}, Lcom/baidu/themeanimation/element/VisibleElement;->onTimeTick(Landroid/text/format/Time;)V

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_0
    return-void
.end method

.method public generateView(Landroid/content/Context;IILandroid/os/Handler;)Landroid/view/View;
    .locals 9
    .parameter "context"
    .parameter "width"
    .parameter "height"
    .parameter "handler"

    .prologue
    const/4 v8, 0x0

    .line 205
    iget-object v7, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mLockScreenView:Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;

    if-nez v7, :cond_4

    .line 206
    new-instance v7, Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;

    invoke-direct {v7, p0, p1, p4}, Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;-><init>(Lcom/baidu/themeanimation/element/LockScreenElement;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mLockScreenView:Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;

    .line 208
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 209
    .local v3, imageView:Landroid/widget/ImageView;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 210
    .local v4, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v8, v8, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 211
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 213
    sget-object v7, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 214
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iput-object v3, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mWallpaperView:Landroid/widget/ImageView;

    .line 216
    iget-object v7, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mLockScreenView:Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;

    invoke-virtual {v7, v3}, Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;->addView(Landroid/view/View;)V

    .line 217
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v7

    invoke-virtual {v7, p4}, Lcom/baidu/themeanimation/util/FileUtil;->loadWallpaper(Landroid/os/Handler;)V

    .line 221
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/LockScreenElement;->getVisibleElements()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 222
    const/4 v5, 0x0

    .line 223
    .local v5, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/LockScreenElement;->getVisibleElements()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/VisibleElement;

    .line 224
    .local v1, element:Lcom/baidu/themeanimation/element/VisibleElement;
    instance-of v7, v1, Lcom/baidu/themeanimation/element/WallpaperElement;

    if-eqz v7, :cond_1

    move-object v7, v1

    .line 226
    check-cast v7, Lcom/baidu/themeanimation/element/WallpaperElement;

    iput-object v7, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mWallpaperElement:Lcom/baidu/themeanimation/element/WallpaperElement;

    .line 227
    iget-object v7, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mWallpaperElement:Lcom/baidu/themeanimation/element/WallpaperElement;

    invoke-virtual {v7, p1, p4}, Lcom/baidu/themeanimation/element/WallpaperElement;->generateView(Landroid/content/Context;Landroid/os/Handler;)Landroid/view/View;

    move-result-object v5

    .line 231
    :goto_1
    if-nez v5, :cond_2

    .line 221
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {v1, p1, p4}, Lcom/baidu/themeanimation/element/VisibleElement;->generateView(Landroid/content/Context;Landroid/os/Handler;)Landroid/view/View;

    move-result-object v5

    goto :goto_1

    .line 235
    :cond_2
    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/VisibleElement;->getCategory()I

    move-result v0

    .line 236
    .local v0, category:I
    iget v7, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mCategory:I

    if-eq v0, v7, :cond_3

    const/4 v7, 0x4

    if-eq v0, v7, :cond_3

    .line 237
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/baidu/themeanimation/element/VisibleElement;->setVisibility(Ljava/lang/Boolean;)V

    .line 239
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 254
    :goto_3
    iget-object v7, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mLockScreenView:Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;

    invoke-virtual {v7, v5}, Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;->addView(Landroid/view/View;)V

    .line 255
    instance-of v7, v1, Lcom/baidu/themeanimation/element/UnlockerElement;

    if-eqz v7, :cond_0

    .line 256
    invoke-virtual {v5}, Landroid/view/View;->bringToFront()V

    goto :goto_2

    .line 241
    :pswitch_0
    iget-object v7, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mChargingStateViews:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 244
    :pswitch_1
    iget-object v7, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mBatteryFullStateViews:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 247
    :pswitch_2
    iget-object v7, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mBatteryLowStateViews:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 250
    :pswitch_3
    iget-object v7, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mNormalStateViews:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 261
    .end local v0           #category:I
    .end local v1           #element:Lcom/baidu/themeanimation/element/VisibleElement;
    .end local v2           #i:I
    .end local v3           #imageView:Landroid/widget/ImageView;
    .end local v4           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5           #view:Landroid/view/View;
    :cond_4
    iget-object v7, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mLockScreenView:Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;

    invoke-virtual {v7}, Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 262
    .local v6, viewGroup:Landroid/view/ViewGroup;
    if-eqz v6, :cond_5

    .line 263
    iget-object v7, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mLockScreenView:Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 266
    .end local v6           #viewGroup:Landroid/view/ViewGroup;
    :cond_5
    iget-object v7, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mLockScreenView:Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;

    return-object v7

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public getAnimationsStatus()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 343
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/LockScreenElement;->getVisibleElements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 344
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/LockScreenElement;->getVisibleElements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/VisibleElement;->getAnimationsStatus()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    .line 348
    :goto_1
    return v1

    .line 343
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method

.method public getDisplayDesktop()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mDisplayDesktop:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFrameRate()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mFrameRate:I

    return v0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mDesignHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mDesignWidth:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mVersion:I

    return v0
.end method

.method public matchTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 56
    const-string v0, "Lockscreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BaiduLockscreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 271
    iget-object v3, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mLockScreenView:Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;

    if-eqz v3, :cond_1

    .line 272
    iget-object v3, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mLockScreenView:Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 273
    .local v2, viewGroup:Landroid/view/ViewGroup;
    const-string v3, "LockScreenElement"

    const-string v4, "generateView: removeView"

    invoke-static {v3, v4}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    if-eqz v2, :cond_0

    .line 275
    iget-object v3, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mLockScreenView:Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 277
    :cond_0
    iget-object v3, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mLockScreenView:Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;->removeAllViews()V

    .line 280
    .end local v2           #viewGroup:Landroid/view/ViewGroup;
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/LockScreenElement;->getVisibleElements()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 281
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/LockScreenElement;->getVisibleElements()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/VisibleElement;

    .line 282
    .local v0, element:Lcom/baidu/themeanimation/element/VisibleElement;
    instance-of v3, v0, Lcom/baidu/themeanimation/element/UnlockerElement;

    if-eqz v3, :cond_2

    move-object v3, v0

    .line 283
    check-cast v3, Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/UnlockerElement;->reset()V

    .line 285
    :cond_2
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/VisibleElement;->clearView()V

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    .end local v0           #element:Lcom/baidu/themeanimation/element/VisibleElement;
    :cond_3
    iget-object v3, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mNormalStateViews:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 288
    iget-object v3, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mNormalStateViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 289
    iget-object v3, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mBatteryFullStateViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 290
    iget-object v3, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mChargingStateViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 291
    iget-object v3, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mBatteryLowStateViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 294
    :cond_4
    iput-object v5, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mLockScreenView:Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;

    .line 295
    iget-object v3, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mWallpaperView:Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    .line 296
    iput-object v5, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mWallpaperView:Landroid/widget/ImageView;

    .line 297
    :cond_5
    return-void
.end method

.method public setAnimationsListener(Lcom/baidu/themeanimation/view/AnimationViewFactory$AnimationListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 337
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/LockScreenElement;->getVisibleElements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/LockScreenElement;->getVisibleElements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-virtual {v1, p1}, Lcom/baidu/themeanimation/element/VisibleElement;->setAnimationListener(Lcom/baidu/themeanimation/view/AnimationViewFactory$AnimationListener;)V

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_0
    return-void
.end method

.method public setDisplayDesktop(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "displayDesktop"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mDisplayDesktop:Ljava/lang/Boolean;

    .line 104
    return-void
.end method

.method public setDisplayDesktop(Ljava/lang/String;)V
    .locals 1
    .parameter "displayDesktop"

    .prologue
    .line 107
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/LockScreenElement;->setDisplayDesktop(Ljava/lang/Boolean;)V

    .line 108
    return-void
.end method

.method public setFrameRate(I)V
    .locals 0
    .parameter "frameRate"

    .prologue
    .line 91
    iput p1, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mFrameRate:I

    .line 92
    return-void
.end method

.method public setFrameRate(Ljava/lang/String;)V
    .locals 1
    .parameter "frameRate"

    .prologue
    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/LockScreenElement;->setFrameRate(I)V

    .line 96
    return-void
.end method

.method public setScreenHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 127
    iput p1, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mDesignHeight:I

    .line 128
    return-void
.end method

.method public setScreenHeight(Ljava/lang/String;)V
    .locals 1
    .parameter "height"

    .prologue
    .line 131
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/LockScreenElement;->setScreenHeight(I)V

    .line 132
    return-void
.end method

.method public setScreenWidth(I)V
    .locals 3
    .parameter "screenWidth"

    .prologue
    .line 111
    iput p1, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mDesignWidth:I

    .line 112
    iget v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mDesignWidth:I

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_0

    .line 113
    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/LockScreenElement;->setScreenHeight(I)V

    .line 114
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v0

    iget v1, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mDesignWidth:I

    iget v2, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mDesignHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/baidu/themeanimation/util/FileUtil;->updateScale(II)V

    .line 116
    :cond_0
    return-void
.end method

.method public setScreenWidth(Ljava/lang/String;)V
    .locals 1
    .parameter "screenWidth"

    .prologue
    .line 119
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/LockScreenElement;->setScreenWidth(I)V

    .line 120
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 79
    iput p1, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mVersion:I

    .line 80
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1
    .parameter "version"

    .prologue
    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/LockScreenElement;->setVersion(I)V

    .line 84
    return-void
.end method

.method public startAnimations()V
    .locals 5

    .prologue
    .line 309
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/LockScreenElement;->getVisibleElements()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 310
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/LockScreenElement;->getVisibleElements()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/VisibleElement;

    .line 311
    .local v2, element:Lcom/baidu/themeanimation/element/VisibleElement;
    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/VisibleElement;->getCategory()I

    move-result v1

    .line 313
    .local v1, category:I
    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    iget v4, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mCategory:I

    if-ne v1, v4, :cond_1

    .line 315
    :cond_0
    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/VisibleElement;->startAnimations()V

    .line 318
    :cond_1
    instance-of v4, v2, Lcom/baidu/themeanimation/element/UnlockerElement;

    if-eqz v4, :cond_2

    .line 319
    check-cast v2, Lcom/baidu/themeanimation/element/UnlockerElement;

    .end local v2           #element:Lcom/baidu/themeanimation/element/VisibleElement;
    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/UnlockerElement;->reset()V

    .line 309
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 322
    .end local v1           #category:I
    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/LockScreenElement;->getmSourceAnimationss()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 323
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/LockScreenElement;->getmSourceAnimationss()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/SourceAnimationElement;

    .line 324
    .local v0, animation:Lcom/baidu/themeanimation/element/SourceAnimationElement;
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/SourceAnimationElement;->cacheAnimation()V

    .line 322
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 326
    .end local v0           #animation:Lcom/baidu/themeanimation/element/SourceAnimationElement;
    :cond_4
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/themeanimation/util/FileUtil;->excutuLoadTasks()V

    .line 327
    return-void
.end method

.method public stopAnimations()V
    .locals 3

    .prologue
    .line 330
    const-string v1, "LockScreenElement"

    const-string v2, "stopAnimations"

    invoke-static {v1, v2}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/LockScreenElement;->getVisibleElements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/LockScreenElement;->getVisibleElements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/VisibleElement;->clearAnimations()V

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_0
    return-void
.end method

.method public updateContent(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 148
    invoke-static {}, Lcom/baidu/themeanimation/manager/ContentManager;->getInstance()Lcom/baidu/themeanimation/manager/ContentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/themeanimation/manager/ContentManager;->update(Landroid/content/Context;)V

    .line 149
    return-void
.end method

.method public updateWallpaper()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mWallpaperElement:Lcom/baidu/themeanimation/element/WallpaperElement;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mWallpaperElement:Lcom/baidu/themeanimation/element/WallpaperElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/WallpaperElement;->changeWallPaper()V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mWallpaperView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/baidu/themeanimation/element/LockScreenElement;->mWallpaperView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/themeanimation/util/FileUtil;->getCurrentLockWallpaper()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 196
    :cond_1
    return-void
.end method
