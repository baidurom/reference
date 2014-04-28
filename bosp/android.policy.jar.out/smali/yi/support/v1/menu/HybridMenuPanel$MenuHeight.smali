.class Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;
.super Ljava/lang/Object;
.source "HybridMenuPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/menu/HybridMenuPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuHeight"
.end annotation


# instance fields
.field private mHeight:I

.field final synthetic this$0:Lyi/support/v1/menu/HybridMenuPanel;


# direct methods
.method private constructor <init>(Lyi/support/v1/menu/HybridMenuPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 893
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lyi/support/v1/menu/HybridMenuPanel;Lyi/support/v1/menu/HybridMenuPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 893
    invoke-direct {p0, p1}, Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;-><init>(Lyi/support/v1/menu/HybridMenuPanel;)V

    return-void
.end method

.method static synthetic access$1600(Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 893
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;->reset()V

    return-void
.end method

.method static synthetic access$500(Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 893
    invoke-direct {p0, p1, p2}, Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;->calculate(II)V

    return-void
.end method

.method static synthetic access$600(Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 893
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;->getHeight()I

    move-result v0

    return v0
.end method

.method private calculate(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 910
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mMenuController:Lyi/support/v1/menu/HybridMenuPanel$MenuController;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$2900(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    move-result-object v0

    const/4 v1, 0x0

    #calls: Lyi/support/v1/menu/HybridMenuPanel$MenuController;->measure(II)V
    invoke-static {v0, p1, v1}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->access$700(Lyi/support/v1/menu/HybridMenuPanel$MenuController;II)V

    .line 911
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mMenuController:Lyi/support/v1/menu/HybridMenuPanel$MenuController;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$2900(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    move-result-object v0

    #calls: Lyi/support/v1/menu/HybridMenuPanel$MenuController;->getMeasuredHeight()I
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->access$4900(Lyi/support/v1/menu/HybridMenuPanel$MenuController;)I

    move-result v0

    iput v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;->mHeight:I

    .line 912
    return-void
.end method

.method private getHeight()I
    .locals 2

    .prologue
    .line 902
    iget v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;->mHeight:I

    if-nez v0, :cond_0

    .line 903
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenuPanel;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v1}, Lyi/support/v1/menu/HybridMenuPanel;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;->calculate(II)V

    .line 906
    :cond_0
    iget v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;->mHeight:I

    return v0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 898
    const/4 v0, 0x0

    iput v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;->mHeight:I

    .line 899
    return-void
.end method
