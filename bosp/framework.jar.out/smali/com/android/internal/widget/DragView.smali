.class public Lcom/android/internal/widget/DragView;
.super Landroid/widget/ImageView;
.source "DragView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public static clamp(III)I
    .locals 0
    .parameter "val"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 33
    if-ge p0, p1, :cond_0

    .line 38
    .end local p1
    :goto_0
    return p1

    .line 35
    .restart local p1
    :cond_0
    if-lt p0, p2, :cond_1

    .line 36
    add-int/lit8 p1, p2, -0x1

    goto :goto_0

    :cond_1
    move p1, p0

    .line 38
    goto :goto_0
.end method


# virtual methods
.method public recordScreenSize(Landroid/util/DisplayMetrics;)V
    .locals 2
    .parameter "dm"

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/android/internal/widget/DragView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 30
    return-void
.end method
