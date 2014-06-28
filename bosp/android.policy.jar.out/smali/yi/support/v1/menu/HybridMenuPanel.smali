.class public Lyi/support/v1/menu/HybridMenuPanel;
.super Landroid/widget/LinearLayout;
.source "HybridMenuPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;,
        Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;,
        Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;,
        Lyi/support/v1/menu/HybridMenuPanel$MenuController;,
        Lyi/support/v1/menu/HybridMenuPanel$ActionController;,
        Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;,
        Lyi/support/v1/menu/HybridMenuPanel$PanelController;,
        Lyi/support/v1/menu/HybridMenuPanel$PanelState;,
        Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;,
        Lyi/support/v1/menu/HybridMenuPanel$Permission;,
        Lyi/support/v1/menu/HybridMenuPanel$Observer;
    }
.end annotation


# static fields
.field private static final ACTION_BAR_ALPHA_FULL:I = 0xff

.field private static final ACTION_BAR_ALPHA_HALF:I = 0xdc

.field private static final ACTION_MENU_CHANGE_BLOCK_INTERVAL:I = 0x1f4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionContainer:Landroid/view/ViewGroup;

.field private final mActionController:Lyi/support/v1/menu/HybridMenuPanel$ActionController;

.field private final mActionHeight:Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;

.field private mActionMenuChangeTimeStamp:J

.field private mFadeInActionRunnable:Ljava/lang/Runnable;

.field private mMenuContainer:Landroid/view/ViewGroup;

.field private final mMenuController:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

.field private final mMenuHeight:Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;

.field private mMenuIndicator:Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;

.field private mObserver:Lyi/support/v1/menu/HybridMenuPanel$Observer;

.field private mPanelContainer:Landroid/view/ViewGroup;

.field private final mPanelController:Lyi/support/v1/menu/HybridMenuPanel$PanelController;

.field private final mPanelPlaceHolder:Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;

.field private final mPermission:Lyi/support/v1/menu/HybridMenuPanel$Permission;

