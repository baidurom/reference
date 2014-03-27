.class Lcom/android/phone/AutoRedialListActivity$6;
.super Ljava/lang/Object;
.source "AutoRedialListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AutoRedialListActivity;->processPickedResult(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AutoRedialListActivity;

.field final synthetic val$phoneNumberProjection:[Ljava/lang/String;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/phone/AutoRedialListActivity;Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/phone/AutoRedialListActivity$6;->this$0:Lcom/android/phone/AutoRedialListActivity;

    iput-object p2, p0, Lcom/android/phone/AutoRedialListActivity$6;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/phone/AutoRedialListActivity$6;->val$phoneNumberProjection:[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 279
    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity$6;->this$0:Lcom/android/phone/AutoRedialListActivity;

    #getter for: Lcom/android/phone/AutoRedialListActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/AutoRedialListActivity;->access$600(Lcom/android/phone/AutoRedialListActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/AutoRedialListActivity$6;->val$uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/phone/AutoRedialListActivity$6;->val$phoneNumberProjection:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 283
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 286
    .local v10, number:Ljava/lang/String;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity$6;->this$0:Lcom/android/phone/AutoRedialListActivity;

    #getter for: Lcom/android/phone/AutoRedialListActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/AutoRedialListActivity;->access$600(Lcom/android/phone/AutoRedialListActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/android/phone/AutoRedialListActivity;->hasBeenExistedInADList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    .line 288
    .local v8, hasBeenExisted:Z
    if-nez v8, :cond_6

    .line 290
    const-string v9, ""

    .line 291
    .local v9, name:Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 293
    .local v1, phoneLookUpUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity$6;->this$0:Lcom/android/phone/AutoRedialListActivity;

    #getter for: Lcom/android/phone/AutoRedialListActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/AutoRedialListActivity;->access$600(Lcom/android/phone/AutoRedialListActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 296
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 301
    :cond_0
    if-eqz v6, :cond_1

    .line 302
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 303
    const/4 v6, 0x0

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity$6;->this$0:Lcom/android/phone/AutoRedialListActivity;

    #getter for: Lcom/android/phone/AutoRedialListActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/AutoRedialListActivity;->access$600(Lcom/android/phone/AutoRedialListActivity;)Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v9, v10, v2, v3}, Lcom/android/phone/AutoRedialListActivity;->insertToADList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 307
    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity$6;->this$0:Lcom/android/phone/AutoRedialListActivity;

    #calls: Lcom/android/phone/AutoRedialListActivity;->refreshList()V
    invoke-static {v0}, Lcom/android/phone/AutoRedialListActivity;->access$300(Lcom/android/phone/AutoRedialListActivity;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 322
    .end local v1           #phoneLookUpUri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #hasBeenExisted:Z
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #number:Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v7, :cond_3

    .line 323
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 324
    const/4 v7, 0x0

    .line 327
    :cond_3
    return-void

    .line 301
    .restart local v1       #phoneLookUpUri:Landroid/net/Uri;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v8       #hasBeenExisted:Z
    .restart local v9       #name:Ljava/lang/String;
    .restart local v10       #number:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 302
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 303
    const/4 v6, 0x0

    :cond_4
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 322
    .end local v1           #phoneLookUpUri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #hasBeenExisted:Z
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #number:Ljava/lang/String;
    :catchall_1
    move-exception v0

    if-eqz v7, :cond_5

    .line 323
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 324
    const/4 v7, 0x0

    :cond_5
    throw v0

    .line 310
    .restart local v8       #hasBeenExisted:Z
    .restart local v10       #number:Ljava/lang/String;
    :cond_6
    :try_start_4
    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity$6;->this$0:Lcom/android/phone/AutoRedialListActivity;

    #getter for: Lcom/android/phone/AutoRedialListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/AutoRedialListActivity;->access$700(Lcom/android/phone/AutoRedialListActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/phone/AutoRedialListActivity$6$1;

    invoke-direct {v2, p0}, Lcom/android/phone/AutoRedialListActivity$6$1;-><init>(Lcom/android/phone/AutoRedialListActivity$6;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method
