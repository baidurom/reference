.class public Lcom/android/phone/SimPickerDialog;
.super Ljava/lang/Object;
.source "SimPickerDialog.java"


# static fields
.field public static final DEFAULT_SIM_NOT_SET:I = -0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;JLandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "suggestedSimId"
    .parameter "listener"

    .prologue
    .line 27
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/phone/SimPickerDialog;->createItemHolder(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/phone/SimPickerDialog;->create(Landroid/content/Context;Ljava/lang/String;JLjava/util/List;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected static create(Landroid/content/Context;Ljava/lang/String;JLjava/util/List;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 3
    .parameter "context"
    .parameter "title"
    .parameter "suggestedSimId"
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/SimPickerAdapter$ItemHolder;",
            ">;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")",
            "Landroid/app/AlertDialog;"
        }
    .end annotation

    .prologue
    .line 31
    .local p4, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/phone/SimPickerAdapter$ItemHolder;>;"
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 32
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/android/phone/SimPickerAdapter;

    invoke-direct {v1, p0, p4, p2, p3}, Lcom/android/phone/SimPickerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;J)V

    .line 33
    .local v1, simAdapter:Lcom/android/phone/SimPickerAdapter;
    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, p5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 35
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "listener"

    .prologue
    .line 23
    const-wide/16 v2, -0x5

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/phone/SimPickerDialog;->createItemHolder(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/phone/SimPickerDialog;->create(Landroid/content/Context;Ljava/lang/String;JLjava/util/List;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected static createItemHolder(Landroid/content/Context;Ljava/lang/String;ZLjava/util/ArrayList;)Ljava/util/List;
    .locals 13
    .parameter "context"
    .parameter "phone"
    .parameter "internet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/SimPickerAdapter$ItemHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    .local p3, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    .line 45
    .local v7, simInfos:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v4, itemHolders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/SimPickerAdapter$ItemHolder;>;"
    const/4 v9, 0x0

    .line 48
    .local v9, temp:Lcom/android/phone/SimPickerAdapter$ItemHolder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 49
    new-instance v9, Lcom/android/phone/SimPickerAdapter$ItemHolder;

    .end local v9           #temp:Lcom/android/phone/SimPickerAdapter$ItemHolder;
    const/4 v10, 0x2

    invoke-direct {v9, p1, v10}, Lcom/android/phone/SimPickerAdapter$ItemHolder;-><init>(Ljava/lang/Object;I)V

    .line 50
    .restart local v9       #temp:Lcom/android/phone/SimPickerAdapter$ItemHolder;
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    const/4 v3, 0x0

    .line 54
    .local v3, index:I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/provider/Telephony$SIMInfo;

    .line 55
    .local v6, simInfo:Landroid/provider/Telephony$SIMInfo;
    new-instance v9, Lcom/android/phone/SimPickerAdapter$ItemHolder;

    .end local v9           #temp:Lcom/android/phone/SimPickerAdapter$ItemHolder;
    const/4 v10, 0x0

    invoke-direct {v9, v6, v10}, Lcom/android/phone/SimPickerAdapter$ItemHolder;-><init>(Ljava/lang/Object;I)V

    .line 56
    .restart local v9       #temp:Lcom/android/phone/SimPickerAdapter$ItemHolder;
    if-nez v3, :cond_1

    .line 57
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v5, v10, -0x1

    .line 60
    .local v5, lastPos:I
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/phone/SimPickerAdapter$ItemHolder;

    iget-object v8, v10, Lcom/android/phone/SimPickerAdapter$ItemHolder;->data:Ljava/lang/Object;

    check-cast v8, Landroid/provider/Telephony$SIMInfo;

    .line 61
    .local v8, temInfo:Landroid/provider/Telephony$SIMInfo;
    iget v10, v6, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iget v11, v8, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-ge v10, v11, :cond_2

    .line 62
    invoke-virtual {v4, v5, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 70
    .end local v5           #lastPos:I
    .end local v6           #simInfo:Landroid/provider/Telephony$SIMInfo;
    .end local v8           #temInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "enable_internet_call_value"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 71
    .local v1, enabled:I
    if-eqz p2, :cond_4

    invoke-static {p0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    if-ne v1, v10, :cond_4

    .line 72
    new-instance v9, Lcom/android/phone/SimPickerAdapter$ItemHolder;

    .end local v9           #temp:Lcom/android/phone/SimPickerAdapter$ItemHolder;
    const-string v10, "Internet"

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Lcom/android/phone/SimPickerAdapter$ItemHolder;-><init>(Ljava/lang/Object;I)V

    .line 73
    .restart local v9       #temp:Lcom/android/phone/SimPickerAdapter$ItemHolder;
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_4
    if-eqz p3, :cond_5

    .line 77
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 78
    .local v0, account:Landroid/accounts/Account;
    new-instance v9, Lcom/android/phone/SimPickerAdapter$ItemHolder;

    .end local v9           #temp:Lcom/android/phone/SimPickerAdapter$ItemHolder;
    const/4 v10, 0x3

    invoke-direct {v9, v0, v10}, Lcom/android/phone/SimPickerAdapter$ItemHolder;-><init>(Ljava/lang/Object;I)V

    .line 79
    .restart local v9       #temp:Lcom/android/phone/SimPickerAdapter$ItemHolder;
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 83
    .end local v0           #account:Landroid/accounts/Account;
    :cond_5
    return-object v4
.end method

.method protected static createItemHolder(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .parameter "context"
    .parameter "internet"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/SimPickerAdapter$ItemHolder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-static {p0, v0, p1, v0}, Lcom/android/phone/SimPickerDialog;->createItemHolder(Landroid/content/Context;Ljava/lang/String;ZLjava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
