.class Lcom/android/phone/AutoRedialListActivity$RedialListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "AutoRedialListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AutoRedialListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RedialListAdapter"
.end annotation


# instance fields
.field private mInflator:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/phone/AutoRedialListActivity;


# direct methods
.method public constructor <init>(Lcom/android/phone/AutoRedialListActivity;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 7
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"
    .parameter "flags"

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/phone/AutoRedialListActivity$RedialListAdapter;->this$0:Lcom/android/phone/AutoRedialListActivity;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 398
    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 399
    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity$RedialListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/phone/AutoRedialListActivity$RedialListAdapter;->mInflator:Landroid/view/LayoutInflater;

    .line 401
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/phone/AutoRedialListActivity$RedialListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 408
    .local v0, cursor:Landroid/database/Cursor;
    if-nez p2, :cond_0

    .line 409
    iget-object v6, p0, Lcom/android/phone/AutoRedialListActivity$RedialListAdapter;->mInflator:Landroid/view/LayoutInflater;

    const v7, 0x7f040003

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 413
    .local v5, result:Landroid/view/View;
    :goto_0
    const v6, 0x7f07001d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 414
    .local v2, name:Landroid/widget/TextView;
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    const v6, 0x7f07001e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 417
    .local v3, number:Landroid/widget/TextView;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    const v6, 0x7f07001f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 420
    .local v4, repeat:Landroid/widget/TextView;
    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/phone/AutoRedialListActivity$RedialListAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0c02e9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 427
    const/high16 v6, 0x4180

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 428
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    :goto_2
    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 435
    const/high16 v6, 0x4180

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 436
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    :goto_3
    const v6, 0x7f070020

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 442
    .local v1, deleteIcon:Landroid/widget/ImageView;
    new-instance v6, Lcom/android/phone/AutoRedialListActivity$RedialListAdapter$1;

    invoke-direct {v6, p0, p1}, Lcom/android/phone/AutoRedialListActivity$RedialListAdapter$1;-><init>(Lcom/android/phone/AutoRedialListActivity$RedialListAdapter;I)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    return-object v5

    .line 411
    .end local v1           #deleteIcon:Landroid/widget/ImageView;
    .end local v2           #name:Landroid/widget/TextView;
    .end local v3           #number:Landroid/widget/TextView;
    .end local v4           #repeat:Landroid/widget/TextView;
    .end local v5           #result:Landroid/view/View;
    :cond_0
    move-object v5, p2

    .restart local v5       #result:Landroid/view/View;
    goto/16 :goto_0

    .line 420
    .restart local v2       #name:Landroid/widget/TextView;
    .restart local v3       #number:Landroid/widget/TextView;
    .restart local v4       #repeat:Landroid/widget/TextView;
    :cond_1
    iget-object v6, p0, Lcom/android/phone/AutoRedialListActivity$RedialListAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0c02e3

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 430
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 438
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method
