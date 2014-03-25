.class public Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
.super Ljava/lang/Object;
.source "SmartTargetDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable$DrawableWithAlpha;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final STATE_ACTIVE:[I = null

.field public static final STATE_FOCUSED:[I = null

.field public static final STATE_INACTIVE:[I = null

.field public static final STATE_UNFOCUSED:[I = null

.field private static final TAG:Ljava/lang/String; = "SmartTargetDrawable"


# instance fields
.field private mAlpha:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mScaleX:F

.field private mScaleY:F

.field private mTranslationX:F

.field private mTranslationY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 14
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->STATE_ACTIVE:[I

    .line 16
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->STATE_INACTIVE:[I

    .line 18
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->STATE_FOCUSED:[I

    .line 20
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->STATE_UNFOCUSED:[I

    return-void

    .line 14
    :array_0
    .array-data 0x4
        #attr@state_enabled#a
        #attr@state_active#a
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    .line 16
    :array_1
    .array-data 0x4
        #attr@state_enabled#a
        0x5et 0xfft 0xfet 0xfet
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    .line 18
    :array_2
    .array-data 0x4
        #attr@state_enabled#a
        0x5et 0xfft 0xfet 0xfet
        #attr@state_focused#a
    .end array-data

    .line 20
    :array_3
    .array-data 0x4
        #attr@state_enabled#a
        0x5et 0xfft 0xfet 0xfet
        0x64t 0xfft 0xfet 0xfet
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 1
    .parameter "res"
    .parameter "resId"

    .prologue
    .line 60
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    .line 61
    return-void

    .line 60
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "res"
    .parameter "drawable"

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v1, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mTranslationX:F

    .line 23
    iput v1, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mTranslationY:F

    .line 24
    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mScaleX:F

    .line 25
    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mScaleY:F

    .line 26
    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mAlpha:F

    .line 65
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 66
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->resizeDrawables()V

    .line 67
    sget-object v0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setState([I)V

    .line 68
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resizeDrawables()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 120
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v5, :cond_1

    .line 121
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 122
    .local v1, d:Landroid/graphics/drawable/StateListDrawable;
    const/4 v4, 0x0

    .line 123
    .local v4, maxWidth:I
    const/4 v3, 0x0

    .line 124
    .local v3, maxHeight:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 125
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 126
    .local v0, childDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 127
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v0           #childDrawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v1, v8, v8, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 132
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 133
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 136
    .restart local v0       #childDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v8, v8, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 138
    .end local v0           #childDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #d:Landroid/graphics/drawable/StateListDrawable;
    .end local v2           #i:I
    .end local v3           #maxHeight:I
    .end local v4           #maxWidth:I
    :cond_1
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 139
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 142
    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/high16 v2, -0x4100

    .line 199
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 202
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 203
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mTranslationX:F

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mTranslationY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 204
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mScaleX:F

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mScaleY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 205
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 206
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mAlpha:F

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 207
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 208
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mAlpha:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mScaleY:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mTranslationX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mTranslationY:F

    return v0
.end method

.method public hasState([I)Z
    .locals 4
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_0

    .line 79
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 81
    .local v0, d:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 83
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    return v1
.end method

.method public isActive()Z
    .locals 5

    .prologue
    .line 92
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_1

    .line 93
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 94
    .local v0, d:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v2

    .line 95
    .local v2, states:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 96
    aget v3, v2, v1

    const v4, #attr@state_focused#t

    if-ne v3, v4, :cond_0

    .line 97
    const/4 v3, 0x1

    .line 101
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    .end local v1           #i:I
    .end local v2           #states:[I
    :goto_1
    return v3

    .line 95
    .restart local v0       #d:Landroid/graphics/drawable/StateListDrawable;
    .restart local v1       #i:I
    .restart local v2       #states:[I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    .end local v1           #i:I
    .end local v2           #states:[I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 161
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mAlpha:F

    .line 162
    return-void
.end method

.method public setScaleX(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 153
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mScaleX:F

    .line 154
    return-void
.end method

.method public setScaleY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 157
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mScaleY:F

    .line 158
    return-void
.end method

.method public setState([I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 71
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 73
    .local v0, d:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 75
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    return-void
.end method

.method public setWidth(I)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 190
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getWidth()I

    move-result v1

    invoke-virtual {v0, v2, v2, p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 193
    :cond_0
    return-void
.end method

.method public setX(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 145
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mTranslationX:F

    .line 146
    return-void
.end method

.method public setY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 149
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->mTranslationY:F

    .line 150
    return-void
.end method
