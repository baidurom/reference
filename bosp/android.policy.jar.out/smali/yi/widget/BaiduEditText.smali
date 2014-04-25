.class public Lyi/widget/BaiduEditText;
.super Landroid/widget/EditText;
.source "BaiduEditText.java"


# static fields
.field private static final VERY_WIDE:I = 0x4000


# instance fields
.field private mClean:Z

.field private mDelete:Landroid/graphics/drawable/Drawable;

.field private mDeleteIcon:I

.field private mIconHeight:I

.field private mIconWidth:I

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lyi/widget/BaiduEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    const v0, 0x501005c

    invoke-direct {p0, p1, p2, v0}, Lyi/widget/BaiduEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const v0, 0x5080167

    iput v0, p0, Lyi/widget/BaiduEditText;->mDeleteIcon:I

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lyi/widget/BaiduEditText;->mClean:Z

    .line 234
    new-instance v0, Lyi/widget/BaiduEditText$1;

    invoke-direct {v0, p0}, Lyi/widget/BaiduEditText$1;-><init>(Lyi/widget/BaiduEditText;)V

    iput-object v0, p0, Lyi/widget/BaiduEditText;->mTextWatcher:Landroid/text/TextWatcher;

    .line 67
    invoke-direct {p0}, Lyi/widget/BaiduEditText;->init()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lyi/widget/BaiduEditText;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lyi/widget/BaiduEditText;->updateDeleteIcon()V

    return-void
.end method

.method private doDelete()V
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lyi/widget/BaiduEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 111
    .local v0, editable:Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 114
    :cond_0
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 71
    invoke-virtual {p0, v0}, Lyi/widget/BaiduEditText;->setSingleLine(Z)V

    .line 74
    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/high16 v3, 0x4680

    invoke-virtual {p0}, Lyi/widget/BaiduEditText;->getTextSize()F

    move-result v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lyi/widget/BaiduEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 76
    iget-object v0, p0, Lyi/widget/BaiduEditText;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lyi/widget/BaiduEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 78
    iget-object v0, p0, Lyi/widget/BaiduEditText;->mDelete:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lyi/widget/BaiduEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lyi/widget/BaiduEditText;->mDeleteIcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lyi/widget/BaiduEditText;->mDelete:Landroid/graphics/drawable/Drawable;

    .line 81
    :cond_0
    iget-object v0, p0, Lyi/widget/BaiduEditText;->mDelete:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lyi/widget/BaiduEditText;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 82
    invoke-direct {p0}, Lyi/widget/BaiduEditText;->updateDeleteIcon()V

    .line 83
    return-void
.end method

