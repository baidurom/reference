.class Lcom/android/phone/IPCallWhiteListActivity$5;
.super Ljava/lang/Object;
.source "IPCallWhiteListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IPCallWhiteListActivity;->processPickedResult(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IPCallWhiteListActivity;

.field final synthetic val$phoneNumberProjection:[Ljava/lang/String;

.field final synthetic val$resultCount:I

.field final synthetic val$uris:[Landroid/os/Parcelable;


# direct methods
.method constructor <init>(Lcom/android/phone/IPCallWhiteListActivity;I[Landroid/os/Parcelable;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/phone/IPCallWhiteListActivity$5;->this$0:Lcom/android/phone/IPCallWhiteListActivity;

    iput p2, p0, Lcom/android/phone/IPCallWhiteListActivity$5;->val$resultCount:I

    iput-object p3, p0, Lcom/android/phone/IPCallWhiteListActivity$5;->val$uris:[Landroid/os/Parcelable;

    iput-object p4, p0, Lcom/android/phone/IPCallWhiteListActivity$5;->val$phoneNumberProjection:[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 263
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    iget v0, p0, Lcom/android/phone/IPCallWhiteListActivity$5;->val$resultCount:I

    if-ge v11, v0, :cond_7

    .line 264
    iget-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity$5;->val$uris:[Landroid/os/Parcelable;

    aget-object v1, v0, v11

    check-cast v1, Landroid/net/Uri;

    .line 266
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity$5;->this$0:Lcom/android/phone/IPCallWhiteListActivity;

    #getter for: Lcom/android/phone/IPCallWhiteListActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/IPCallWhiteListActivity;->access$600(Lcom/android/phone/IPCallWhiteListActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/IPCallWhiteListActivity$5;->val$phoneNumberProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 270
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_2

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 273
    .local v13, number:Ljava/lang/String;
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity$5;->this$0:Lcom/android/phone/IPCallWhiteListActivity;

    #getter for: Lcom/android/phone/IPCallWhiteListActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/IPCallWhiteListActivity;->access$600(Lcom/android/phone/IPCallWhiteListActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/IPCallWhiteListActivity$5;->this$0:Lcom/android/phone/IPCallWhiteListActivity;

    iget-object v2, v2, Lcom/android/phone/IPCallWhiteListActivity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v0, v2, v13}, Lcom/android/phone/IPCallWhiteListActivity;->hasBeenExistedInWhiteList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 275
    .local v10, hasBeenExisted:Z
    if-nez v10, :cond_6

    .line 277
    const-string v12, ""

    .line 278
    .local v12, name:Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v13}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 280
    .local v3, phoneLookUpUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity$5;->this$0:Lcom/android/phone/IPCallWhiteListActivity;

    #getter for: Lcom/android/phone/IPCallWhiteListActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/IPCallWhiteListActivity;->access$600(Lcom/android/phone/IPCallWhiteListActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "display_name"

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 283
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    const-string v0, "display_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    .line 288
    :cond_0
    if-eqz v8, :cond_1

    .line 289
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 290
    const/4 v8, 0x0

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity$5;->this$0:Lcom/android/phone/IPCallWhiteListActivity;

    #getter for: Lcom/android/phone/IPCallWhiteListActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/IPCallWhiteListActivity;->access$600(Lcom/android/phone/IPCallWhiteListActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/IPCallWhiteListActivity$5;->this$0:Lcom/android/phone/IPCallWhiteListActivity;

    iget-object v2, v2, Lcom/android/phone/IPCallWhiteListActivity;->mSubscriberId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v2, v12, v13, v4}, Lcom/android/phone/BaiduPhoneUtil;->insertToWhiteList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 294
    iget-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity$5;->this$0:Lcom/android/phone/IPCallWhiteListActivity;

    #calls: Lcom/android/phone/IPCallWhiteListActivity;->refreshList()V
    invoke-static {v0}, Lcom/android/phone/IPCallWhiteListActivity;->access$300(Lcom/android/phone/IPCallWhiteListActivity;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 309
    .end local v3           #phoneLookUpUri:Landroid/net/Uri;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v10           #hasBeenExisted:Z
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #number:Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v9, :cond_3

    .line 310
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 311
    const/4 v9, 0x0

    .line 263
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 288
    .restart local v3       #phoneLookUpUri:Landroid/net/Uri;
    .restart local v8       #c:Landroid/database/Cursor;
    .restart local v10       #hasBeenExisted:Z
    .restart local v12       #name:Ljava/lang/String;
    .restart local v13       #number:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 289
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 290
    const/4 v8, 0x0

    :cond_4
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 309
    .end local v3           #phoneLookUpUri:Landroid/net/Uri;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v10           #hasBeenExisted:Z
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #number:Ljava/lang/String;
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_5

    .line 310
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 311
    const/4 v9, 0x0

    :cond_5
    throw v0

    .line 297
    .restart local v10       #hasBeenExisted:Z
    .restart local v13       #number:Ljava/lang/String;
    :cond_6
    :try_start_4
    iget-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity$5;->this$0:Lcom/android/phone/IPCallWhiteListActivity;

    #getter for: Lcom/android/phone/IPCallWhiteListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/IPCallWhiteListActivity;->access$700(Lcom/android/phone/IPCallWhiteListActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/phone/IPCallWhiteListActivity$5$1;

    invoke-direct {v2, p0}, Lcom/android/phone/IPCallWhiteListActivity$5$1;-><init>(Lcom/android/phone/IPCallWhiteListActivity$5;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 315
    .end local v1           #uri:Landroid/net/Uri;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #hasBeenExisted:Z
    .end local v13           #number:Ljava/lang/String;
    :cond_7
    return-void
.end method
