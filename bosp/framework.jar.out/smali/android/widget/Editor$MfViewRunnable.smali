.class Landroid/widget/Editor$MfViewRunnable;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MfViewRunnable"
.end annotation


# instance fields
.field private final mMagnifierView:Landroid/widget/MagnifierView2;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;Landroid/widget/MagnifierView2;)V
    .locals 0
    .parameter
    .parameter "magnifierView"

    .prologue
    .line 895
    iput-object p1, p0, Landroid/widget/Editor$MfViewRunnable;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    iput-object p2, p0, Landroid/widget/Editor$MfViewRunnable;->mMagnifierView:Landroid/widget/MagnifierView2;

    .line 897
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 902
    iget-object v0, p0, Landroid/widget/Editor$MfViewRunnable;->mMagnifierView:Landroid/widget/MagnifierView2;

    iget-object v1, p0, Landroid/widget/Editor$MfViewRunnable;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mMagnifierPositionX:I
    invoke-static {v1}, Landroid/widget/Editor;->access$100(Landroid/widget/Editor;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$MfViewRunnable;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mMagnifierPositionY:I
    invoke-static {v2}, Landroid/widget/Editor;->access$200(Landroid/widget/Editor;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/MagnifierView2;->updateMagnifierPosition(II)V

    .line 903
    return-void
.end method
