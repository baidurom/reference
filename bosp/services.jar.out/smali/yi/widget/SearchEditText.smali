.class public final Lyi/widget/SearchEditText;
.super Lyi/widget/BaiduEditText;
.source "SearchEditText.java"


# static fields
.field public static final LEFT_ICON_NOMAL:I = 0x0

.field public static final LEFT_ICON_ONLINE:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lyi/widget/SearchEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    const v0, 0x5010062

    invoke-direct {p0, p1, p2, v0}, Lyi/widget/SearchEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lyi/widget/BaiduEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method


# virtual methods
.method public setLeftIcon(I)V
    .locals 3
    .parameter "level"

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-virtual {p0}, Lyi/widget/SearchEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 72
    .local v0, drawables:[Landroid/graphics/drawable/Drawable;
    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    .line 73
    aget-object v1, v0, v2

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 74
    :cond_0
    return-void
.end method
