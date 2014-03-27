.class public Lcom/android/phone/QueryLocation;
.super Landroid/app/Activity;
.source "QueryLocation.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private filtedCities:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mResultList:Landroid/widget/ListView;

.field private mSearch:Landroid/widget/SearchView;

.field private sCities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/android/phone/QueryLocation;->sCities:Ljava/util/List;

    .line 40
    iput-object v0, p0, Lcom/android/phone/QueryLocation;->filtedCities:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/QueryLocation;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/phone/QueryLocation;->getFiltedCities(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/QueryLocation;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/QueryLocation;->filtedCities:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/QueryLocation;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/QueryLocation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/QueryLocation;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/QueryLocation;->mResultList:Landroid/widget/ListView;

    return-object v0
.end method

.method private getFiltedCities(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "input"

    .prologue
    const/4 v6, 0x1

    .line 89
    iget-object v5, p0, Lcom/android/phone/QueryLocation;->sCities:Ljava/util/List;

    if-nez v5, :cond_0

    .line 90
    const/4 v5, 0x0

    .line 110
    :goto_0
    return-object v5

    .line 92
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v3, result:Ljava/util/List;
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 95
    .local v2, isDigitsOnly:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lcom/android/phone/QueryLocation;->sCities:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 96
    iget-object v5, p0, Lcom/android/phone/QueryLocation;->sCities:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 97
    .local v0, city:[Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 98
    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 99
    aget-object v5, v0, v6

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 102
    :cond_2
    aget-object v5, v0, v6

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 103
    aget-object v5, v0, v6

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 108
    .end local v0           #city:[Ljava/lang/String;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 109
    .local v4, size:I
    new-array v5, v4, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/phone/QueryLocation;->filtedCities:[Ljava/lang/String;

    .line 110
    iget-object v5, p0, Lcom/android/phone/QueryLocation;->filtedCities:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lcom/android/phone/QueryLocation;->setContentView(I)V

    .line 46
    iput-object p0, p0, Lcom/android/phone/QueryLocation;->mContext:Landroid/content/Context;

    .line 47
    const v0, 0x7f0700be

    invoke-virtual {p0, v0}, Lcom/android/phone/QueryLocation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/android/phone/QueryLocation;->mSearch:Landroid/widget/SearchView;

    .line 48
    const v0, 0x7f0700c0

    invoke-virtual {p0, v0}, Lcom/android/phone/QueryLocation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/QueryLocation;->mResultList:Landroid/widget/ListView;

    .line 49
    iget-object v0, p0, Lcom/android/phone/QueryLocation;->mResultList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/android/phone/QueryLocation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/internal/telephony/DisturbPreventUtils;->getAllCitys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/QueryLocation;->sCities:Ljava/util/List;

    .line 52
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 122
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/phone/QueryLocation;->filtedCities:[Ljava/lang/String;

    aget-object v1, v2, p3

    .line 123
    .local v1, selfLocation:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/QueryLocation;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ip_call_self_location"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 124
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 125
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "location"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/phone/QueryLocation;->setResult(ILandroid/content/Intent;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/phone/QueryLocation;->finish()V

    .line 128
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 132
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 133
    .local v0, itemId:I
    const v1, #id@home#t

    if-ne v0, v1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/phone/QueryLocation;->finish()V

    .line 137
    const/4 v1, 0x1

    .line 139
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 116
    invoke-virtual {p0}, Lcom/android/phone/QueryLocation;->finish()V

    .line 117
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 57
    iget-object v1, p0, Lcom/android/phone/QueryLocation;->mSearch:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 58
    iget-object v1, p0, Lcom/android/phone/QueryLocation;->mSearch:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/android/phone/QueryLocation;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c027f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, p0, Lcom/android/phone/QueryLocation;->mSearch:Landroid/widget/SearchView;

    new-instance v2, Lcom/android/phone/QueryLocation$1;

    invoke-direct {v2, p0}, Lcom/android/phone/QueryLocation$1;-><init>(Lcom/android/phone/QueryLocation;)V

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/phone/QueryLocation;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 83
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 84
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 86
    :cond_0
    return-void
.end method
