.class Lyi/support/v1/menu/MenuManager$PanelMenuPresenterCallback;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lcom/yi/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/menu/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanelMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lyi/support/v1/menu/MenuManager;


# direct methods
.method private constructor <init>(Lyi/support/v1/menu/MenuManager;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lyi/support/v1/menu/MenuManager$PanelMenuPresenterCallback;->this$0:Lyi/support/v1/menu/MenuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lyi/support/v1/menu/MenuManager;Lyi/support/v1/menu/MenuManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lyi/support/v1/menu/MenuManager$PanelMenuPresenterCallback;-><init>(Lyi/support/v1/menu/MenuManager;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/yi/internal/view/menu/MenuBuilder;Z)V
    .locals 2
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    .line 267
    iget-object v0, p0, Lyi/support/v1/menu/MenuManager$PanelMenuPresenterCallback;->this$0:Lyi/support/v1/menu/MenuManager;

    iget-object v0, v0, Lyi/support/v1/menu/MenuManager;->mPanelState:Lyi/support/v1/menu/PanelFeatureState;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lyi/support/v1/menu/MenuManager$PanelMenuPresenterCallback;->this$0:Lyi/support/v1/menu/MenuManager;

    iget-object v0, v0, Lyi/support/v1/menu/MenuManager;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 284
    :cond_0
    return-void
.end method

.method public onOpenSubMenu(Lcom/yi/internal/view/menu/MenuBuilder;)Z
    .locals 2
    .parameter "subMenu"

    .prologue
    const/16 v1, 0x8

    .line 288
    if-nez p1, :cond_0

    iget-object v0, p0, Lyi/support/v1/menu/MenuManager$PanelMenuPresenterCallback;->this$0:Lyi/support/v1/menu/MenuManager;

    iget-object v0, v0, Lyi/support/v1/menu/MenuManager;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lyi/support/v1/menu/MenuManager$PanelMenuPresenterCallback;->this$0:Lyi/support/v1/menu/MenuManager;

    iget-object v0, v0, Lyi/support/v1/menu/MenuManager;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lyi/support/v1/menu/MenuManager$PanelMenuPresenterCallback;->this$0:Lyi/support/v1/menu/MenuManager;

    iget-object v0, v0, Lyi/support/v1/menu/MenuManager;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 294
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
