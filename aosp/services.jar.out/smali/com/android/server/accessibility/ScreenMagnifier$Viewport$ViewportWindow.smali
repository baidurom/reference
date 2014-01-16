.class final Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier$Viewport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewportWindow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow$ContentView;
    }
.end annotation


# static fields
.field private static final WINDOW_TITLE:Ljava/lang/String; = "Magnification Overlay"


# instance fields
.field private mAlpha:I

.field private final mBounds:Landroid/graphics/Rect;

.field private final mDisplayProvider:Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;

.field private mShown:Z

.field private final mWindowContent:Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow$ContentView;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private final mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;)V
    .locals 3
    .parameter "context"
    .parameter "windowManager"
    .parameter "displayProvider"

    .prologue
    const/4 v2, -0x1

    .line 1700
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1695
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mBounds:Landroid/graphics/Rect;

    .line 1701
    iput-object p2, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 1702
    iput-object p3, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mDisplayProvider:Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;

    .line 1704
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1706
    .local v0, contentParams:Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow$ContentView;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow$ContentView;-><init>(Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mWindowContent:Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow$ContentView;

    .line 1707
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mWindowContent:Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow$ContentView;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow$ContentView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1708
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mWindowContent:Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow$ContentView;

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow$ContentView;->setBackgroundColor(I)V

    .line 1710
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7eb

    invoke-direct {v1, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 1712
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x118

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1715
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const-string v2, "Magnification Overlay"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1716
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1717
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p3}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1718
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p3}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1719
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1720
    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1686
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1686
    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mAlpha:I

    return v0
.end method


# virtual methods
.method public getAlpha()I
    .locals 1

    .prologue
    .line 1751
    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mAlpha:I

    return v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 1738
    iget-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mShown:Z

    if-nez v0, :cond_0

    .line 1746
    :goto_0
    return-void

    .line 1741
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mShown:Z

    .line 1742
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mWindowContent:Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow$ContentView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 1723
    iget-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mShown:Z

    return v0
.end method

.method public rotationChanged()V
    .locals 3

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mDisplayProvider:Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1775
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mDisplayProvider:Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1776
    iget-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mShown:Z

    if-eqz v0, :cond_0

    .line 1777
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mWindowContent:Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow$ContentView;

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1779
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 1757
    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mAlpha:I

    if-ne v0, p1, :cond_1

    .line 1767
    :cond_0
    :goto_0
    return-void

    .line 1760
    :cond_1
    iput p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mAlpha:I

    .line 1761
    iget-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mShown:Z

    if-eqz v0, :cond_0

    .line 1762
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mWindowContent:Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow$ContentView;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow$ContentView;->invalidate()V

    goto :goto_0
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1792
    :cond_0
    :goto_0
    return-void

    .line 1785
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1786
    iget-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mShown:Z

    if-eqz v0, :cond_0

    .line 1787
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mWindowContent:Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow$ContentView;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow$ContentView;->invalidate()V

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 1727
    iget-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mShown:Z

    if-eqz v0, :cond_0

    .line 1735
    :goto_0
    return-void

    .line 1730
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mShown:Z

    .line 1731
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mWindowContent:Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow$ContentView;

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
