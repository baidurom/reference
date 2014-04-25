.class Lcom/android/phone/QueryLocation$1;
.super Ljava/lang/Object;
.source "QueryLocation.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/QueryLocation;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/QueryLocation;


# direct methods
.method constructor <init>(Lcom/android/phone/QueryLocation;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/phone/QueryLocation$1;->this$0:Lcom/android/phone/QueryLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 6
    .parameter "newText"

    .prologue
    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, input:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/phone/QueryLocation$1;->this$0:Lcom/android/phone/QueryLocation;

    #calls: Lcom/android/phone/QueryLocation;->getFiltedCities(Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/QueryLocation;->access$000(Lcom/android/phone/QueryLocation;Ljava/lang/String;)[Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/android/phone/QueryLocation$1;->this$0:Lcom/android/phone/QueryLocation;

    #getter for: Lcom/android/phone/QueryLocation;->filtedCities:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/QueryLocation;->access$100(Lcom/android/phone/QueryLocation;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/phone/QueryLocation$1;->this$0:Lcom/android/phone/QueryLocation;

    #getter for: Lcom/android/phone/QueryLocation;->mResultList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/phone/QueryLocation;->access$300(Lcom/android/phone/QueryLocation;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/phone/QueryLocation$1;->this$0:Lcom/android/phone/QueryLocation;

    #getter for: Lcom/android/phone/QueryLocation;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/QueryLocation;->access$200(Lcom/android/phone/QueryLocation;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f04003c

    iget-object v5, p0, Lcom/android/phone/QueryLocation$1;->this$0:Lcom/android/phone/QueryLocation;

    #getter for: Lcom/android/phone/QueryLocation;->filtedCities:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/QueryLocation;->access$100(Lcom/android/phone/QueryLocation;)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method
