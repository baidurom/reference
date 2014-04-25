.class public Lyi/widget/BadgeView;
.super Landroid/widget/TextView;
.source "BadgeView.java"


# static fields
.field private static final DEFAULT_BADGE_COLOR:I = -0x10000

.field private static final DEFAULT_CORNER_RADIUS_DIP:I = 0x8

.field private static final DEFAULT_LR_PADDING_DIP:I = 0x0

.field private static final DEFAULT_MARGIN_DIP:I = 0x0

.field private static final DEFAULT_POSITION:I = 0x5

.field private static final DEFAULT_SIZE:I = 0x18

.field private static final DEFAULT_TEXT_COLOR:I = -0xe77b41

.field private static final DEFAULT_TEXT_SIZE:I = 0xa

.field public static final POSITION_BOTTOM_LEFT:I = 0x3

.field public static final POSITION_BOTTOM_RIGHT:I = 0x4

.field public static final POSITION_LEFT_CENTER:I = 0x5

.field public static final POSITION_TOP_LEFT:I = 0x1

.field public static final POSITION_TOP_RIGHT:I = 0x2

.field private static mFadeIn:Landroid/view/animation/Animation;

.field private static mFadeOut:Landroid/view/animation/Animation;


# instance fields
.field private mBadgeBg:Landroid/graphics/drawable/ShapeDrawable;

.field private mBadgeColor:I

.field private mBadgeMarginBottom:I

.field private mBadgeMarginLeft:I

.field private mBadgeMarginRight:I

.field private mBadgeMarginTop:I

.field private mBadgePosition:I

.field private mIsMatchParent:Z

.field private mIsShown:Z

.field private mTarget:Landroid/view/View;

.field private mTargetResId:I

.field private mTargetTabIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 66
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    const v1, #attr@textViewStyle#t

    invoke-direct {p0, p1, v0, v1}, Lyi/widget/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    const v0, #attr@textViewStyle#t

    invoke-direct {p0, p1, p2, v0}, Lyi/widget/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x0

    .line 82
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lyi/widget/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;II)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;II)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "target"
    .parameter "tabIndex"
    .parameter "targetResId"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lyi/widget/BadgeView;->mIsMatchParent:Z

    .line 87
    invoke-direct {p0, p1, p4, p5, p6}, Lyi/widget/BadgeView;->init(Landroid/content/Context;Landroid/view/View;II)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;II)V
    .locals 7
    .parameter "context"
    .parameter "target"
    .parameter "tabIndex"
    .parameter "targetResId"

    .prologue
    .line 74
    const/4 v2, 0x0

    const v3, #attr@textViewStyle#t

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lyi/widget/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;II)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TabWidget;I)V
    .locals 7
    .parameter "context"
    .parameter "target"
    .parameter "index"

    .prologue
    .line 78
    const/4 v2, 0x0

    const v3, #attr@textViewStyle#t

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lyi/widget/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;II)V

    .line 79
    return-void
.end method

.method private applyLayoutParams()V
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xb

    const/16 v3, 0xa

    const/4 v1, -0x2

    const/16 v2, 0x9

    .line 272
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 275
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lyi/widget/BadgeView;->mBadgePosition:I

    packed-switch v1, :pswitch_data_0

    .line 300
    :goto_0
    iget v1, p0, Lyi/widget/BadgeView;->mBadgeMarginLeft:I

    iget v2, p0, Lyi/widget/BadgeView;->mBadgeMarginTop:I

    iget v3, p0, Lyi/widget/BadgeView;->mBadgeMarginRight:I

    iget v4, p0, Lyi/widget/BadgeView;->mBadgeMarginBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 301
    invoke-virtual {p0, v0}, Lyi/widget/BadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    return-void

    .line 277
    :pswitch_0
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 278
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 281
    :pswitch_1
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 282
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 285
    :pswitch_2
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 286
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 289
    :pswitch_3
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 290
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 293
    :pswitch_4
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 294
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private dipToPixels(I)I
    .locals 5
    .parameter "dip"

    .prologue
    .line 343
    invoke-virtual {p0}, Lyi/widget/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 344
    .local v1, r:Landroid/content/res/Resources;
    const/4 v2, 0x1

    int-to-float v3, p1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 346
    .local v0, px:F
    float-to-int v2, v0

    return v2
.end method

