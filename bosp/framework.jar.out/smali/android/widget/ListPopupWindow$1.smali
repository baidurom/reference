.class Landroid/widget/ListPopupWindow$1;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/ListPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Landroid/widget/ListPopupWindow$1;->this$0:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Landroid/widget/ListPopupWindow$1;->this$0:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Landroid/widget/ListPopupWindow$1;->this$0:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->resetScrollY()V

    .line 202
    :cond_0
    return-void
.end method
