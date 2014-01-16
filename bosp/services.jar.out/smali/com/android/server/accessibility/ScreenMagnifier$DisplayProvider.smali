.class Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayProvider"
.end annotation


# instance fields
.field private final mDefaultDisplay:Landroid/view/Display;

.field private final mDefaultDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 2
    .parameter "context"
    .parameter "windowManager"

    .prologue
    .line 1820
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1818
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    .line 1821
    iput-object p2, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;->mWindowManager:Landroid/view/WindowManager;

    .line 1822
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1823
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;->mDefaultDisplay:Landroid/view/Display;

    .line 1824
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1825
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;->updateDisplayInfo()V

    .line 1826
    return-void
.end method

.method private updateDisplayInfo()V
    .locals 2

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;->mDefaultDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1838
    invoke-static {}, Lcom/android/server/accessibility/ScreenMagnifier;->access$4100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Default display is not valid."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 1844
    return-void
.end method

.method public getDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;->mDefaultDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method public onDisplayAdded(I)V
    .locals 0
    .parameter "displayId"

    .prologue
    .line 1849
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0
    .parameter "displayId"

    .prologue
    .line 1858
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;->updateDisplayInfo()V

    .line 1859
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .parameter "displayId"

    .prologue
    .line 1854
    return-void
.end method
