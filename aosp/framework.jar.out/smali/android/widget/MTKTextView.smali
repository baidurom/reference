.class public Landroid/widget/MTKTextView;
.super Landroid/widget/TextView;
.source "MTKTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/MTKTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 98
    const v0, #attr@editTextStyle#t

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/MTKTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/MTKTextView;->setToolbarReadModeFlag(Z)V

    .line 106
    const/high16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/MTKTextView;->setInputType(I)V

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/MTKTextView;->setBackgroundColor(I)V

    .line 108
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroid/widget/MTKTextView;->setMaxLines(I)V

    .line 109
    return-void
.end method

.method private setToolbarReadModeFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 126
    iput-boolean p1, p0, Landroid/widget/MTKTextView;->isEditToolbarReadMode:Z

    .line 127
    return-void
.end method


# virtual methods
.method protected getDefaultEditable()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    return-object v0
.end method
