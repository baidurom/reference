.class Lcom/android/phone/IPCallWhiteListActivity$WhiteListAdapter$1;
.super Ljava/lang/Object;
.source "IPCallWhiteListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IPCallWhiteListActivity$WhiteListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/IPCallWhiteListActivity$WhiteListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/IPCallWhiteListActivity$WhiteListAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/phone/IPCallWhiteListActivity$WhiteListAdapter$1;->this$1:Lcom/android/phone/IPCallWhiteListActivity$WhiteListAdapter;

    iput p2, p0, Lcom/android/phone/IPCallWhiteListActivity$WhiteListAdapter$1;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity$WhiteListAdapter$1;->this$1:Lcom/android/phone/IPCallWhiteListActivity$WhiteListAdapter;

    iget-object v1, v0, Lcom/android/phone/IPCallWhiteListActivity$WhiteListAdapter;->this$0:Lcom/android/phone/IPCallWhiteListActivity;

    iget-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity$WhiteListAdapter$1;->this$1:Lcom/android/phone/IPCallWhiteListActivity$WhiteListAdapter;

    iget-object v0, v0, Lcom/android/phone/IPCallWhiteListActivity$WhiteListAdapter;->this$0:Lcom/android/phone/IPCallWhiteListActivity;

    #getter for: Lcom/android/phone/IPCallWhiteListActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;
    invoke-static {v0}, Lcom/android/phone/IPCallWhiteListActivity;->access$000(Lcom/android/phone/IPCallWhiteListActivity;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v0

    iget v2, p0, Lcom/android/phone/IPCallWhiteListActivity$WhiteListAdapter$1;->val$position:I

    invoke-virtual {v0, v2}, Landroid/widget/SimpleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #calls: Lcom/android/phone/IPCallWhiteListActivity;->deleteFromWhiteList(I)I
    invoke-static {v1, v0}, Lcom/android/phone/IPCallWhiteListActivity;->access$800(Lcom/android/phone/IPCallWhiteListActivity;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity$WhiteListAdapter$1;->this$1:Lcom/android/phone/IPCallWhiteListActivity$WhiteListAdapter;

    iget-object v0, v0, Lcom/android/phone/IPCallWhiteListActivity$WhiteListAdapter;->this$0:Lcom/android/phone/IPCallWhiteListActivity;

    #calls: Lcom/android/phone/IPCallWhiteListActivity;->refreshList()V
    invoke-static {v0}, Lcom/android/phone/IPCallWhiteListActivity;->access$300(Lcom/android/phone/IPCallWhiteListActivity;)V

    .line 446
    :cond_0
    return-void
.end method
