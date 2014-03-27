.class Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;
.super Ljava/lang/Object;
.source "HybridMenuPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/menu/HybridMenuPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MenuIndicator"
.end annotation


# instance fields
.field private mIndicatorView:Landroid/view/View;

.field private mVisibility:I


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "indicator"

    .prologue
    .line 942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 940
    const/4 v0, 0x0

    iput v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;->mVisibility:I

    .line 943
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;->mIndicatorView:Landroid/view/View;

    .line 944
    return-void
.end method

.method static synthetic access$2800(Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 937
    invoke-direct {p0, p1}, Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;->setVisibility(I)V

    return-void
.end method

.method private isVisible()Z
    .locals 1

    .prologue
    .line 966
    iget v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;->mVisibility:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setVisibility(I)V
    .locals 7
    .parameter "visibility"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v0, 0x0

    .line 947
    iget v4, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;->mVisibility:I

    if-eq v4, p1, :cond_0

    .line 948
    iput p1, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;->mVisibility:I

    .line 950
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v0

    .line 951
    .local v1, from:F
    :goto_0
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 953
    .local v2, to:F
    :goto_1
    iget-object v6, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;->mIndicatorView:Landroid/view/View;

    new-instance v0, Lyi/support/v1/utils/Animatable$Alpha;

    const-wide/16 v4, 0x96

    move v3, v1

    invoke-direct/range {v0 .. v5}, Lyi/support/v1/utils/Animatable$Alpha;-><init>(FFFJ)V

    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 956
    .end local v1           #from:F
    .end local v2           #to:F
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 950
    goto :goto_0

    .restart local v1       #from:F
    :cond_2
    move v2, v0

    .line 951
    goto :goto_1
.end method
