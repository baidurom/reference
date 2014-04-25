.class public Lcom/android/phone/CallRejectListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CallRejectListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallRejectListAdapter$CheckSelectCallBack;,
        Lcom/android/phone/CallRejectListAdapter$ItemViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallRejectListAdapter"


# instance fields
.field private mCheckSelectCallBack:Lcom/android/phone/CallRejectListAdapter$CheckSelectCallBack;

.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/CallRejectListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/CallRejectListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/CallRejectListItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallRejectListAdapter;->mCheckSelectCallBack:Lcom/android/phone/CallRejectListAdapter$CheckSelectCallBack;

    .line 30
    iput-object p1, p0, Lcom/android/phone/CallRejectListAdapter;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/android/phone/CallRejectListAdapter;->mDataList:Ljava/util/ArrayList;

    .line 32
    iget-object v0, p0, Lcom/android/phone/CallRejectListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/phone/CallRejectListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallRejectListAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/phone/CallRejectListAdapter;->mDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/CallRejectListAdapter;)Lcom/android/phone/CallRejectListAdapter$CheckSelectCallBack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/phone/CallRejectListAdapter;->mCheckSelectCallBack:Lcom/android/phone/CallRejectListAdapter$CheckSelectCallBack;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/phone/CallRejectListAdapter;->mDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallRejectListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/phone/CallRejectListAdapter;->mDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallRejectListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallRejectListItem;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 87
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 39
    if-nez p2, :cond_3

    .line 40
    new-instance v0, Lcom/android/phone/CallRejectListAdapter$ItemViewHolder;

    invoke-direct {v0}, Lcom/android/phone/CallRejectListAdapter$ItemViewHolder;-><init>()V

    .line 41
    .local v0, holder:Lcom/android/phone/CallRejectListAdapter$ItemViewHolder;
    iget-object v1, p0, Lcom/android/phone/CallRejectListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040017

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 43
    const v1, 0x7f070094

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/phone/CallRejectListAdapter$ItemViewHolder;->name:Landroid/widget/TextView;

    .line 44
    const v1, 0x7f070093

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/android/phone/CallRejectListAdapter$ItemViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 45
    iput p1, v0, Lcom/android/phone/CallRejectListAdapter$ItemViewHolder;->id:I

    .line 46
    iget-object v1, v0, Lcom/android/phone/CallRejectListAdapter$ItemViewHolder;->checkBox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/phone/CallRejectListAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/CallRejectListAdapter$1;-><init>(Lcom/android/phone/CallRejectListAdapter;Lcom/android/phone/CallRejectListAdapter$ItemViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 53
    const v1, 0x7f070095

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/phone/CallRejectListAdapter$ItemViewHolder;->phoneNum:Landroid/widget/TextView;

    .line 55
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    :goto_0
    iget-object v1, v0, Lcom/android/phone/CallRejectListAdapter$ItemViewHolder;->name:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 62
    iget-object v2, v0, Lcom/android/phone/CallRejectListAdapter$ItemViewHolder;->name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallRejectListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallRejectListItem;

    invoke-virtual {v1}, Lcom/android/phone/CallRejectListItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_0
    iget-object v1, v0, Lcom/android/phone/CallRejectListAdapter$ItemViewHolder;->checkBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_1

    .line 65
    iget-object v2, v0, Lcom/android/phone/CallRejectListAdapter$ItemViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/phone/CallRejectListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallRejectListItem;

    invoke-virtual {v1}, Lcom/android/phone/CallRejectListItem;->getIsChecked()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 67
    :cond_1
    iget-object v1, v0, Lcom/android/phone/CallRejectListAdapter$ItemViewHolder;->phoneNum:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 68
    iget-object v2, v0, Lcom/android/phone/CallRejectListAdapter$ItemViewHolder;->phoneNum:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallRejectListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallRejectListItem;

    invoke-virtual {v1}, Lcom/android/phone/CallRejectListItem;->getPhoneNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :cond_2
    return-object p2

    .line 57
    .end local v0           #holder:Lcom/android/phone/CallRejectListAdapter$ItemViewHolder;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallRejectListAdapter$ItemViewHolder;

    .line 58
    .restart local v0       #holder:Lcom/android/phone/CallRejectListAdapter$ItemViewHolder;
    iput p1, v0, Lcom/android/phone/CallRejectListAdapter$ItemViewHolder;->id:I

    goto :goto_0
.end method

.method public setCheckSelectCallBack(Lcom/android/phone/CallRejectListAdapter$CheckSelectCallBack;)V
    .locals 0
    .parameter "callBack"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/phone/CallRejectListAdapter;->mCheckSelectCallBack:Lcom/android/phone/CallRejectListAdapter$CheckSelectCallBack;

    .line 92
    return-void
.end method
