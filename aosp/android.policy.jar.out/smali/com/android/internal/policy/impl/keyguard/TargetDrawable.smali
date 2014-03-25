.class public Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
.super Ljava/lang/Object;
.source "TargetDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/TargetDrawable$DrawableWithAlpha;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final STATE_ACTIVE:[I = null

.field public static final STATE_FOCUSED:[I = null

.field public static final STATE_INACTIVE:[I = null

.field private static final TAG:Ljava/lang/String; = "TargetDrawable"


# instance fields
.field private mAlpha:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mEnabled:Z

.field private mPositionX:F

.field private mPositionY:F

.field private final mResourceId:I

.field private mScaleX:F

.field private mScaleY:F

.field private mTranslationX:F

.field private mTranslationY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 30
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_ACTIVE:[I

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_FOCUSED:[I

    return-void

    .line 30
    :array_0
    .array-data 0x4
        #attr@state_enabled#a
        #attr@state_active#a
    .end array-data

    .line 32
    :array_1
    .array-data 0x4
        #attr@state_enabled#a
        0x5et 0xfft 0xfet 0xfet
    .end array-data

    .line 34
    :array_2
    .array-data 0x4
        #attr@state_enabled#a
        0x5et 0xfft 0xfet 0xfet
        #attr@state_focused#a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 2
    .parameter "res"
    .parameter "resId"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mTranslationX:F

    .line 39
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mTranslationY:F

    .line 40
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPositionX:F

    .line 41
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPositionY:F

    .line 42
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mScaleX:F

    .line 43
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mScaleY:F

    .line 44
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mAlpha:F

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mEnabled:Z

    .line 80
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mResourceId:I

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/TargetDrawable;)V
    .locals 2
    .parameter "other"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mTranslationX:F

    .line 39
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mTranslationY:F

    .line 40
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPositionX:F

    .line 41
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPositionY:F

    .line 42
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mScaleX:F

    .line 43
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mScaleY:F

    .line 44
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mAlpha:F

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mEnabled:Z

    .line 95
    iget v0, p1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mResourceId:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mResourceId:I

    .line 97
    iget-object v0, p1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 98
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->resizeDrawables()V

    .line 99
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 100
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resizeDrawables()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 161
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v5, :cond_1

    .line 162
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 163
    .local v1, d:Landroid/graphics/drawable/StateListDrawable;
    const/4 v4, 0x0

    .line 164
    .local v4, maxWidth:I
    const/4 v3, 0x0

    .line 165
    .local v3, maxHeight:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 166
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 167
    .local v0, childDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 168
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    .end local v0           #childDrawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v1, v8, v8, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 173
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 174
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 177
    .restart local v0       #childDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v8, v8, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 179
    .end local v0           #childDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #d:Landroid/graphics/drawable/StateListDrawable;
    .end local v2           #i:I
    .end local v3           #maxHeight:I
    .end local v4           #maxWidth:I
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 180
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 183
    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/high16 v3, -0x4100

    .line 250
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mEnabled:Z

    if-nez v0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 254
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mTranslationX:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPositionX:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mTranslationY:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPositionY:F

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 255
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 256
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mScaleX:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mScaleY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 257
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mAlpha:F

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 258
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 259
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mAlpha:F

    return v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mScaleY:F

    mul-float/2addr v0, v1

    :goto_0
    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPositionX()F
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPositionX:F

    return v0
.end method

.method public getPositionY()F
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPositionY:F

    return v0
.end method

.method public getResourceId()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mResourceId:I

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mScaleY:F

    return v0
.end method

.method public getState()[I
    .locals 3

    .prologue
    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, state:[I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 106
    .local v0, d:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v1

    .line 108
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    return-object v1
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mScaleX:F

    mul-float/2addr v0, v1

    :goto_0
    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mTranslationX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mTranslationY:F

    return v0
.end method

.method public hasState([I)Z
    .locals 4
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 122
    .local v0, d:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 124
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    return v1
.end method

.method public isActive()Z
    .locals 5

    .prologue
    .line 133
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 135
    .local v0, d:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v2

    .line 136
    .local v2, states:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 137
    aget v3, v2, v1

    const v4, #attr@state_focused#t

    if-ne v3, v4, :cond_0

    .line 138
    const/4 v3, 0x1

    .line 142
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    .end local v1           #i:I
    .end local v2           #states:[I
    :goto_1
    return v3

    .line 136
    .restart local v0       #d:Landroid/graphics/drawable/StateListDrawable;
    .restart local v1       #i:I
    .restart local v2       #states:[I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    .end local v1           #i:I
    .end local v2           #states:[I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mEnabled:Z

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
    .line 202
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mAlpha:F

    .line 203
    return-void
.end method

.method public setDrawable(Landroid/content/res/Resources;I)V
    .locals 2
    .parameter "res"
    .parameter "resId"

    .prologue
    const/4 v1, 0x0

    .line 87
    if-nez p2, :cond_1

    move-object v0, v1

    .line 89
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 90
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->resizeDrawables()V

    .line 91
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 92
    return-void

    .line 87
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 263
    const-string v0, "TargetDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnable enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mEnabled:Z

    .line 265
    return-void
.end method

.method public setPositionX(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 226
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPositionX:F

    .line 227
    return-void
.end method

.method public setPositionY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 230
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPositionY:F

    .line 231
    return-void
.end method

.method public setScaleX(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 194
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mScaleX:F

    .line 195
    return-void
.end method

.method public setScaleY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 198
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mScaleY:F

    .line 199
    return-void
.end method

.method public setState([I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 112
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 114
    .local v0, d:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 116
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    return-void
.end method

.method public setX(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 186
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mTranslationX:F

    .line 187
    return-void
.end method

.method public setY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 190
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mTranslationY:F

    .line 191
    return-void
.end method