.field private mViewConsistency:Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lyi/support/v1/menu/HybridMenuPanel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    invoke-direct {v0, p0}, Lyi/support/v1/menu/HybridMenuPanel$PanelController;-><init>(Lyi/support/v1/menu/HybridMenuPanel;)V

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mPanelController:Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    .line 48
    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;

    invoke-direct {v0, p0, v1}, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;-><init>(Lyi/support/v1/menu/HybridMenuPanel;Lyi/support/v1/menu/HybridMenuPanel$1;)V

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mPanelPlaceHolder:Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;

    .line 49
    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$ActionController;

    invoke-direct {v0, p0, v1}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;-><init>(Lyi/support/v1/menu/HybridMenuPanel;Lyi/support/v1/menu/HybridMenuPanel$1;)V

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mActionController:Lyi/support/v1/menu/HybridMenuPanel$ActionController;

    .line 50
    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    invoke-direct {v0, p0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;-><init>(Lyi/support/v1/menu/HybridMenuPanel;)V

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuController:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    .line 51
    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;

    invoke-direct {v0, p0, v1}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;-><init>(Lyi/support/v1/menu/HybridMenuPanel;Lyi/support/v1/menu/HybridMenuPanel$1;)V

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mActionHeight:Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;

    .line 52
    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;

    invoke-direct {v0, p0, v1}, Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;-><init>(Lyi/support/v1/menu/HybridMenuPanel;Lyi/support/v1/menu/HybridMenuPanel$1;)V

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuHeight:Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;

    .line 55
    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$Permission;

    invoke-direct {v0, p0}, Lyi/support/v1/menu/HybridMenuPanel$Permission;-><init>(Lyi/support/v1/menu/HybridMenuPanel;)V

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mPermission:Lyi/support/v1/menu/HybridMenuPanel$Permission;

    .line 110
    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$2;

    invoke-direct {v0, p0}, Lyi/support/v1/menu/HybridMenuPanel$2;-><init>(Lyi/support/v1/menu/HybridMenuPanel;)V

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mFadeInActionRunnable:Ljava/lang/Runnable;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    invoke-direct {v0, p0}, Lyi/support/v1/menu/HybridMenuPanel$PanelController;-><init>(Lyi/support/v1/menu/HybridMenuPanel;)V

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mPanelController:Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    .line 48
    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;

    invoke-direct {v0, p0, v1}, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;-><init>(Lyi/support/v1/menu/HybridMenuPanel;Lyi/support/v1/menu/HybridMenuPanel$1;)V

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mPanelPlaceHolder:Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;

    .line 49
    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$ActionController;

    invoke-direct {v0, p0, v1}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;-><init>(Lyi/support/v1/menu/HybridMenuPanel;Lyi/support/v1/menu/HybridMenuPanel$1;)V

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mActionController:Lyi/support/v1/menu/HybridMenuPanel$ActionController;

    .line 50
    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    invoke-direct {v0, p0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;-><init>(Lyi/support/v1/menu/HybridMenuPanel;)V

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuController:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    .line 51
    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;

    invoke-direct {v0, p0, v1}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;-><init>(Lyi/support/v1/menu/HybridMenuPanel;Lyi/support/v1/menu/HybridMenuPanel$1;)V

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mActionHeight:Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;

    .line 52
    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;

    invoke-direct {v0, p0, v1}, Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;-><init>(Lyi/support/v1/menu/HybridMenuPanel;Lyi/support/v1/menu/HybridMenuPanel$1;)V

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuHeight:Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;

    .line 55
    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$Permission;

    invoke-direct {v0, p0}, Lyi/support/v1/menu/HybridMenuPanel$Permission;-><init>(Lyi/support/v1/menu/HybridMenuPanel;)V

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mPermission:Lyi/support/v1/menu/HybridMenuPanel$Permission;

    .line 110
    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$2;

    invoke-direct {v0, p0}, Lyi/support/v1/menu/HybridMenuPanel$2;-><init>(Lyi/support/v1/menu/HybridMenuPanel;)V

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mFadeInActionRunnable:Ljava/lang/Runnable;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    invoke-direct {v0, p0}, Lyi/support/v1/menu/HybridMenuPanel$PanelController;-><init>(Lyi/support/v1/menu/HybridMenuPanel;)V

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mPanelController:Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    .line 48
    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;

    invoke-direct {v0, p0, v1}, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;-><init>(Lyi/support/v1/menu/HybridMenuPanel;Lyi/support/v1/menu/HybridMenuPanel$1;)V

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mPanelPlaceHolder:Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;

    .line 49
    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$ActionController;

    invoke-direct {v0, p0, v1}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;-><init>(Lyi/support/v1/menu/HybridMenuPanel;Lyi/support/v1/menu/HybridMenuPanel$1;)V

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mActionController:Lyi/support/v1/menu/HybridMenuPanel$ActionController;

    .line 50
    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    invoke-direct {v0, p0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;-><init>(Lyi/support/v1/menu/HybridMenuPanel;)V

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuController:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    .line 51
    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;

    invoke-direct {v0, p0, v1}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;-><init>(Lyi/support/v1/menu/HybridMenuPanel;Lyi/support/v1/menu/HybridMenuPanel$1;)V

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mActionHeight:Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;

    .line 52
    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;

    invoke-direct {v0, p0, v1}, Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;-><init>(Lyi/support/v1/menu/HybridMenuPanel;Lyi/support/v1/menu/HybridMenuPanel$1;)V

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuHeight:Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;

    .line 55
    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$Permission;

    invoke-direct {v0, p0}, Lyi/support/v1/menu/HybridMenuPanel$Permission;-><init>(Lyi/support/v1/menu/HybridMenuPanel;)V

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mPermission:Lyi/support/v1/menu/HybridMenuPanel$Permission;

    .line 110
    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$2;

    invoke-direct {v0, p0}, Lyi/support/v1/menu/HybridMenuPanel$2;-><init>(Lyi/support/v1/menu/HybridMenuPanel;)V

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mFadeInActionRunnable:Ljava/lang/Runnable;

    .line 69
    return-void
.end method

.method static synthetic access$2900(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$MenuController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuController:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    return-object v0
.end method

.method static synthetic access$3000(Lyi/support/v1/menu/HybridMenuPanel;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 28
    iget-wide v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mActionMenuChangeTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$3100(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mActionHeight:Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;

    return-object v0
.end method

.method static synthetic access$3200(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mPanelPlaceHolder:Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;

    return-object v0
.end method

.method static synthetic access$3400(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$PanelController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mPanelController:Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    return-object v0
.end method

.method static synthetic access$3800(Lyi/support/v1/menu/HybridMenuPanel;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mActionContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 28
    invoke-static {p0, p1, p2}, Lyi/support/v1/menu/HybridMenuPanel;->removeAndAddView(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$Observer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mObserver:Lyi/support/v1/menu/HybridMenuPanel$Observer;

    return-object v0
.end method

.method static synthetic access$4100(Lyi/support/v1/menu/HybridMenuPanel;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4200(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuHeight:Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;

    return-object v0
.end method

.method static synthetic access$4500(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuIndicator:Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;

    return-object v0
.end method

.method static synthetic access$4600(Lyi/support/v1/menu/HybridMenuPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel;->refreshMenuIndicatorVisibility()V

    return-void
.end method

.method static synthetic access$800(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$ActionController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mActionController:Lyi/support/v1/menu/HybridMenuPanel$ActionController;

    return-object v0
.end method

.method private refreshMenuIndicatorVisibility()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 253
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuController:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    #calls: Lyi/support/v1/menu/HybridMenuPanel$MenuController;->isAvailable()Z
    invoke-static {v2}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->access$1700(Lyi/support/v1/menu/HybridMenuPanel$MenuController;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuController:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    invoke-virtual {v2}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->isOpened()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 254
    .local v0, shouldShow:Z
    :goto_0
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuIndicator:Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;

    if-eqz v0, :cond_1

    :goto_1
    #calls: Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;->setVisibility(I)V
    invoke-static {v2, v1}, Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;->access$2800(Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;I)V

    .line 255
    return-void

    .end local v0           #shouldShow:Z
    :cond_0
    move v0, v1

    .line 253
    goto :goto_0

    .line 254
    .restart local v0       #shouldShow:Z
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private static removeAndAddView(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .parameter "parent"
    .parameter "view"
    .parameter "id"

    .prologue
    const/4 v3, -0x2

    .line 916
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 917
    .local v0, child:Landroid/view/View;
    if-eq v0, p1, :cond_2

    .line 918
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 920
    :cond_0
    if-eqz p1, :cond_2

    .line 921
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 922
    .local v1, p:Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 924
    :cond_1
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 926
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 927
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 931
    .end local v1           #p:Landroid/view/ViewGroup;
    .end local v2           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    return-object p1
.end method


# virtual methods
.method public closeMenu()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuController:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    #calls: Lyi/support/v1/menu/HybridMenuPanel$MenuController;->close()V
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->access$2400(Lyi/support/v1/menu/HybridMenuPanel$MenuController;)V

    .line 211
    return-void
.end method

.method public enablePanelWhenSoftInputShown(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 222
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mPanelPlaceHolder:Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;

    invoke-virtual {v0, p1}, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->enableWhenSoftInputShown(Z)V

    .line 223
    return-void
.end method

.method public fadeActionMenu(FZ)V
    .locals 6
    .parameter "percent"
    .parameter "reverse"

    .prologue
    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lyi/support/v1/menu/HybridMenuPanel;->mActionMenuChangeTimeStamp:J

    sub-long v0, v2, v4

    .line 231
    .local v0, elapsed:J
    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lyi/support/v1/menu/HybridMenuPanel;->mPanelController:Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    invoke-virtual {v2}, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->isOpenFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    if-eqz p2, :cond_1

    const/high16 v2, 0x3f80

    sub-float/2addr v2, p1

    float-to-double v2, v2

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 233
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenuPanel;->mActionController:Lyi/support/v1/menu/HybridMenuPanel$ActionController;

    #calls: Lyi/support/v1/menu/HybridMenuPanel$ActionController;->fade(F)V
    invoke-static {v2, p1}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->access$2500(Lyi/support/v1/menu/HybridMenuPanel$ActionController;F)V

    .line 235
    :cond_0
    return-void

    .line 232
    :cond_1
    float-to-double v2, p1

    goto :goto_0
.end method

.method public getPermission()Lyi/support/v1/menu/HybridMenuPanel$Permission;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mPermission:Lyi/support/v1/menu/HybridMenuPanel$Permission;

    return-object v0
.end method

.method public hidePanel()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mPanelController:Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->close()V

    .line 203
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mActionController:Lyi/support/v1/menu/HybridMenuPanel$ActionController;

    #calls: Lyi/support/v1/menu/HybridMenuPanel$ActionController;->isAvailable()Z
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->access$2700(Lyi/support/v1/menu/HybridMenuPanel$ActionController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuController:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    #calls: Lyi/support/v1/menu/HybridMenuPanel$MenuController;->isAvailable()Z
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->access$1700(Lyi/support/v1/menu/HybridMenuPanel$MenuController;)Z

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

.method public isMenuOpened()Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuController:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->isOpened()Z

    move-result v0

    return v0
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 73
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 75
    const v0, 0x5020044

    invoke-virtual {p0, v0}, Lyi/support/v1/menu/HybridMenuPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mPanelContainer:Landroid/view/ViewGroup;

    .line 76
    const v0, 0x5020045

    invoke-virtual {p0, v0}, Lyi/support/v1/menu/HybridMenuPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mActionContainer:Landroid/view/ViewGroup;

    .line 77
    const v0, 0x5020046

    invoke-virtual {p0, v0}, Lyi/support/v1/menu/HybridMenuPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuContainer:Landroid/view/ViewGroup;

    .line 78
    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;

    const v1, 0x5020047

    invoke-virtual {p0, v1}, Lyi/support/v1/menu/HybridMenuPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuIndicator:Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;

    .line 80
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mPanelContainer:Landroid/view/ViewGroup;

    new-instance v1, Lyi/support/v1/menu/HybridMenuPanel$1;

    invoke-direct {v1, p0}, Lyi/support/v1/menu/HybridMenuPanel$1;-><init>(Lyi/support/v1/menu/HybridMenuPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mPanelContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 88
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 89
    invoke-virtual {p0, v2}, Lyi/support/v1/menu/HybridMenuPanel;->setVisibility(I)V

    .line 90
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 96
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuHeight:Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;

    #calls: Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;->calculate(II)V
    invoke-static {v0, p1, p2}, Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;->access$500(Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;II)V

    .line 97
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuHeight:Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;

    #calls: Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;->getHeight()I
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;->access$600(Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;)I

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 98
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuController:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    #calls: Lyi/support/v1/menu/HybridMenuPanel$MenuController;->measure(II)V
    invoke-static {v0, p1, p2}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->access$700(Lyi/support/v1/menu/HybridMenuPanel$MenuController;II)V

    .line 99
    return-void
.end method

.method public openMenu()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuController:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    #calls: Lyi/support/v1/menu/HybridMenuPanel$MenuController;->open()V
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->access$2300(Lyi/support/v1/menu/HybridMenuPanel$MenuController;)V

    .line 207
    return-void
.end method

.method public setContent(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 5
    .parameter "actionMenu"
    .parameter "listMenu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 119
    new-instance v1, Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;

    invoke-direct {v1, v4}, Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;-><init>(Lyi/support/v1/menu/HybridMenuPanel$1;)V

    #calls: Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;->check(Landroid/view/ViewGroup;)Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;
    invoke-static {v1, p1}, Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;->access$1100(Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;Landroid/view/ViewGroup;)Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;

    move-result-object v1

    #calls: Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;->check(Landroid/view/ViewGroup;)Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;
    invoke-static {v1, p2}, Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;->access$1100(Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;Landroid/view/ViewGroup;)Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;

    move-result-object v0

    .line 120
    .local v0, consistency:Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel;->mViewConsistency:Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;

    #calls: Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;->isSame(Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;)Z
    invoke-static {v0, v1}, Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;->access$1200(Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    :goto_0
    return-void

    .line 123
    :cond_0
    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mViewConsistency:Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lyi/support/v1/menu/HybridMenuPanel;->mActionMenuChangeTimeStamp:J

    .line 129
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel;->mActionController:Lyi/support/v1/menu/HybridMenuPanel$ActionController;

    #calls: Lyi/support/v1/menu/HybridMenuPanel$ActionController;->reset()V
    invoke-static {v1}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->access$1300(Lyi/support/v1/menu/HybridMenuPanel$ActionController;)V

    .line 132
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel;->mActionController:Lyi/support/v1/menu/HybridMenuPanel$ActionController;

    #calls: Lyi/support/v1/menu/HybridMenuPanel$ActionController;->set(Landroid/view/ViewGroup;)V
    invoke-static {v1, p1}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->access$1400(Lyi/support/v1/menu/HybridMenuPanel$ActionController;Landroid/view/ViewGroup;)V

    .line 133
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuController:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    #calls: Lyi/support/v1/menu/HybridMenuPanel$MenuController;->set(Landroid/view/ViewGroup;)V
    invoke-static {v1, p2}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->access$1500(Lyi/support/v1/menu/HybridMenuPanel$MenuController;Landroid/view/ViewGroup;)V

    .line 134
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuHeight:Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;

    #calls: Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;->reset()V
    invoke-static {v1}, Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;->access$1600(Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;)V

    .line 136
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel;->mPanelController:Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    invoke-virtual {v1}, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    invoke-virtual {p0, v3}, Lyi/support/v1/menu/HybridMenuPanel;->setVisibility(I)V

    .line 140
    :cond_1
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel;->refreshMenuIndicatorVisibility()V

    .line 141
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel;->mPanelContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuController:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    #calls: Lyi/support/v1/menu/HybridMenuPanel$MenuController;->isAvailable()Z
    invoke-static {v2}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->access$1700(Lyi/support/v1/menu/HybridMenuPanel$MenuController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 145
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuController:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    invoke-virtual {v1}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 148
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuController:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    #calls: Lyi/support/v1/menu/HybridMenuPanel$MenuController;->isAvailable()Z
    invoke-static {v1}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->access$1700(Lyi/support/v1/menu/HybridMenuPanel$MenuController;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 150
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuController:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    invoke-virtual {v1}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->isTransitioning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuController:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    invoke-virtual {v1}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 152
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuController:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    #calls: Lyi/support/v1/menu/HybridMenuPanel$MenuController;->doOpen()V
    invoke-static {v1}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->access$1800(Lyi/support/v1/menu/HybridMenuPanel$MenuController;)V

    .line 166
    :cond_2
    :goto_1
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel;->mActionHeight:Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;

    #calls: Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->refreshHeight(ZLjava/lang/Runnable;)Z
    invoke-static {v1, v3, v4}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->access$2100(Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;ZLjava/lang/Runnable;)Z

    goto :goto_0

    .line 154
    :cond_3
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuController:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    #calls: Lyi/support/v1/menu/HybridMenuPanel$MenuController;->doClose()V
    invoke-static {v1}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->access$1900(Lyi/support/v1/menu/HybridMenuPanel$MenuController;)V

    goto :goto_1

    .line 161
    :cond_4
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuController:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    invoke-virtual {v1}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->reset()V

    .line 162
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel;->mObserver:Lyi/support/v1/menu/HybridMenuPanel$Observer;

    invoke-interface {v1, v3}, Lyi/support/v1/menu/HybridMenuPanel$Observer;->onMenuChangeStart(Z)V

    .line 163
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel;->mMenuController:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    iget-object v2, p0, Lyi/support/v1/menu/HybridMenuPanel;->mFadeInActionRunnable:Ljava/lang/Runnable;

    #calls: Lyi/support/v1/menu/HybridMenuPanel$MenuController;->handleMenuEnding(Ljava/lang/Runnable;)V
    invoke-static {v1, v2}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->access$2000(Lyi/support/v1/menu/HybridMenuPanel$MenuController;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 170
    :cond_5
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel;->mPanelController:Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    invoke-virtual {v1}, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->isTransitioning()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 172
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel;->mActionHeight:Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;

    #calls: Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->refreshHeight(ZLjava/lang/Runnable;)Z
    invoke-static {v1, v3, v4}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->access$2100(Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;ZLjava/lang/Runnable;)Z

    .line 173
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel;->mPanelController:Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    invoke-virtual {v1}, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 174
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel;->mPanelController:Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    invoke-virtual {v1}, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->doOpen()V

    goto/16 :goto_0

    .line 176
    :cond_6
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel;->mPanelController:Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    invoke-virtual {v1}, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->doClose()V

    goto/16 :goto_0

    .line 180
    :cond_7
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel;->mPanelController:Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    invoke-virtual {v1}, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 181
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel;->mActionHeight:Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;

    const/4 v2, 0x1

    iget-object v3, p0, Lyi/support/v1/menu/HybridMenuPanel;->mFadeInActionRunnable:Ljava/lang/Runnable;

    #calls: Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->refreshHeight(ZLjava/lang/Runnable;)Z
    invoke-static {v1, v2, v3}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->access$2100(Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;ZLjava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 184
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel;->mActionController:Lyi/support/v1/menu/HybridMenuPanel$ActionController;

    #calls: Lyi/support/v1/menu/HybridMenuPanel$ActionController;->hide()V
    invoke-static {v1}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->access$2200(Lyi/support/v1/menu/HybridMenuPanel$ActionController;)V

    goto/16 :goto_0

    .line 187
    :cond_8
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel;->mActionController:Lyi/support/v1/menu/HybridMenuPanel$ActionController;

    #calls: Lyi/support/v1/menu/HybridMenuPanel$ActionController;->fadeIn()V
    invoke-static {v1}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->access$900(Lyi/support/v1/menu/HybridMenuPanel$ActionController;)V

    goto/16 :goto_0

    .line 190
    :cond_9
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel;->mActionHeight:Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;

    #calls: Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->refreshHeight(ZLjava/lang/Runnable;)Z
    invoke-static {v1, v3, v4}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->access$2100(Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;ZLjava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method public setObserver(Lyi/support/v1/menu/HybridMenuPanel$Observer;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 107
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenuPanel;->mObserver:Lyi/support/v1/menu/HybridMenuPanel$Observer;

    .line 108
    return-void
.end method

.method public setPanelTransparency(Z)V
    .locals 4
    .parameter "transparent"

    .prologue
    .line 238
    iget-object v3, p0, Lyi/support/v1/menu/HybridMenuPanel;->mPanelPlaceHolder:Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->enable(Z)V

    .line 239
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenuPanel;->mPanelPlaceHolder:Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;

    iget-object v3, p0, Lyi/support/v1/menu/HybridMenuPanel;->mActionHeight:Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;

    #calls: Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->getHeight()I
    invoke-static {v3}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->access$2600(Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;)I

    move-result v3

    invoke-virtual {v2, v3}, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->setHeight(I)V

    .line 241
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenuPanel;->mPanelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 242
    .local v1, background:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 243
    if-eqz p1, :cond_2

    const/16 v0, 0xdc

    .line 244
    .local v0, alpha:I
    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 246
    .end local v0           #alpha:I
    :cond_0
    return-void

    .line 238
    .end local v1           #background:Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 243
    .restart local v1       #background:Landroid/graphics/drawable/Drawable;
    :cond_2
    const/16 v0, 0xff

    goto :goto_1
.end method

.method public showPanel()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel;->mPanelController:Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->open()V

    .line 199
    return-void
.end method
