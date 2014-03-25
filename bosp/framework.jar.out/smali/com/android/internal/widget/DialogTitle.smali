.class public Lcom/android/internal/widget/DialogTitle;
.super Landroid/widget/TextView;
.source "DialogTitle.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DialogTitle;->setThemeTextColor(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DialogTitle;->setThemeTextColor(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DialogTitle;->setThemeTextColor(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method private setThemeTextColor(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 92
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getThemeMainColor()I

    move-result v1

    .line 93
    .local v1, textColor:I
    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/DialogTitle;->setTextColor(I)V

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v10, 0x0

    .line 56
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 58
    invoke-virtual {p0}, Lcom/android/internal/widget/DialogTitle;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 59
    .local v2, layout:Landroid/text/Layout;
    if-eqz v2, :cond_1

    .line 60
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    .line 61
    .local v3, lineCount:I
    if-lez v3, :cond_1

    .line 62
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v1

    .line 63
    .local v1, ellipsisCount:I
    if-lez v1, :cond_1

    .line 64
    invoke-virtual {p0, v10}, Lcom/android/internal/widget/DialogTitle;->setSingleLine(Z)V

    .line 65
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/DialogTitle;->setMaxLines(I)V

    .line 67
    iget-object v5, p0, Lcom/android/internal/widget/DialogTitle;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    sget-object v7, Landroid/R$styleable;->TextAppearance:[I

    const v8, #attr@textAppearanceMedium#t

    const v9, #style@TextAppearance.Medium#t

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 72
    .local v4, textSize:I
    if-eqz v4, :cond_0

    .line 74
    int-to-float v5, v4

    invoke-virtual {p0, v10, v5}, Lcom/android/internal/widget/DialogTitle;->setTextSize(IF)V

    .line 76
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 82
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #ellipsisCount:I
    .end local v3           #lineCount:I
    .end local v4           #textSize:I
    :cond_1
    return-void
.end method
