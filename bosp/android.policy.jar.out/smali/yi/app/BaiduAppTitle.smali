.class public Lyi/app/BaiduAppTitle;
.super Ljava/lang/Object;
.source "BaiduAppTitle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/app/BaiduAppTitle$OnRightClickedListener;,
        Lyi/app/BaiduAppTitle$OnYiRightClickedListener;,
        Lyi/app/BaiduAppTitle$OnLeftClickedListener;,
        Lyi/app/BaiduAppTitle$OnYiLeftClickedListener;
    }
.end annotation


# static fields
.field private static final RICE_DELTA_TITLE_BTN_PADDING:I = 0x5

.field private static final RICE_INIT_TITLE_BTN_PADDING:I = 0x0

.field private static final RICE_INIT_TITLE_BTN_PADDING_BOTTOM:I = 0xb

.field private static final RICE_INIT_TITLE_BTN_WIDTH:I = 0x5a

.field public static final RICE_MAX_TITLE_BTN_LEVEL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BaiduAppTitle"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBtnGrpResourceId:I

.field protected mOnLeftClickedListener:Lyi/app/BaiduAppTitle$OnLeftClickedListener;

.field protected mOnRightClickedListener:Lyi/app/BaiduAppTitle$OnRightClickedListener;

.field protected mOnYiLeftClickedListener:Lyi/app/BaiduAppTitle$OnYiLeftClickedListener;

.field protected mOnYiRightClickedListener:Lyi/app/BaiduAppTitle$OnYiRightClickedListener;

.field private mResourceId:I

.field private mRightBtn:Landroid/widget/Button;

.field private mTitleCorner:Landroid/widget/ImageView;

.field private mTitleLabel:Landroid/widget/TextView;

.field private mTitleRoot:Landroid/view/View;

.field private mleftBtn:Landroid/widget/Button;

.field private useBtnGrpTitle:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const v0, 0x509002c

    iput v0, p0, Lyi/app/BaiduAppTitle;->mResourceId:I

    .line 47
    const v0, 0x509002d

    iput v0, p0, Lyi/app/BaiduAppTitle;->mBtnGrpResourceId:I

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lyi/app/BaiduAppTitle;->useBtnGrpTitle:Z

    .line 75
    iput-object p1, p0, Lyi/app/BaiduAppTitle;->mActivity:Landroid/app/Activity;

    .line 77
    return-void
.end method

.method private setLabelPaddingDip(Landroid/view/View;IIII)V
    .locals 7
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v6, 0x1

    .line 203
    iget-object v1, p0, Lyi/app/BaiduAppTitle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 204
    .local v0, r:Landroid/content/res/Resources;
    int-to-float v1, p2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v6, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, p3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v6, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    int-to-float v3, p4

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v6, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    int-to-float v4, p5

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v6, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 209
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lyi/app/BaiduAppTitle;->useBtnGrpTitle:Z

    if-eqz v0, :cond_0

    .line 392
    iget v0, p0, Lyi/app/BaiduAppTitle;->mBtnGrpResourceId:I

    .line 394
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lyi/app/BaiduAppTitle;->mResourceId:I

    goto :goto_0
.end method

