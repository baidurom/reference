.class Lcom/android/phone/CallRejectListAdapter$1;
.super Ljava/lang/Object;
.source "CallRejectListAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallRejectListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallRejectListAdapter;

.field final synthetic val$holder:Lcom/android/phone/CallRejectListAdapter$ItemViewHolder;


# direct methods
.method constructor <init>(Lcom/android/phone/CallRejectListAdapter;Lcom/android/phone/CallRejectListAdapter$ItemViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/phone/CallRejectListAdapter$1;->this$0:Lcom/android/phone/CallRejectListAdapter;

    iput-object p2, p0, Lcom/android/phone/CallRejectListAdapter$1;->val$holder:Lcom/android/phone/CallRejectListAdapter$ItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/CallRejectListAdapter$1;->this$0:Lcom/android/phone/CallRejectListAdapter;

    #getter for: Lcom/android/phone/CallRejectListAdapter;->mDataList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/CallRejectListAdapter;->access$000(Lcom/android/phone/CallRejectListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallRejectListAdapter$1;->val$holder:Lcom/android/phone/CallRejectListAdapter$ItemViewHolder;

    iget v1, v1, Lcom/android/phone/CallRejectListAdapter$ItemViewHolder;->id:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallRejectListItem;

    invoke-virtual {v0, p2}, Lcom/android/phone/CallRejectListItem;->setIsChecked(Z)V

    .line 50
    iget-object v0, p0, Lcom/android/phone/CallRejectListAdapter$1;->this$0:Lcom/android/phone/CallRejectListAdapter;

    #getter for: Lcom/android/phone/CallRejectListAdapter;->mCheckSelectCallBack:Lcom/android/phone/CallRejectListAdapter$CheckSelectCallBack;
    invoke-static {v0}, Lcom/android/phone/CallRejectListAdapter;->access$100(Lcom/android/phone/CallRejectListAdapter;)Lcom/android/phone/CallRejectListAdapter$CheckSelectCallBack;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/phone/CallRejectListAdapter$CheckSelectCallBack;->setChecked(Z)V

    .line 51
    return-void
.end method
