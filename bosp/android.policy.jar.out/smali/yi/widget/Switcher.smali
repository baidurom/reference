.class public Lyi/widget/Switcher;
.super Landroid/widget/SeekBar;
.source "Switcher.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/widget/Switcher$OnSwitcherChangeListener;
    }
.end annotation


# instance fields
.field private final START_TRACKING_OFFSET:I

.field private final THUMB_OFFSET:I

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mInTracking:Z

.field private mInitX:F

.field private mInitY:F

.field private mToggle:Z

.field private mToggleListener:Lyi/widget/Switcher$OnSwitcherChangeListener;

.field private mTouchable:Z

.field private mTouched:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lyi/widget/Switcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    invoke-direct {p0}, Lyi/widget/Switcher;->init()V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 96
    const v0, 0x501002f

    invoke-direct {p0, p1, p2, v0}, Lyi/widget/Switcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    invoke-direct {p0}, Lyi/widget/Switcher;->init()V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    iput v1, p0, Lyi/widget/Switcher;->THUMB_OFFSET:I

    .line 41
    const/16 v0, 0xa

    iput v0, p0, Lyi/widget/Switcher;->START_TRACKING_OFFSET:I

    .line 42
    iput-boolean v1, p0, Lyi/widget/Switcher;->mToggle:Z

    .line 43
    iput-boolean v1, p0, Lyi/widget/Switcher;->mTouched:Z

    .line 44
    iput-boolean v1, p0, Lyi/widget/Switcher;->mInTracking:Z

    .line 45
    iput v2, p0, Lyi/widget/Switcher;->mInitX:F

    .line 46
    iput v2, p0, Lyi/widget/Switcher;->mInitY:F

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyi/widget/Switcher;->mTouchable:Z

    .line 102
    invoke-direct {p0}, Lyi/widget/Switcher;->init()V

    .line 103
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 86
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lyi/widget/Switcher;->setMax(I)V

    .line 87
    invoke-virtual {p0, p0}, Lyi/widget/Switcher;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 88
    return-void
.end method

.method private toggleOnProgress()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/16 v2, 0x32

    const/4 v1, 0x0

    .line 200
    iget-boolean v0, p0, Lyi/widget/Switcher;->mToggle:Z

    if-nez v0, :cond_2

    .line 201
    invoke-virtual {p0}, Lyi/widget/Switcher;->getProgress()I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 202
    invoke-virtual {p0, v3}, Lyi/widget/Switcher;->setProgress(I)V

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyi/widget/Switcher;->mToggle:Z

    .line 204
    iget-object v0, p0, Lyi/widget/Switcher;->mToggleListener:Lyi/widget/Switcher$OnSwitcherChangeListener;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lyi/widget/Switcher;->mToggleListener:Lyi/widget/Switcher$OnSwitcherChangeListener;

    invoke-virtual {p0}, Lyi/widget/Switcher;->isToggled()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Lyi/widget/Switcher$OnSwitcherChangeListener;->onSwitcherToggleChanged(Lyi/widget/Switcher;Z)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-virtual {p0, v1}, Lyi/widget/Switcher;->setProgress(I)V

    goto :goto_0

    .line 212
    :cond_2
    invoke-virtual {p0}, Lyi/widget/Switcher;->getProgress()I

    move-result v0

    if-ge v0, v2, :cond_3

    .line 213
    invoke-virtual {p0, v1}, Lyi/widget/Switcher;->setProgress(I)V

    .line 214
    iput-boolean v1, p0, Lyi/widget/Switcher;->mToggle:Z

    .line 215
    iget-object v0, p0, Lyi/widget/Switcher;->mToggleListener:Lyi/widget/Switcher$OnSwitcherChangeListener;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lyi/widget/Switcher;->mToggleListener:Lyi/widget/Switcher$OnSwitcherChangeListener;

    invoke-virtual {p0}, Lyi/widget/Switcher;->isToggled()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Lyi/widget/Switcher$OnSwitcherChangeListener;->onSwitcherToggleChanged(Lyi/widget/Switcher;Z)V

    goto :goto_0

    .line 219
    :cond_3
    invoke-virtual {p0, v3}, Lyi/widget/Switcher;->setProgress(I)V

    goto :goto_0
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lyi/widget/Switcher;->isToggled()Z

    move-result v0

    return v0
.end method

