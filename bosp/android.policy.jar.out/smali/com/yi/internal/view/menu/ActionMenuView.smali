.class public Lcom/yi/internal/view/menu/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/yi/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/yi/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yi/internal/view/menu/ActionMenuView$3;,
        Lcom/yi/internal/view/menu/ActionMenuView$Motion;
    }
.end annotation


# instance fields
.field private mFadeCallback:Ljava/lang/Runnable;

.field private mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

.field private mMotion:Lcom/yi/internal/view/menu/ActionMenuView$Motion;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yi/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    sget-object v0, Lcom/yi/internal/view/menu/ActionMenuView$Motion;->STANDARD:Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    iput-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuView;->mMotion:Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/yi/internal/view/menu/ActionMenuView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/yi/internal/view/menu/ActionMenuView;->onFadeEnd()V

    return-void
.end method

.method private clearAllAnimation()V
    .locals 3

    .prologue
    .line 169
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 170
    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 171
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    .end local v1           #view:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/ActionMenuView;->clearAnimation()V

    .line 175
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/ActionMenuView;->clearDisappearingChildren()V

    .line 176
    return-void
.end method

.method private doFade(F)V
    .locals 9
    .parameter "percent"

    .prologue
    const-wide/16 v4, 0x0

    .line 148
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    .line 150
    .local v7, middle:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 151
    invoke-virtual {p0, v6}, Lcom/yi/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 152
    .local v8, view:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sub-int v0, v7, v0

    int-to-float v0, v0

    mul-float v1, v0, p1

    .line 153
    .local v1, value:F
    new-instance v0, Lyi/support/v1/utils/Animatable$Horizontal;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Lyi/support/v1/utils/Animatable$Horizontal;-><init>(FFFJ)V

    invoke-virtual {v8, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 150
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 156
    .end local v1           #value:F
    .end local v8           #view:Landroid/view/View;
    :cond_0
    const/high16 v0, 0x3f80

    sub-float v1, v0, p1

    .line 157
    .restart local v1       #value:F
    new-instance v0, Lyi/support/v1/utils/Animatable$Alpha;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Lyi/support/v1/utils/Animatable$Alpha;-><init>(FFFJ)V

    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/ActionMenuView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 158
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/ActionMenuView;->clearDisappearingChildren()V

    .line 159
    return-void
.end method

.method private onFadeEnd()V
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/yi/internal/view/menu/ActionMenuView$Motion;->STANDARD:Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    iput-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuView;->mMotion:Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    .line 130
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuView;->mFadeCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuView;->mFadeCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuView;->mFadeCallback:Ljava/lang/Runnable;

    .line 134
    :cond_0
    return-void
.end method


# virtual methods
.method public fade(F)V
    .locals 2
    .parameter "percent"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuView;->mMotion:Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    sget-object v1, Lcom/yi/internal/view/menu/ActionMenuView$Motion;->STANDARD:Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    if-ne v0, v1, :cond_0

    .line 143
    invoke-direct {p0, p1}, Lcom/yi/internal/view/menu/ActionMenuView;->doFade(F)V

    .line 145
    :cond_0
    return-void
.end method

.method public fadeIn()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/ActionMenuView;->fadeIn(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method

.method public fadeIn(Ljava/lang/Runnable;)V
    .locals 14
    .parameter "callback"

    .prologue
    .line 67
    sget-object v0, Lcom/yi/internal/view/menu/ActionMenuView$Motion;->FADE_IN:Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    iput-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuView;->mMotion:Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    .line 68
    iput-object p1, p0, Lcom/yi/internal/view/menu/ActionMenuView;->mFadeCallback:Ljava/lang/Runnable;

    .line 70
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v0

    div-int/lit8 v12, v0, 0x2

    .line 71
    .local v12, middle:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v0

    if-ge v11, v0, :cond_1

    .line 72
    invoke-virtual {p0, v11}, Lcom/yi/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 73
    .local v13, view:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sub-int v0, v12, v0

    int-to-float v1, v0

    .line 74
    .local v1, from:F
    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {v13, v1}, Lyi/support/v1/utils/Animatable;->getCurrent(Landroid/view/View;F)F

    move-result v3

    .line 76
    .local v3, current:F
    new-instance v0, Lyi/support/v1/utils/Animatable$Horizontal;

    const/4 v2, 0x0

    const-wide/16 v4, 0x96

    invoke-direct/range {v0 .. v5}, Lyi/support/v1/utils/Animatable$Horizontal;-><init>(FFFJ)V

    invoke-virtual {v13, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 71
    .end local v3           #current:F
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v13}, Landroid/view/View;->clearAnimation()V

    goto :goto_1

    .line 83
    .end local v1           #from:F
    .end local v13           #view:Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lyi/support/v1/utils/Animatable;->getCurrent(Landroid/view/View;F)F

    move-result v3

    .line 84
    .restart local v3       #current:F
    new-instance v4, Lcom/yi/internal/view/menu/ActionMenuView$1;

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    const-wide/16 v9, 0x96

    move-object v5, p0

    move v8, v3

    invoke-direct/range {v4 .. v10}, Lcom/yi/internal/view/menu/ActionMenuView$1;-><init>(Lcom/yi/internal/view/menu/ActionMenuView;FFFJ)V

    invoke-virtual {p0, v4}, Lcom/yi/internal/view/menu/ActionMenuView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 92
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/ActionMenuView;->clearDisappearingChildren()V

    .line 93
    return-void
.end method

.method public fadeOut()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/ActionMenuView;->fadeOut(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method public fadeOut(Ljava/lang/Runnable;)V
    .locals 14
    .parameter "callback"

    .prologue
    .line 100
    sget-object v0, Lcom/yi/internal/view/menu/ActionMenuView$Motion;->FADE_OUT:Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    iput-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuView;->mMotion:Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    .line 101
    iput-object p1, p0, Lcom/yi/internal/view/menu/ActionMenuView;->mFadeCallback:Ljava/lang/Runnable;

    .line 103
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v0

    div-int/lit8 v12, v0, 0x2

    .line 104
    .local v12, middle:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v0

    if-ge v11, v0, :cond_1

    .line 105
    invoke-virtual {p0, v11}, Lcom/yi/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 106
    .local v13, view:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int v0, v12, v0

    int-to-float v2, v0

    .line 107
    .local v2, to:F
    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x0

    invoke-static {v13, v0}, Lyi/support/v1/utils/Animatable;->getCurrent(Landroid/view/View;F)F

    move-result v3

    .line 109
    .local v3, current:F
    new-instance v0, Lyi/support/v1/utils/Animatable$Horizontal;

    const/4 v1, 0x0

    const-wide/16 v4, 0x96

    invoke-direct/range {v0 .. v5}, Lyi/support/v1/utils/Animatable$Horizontal;-><init>(FFFJ)V

    invoke-virtual {v13, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 104
    .end local v3           #current:F
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v13}, Landroid/view/View;->clearAnimation()V

    goto :goto_1

    .line 116
    .end local v2           #to:F
    .end local v13           #view:Landroid/view/View;
    :cond_1
    const/high16 v0, 0x3f80

    invoke-static {p0, v0}, Lyi/support/v1/utils/Animatable;->getCurrent(Landroid/view/View;F)F

    move-result v3

    .line 117
    .restart local v3       #current:F
    new-instance v4, Lcom/yi/internal/view/menu/ActionMenuView$2;

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const-wide/16 v9, 0x96

    move-object v5, p0

    move v8, v3

    invoke-direct/range {v4 .. v10}, Lcom/yi/internal/view/menu/ActionMenuView$2;-><init>(Lcom/yi/internal/view/menu/ActionMenuView;FFFJ)V

    invoke-virtual {p0, v4}, Lcom/yi/internal/view/menu/ActionMenuView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 125
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/ActionMenuView;->clearDisappearingChildren()V

    .line 126
    return-void
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/yi/internal/view/menu/ActionMenuView$Motion;->HIDEN:Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    iput-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuView;->mMotion:Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    .line 138
    const/high16 v0, 0x3f80

    invoke-direct {p0, v0}, Lcom/yi/internal/view/menu/ActionMenuView;->doFade(F)V

    .line 139
    return-void
.end method

.method public initialize(Lcom/yi/internal/view/menu/MenuBuilder;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/yi/internal/view/menu/ActionMenuView;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    .line 36
    return-void
.end method

.method public invokeItem(Lcom/yi/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuView;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/yi/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 46
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 48
    invoke-direct {p0}, Lcom/yi/internal/view/menu/ActionMenuView;->clearAllAnimation()V

    .line 49
    sget-object v0, Lcom/yi/internal/view/menu/ActionMenuView$3;->$SwitchMap$com$yi$internal$view$menu$ActionMenuView$Motion:[I

    iget-object v1, p0, Lcom/yi/internal/view/menu/ActionMenuView;->mMotion:Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    invoke-virtual {v1}, Lcom/yi/internal/view/menu/ActionMenuView$Motion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 60
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuView;->mFadeCallback:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/ActionMenuView;->fadeIn(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 54
    :pswitch_1
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuView;->mFadeCallback:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/ActionMenuView;->fadeOut(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 57
    :pswitch_2
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/ActionMenuView;->hide()V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/yi/internal/view/menu/ActionMenuView$Motion;->STANDARD:Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    iput-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuView;->mMotion:Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuView;->mFadeCallback:Ljava/lang/Runnable;

    .line 165
    invoke-direct {p0}, Lcom/yi/internal/view/menu/ActionMenuView;->clearAllAnimation()V

    .line 166
    return-void
.end method
