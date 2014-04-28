.class Landroid/widget/Editor$baidu_1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor;->showPopup(Landroid/widget/TextView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;

.field final synthetic val$magnifierView:Landroid/widget/MagnifierView2;


# direct methods
.method constructor <init>(Landroid/widget/Editor;Landroid/widget/MagnifierView2;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4321
    iput-object p1, p0, Landroid/widget/Editor$baidu_1;->this$0:Landroid/widget/Editor;

    iput-object p2, p0, Landroid/widget/Editor$baidu_1;->val$magnifierView:Landroid/widget/MagnifierView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4324
    iget-object v0, p0, Landroid/widget/Editor$baidu_1;->val$magnifierView:Landroid/widget/MagnifierView2;

    iget-object v1, p0, Landroid/widget/Editor$baidu_1;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mMagnifierPositionX:I
    invoke-static {v1}, Landroid/widget/Editor;->access$baidu_400(Landroid/widget/Editor;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$baidu_1;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mMagnifierPositionY:I
    invoke-static {v2}, Landroid/widget/Editor;->access$baidu_300(Landroid/widget/Editor;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/MagnifierView2;->updateMagnifierPosition(II)V

    .line 4325
    return-void
.end method
