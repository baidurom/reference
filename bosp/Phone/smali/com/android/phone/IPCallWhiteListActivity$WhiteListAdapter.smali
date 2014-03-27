.class Lcom/android/phone/IPCallWhiteListActivity$WhiteListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "IPCallWhiteListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IPCallWhiteListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WhiteListAdapter"
.end annotation


# instance fields
.field private mInflator:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/phone/IPCallWhiteListActivity;


# direct methods
.method public constructor <init>(Lcom/android/phone/IPCallWhiteListActivity;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 7
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"
    .parameter "flags"

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/phone/IPCallWhiteListActivity$WhiteListAdapter;->this$0:Lcom/android/phone/IPCallWhiteListActivity;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 396
    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 397
    iget-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity$WhiteListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity$WhiteListAdapter;->mInflator:Landroid/view/LayoutInflater;

    .line 399
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v11, 0x8

    const/high16 v10, 0x4180

    const/4 v9, 0x0

    .line 405
    invoke-virtual {p0, p1}, Lcom/android/phone/IPCallWhiteListActivity$WhiteListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 406
    .local v0, cursor:Landroid/database/Cursor;
    if-nez p2, :cond_0

    .line 407
    iget-object v7, p0, Lcom/android/phone/IPCallWhiteListActivity$WhiteListAdapter;->mInflator:Landroid/view/LayoutInflater;

    const v8, 0x7f040027

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 412
    .local v4, result:Landroid/view/View;
    :goto_0
    const/4 v7, 0x1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 413
    .local v5, sName:Ljava/lang/String;
    const/4 v7, 0x2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 415
    .local v6, sNumber:Ljava/lang/String;
    const v7, 0x7f0700cc

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 416
    .local v2, name:Landroid/widget/TextView;
    const v7, 0x7f0700cd

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 418
    .local v3, number:Landroid/widget/TextView;
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 423
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 424
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 430
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 431
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 432
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 437
    :goto_2
    const v7, 0x7f070020

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 438
    .local v1, deleteIcon:Landroid/widget/ImageView;
    new-instance v7, Lcom/android/phone/IPCallWhiteListActivity$WhiteListAdapter$1;

    invoke-direct {v7, p0, p1}, Lcom/android/phone/IPCallWhiteListActivity$WhiteListAdapter$1;-><init>(Lcom/android/phone/IPCallWhiteListActivity$WhiteListAdapter;I)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    return-object v4

    .line 409
    .end local v1           #deleteIcon:Landroid/widget/ImageView;
    .end local v2           #name:Landroid/widget/TextView;
    .end local v3           #number:Landroid/widget/TextView;
    .end local v4           #result:Landroid/view/View;
    .end local v5           #sName:Ljava/lang/String;
    .end local v6           #sNumber:Ljava/lang/String;
    :cond_0
    move-object v4, p2

    .restart local v4       #result:Landroid/view/View;
    goto :goto_0

    .line 426
    .restart local v2       #name:Landroid/widget/TextView;
    .restart local v3       #number:Landroid/widget/TextView;
    .restart local v5       #sName:Ljava/lang/String;
    .restart local v6       #sNumber:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 434
    :cond_2
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
