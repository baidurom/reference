.class public Lcom/baidu/internal/keyguard/slide/CharggingView;
.super Landroid/widget/RelativeLayout;
.source "CharggingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;
    }
.end annotation


# static fields
.field private static final CIRCLE_1:I = 0x1

.field private static final CIRCLE_2:I = 0x2

.field private static final CIRCLE_3:I = 0x3

.field private static final CIRCLE_4:I = 0x4

.field private static final MSG_START_CHARGE_ANIM:I


# instance fields
.field private chargeRunnable:Ljava/lang/Runnable;

.field private circle1:Lcom/baidu/internal/keyguard/slide/CharggingCircle;

.field private circle2:Lcom/baidu/internal/keyguard/slide/CharggingCircle;

.field private circle3:Lcom/baidu/internal/keyguard/slide/CharggingCircle;

.field private circle4:Lcom/baidu/internal/keyguard/slide/CharggingCircle;

.field private lastCircle:I

.field private mChargeProgress:Landroid/view/View;

.field private mChargeTip:Landroid/view/View;

.field private mCircleAnimation1:Landroid/view/animation/Animation;

.field private mCircleAnimation2:Landroid/view/animation/Animation;

.field private mCircleAnimation3:Landroid/view/animation/Animation;

.field private mCircleAnimation4:Landroid/view/animation/Animation;

.field private mHandler:Landroid/os/Handler;

.field private mIsChargging:Z

.field private mIsShowing:Z

.field private mLevel:I

.field private t_chargeAnim:Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/internal/keyguard/slide/CharggingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/internal/keyguard/slide/CharggingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 166
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->mIsChargging:Z

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->mIsShowing:Z

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->lastCircle:I

    .line 39
    new-instance v0, Lcom/baidu/internal/keyguard/slide/CharggingView$1;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/CharggingView$1;-><init>(Lcom/baidu/internal/keyguard/slide/CharggingView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->mHandler:Landroid/os/Handler;

    .line 113
    new-instance v0, Lcom/baidu/internal/keyguard/slide/CharggingView$2;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/CharggingView$2;-><init>(Lcom/baidu/internal/keyguard/slide/CharggingView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->chargeRunnable:Ljava/lang/Runnable;

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/internal/keyguard/slide/CharggingView;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->mCircleAnimation1:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/internal/keyguard/slide/CharggingView;)Lcom/baidu/internal/keyguard/slide/CharggingCircle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->circle1:Lcom/baidu/internal/keyguard/slide/CharggingCircle;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/baidu/internal/keyguard/slide/CharggingView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/internal/keyguard/slide/CharggingView;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->mCircleAnimation2:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/internal/keyguard/slide/CharggingView;)Lcom/baidu/internal/keyguard/slide/CharggingCircle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->circle2:Lcom/baidu/internal/keyguard/slide/CharggingCircle;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/internal/keyguard/slide/CharggingView;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->mCircleAnimation3:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/internal/keyguard/slide/CharggingView;)Lcom/baidu/internal/keyguard/slide/CharggingCircle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->circle3:Lcom/baidu/internal/keyguard/slide/CharggingCircle;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/internal/keyguard/slide/CharggingView;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->mCircleAnimation4:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/internal/keyguard/slide/CharggingView;)Lcom/baidu/internal/keyguard/slide/CharggingCircle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->circle4:Lcom/baidu/internal/keyguard/slide/CharggingCircle;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/internal/keyguard/slide/CharggingView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->lastCircle:I

    return v0
.end method

