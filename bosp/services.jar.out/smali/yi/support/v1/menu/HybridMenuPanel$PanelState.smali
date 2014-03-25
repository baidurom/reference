.class Lyi/support/v1/menu/HybridMenuPanel$PanelState;
.super Ljava/lang/Object;
.source "HybridMenuPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/menu/HybridMenuPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PanelState"
.end annotation


# instance fields
.field protected mIsOpened:Z

.field protected mIsTransitioning:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 0
    .parameter "opened"
    .parameter "transitioning"

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-boolean p1, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelState;->mIsOpened:Z

    .line 305
    iput-boolean p2, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelState;->mIsTransitioning:Z

    .line 306
    return-void
.end method


# virtual methods
.method public isOpenFinished()Z
    .locals 1

    .prologue
    .line 317
    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenuPanel$PanelState;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenuPanel$PanelState;->isTransitioning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelState;->mIsOpened:Z

    return v0
.end method

.method public isTransitioning()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelState;->mIsTransitioning:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 321
    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenuPanel$PanelState;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenuPanel$PanelState;->isTransitioning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 325
    iput-boolean v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelState;->mIsOpened:Z

    .line 326
    iput-boolean v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelState;->mIsTransitioning:Z

    .line 327
    return-void
.end method
