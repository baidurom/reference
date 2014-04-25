.class public Lcom/android/phone/QueryLocation;
.super Landroid/app/Activity;
.source "QueryLocation.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private filtedCities:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mLocalSimId:I

.field private mResultList:Landroid/widget/ListView;

.field private mSearch:Landroid/widget/SearchView;

.field mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

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

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/QueryLocation;->mLocalSimId:I

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

    .line 95
    iget-object v5, p0, Lcom/android/phone/QueryLocation;->sCities:Ljava/util/List;

    if-nez v5, :cond_0

    .line 96
    const/4 v5, 0x0

    .line 116
    :goto_0
    return-object v5

    .line 98
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v3, result:Ljava/util/List;
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 101
    .local v2, isDigitsOnly:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lcom/android/phone/QueryLocation;->sCities:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 102
    iget-object v5, p0, Lcom/android/phone/QueryLocation;->sCities:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 103
    .local v0, city:[Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 104
    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 105
    aget-object v5, v0, v6

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 108
    :cond_2
    aget-object v5, v0, v6

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 109
    aget-object v5, v0, v6

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 114
    .end local v0           #city:[Ljava/lang/String;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 115
    .local v4, size:I
    new-array v5, v4, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/phone/QueryLocation;->filtedCities:[Ljava/lang/String;

    .line 116
    iget-object v5, p0, Lcom/android/phone/QueryLocation;->filtedCities:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v1, 0x7f04003b

    invoke-virtual {p0, v1}, Lcom/android/phone/QueryLocation;->setContentView(I)V

    .line 48
    iput-object p0, p0, Lcom/android/phone/QueryLocation;->mContext:Landroid/content/Context;

    .line 49
    const v1, 0x7f070112

    invoke-virtual {p0, v1}, Lcom/android/phone/QueryLocation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/android/phone/QueryLocation;->mSearch:Landroid/widget/SearchView;

    .line 50
    const v1, 0x7f070114

    invoke-virtual {p0, v1}, Lcom/android/phone/QueryLocation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/phone/QueryLocation;->mResultList:Landroid/widget/ListView;

    .line 51
    iget-object v1, p0, Lcom/android/phone/QueryLocation;->mResultList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/phone/QueryLocation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 54
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "localSimId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/QueryLocation;->mLocalSimId:I

    .line 56
    iget-object v1, p0, Lcom/android/phone/QueryLocation;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/internal/telephony/DisturbPreventUtils;->getAllCitys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/QueryLocation;->sCities:Ljava/util/List;

    .line 57
    return-void
.end method

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
    .line 130
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/phone/QueryLocation;->filtedCities:[Ljava/lang/String;

    aget-object v1, v2, p3

    .line 131
    .local v1, selfLocation:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    iget-object v2, p0, Lcom/android/phone/QueryLocation;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/android/phone/QueryLocation;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/QueryLocation;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    iget-wide v3, v3, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSimId:J

    invoke-static {v2, v1, v3, v4}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->setIpSelfLocation(Landroid/content/Context;Ljava/lang/String;J)I

    .line 142
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/QueryLocation;->finish()V

    .line 143
    return-void

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/QueryLocation;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ipselflocation"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "location"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/phone/QueryLocation;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 147
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 148
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/phone/QueryLocation;->finish()V

    .line 151
    const/4 v1, 0x1

    .line 153
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
    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 122
    invoke-virtual {p0}, Lcom/android/phone/QueryLocation;->finish()V

    .line 123
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 62
    iget-object v1, p0, Lcom/android/phone/QueryLocation;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/phone/QueryLocation;->mLocalSimId:I

    invoke-static {v1, v2}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/QueryLocation;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    .line 63
    iget-object v1, p0, Lcom/android/phone/QueryLocation;->mSearch:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 64
    iget-object v1, p0, Lcom/android/phone/QueryLocation;->mSearch:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/android/phone/QueryLocation;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, p0, Lcom/android/phone/QueryLocation;->mSearch:Landroid/widget/SearchView;

    new-instance v2, Lcom/android/phone/QueryLocation$1;

    invoke-direct {v2, p0}, Lcom/android/phone/QueryLocation$1;-><init>(Lcom/android/phone/QueryLocation;)V

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/phone/QueryLocation;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 89
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 90
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 92
    :cond_0
    return-void
.end method
