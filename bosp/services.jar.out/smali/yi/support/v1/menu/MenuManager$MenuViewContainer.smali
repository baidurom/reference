.class public Lyi/support/v1/menu/MenuManager$MenuViewContainer;
.super Ljava/lang/Object;
.source "MenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/menu/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuViewContainer"
.end annotation


# instance fields
.field private final mActionMenuView:Landroid/view/ViewGroup;

.field private final mListMenuView:Landroid/view/ViewGroup;

.field final synthetic this$0:Lyi/support/v1/menu/MenuManager;


# direct methods
.method private constructor <init>(Lyi/support/v1/menu/MenuManager;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 37
    iput-object p1, p0, Lyi/support/v1/menu/MenuManager$MenuViewContainer;->this$0:Lyi/support/v1/menu/MenuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lyi/support/v1/menu/MenuManager$MenuViewContainer;->mActionMenuView:Landroid/view/ViewGroup;

    .line 39
    iput-object v0, p0, Lyi/support/v1/menu/MenuManager$MenuViewContainer;->mListMenuView:Landroid/view/ViewGroup;

    .line 40
    return-void
.end method

.method private constructor <init>(Lyi/support/v1/menu/MenuManager;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter
    .parameter "actionMenu"
    .parameter "listMenu"

    .prologue
    .line 42
    iput-object p1, p0, Lyi/support/v1/menu/MenuManager$MenuViewContainer;->this$0:Lyi/support/v1/menu/MenuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Lyi/support/v1/menu/MenuManager$MenuViewContainer;->mActionMenuView:Landroid/view/ViewGroup;

    .line 44
    iput-object p3, p0, Lyi/support/v1/menu/MenuManager$MenuViewContainer;->mListMenuView:Landroid/view/ViewGroup;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lyi/support/v1/menu/MenuManager;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lyi/support/v1/menu/MenuManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lyi/support/v1/menu/MenuManager$MenuViewContainer;-><init>(Lyi/support/v1/menu/MenuManager;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    return-void
.end method

.method synthetic constructor <init>(Lyi/support/v1/menu/MenuManager;Lyi/support/v1/menu/MenuManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lyi/support/v1/menu/MenuManager$MenuViewContainer;-><init>(Lyi/support/v1/menu/MenuManager;)V

    return-void
.end method


# virtual methods
.method public getActionMenu()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 48
    iget-object v1, p0, Lyi/support/v1/menu/MenuManager$MenuViewContainer;->mActionMenuView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lyi/support/v1/menu/MenuManager$MenuViewContainer;->mActionMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lyi/support/v1/menu/MenuManager$MenuViewContainer;->mActionMenuView:Landroid/view/ViewGroup;

    .line 51
    :cond_0
    return-object v0
.end method

.method public getListMenu()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-object v0, p0, Lyi/support/v1/menu/MenuManager$MenuViewContainer;->mListMenuView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lyi/support/v1/menu/MenuManager$MenuViewContainer;->mListMenuView:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lyi/support/v1/menu/MenuManager$MenuViewContainer;->mListMenuView:Landroid/view/ViewGroup;

    .line 59
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 57
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 59
    goto :goto_0
.end method