.method private getDefaultBackground()Landroid/graphics/drawable/ShapeDrawable;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v4, 0x8

    .line 257
    invoke-direct {p0, v4}, Lyi/widget/BadgeView;->dipToPixels(I)I

    move-result v2

    .line 258
    .local v2, r:I
    new-array v1, v4, [F

    const/4 v4, 0x0

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x1

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x2

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x3

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x4

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x5

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x6

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x7

    int-to-float v5, v2

    aput v5, v1, v4

    .line 262
    .local v1, outerR:[F
    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v3, v1, v6, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 263
    .local v3, rr:Landroid/graphics/drawable/shapes/RoundRectShape;
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 264
    .local v0, drawable:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    iget v5, p0, Lyi/widget/BadgeView;->mBadgeColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    return-object v0
.end method

.method private hide(ZLandroid/view/animation/Animation;)V
    .locals 1
    .parameter "animate"
    .parameter "anim"

    .prologue
    .line 240
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lyi/widget/BadgeView;->setVisibility(I)V

    .line 241
    if-eqz p1, :cond_0

    .line 242
    invoke-virtual {p0, p2}, Lyi/widget/BadgeView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 244
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lyi/widget/BadgeView;->mIsShown:Z

    .line 245
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/view/View;II)V
    .locals 10
    .parameter "context"
    .parameter "target"
    .parameter "tabIndex"
    .parameter "targetResId"

    .prologue
    const-wide/16 v8, 0xc8

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 92
    iput-object p2, p0, Lyi/widget/BadgeView;->mTarget:Landroid/view/View;

    .line 93
    iput p3, p0, Lyi/widget/BadgeView;->mTargetTabIndex:I

    .line 94
    iput p4, p0, Lyi/widget/BadgeView;->mTargetResId:I

    .line 96
    const/4 v3, 0x5

    iput v3, p0, Lyi/widget/BadgeView;->mBadgePosition:I

    .line 97
    iput v5, p0, Lyi/widget/BadgeView;->mBadgeMarginBottom:I

    iput v5, p0, Lyi/widget/BadgeView;->mBadgeMarginLeft:I

    .line 98
    iput v5, p0, Lyi/widget/BadgeView;->mBadgeMarginTop:I

    .line 99
    invoke-direct {p0, v5}, Lyi/widget/BadgeView;->dipToPixels(I)I

    move-result v3

    iput v3, p0, Lyi/widget/BadgeView;->mBadgeMarginRight:I

    .line 100
    const/high16 v3, -0x1

    iput v3, p0, Lyi/widget/BadgeView;->mBadgeColor:I

    .line 102
    invoke-direct {p0, v5}, Lyi/widget/BadgeView;->dipToPixels(I)I

    move-result v1

    .line 103
    .local v1, padding:I
    invoke-virtual {p0, v1, v5, v1, v5}, Lyi/widget/BadgeView;->setPadding(IIII)V

    .line 104
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v3}, Lyi/widget/BadgeView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 105
    const v3, -0xe77b41

    invoke-virtual {p0, v3}, Lyi/widget/BadgeView;->setTextColor(I)V

    .line 106
    const/4 v3, 0x1

    const/high16 v4, 0x4120

    invoke-virtual {p0, v3, v4}, Lyi/widget/BadgeView;->setTextSize(IF)V

    .line 107
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lyi/widget/BadgeView;->setGravity(I)V

    .line 108
    invoke-virtual {p0}, Lyi/widget/BadgeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x50800b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 109
    .local v0, d:Landroid/graphics/drawable/Drawable;
    const/16 v3, 0x18

    invoke-direct {p0, v3}, Lyi/widget/BadgeView;->dipToPixels(I)I

    move-result v2

    .line 110
    .local v2, size:I
    invoke-virtual {p0, v2}, Lyi/widget/BadgeView;->setMaxHeight(I)V

    .line 111
    invoke-virtual {p0, v0}, Lyi/widget/BadgeView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sput-object v3, Lyi/widget/BadgeView;->mFadeIn:Landroid/view/animation/Animation;

    .line 114
    sget-object v3, Lyi/widget/BadgeView;->mFadeIn:Landroid/view/animation/Animation;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 115
    sget-object v3, Lyi/widget/BadgeView;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v3, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 117
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sput-object v3, Lyi/widget/BadgeView;->mFadeOut:Landroid/view/animation/Animation;

    .line 118
    sget-object v3, Lyi/widget/BadgeView;->mFadeOut:Landroid/view/animation/Animation;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 119
    sget-object v3, Lyi/widget/BadgeView;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v3, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 121
    iput-boolean v5, p0, Lyi/widget/BadgeView;->mIsShown:Z

    .line 122
    iget-object v3, p0, Lyi/widget/BadgeView;->mTarget:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 123
    iget-object v3, p0, Lyi/widget/BadgeView;->mTarget:Landroid/view/View;

    invoke-virtual {p0, v3}, Lyi/widget/BadgeView;->applyTo(Landroid/view/View;)V

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lyi/widget/BadgeView;->show()V

    goto :goto_0
