.class Landroid/inputmethodservice/ExtractEditLayout$1$1;
.super Ljava/lang/Object;
.source "ExtractEditLayout.java"

# interfaces
.implements Landroid/widget/ListPopupWindow$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/ExtractEditLayout$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/inputmethodservice/ExtractEditLayout$1;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/ExtractEditLayout$1;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Landroid/inputmethodservice/ExtractEditLayout$1$1;->this$1:Landroid/inputmethodservice/ExtractEditLayout$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$1$1;->this$1:Landroid/inputmethodservice/ExtractEditLayout$1;

    iget-object v0, v0, Landroid/inputmethodservice/ExtractEditLayout$1;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    #getter for: Landroid/inputmethodservice/ExtractEditLayout;->mMenuPopupHelper:Lcom/android/internal/view/menu/MenuPopupHelper;
    invoke-static {v0}, Landroid/inputmethodservice/ExtractEditLayout;->access$000(Landroid/inputmethodservice/ExtractEditLayout;)Lcom/android/internal/view/menu/MenuPopupHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 122
    :cond_0
    return-void
.end method