.method static synthetic access$802(Lcom/baidu/internal/keyguard/slide/CharggingView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->lastCircle:I

    return p1
.end method

.method static synthetic access$900(Lcom/baidu/internal/keyguard/slide/CharggingView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->mIsChargging:Z

    return v0
.end method

.method private initChargeAnimation()V
    .locals 2

    .prologue
    const v1, #anim@charge_anim#t

    .line 188
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/CharggingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->mCircleAnimation1:Landroid/view/animation/Animation;

    .line 189
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/CharggingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->mCircleAnimation2:Landroid/view/animation/Animation;

    .line 190
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/CharggingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->mCircleAnimation3:Landroid/view/animation/Animation;

    .line 191
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/CharggingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->mCircleAnimation4:Landroid/view/animation/Animation;

    .line 192
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->circle1:Lcom/baidu/internal/keyguard/slide/CharggingCircle;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/CharggingCircle;->clearAnimation()V

    .line 227
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->circle2:Lcom/baidu/internal/keyguard/slide/CharggingCircle;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/CharggingCircle;->clearAnimation()V

    .line 228
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->circle3:Lcom/baidu/internal/keyguard/slide/CharggingCircle;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/CharggingCircle;->clearAnimation()V

    .line 229
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->circle4:Lcom/baidu/internal/keyguard/slide/CharggingCircle;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/CharggingCircle;->clearAnimation()V

    .line 230
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/CharggingView;->setVisibility(I)V

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->mIsShowing:Z

    .line 232
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->t_chargeAnim:Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->t_chargeAnim:Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;->cancel()V

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->t_chargeAnim:Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;

    .line 236
    :cond_0
    return-void
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->mIsShowing:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 173
    const v0, #id@chargging_circle_1#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/CharggingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/slide/CharggingCircle;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->circle1:Lcom/baidu/internal/keyguard/slide/CharggingCircle;

    .line 174
    const v0, #id@chargging_circle_2#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/CharggingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/slide/CharggingCircle;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->circle2:Lcom/baidu/internal/keyguard/slide/CharggingCircle;

    .line 175
    const v0, #id@chargging_circle_3#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/CharggingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/slide/CharggingCircle;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->circle3:Lcom/baidu/internal/keyguard/slide/CharggingCircle;

    .line 176
    const v0, #id@chargging_circle_4#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/CharggingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/slide/CharggingCircle;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->circle4:Lcom/baidu/internal/keyguard/slide/CharggingCircle;

    .line 177
    const v0, #id@chargging_tip#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/CharggingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->mChargeTip:Landroid/view/View;

    .line 178
    const v0, #id@chargging_progress#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/CharggingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->mChargeProgress:Landroid/view/View;

    .line 179
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 183
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 184
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/CharggingView;->hide()V

    .line 185
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 244
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->mLevel:I

    .line 245
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->mIsShowing:Z

    if-nez v0, :cond_1

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->mIsShowing:Z

    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/CharggingView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->mCircleAnimation1:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/CharggingView;->initChargeAnimation()V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->t_chargeAnim:Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;

    if-nez v0, :cond_1

    .line 203
    new-instance v0, Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;-><init>(Lcom/baidu/internal/keyguard/slide/CharggingView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->t_chargeAnim:Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;

    .line 204
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->t_chargeAnim:Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;->start()V

    .line 207
    :cond_1
    return-void
.end method

.method public updateLevel(I)V
    .locals 3
    .parameter "level"

    .prologue
    const/4 v2, 0x4

    .line 210
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->mLevel:I

    .line 211
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->mLevel:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->mIsChargging:Z

    .line 213
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->mChargeTip:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/CharggingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #string@chargging#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    :goto_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->mChargeProgress:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->mLevel:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    return-void

    .line 215
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->mIsChargging:Z

    .line 216
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->circle1:Lcom/baidu/internal/keyguard/slide/CharggingCircle;

    invoke-virtual {v0, v2}, Lcom/baidu/internal/keyguard/slide/CharggingCircle;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->circle2:Lcom/baidu/internal/keyguard/slide/CharggingCircle;

    invoke-virtual {v0, v2}, Lcom/baidu/internal/keyguard/slide/CharggingCircle;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->circle3:Lcom/baidu/internal/keyguard/slide/CharggingCircle;

    invoke-virtual {v0, v2}, Lcom/baidu/internal/keyguard/slide/CharggingCircle;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->circle4:Lcom/baidu/internal/keyguard/slide/CharggingCircle;

    invoke-virtual {v0, v2}, Lcom/baidu/internal/keyguard/slide/CharggingCircle;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView;->mChargeTip:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/CharggingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #string@charge_finished#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