.method private isEmpty()Z
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lyi/widget/BaiduEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isOnDelete(II)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 117
    invoke-virtual {p0}, Lyi/widget/BaiduEditText;->requestFocus()Z

    .line 118
    invoke-virtual {p0}, Lyi/widget/BaiduEditText;->getWidth()I

    move-result v5

    iget v6, p0, Lyi/widget/BaiduEditText;->mIconWidth:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lyi/widget/BaiduEditText;->getPaddingRight()I

    move-result v6

    sub-int v1, v5, v6

    .line 119
    .local v1, left:I
    iget v5, p0, Lyi/widget/BaiduEditText;->mIconWidth:I

    add-int v3, v1, v5

    .line 120
    .local v3, right:I
    invoke-virtual {p0}, Lyi/widget/BaiduEditText;->getHeight()I

    move-result v5

    iget v6, p0, Lyi/widget/BaiduEditText;->mIconHeight:I

    sub-int/2addr v5, v6

    div-int/lit8 v4, v5, 0x2

    .line 121
    .local v4, top:I
    iget v5, p0, Lyi/widget/BaiduEditText;->mIconHeight:I

    add-int v0, v4, v5

    .line 122
    .local v0, bottom:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 124
    .local v2, rect:Landroid/graphics/Rect;
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 125
    const/4 v5, 0x1

    .line 127
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setIconLevel(I)Z
    .locals 2
    .parameter "level"

    .prologue
    const/4 v0, 0x0

    .line 161
    iget-object v1, p0, Lyi/widget/BaiduEditText;->mDelete:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 165
    :cond_1
    iget-object v1, p0, Lyi/widget/BaiduEditText;->mDelete:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 169
    iget-object v0, p0, Lyi/widget/BaiduEditText;->mDelete:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 170
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateDeleteIcon()V
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Lyi/widget/BaiduEditText;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lyi/widget/BaiduEditText;->setIconLevel(I)Z

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lyi/widget/BaiduEditText;->setIconLevel(I)Z

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 185
    invoke-virtual {p0}, Lyi/widget/BaiduEditText;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 186
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 227
    :cond_0
    :goto_0
    return v3

    .line 189
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 190
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    .line 191
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    .line 193
    .local v2, y:I
    invoke-direct {p0, v1, v2}, Lyi/widget/BaiduEditText;->isOnDelete(II)Z

    move-result v4

    if-nez v4, :cond_3

    .line 194
    iput-boolean v5, p0, Lyi/widget/BaiduEditText;->mClean:Z

    .line 195
    iget-object v4, p0, Lyi/widget/BaiduEditText;->mDelete:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 196
    invoke-direct {p0, v5}, Lyi/widget/BaiduEditText;->setIconLevel(I)Z

    .line 197
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 200
    :cond_3
    invoke-direct {p0}, Lyi/widget/BaiduEditText;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 201
    iput-boolean v5, p0, Lyi/widget/BaiduEditText;->mClean:Z

    .line 202
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lyi/widget/BaiduEditText;->setIconLevel(I)Z

    .line 203
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 206
    :cond_4
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 209
    :pswitch_0
    iput-boolean v3, p0, Lyi/widget/BaiduEditText;->mClean:Z

    .line 210
    invoke-direct {p0, v3}, Lyi/widget/BaiduEditText;->setIconLevel(I)Z

    goto :goto_0

    .line 214
    :pswitch_1
    iget-boolean v4, p0, Lyi/widget/BaiduEditText;->mClean:Z

    if-eqz v4, :cond_0

    .line 215
    iput-boolean v5, p0, Lyi/widget/BaiduEditText;->mClean:Z

    .line 216
    invoke-direct {p0, v5}, Lyi/widget/BaiduEditText;->setIconLevel(I)Z

    .line 217
    invoke-direct {p0}, Lyi/widget/BaiduEditText;->doDelete()V

    goto :goto_0

    .line 222
    :pswitch_2
    iput-boolean v5, p0, Lyi/widget/BaiduEditText;->mClean:Z

    .line 223
    invoke-direct {p0, v5}, Lyi/widget/BaiduEditText;->setIconLevel(I)Z

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 176
    invoke-direct {p0}, Lyi/widget/BaiduEditText;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lyi/widget/BaiduEditText;->setIconLevel(I)Z

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0}, Lyi/widget/BaiduEditText;->setIconLevel(I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method

.method protected setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter "icon"

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 132
    invoke-virtual {p0}, Lyi/widget/BaiduEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 133
    .local v0, drawables:[Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lyi/widget/BaiduEditText;->mIconWidth:I

    .line 135
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lyi/widget/BaiduEditText;->mIconHeight:I

    .line 136
    iget v1, p0, Lyi/widget/BaiduEditText;->mIconWidth:I

    iget v2, p0, Lyi/widget/BaiduEditText;->mIconHeight:I

    invoke-virtual {p1, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 137
    aget-object v1, v0, v4

    invoke-virtual {p0, v1, v3, p1, v3}, Lyi/widget/BaiduEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 138
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lyi/widget/BaiduEditText;->setGravity(I)V

    .line 139
    invoke-virtual {p0}, Lyi/widget/BaiduEditText;->requestLayout()V

    .line 145
    :goto_0
    return-void

    .line 141
    :cond_0
    iput v1, p0, Lyi/widget/BaiduEditText;->mIconWidth:I

    .line 142
    iput v1, p0, Lyi/widget/BaiduEditText;->mIconHeight:I

    .line 143
    aget-object v1, v0, v4

    invoke-virtual {p0, v1, v3, v3, v3}, Lyi/widget/BaiduEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