.end method

.method private show(ZLandroid/view/animation/Animation;)V
    .locals 1
    .parameter "animate"
    .parameter "anim"

    .prologue
    .line 224
    invoke-virtual {p0}, Lyi/widget/BadgeView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 225
    iget-object v0, p0, Lyi/widget/BadgeView;->mBadgeBg:Landroid/graphics/drawable/ShapeDrawable;

    if-nez v0, :cond_0

    .line 226
    invoke-direct {p0}, Lyi/widget/BadgeView;->getDefaultBackground()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    iput-object v0, p0, Lyi/widget/BadgeView;->mBadgeBg:Landroid/graphics/drawable/ShapeDrawable;

    .line 228
    :cond_0
    iget-object v0, p0, Lyi/widget/BadgeView;->mBadgeBg:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0, v0}, Lyi/widget/BadgeView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    :cond_1
    invoke-direct {p0}, Lyi/widget/BadgeView;->applyLayoutParams()V

    .line 232
    if-eqz p1, :cond_2

    .line 233
    invoke-virtual {p0, p2}, Lyi/widget/BadgeView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 235
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lyi/widget/BadgeView;->setVisibility(I)V

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyi/widget/BadgeView;->mIsShown:Z

    .line 237
    return-void
.end method

.method private toggle(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animate"
    .parameter "animIn"
    .parameter "animOut"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 248
    iget-boolean v2, p0, Lyi/widget/BadgeView;->mIsShown:Z

    if-eqz v2, :cond_1

    .line 249
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    :goto_0
    invoke-direct {p0, v0, p3}, Lyi/widget/BadgeView;->hide(ZLandroid/view/animation/Animation;)V

    .line 253
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 249
    goto :goto_0

    .line 251
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    :goto_2
    invoke-direct {p0, v0, p2}, Lyi/widget/BadgeView;->show(ZLandroid/view/animation/Animation;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method applyTo(Landroid/view/View;)V
    .locals 10
    .parameter "target"

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x1

    const/4 v8, -0x1

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 133
    .local v3, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 134
    .local v5, parent:Landroid/view/ViewParent;
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lyi/widget/BadgeView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 135
    .local v0, container:Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setDuplicateParentStateEnabled(Z)V

    .line 137
    instance-of v6, p1, Landroid/widget/TabWidget;

    if-eqz v6, :cond_0

    .line 140
    check-cast p1, Landroid/widget/TabWidget;

    .end local p1
    iget v6, p0, Lyi/widget/BadgeView;->mTargetTabIndex:I

    invoke-virtual {p1, v6}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object p1

    .line 141
    .restart local p1
    iput-object p1, p0, Lyi/widget/BadgeView;->mTarget:Landroid/view/View;

    move-object v6, p1

    .line 143
    check-cast v6, Landroid/view/ViewGroup;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    invoke-virtual {p0, v9}, Lyi/widget/BadgeView;->setVisibility(I)V

    .line 147
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 170
    :goto_0
    return-void

    :cond_0
    move-object v1, v5

    .line 152
    check-cast v1, Landroid/view/ViewGroup;

    .line 153
    .local v1, group:Landroid/view/ViewGroup;
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 155
    .local v2, index:I
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 156
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 158
    invoke-virtual {p1, v7}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 159
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 161
    .local v4, lparam:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xd

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 163
    invoke-virtual {p0, v9}, Lyi/widget/BadgeView;->setVisibility(I)V

    .line 164
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 166
    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0
.end method

.method public getBadgeBackgroundColor()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lyi/widget/BadgeView;->mBadgeColor:I

    return v0
.end method

.method public getBadgeMargin()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 323
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lyi/widget/BadgeView;->mBadgeMarginLeft:I

    iget v2, p0, Lyi/widget/BadgeView;->mBadgeMarginTop:I

    iget v3, p0, Lyi/widget/BadgeView;->mBadgeMarginRight:I

    iget v4, p0, Lyi/widget/BadgeView;->mBadgeMarginBottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getBadgePosition()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lyi/widget/BadgeView;->mBadgePosition:I

    return v0
.end method

.method public getTarget()Landroid/view/View;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lyi/widget/BadgeView;->mTarget:Landroid/view/View;

    return-object v0
.end method

.method public getTargetResId()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lyi/widget/BadgeView;->mTargetResId:I

    return v0
.end method

.method public getTargetTabIndex()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lyi/widget/BadgeView;->mTargetTabIndex:I

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 200
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lyi/widget/BadgeView;->hide(ZLandroid/view/animation/Animation;)V

    .line 201
    return-void
.end method

.method public hide(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "anim"

    .prologue
    .line 208
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lyi/widget/BadgeView;->hide(ZLandroid/view/animation/Animation;)V

    .line 209
    return-void
.end method

.method public hide(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 204
    sget-object v0, Lyi/widget/BadgeView;->mFadeOut:Landroid/view/animation/Animation;

    invoke-direct {p0, p1, v0}, Lyi/widget/BadgeView;->hide(ZLandroid/view/animation/Animation;)V

    .line 205
    return-void
.end method

.method public isContainerMatchParent()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lyi/widget/BadgeView;->mIsMatchParent:Z

    return v0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lyi/widget/BadgeView;->mIsShown:Z

    return v0
.end method

.method public setBadgeBackgroundColor(I)V
    .locals 1
    .parameter "badgeColor"

    .prologue
    .line 338
    iput p1, p0, Lyi/widget/BadgeView;->mBadgeColor:I

    .line 339
    invoke-direct {p0}, Lyi/widget/BadgeView;->getDefaultBackground()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    iput-object v0, p0, Lyi/widget/BadgeView;->mBadgeBg:Landroid/graphics/drawable/ShapeDrawable;

    .line 340
    return-void
.end method

.method public setBadgeMargin(IIII)V
    .locals 0
    .parameter "leftMargin"
    .parameter "topMargin"
    .parameter "rightMargin"
    .parameter "bottomMargin"

    .prologue
    .line 327
    iput p1, p0, Lyi/widget/BadgeView;->mBadgeMarginLeft:I

    .line 328
    iput p2, p0, Lyi/widget/BadgeView;->mBadgeMarginTop:I

    .line 329
    iput p3, p0, Lyi/widget/BadgeView;->mBadgeMarginRight:I

    .line 330
    iput p4, p0, Lyi/widget/BadgeView;->mBadgeMarginBottom:I

    .line 331
    return-void
.end method

.method public setBadgePosition(I)V
    .locals 0
    .parameter "layoutPosition"

    .prologue
    .line 319
    iput p1, p0, Lyi/widget/BadgeView;->mBadgePosition:I

    .line 320
    return-void
.end method

.method public setContainerMatchParent(Z)V
    .locals 3
    .parameter "isMatchParent"

    .prologue
    const/4 v2, -0x1

    .line 173
    iput-boolean p1, p0, Lyi/widget/BadgeView;->mIsMatchParent:Z

    .line 174
    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p0}, Lyi/widget/BadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 176
    .local v1, vp:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 177
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 178
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 179
    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    .line 181
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v1           #vp:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 188
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lyi/widget/BadgeView;->show(ZLandroid/view/animation/Animation;)V

    .line 189
    return-void
.end method

.method public show(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "anim"

    .prologue
    .line 196
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lyi/widget/BadgeView;->show(ZLandroid/view/animation/Animation;)V

    .line 197
    return-void
.end method

.method public show(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 192
    sget-object v0, Lyi/widget/BadgeView;->mFadeIn:Landroid/view/animation/Animation;

    invoke-direct {p0, p1, v0}, Lyi/widget/BadgeView;->show(ZLandroid/view/animation/Animation;)V

    .line 193
    return-void
.end method

.method public toggle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lyi/widget/BadgeView;->toggle(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 213
    return-void
.end method

.method public toggle(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animIn"
    .parameter "animOut"

    .prologue
    .line 220
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lyi/widget/BadgeView;->toggle(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 221
    return-void
.end method

.method public toggle(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 216
    sget-object v0, Lyi/widget/BadgeView;->mFadeIn:Landroid/view/animation/Animation;

    sget-object v1, Lyi/widget/BadgeView;->mFadeOut:Landroid/view/animation/Animation;

    invoke-direct {p0, p1, v0, v1}, Lyi/widget/BadgeView;->toggle(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 217
    return-void
.end method
