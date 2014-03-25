.class Lyi/support/v1/ContentDemensionSwitcher$1;
.super Ljava/lang/Object;
.source "ContentDemensionSwitcher.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/ContentDemensionSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mSelfTriggered:Z

.field final synthetic this$0:Lyi/support/v1/ContentDemensionSwitcher;


# direct methods
.method constructor <init>(Lyi/support/v1/ContentDemensionSwitcher;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lyi/support/v1/ContentDemensionSwitcher$1;->this$0:Lyi/support/v1/ContentDemensionSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .parameter "content"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "oldLeft"
    .parameter "oldTop"
    .parameter "oldRight"
    .parameter "oldBottom"

    .prologue
    .line 57
    iget-boolean v1, p0, Lyi/support/v1/ContentDemensionSwitcher$1;->mSelfTriggered:Z

    if-nez v1, :cond_1

    .line 58
    const/4 v1, 0x1

    iput-boolean v1, p0, Lyi/support/v1/ContentDemensionSwitcher$1;->mSelfTriggered:Z

    .line 60
    iget-object v1, p0, Lyi/support/v1/ContentDemensionSwitcher$1;->this$0:Lyi/support/v1/ContentDemensionSwitcher;

    #calls: Lyi/support/v1/ContentDemensionSwitcher;->getActionBar(Landroid/view/View;)Landroid/view/View;
    invoke-static {v1, p1}, Lyi/support/v1/ContentDemensionSwitcher;->access$000(Lyi/support/v1/ContentDemensionSwitcher;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, actionBar:Landroid/view/View;
    iget-object v1, p0, Lyi/support/v1/ContentDemensionSwitcher$1;->this$0:Lyi/support/v1/ContentDemensionSwitcher;

    invoke-virtual {v1}, Lyi/support/v1/ContentDemensionSwitcher;->getDemension()Lyi/support/v1/ContentDemensionSwitcher$Demension;

    move-result-object v1

    sget-object v2, Lyi/support/v1/ContentDemensionSwitcher$Demension;->EXCLUSIVE:Lyi/support/v1/ContentDemensionSwitcher$Demension;

    if-ne v1, v2, :cond_2

    .line 62
    iget-object v1, p0, Lyi/support/v1/ContentDemensionSwitcher$1;->this$0:Lyi/support/v1/ContentDemensionSwitcher;

    #calls: Lyi/support/v1/ContentDemensionSwitcher;->layoutContentToTop(Landroid/view/View;Landroid/view/View;)Z
    invoke-static {v1, p1, v0}, Lyi/support/v1/ContentDemensionSwitcher;->access$100(Lyi/support/v1/ContentDemensionSwitcher;Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lyi/support/v1/ContentDemensionSwitcher$1;->this$0:Lyi/support/v1/ContentDemensionSwitcher;

    #calls: Lyi/support/v1/ContentDemensionSwitcher;->showScrollUpAnimation(Landroid/view/View;Landroid/view/View;)V
    invoke-static {v1, p1, v0}, Lyi/support/v1/ContentDemensionSwitcher;->access$200(Lyi/support/v1/ContentDemensionSwitcher;Landroid/view/View;Landroid/view/View;)V

    .line 70
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lyi/support/v1/ContentDemensionSwitcher$1;->mSelfTriggered:Z

    .line 72
    .end local v0           #actionBar:Landroid/view/View;
    :cond_1
    return-void

    .line 66
    .restart local v0       #actionBar:Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lyi/support/v1/ContentDemensionSwitcher$1;->this$0:Lyi/support/v1/ContentDemensionSwitcher;

    #getter for: Lyi/support/v1/ContentDemensionSwitcher;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;
    invoke-static {v1}, Lyi/support/v1/ContentDemensionSwitcher;->access$300(Lyi/support/v1/ContentDemensionSwitcher;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 67
    iget-object v1, p0, Lyi/support/v1/ContentDemensionSwitcher$1;->this$0:Lyi/support/v1/ContentDemensionSwitcher;

    #calls: Lyi/support/v1/ContentDemensionSwitcher;->showScrollDownAnimation(Landroid/view/View;Landroid/view/View;)V
    invoke-static {v1, p1, v0}, Lyi/support/v1/ContentDemensionSwitcher;->access$400(Lyi/support/v1/ContentDemensionSwitcher;Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method
