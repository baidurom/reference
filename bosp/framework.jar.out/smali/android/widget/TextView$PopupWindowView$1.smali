.class Landroid/widget/TextView$PopupWindowView$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$PopupWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$PopupWindowView;


# direct methods
.method constructor <init>(Landroid/widget/TextView$PopupWindowView;)V
    .locals 0
    .parameter

    .prologue
    .line 11655
    iput-object p1, p0, Landroid/widget/TextView$PopupWindowView$1;->this$1:Landroid/widget/TextView$PopupWindowView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 11657
    iget-object v0, p0, Landroid/widget/TextView$PopupWindowView$1;->this$1:Landroid/widget/TextView$PopupWindowView;

    invoke-virtual {v0}, Landroid/widget/TextView$PopupWindowView;->dismiss()V

    .line 11658
    return-void
.end method