.method public isToggled()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lyi/widget/Switcher;->mToggle:Z

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 108
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 112
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lyi/widget/Switcher;->mInTracking:Z

    .line 116
    iput-boolean v0, p0, Lyi/widget/Switcher;->mTouched:Z

    .line 117
    iget-object v0, p0, Lyi/widget/Switcher;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 120
    :cond_0
    invoke-direct {p0}, Lyi/widget/Switcher;->toggleOnProgress()V

    .line 121
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 124
    invoke-virtual {p0}, Lyi/widget/Switcher;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v3

    .line 127
    :cond_1
    iget-boolean v2, p0, Lyi/widget/Switcher;->mTouchable:Z

    if-nez v2, :cond_2

    move v3, v4

    .line 128
    goto :goto_0

    .line 131
    :cond_2
    iget-boolean v2, p0, Lyi/widget/Switcher;->mInTracking:Z

    if-eqz v2, :cond_3

    .line 132
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 134
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    .line 135
    iput-boolean v3, p0, Lyi/widget/Switcher;->mTouched:Z

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lyi/widget/Switcher;->mInitX:F

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lyi/widget/Switcher;->mInitY:F

    goto :goto_0

    .line 138
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_5

    .line 139
    iget v2, p0, Lyi/widget/Switcher;->mInitX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v2, v5

    iget v5, p0, Lyi/widget/Switcher;->mInitX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v2, v5

    iget v5, p0, Lyi/widget/Switcher;->mInitY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    iget v6, p0, Lyi/widget/Switcher;->mInitY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v0, v5

    .line 141
    .local v0, dist:F
    const/high16 v2, 0x4120

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 142
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 143
    .local v1, eventNew:Landroid/view/MotionEvent;
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 144
    iget v2, p0, Lyi/widget/Switcher;->mInitX:F

    iget v4, p0, Lyi/widget/Switcher;->mInitY:F

    invoke-virtual {v1, v2, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 145
    invoke-super {p0, v1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 146
    iput-boolean v3, p0, Lyi/widget/Switcher;->mInTracking:Z

    goto :goto_0

    .line 149
    .end local v0           #dist:F
    .end local v1           #eventNew:Landroid/view/MotionEvent;
    :cond_5
    iget-boolean v2, p0, Lyi/widget/Switcher;->mInTracking:Z

    if-nez v2, :cond_6

    .line 150
    iget-boolean v2, p0, Lyi/widget/Switcher;->mToggle:Z

    if-nez v2, :cond_7

    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Lyi/widget/Switcher;->setToggle(Z)V

    .line 151
    iget-object v2, p0, Lyi/widget/Switcher;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_6

    .line 155
    :cond_6
    iput-boolean v4, p0, Lyi/widget/Switcher;->mInTracking:Z

    .line 156
    iput-boolean v4, p0, Lyi/widget/Switcher;->mTouched:Z

    goto :goto_0

    :cond_7
    move v2, v4

    .line 150
    goto :goto_1
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lyi/widget/Switcher;->setToggle(Z)V

    .line 193
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 82
    iput-object p1, p0, Lyi/widget/Switcher;->mClickListener:Landroid/view/View$OnClickListener;

    .line 83
    return-void
.end method

.method public setOnSwitcherChangeListener(Lyi/widget/Switcher$OnSwitcherChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 71
    iput-object p1, p0, Lyi/widget/Switcher;->mToggleListener:Lyi/widget/Switcher$OnSwitcherChangeListener;

    .line 72
    return-void
.end method

.method public setToggle(Z)V
    .locals 3
    .parameter "toggle"

    .prologue
    .line 173
    iget-boolean v0, p0, Lyi/widget/Switcher;->mToggle:Z

    .line 174
    .local v0, prev:Z
    iput-boolean p1, p0, Lyi/widget/Switcher;->mToggle:Z

    .line 175
    iget-boolean v1, p0, Lyi/widget/Switcher;->mToggle:Z

    if-eqz v1, :cond_1

    .line 176
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lyi/widget/Switcher;->setProgress(I)V

    .line 182
    :goto_0
    iget-object v1, p0, Lyi/widget/Switcher;->mToggleListener:Lyi/widget/Switcher$OnSwitcherChangeListener;

    if-eqz v1, :cond_0

    if-eq v0, p1, :cond_0

    .line 183
    iget-object v1, p0, Lyi/widget/Switcher;->mToggleListener:Lyi/widget/Switcher$OnSwitcherChangeListener;

    invoke-virtual {p0}, Lyi/widget/Switcher;->isToggled()Z

    move-result v2

    invoke-interface {v1, p0, v2}, Lyi/widget/Switcher$OnSwitcherChangeListener;->onSwitcherToggleChanged(Lyi/widget/Switcher;Z)V

    .line 185
    :cond_0
    return-void

    .line 179
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lyi/widget/Switcher;->setProgress(I)V

    goto :goto_0
.end method

.method public setTouchable(Z)V
    .locals 0
    .parameter "touchable"

    .prologue
    .line 231
    iput-boolean p1, p0, Lyi/widget/Switcher;->mTouchable:Z

    .line 232
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lyi/widget/Switcher;->isToggled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lyi/widget/Switcher;->setToggle(Z)V

    .line 197
    return-void

    .line 196
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
