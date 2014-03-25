.class Lyi/widget/ButtonGroup$2;
.super Ljava/lang/Object;
.source "ButtonGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/widget/ButtonGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyi/widget/ButtonGroup;


# direct methods
.method constructor <init>(Lyi/widget/ButtonGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lyi/widget/ButtonGroup$2;->this$0:Lyi/widget/ButtonGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 418
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 419
    .local v1, id:I
    iget-object v2, p0, Lyi/widget/ButtonGroup$2;->this$0:Lyi/widget/ButtonGroup;

    #getter for: Lyi/widget/ButtonGroup;->mButtons:Ljava/util/HashMap;
    invoke-static {v2}, Lyi/widget/ButtonGroup;->access$000(Lyi/widget/ButtonGroup;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 420
    .local v0, bt:Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v2, p0, Lyi/widget/ButtonGroup$2;->this$0:Lyi/widget/ButtonGroup;

    invoke-virtual {v2, v1}, Lyi/widget/ButtonGroup;->setCheckedButton(I)Z

    .line 425
    iget-object v2, p0, Lyi/widget/ButtonGroup$2;->this$0:Lyi/widget/ButtonGroup;

    iget-object v2, v2, Lyi/widget/ButtonGroup;->mOnButtonCheckedListener:Lyi/widget/ButtonGroup$OnButtonCheckedListener;

    if-eqz v2, :cond_0

    .line 426
    iget-object v2, p0, Lyi/widget/ButtonGroup$2;->this$0:Lyi/widget/ButtonGroup;

    iget-object v2, v2, Lyi/widget/ButtonGroup;->mOnButtonCheckedListener:Lyi/widget/ButtonGroup$OnButtonCheckedListener;

    invoke-interface {v2, v1}, Lyi/widget/ButtonGroup$OnButtonCheckedListener;->onButtonChecked(I)V

    goto :goto_0
.end method
