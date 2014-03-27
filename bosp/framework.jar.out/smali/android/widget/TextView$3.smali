.class Landroid/widget/TextView$3;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView;->showPopup(Landroid/widget/TextView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;

.field final synthetic val$magnifierView:Landroid/widget/MagnifierView2;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/widget/MagnifierView2;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12580
    iput-object p1, p0, Landroid/widget/TextView$3;->this$0:Landroid/widget/TextView;

    iput-object p2, p0, Landroid/widget/TextView$3;->val$magnifierView:Landroid/widget/MagnifierView2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 12583
    iget-object v0, p0, Landroid/widget/TextView$3;->val$magnifierView:Landroid/widget/MagnifierView2;

    iget-object v1, p0, Landroid/widget/TextView$3;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mMagnifierPositionX:I
    invoke-static {v1}, Landroid/widget/TextView;->access$10400(Landroid/widget/TextView;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/TextView$3;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mMagnifierPositionY:I
    invoke-static {v2}, Landroid/widget/TextView;->access$10500(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/MagnifierView2;->updateMagnifierPosition(II)V

    .line 12584
    return-void
.end method
