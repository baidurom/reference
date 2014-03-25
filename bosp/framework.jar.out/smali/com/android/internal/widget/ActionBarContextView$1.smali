.class Lcom/android/internal/widget/ActionBarContextView$1;
.super Landroid/os/Handler;
.source "ActionBarContextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ActionBarContextView;->initTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarContextView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ActionBarContextView;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView$1;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 202
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView$1;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 203
    .local v0, viewParent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 206
    :cond_0
    return-void
.end method