.method public getRiceTitleLeftButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mleftBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getRiceTitleRightButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mRightBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getTitleLeftButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mleftBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getTitleRightButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mRightBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public final installRiceAppTitle()V
    .locals 11

    .prologue
    const/16 v5, 0xb

    const/16 v3, 0x9

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v2, 0x0

    .line 84
    const-string v0, "BaiduAppTitle"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BaiduAppTitle"

    const-string v1, "installRiceAppTitle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 89
    :cond_2
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mActivity:Landroid/app/Activity;

    const v1, 0x502000b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lyi/app/BaiduAppTitle;->mleftBtn:Landroid/widget/Button;

    .line 90
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mActivity:Landroid/app/Activity;

    const v1, 0x502000c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lyi/app/BaiduAppTitle;->mRightBtn:Landroid/widget/Button;

    .line 91
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mActivity:Landroid/app/Activity;

    const v1, #id@title#t

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lyi/app/BaiduAppTitle;->mTitleLabel:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mActivity:Landroid/app/Activity;

    const v1, 0x502000a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lyi/app/BaiduAppTitle;->mTitleRoot:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mActivity:Landroid/app/Activity;

    const v1, 0x502000d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lyi/app/BaiduAppTitle;->mTitleCorner:Landroid/widget/ImageView;

    .line 95
    new-instance v7, Landroid/content/ComponentName;

    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lyi/app/BaiduAppTitle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v7, componentName:Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 98
    .local v6, activityInfo:Landroid/content/pm/ActivityInfo;
    :try_start_0
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 103
    :goto_1
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mleftBtn:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 104
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mleftBtn:Landroid/widget/Button;

    new-instance v1, Lyi/app/BaiduAppTitle$1;

    invoke-direct {v1, p0}, Lyi/app/BaiduAppTitle$1;-><init>(Lyi/app/BaiduAppTitle;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    :cond_3
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mRightBtn:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 120
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mRightBtn:Landroid/widget/Button;

    new-instance v1, Lyi/app/BaiduAppTitle$2;

    invoke-direct {v1, p0}, Lyi/app/BaiduAppTitle$2;-><init>(Lyi/app/BaiduAppTitle;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    :cond_4
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mleftBtn:Landroid/widget/Button;

    if-eqz v0, :cond_5

    .line 135
    iget-object v1, p0, Lyi/app/BaiduAppTitle;->mleftBtn:Landroid/widget/Button;

    move-object v0, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lyi/app/BaiduAppTitle;->setLabelPaddingDip(Landroid/view/View;IIII)V

    .line 136
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mleftBtn:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 138
    :cond_5
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mRightBtn:Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 139
    iget-object v1, p0, Lyi/app/BaiduAppTitle;->mRightBtn:Landroid/widget/Button;

    move-object v0, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lyi/app/BaiduAppTitle;->setLabelPaddingDip(Landroid/view/View;IIII)V

    .line 140
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mRightBtn:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 143
    :cond_6
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mTitleLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mTitleLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    if-eqz v6, :cond_1

    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 146
    const-string v0, "BaiduAppTitle"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "BaiduAppTitle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activityInfo.label "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lyi/app/BaiduAppTitle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_7
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyi/app/BaiduAppTitle;->setYiTitleCenterLabel(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 99
    :catch_0
    move-exception v8

    .line 100
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "BaiduAppTitle"

    const-string v1, "ComponentName params null"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public final installYiAppTitle()V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lyi/app/BaiduAppTitle;->installRiceAppTitle()V

    .line 81
    return-void
.end method

.method public setBtnGrpStyle(Z)V
    .locals 0
    .parameter "isBtnGrp"

    .prologue
    .line 159
    iput-boolean p1, p0, Lyi/app/BaiduAppTitle;->useBtnGrpTitle:Z

    .line 160
    return-void
.end method

.method public setOnLeftClickedListener(Lyi/app/BaiduAppTitle$OnLeftClickedListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 218
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mleftBtn:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_0
    iput-object p1, p0, Lyi/app/BaiduAppTitle;->mOnLeftClickedListener:Lyi/app/BaiduAppTitle$OnLeftClickedListener;

    goto :goto_0
.end method

.method public setOnLeftClickedListener(Lyi/app/BaiduAppTitle$OnYiLeftClickedListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 225
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mleftBtn:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 228
    :cond_0
    iput-object p1, p0, Lyi/app/BaiduAppTitle;->mOnYiLeftClickedListener:Lyi/app/BaiduAppTitle$OnYiLeftClickedListener;

    goto :goto_0
.end method

.method public setOnRightClickedListener(Lyi/app/BaiduAppTitle$OnRightClickedListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 238
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mRightBtn:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 241
    :cond_0
    iput-object p1, p0, Lyi/app/BaiduAppTitle;->mOnRightClickedListener:Lyi/app/BaiduAppTitle$OnRightClickedListener;

    goto :goto_0
.end method

.method public setOnRightClickedListener(Lyi/app/BaiduAppTitle$OnYiRightClickedListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 251
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mRightBtn:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_0
    iput-object p1, p0, Lyi/app/BaiduAppTitle;->mOnYiRightClickedListener:Lyi/app/BaiduAppTitle$OnYiRightClickedListener;

    goto :goto_0
.end method

.method public final setRiceTitleCenterLabel(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "label"

    .prologue
    .line 343
    const-string v0, "BaiduAppTitle"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BaiduAppTitle"

    const-string v1, "setRiceTitleCenterLabel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mTitleLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mTitleLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    :cond_1
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 348
    return-void
.end method

.method public final setRiceTitleLeftButtonEnable(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 455
    const-string v0, "BaiduAppTitle"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BaiduAppTitle"

    const-string v1, "setRiceTitleLeftButtonEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mleftBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mleftBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 459
    :cond_1
    return-void
.end method

.method public final setRiceTitleLeftLabel(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "label"

    .prologue
    .line 277
    const-string v0, "BaiduAppTitle"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BaiduAppTitle"

    const-string v1, "setRiceTitleLeftLabel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mleftBtn:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 288
    :cond_1
    :goto_0
    return-void

    .line 284
    :cond_2
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mleftBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mleftBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mleftBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public final setRiceTitleRightButtonEnable(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 481
    const-string v0, "BaiduAppTitle"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BaiduAppTitle"

    const-string v1, "setRiceTitleLeftButtonEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_0
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mRightBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 483
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mRightBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 485
    :cond_1
    return-void
.end method

.method public final setRiceTitleRightLabel(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "label"

    .prologue
    .line 310
    const-string v0, "BaiduAppTitle"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BaiduAppTitle"

    const-string v1, "setRiceTitleRightLabel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mRightBtn:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 321
    :cond_1
    :goto_0
    return-void

    .line 317
    :cond_2
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mRightBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mRightBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mRightBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRiceTitleVisibility(I)V
    .locals 6
    .parameter "visibility"

    .prologue
    .line 181
    iget-object v4, p0, Lyi/app/BaiduAppTitle;->mActivity:Landroid/app/Activity;

    const v5, 0x502000a

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 182
    .local v3, top:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 183
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 184
    .local v2, title_container:Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 185
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 187
    :cond_0
    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    .end local v2           #title_container:Landroid/view/ViewGroup;
    :cond_1
    iget-object v4, p0, Lyi/app/BaiduAppTitle;->mActivity:Landroid/app/Activity;

    const v5, #id@title#t

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 191
    .local v1, text:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 192
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    :cond_2
    iget-object v4, p0, Lyi/app/BaiduAppTitle;->mActivity:Landroid/app/Activity;

    const v5, 0x502000d

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 196
    .local v0, corner:Landroid/view/View;
    if-eqz v0, :cond_3

    .line 197
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    :cond_3
    return-void
.end method

.method public setTitleBackground(II)V
    .locals 1
    .parameter "rootResId"
    .parameter "cornerResId"

    .prologue
    .line 375
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mTitleRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mTitleRoot:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 379
    :cond_0
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mTitleCorner:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mTitleCorner:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 382
    :cond_1
    return-void
.end method

.method public setTitleBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "root"
    .parameter "corner"

    .prologue
    .line 358
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mTitleRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mTitleRoot:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    :cond_0
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mTitleCorner:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lyi/app/BaiduAppTitle;->mTitleCorner:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    :cond_1
    return-void
.end method

.method public final setYiTitleCenterLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 332
    invoke-virtual {p0, p1}, Lyi/app/BaiduAppTitle;->setRiceTitleCenterLabel(Ljava/lang/CharSequence;)V

    .line 333
    return-void
.end method

.method public final setYiTitleLeftButtonEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 444
    invoke-virtual {p0, p1}, Lyi/app/BaiduAppTitle;->setRiceTitleLeftButtonEnable(Z)V

    .line 445
    return-void
.end method

.method public final setYiTitleLeftLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lyi/app/BaiduAppTitle;->setRiceTitleLeftLabel(Ljava/lang/CharSequence;)V

    .line 267
    return-void
.end method

.method public final setYiTitleRightButtonEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 470
    invoke-virtual {p0, p1}, Lyi/app/BaiduAppTitle;->setRiceTitleRightButtonEnable(Z)V

    .line 471
    return-void
.end method

.method public final setYiTitleRightLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lyi/app/BaiduAppTitle;->setRiceTitleRightLabel(Ljava/lang/CharSequence;)V

    .line 300
    return-void
.end method

.method public setYiTitleVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lyi/app/BaiduAppTitle;->setRiceTitleVisibility(I)V

    .line 171
    return-void
.end method
