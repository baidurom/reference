.class Lcom/android/phone/IPCallWhiteListActivity$1;
.super Ljava/lang/Object;
.source "IPCallWhiteListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IPCallWhiteListActivity;->setupView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IPCallWhiteListActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/IPCallWhiteListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/phone/IPCallWhiteListActivity$1;->this$0:Lcom/android/phone/IPCallWhiteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/android/phone/IPCallWhiteListActivity$1;->this$0:Lcom/android/phone/IPCallWhiteListActivity;

    #getter for: Lcom/android/phone/IPCallWhiteListActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;
    invoke-static {v4}, Lcom/android/phone/IPCallWhiteListActivity;->access$000(Lcom/android/phone/IPCallWhiteListActivity;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/widget/SimpleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 106
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 107
    .local v0, _id:I
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, name:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, phoneNumber:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/IPCallWhiteListActivity$1;->this$0:Lcom/android/phone/IPCallWhiteListActivity;

    #calls: Lcom/android/phone/IPCallWhiteListActivity;->showEditDialog(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v0, v2, v3}, Lcom/android/phone/IPCallWhiteListActivity;->access$100(Lcom/android/phone/IPCallWhiteListActivity;ILjava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method
