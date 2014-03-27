.class Lyi/widget/SearchView$14;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyi/widget/SearchView;


# direct methods
.method constructor <init>(Lyi/widget/SearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 1368
    iput-object p1, p0, Lyi/widget/SearchView$14;->this$0:Lyi/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 1374
    iget-object v0, p0, Lyi/widget/SearchView$14;->this$0:Lyi/widget/SearchView;

    #calls: Lyi/widget/SearchView;->onSubmitQuery()V
    invoke-static {v0}, Lyi/widget/SearchView;->access$1300(Lyi/widget/SearchView;)V

    .line 1375
    const/4 v0, 0x1

    return v0
.end method
