.class Lyi/widget/ButtonGroup$1;
.super Ljava/lang/Object;
.source "ButtonGroup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 393
    iput-object p1, p0, Lyi/widget/ButtonGroup$1;->this$0:Lyi/widget/ButtonGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 396
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 397
    .local v1, id:I
    iget-object v2, p0, Lyi/widget/ButtonGroup$1;->this$0:Lyi/widget/ButtonGroup;

    #getter for: Lyi/widget/ButtonGroup;->mButtons:Ljava/util/HashMap;
    invoke-static {v2}, Lyi/widget/ButtonGroup;->access$000(Lyi/widget/ButtonGroup;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 398
    .local v0, bt:Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 412
    :goto_0
    :pswitch_0
    return v4

    .line 402
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
