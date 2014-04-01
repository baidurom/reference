.class Landroid/widget/PopupWindow$2;
.super Ljava/lang/Object;
.source "PopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnViewRootScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Landroid/widget/PopupWindow$2;->this$0:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Landroid/widget/PopupWindow$2;->this$0:Landroid/widget/PopupWindow;

    #getter for: Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Landroid/widget/PopupWindow;->access$000(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow$2;->this$0:Landroid/widget/PopupWindow;

    #getter for: Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    invoke-static {v0}, Landroid/widget/PopupWindow;->access$600(Landroid/widget/PopupWindow;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V

    goto :goto_0
.end method
