.class Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;
.super Ljava/lang/Object;
.source "HybridMenuPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/menu/HybridMenuPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanelPlaceHolder"
.end annotation


# instance fields
.field private mAnsycTaskExecutor:Lyi/support/v1/menu/AnsycTaskExecutor;

.field private mEnabled:Z

.field private mEnabledWhenSoftInputShown:Z

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mPlaceHolder:Landroid/view/View;

.field final synthetic this$0:Lyi/support/v1/menu/HybridMenuPanel;


# direct methods
.method private constructor <init>(Lyi/support/v1/menu/HybridMenuPanel;)V
    .locals 1
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->mEnabled:Z

    .line 417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->mEnabledWhenSoftInputShown:Z

    .line 420
    new-instance v0, Lyi/support/v1/menu/AnsycTaskExecutor;

    invoke-direct {v0}, Lyi/support/v1/menu/AnsycTaskExecutor;-><init>()V

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->mAnsycTaskExecutor:Lyi/support/v1/menu/AnsycTaskExecutor;

    .line 474
    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$2;

    invoke-direct {v0, p0}, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$2;-><init>(Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;)V

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method synthetic constructor <init>(Lyi/support/v1/menu/HybridMenuPanel;Lyi/support/v1/menu/HybridMenuPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;-><init>(Lyi/support/v1/menu/HybridMenuPanel;)V

    return-void
.end method

.method static synthetic access$3500(Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 414
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->ensurePlaceHolder()V

    return-void
.end method

.method static synthetic access$3600(Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 414
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->mPlaceHolder:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3700(Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 414
    iget-boolean v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->mEnabledWhenSoftInputShown:Z

    return v0
.end method

.method private ensurePlaceHolder()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 451
    iget-object v5, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->mPlaceHolder:Landroid/view/View;

    if-nez v5, :cond_1

    .line 452
    iget-object v5, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v5}, Lyi/support/v1/menu/HybridMenuPanel;->getRootView()Landroid/view/View;

    move-result-object v5

    const v6, #id@content#t

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 453
    .local v1, content:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 454
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 455
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v5, v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v5, :cond_0

    .line 456
    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 457
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    const/high16 v5, 0x3f80

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 460
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 461
    .local v4, parent:Landroid/view/ViewParent;
    instance-of v5, v4, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_1

    move-object v0, v4

    .line 462
    check-cast v0, Landroid/widget/LinearLayout;

    .line 464
    .local v0, container:Landroid/widget/LinearLayout;
    new-instance v5, Landroid/view/View;

    iget-object v6, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v6}, Lyi/support/v1/menu/HybridMenuPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->mPlaceHolder:Landroid/view/View;

    .line 465
    iget-object v5, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->mPlaceHolder:Landroid/view/View;

    const v6, 0x5020024

    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    .line 466
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 467
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->mPlaceHolder:Landroid/view/View;

    invoke-virtual {v0, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    iget-object v5, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 472
    .end local v0           #container:Landroid/widget/LinearLayout;
    .end local v1           #content:Landroid/view/View;
    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #parent:Landroid/view/ViewParent;
    :cond_1
    return-void
.end method


# virtual methods
.method public enable(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 423
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->setHeight(I)V

    .line 424
    :cond_0
    iput-boolean p1, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->mEnabled:Z

    .line 425
    return-void
.end method

.method public enableWhenSoftInputShown(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 428
    iput-boolean p1, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->mEnabledWhenSoftInputShown:Z

    .line 429
    return-void
.end method

.method public setHeight(I)V
    .locals 3
    .parameter "height"

    .prologue
    .line 432
    iget-boolean v1, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 433
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mPanelController:Lyi/support/v1/menu/HybridMenuPanel$PanelController;
    invoke-static {v1}, Lyi/support/v1/menu/HybridMenuPanel;->access$3400(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    move-result-object v1

    invoke-virtual {v1}, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, p1

    .line 434
    .local v0, validHeight:I
    :goto_0
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->mAnsycTaskExecutor:Lyi/support/v1/menu/AnsycTaskExecutor;

    new-instance v2, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$1;

    invoke-direct {v2, p0, v0}, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$1;-><init>(Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;I)V

    invoke-virtual {v1, v2}, Lyi/support/v1/menu/AnsycTaskExecutor;->execute(Ljava/lang/Runnable;)V

    .line 448
    .end local v0           #validHeight:I
    :cond_0
    return-void

    .line 433
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
