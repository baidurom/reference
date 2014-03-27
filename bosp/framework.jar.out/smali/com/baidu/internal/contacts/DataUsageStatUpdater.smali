.class public Lcom/baidu/internal/contacts/DataUsageStatUpdater;
.super Ljava/lang/Object;
.source "DataUsageStatUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/contacts/DataUsageStatUpdater$DataUsageFeedback;
    }
.end annotation


# static fields
.field private static final BAIDU_ACCOUNT_MIMETYPE:Ljava/lang/String; = "vnd.android.cursor.item/baidu-account"

.field private static final BAIDU_SIP_COLUMN_CONTENT:Ljava/lang/String; = "content"

.field private static final BAIDU_SIP_COLUMN_SIP_ACCOUNT:Ljava/lang/String; = "sip_account"

.field private static final BAIDU_SIP_COLUMN_TYPE:Ljava/lang/String; = "type"

.field private static final BAIDU_SIP_CONTENT_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = null

.field private static final TYPE_BAIDU_ACCOUNT:I = 0x1

.field private static final TYPE_EMAIL:I = 0x2

.field private static final TYPE_PHONE:I = 0x3


# instance fields
.field private mContactList4Email:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContactList4Phone:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-class v0, Lcom/baidu/internal/contacts/DataUsageStatUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    .line 63
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "baidu_sip"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->BAIDU_SIP_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->mResolver:Landroid/content/ContentResolver;

    .line 89
    return-void
.end method

.method private getContactId(J)J
    .locals 9
    .parameter "rawContactId"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 227
    const-wide/16 v6, -0x1

    .line 228
    .local v6, contactId:J
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 230
    .local v1, rawContactUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "contact_id"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 235
    .local v8, rawContactCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 237
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 241
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 245
    :cond_1
    return-wide v6

    .line 241
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private internalUpdateWithAddress(Ljava/util/Collection;Ljava/lang/String;Z)Z
    .locals 12
    .parameter
    .parameter "type"
    .parameter "isDupAvoid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v0, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalUpdateWithAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v10, whereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v11, whereBuilder:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v9, v0, [Ljava/lang/String;

    .line 128
    .local v9, questionMarks:[Ljava/lang/String;
    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 129
    const-string v0, "?"

    invoke-static {v9, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    const-string v0, "data1 IN ("

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v0, p0, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "contact_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_id"

    aput-object v4, v2, v3

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 138
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 139
    sget-object v0, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    const-string v1, "Cursor for Email.CONTENT_URI became null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #questionMarks:[Ljava/lang/String;
    .end local v10           #whereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #whereBuilder:Ljava/lang/StringBuilder;
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 141
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v9       #questionMarks:[Ljava/lang/String;
    .restart local v10       #whereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11       #whereBuilder:Ljava/lang/StringBuilder;
    :cond_2
    new-instance v6, Ljava/util/HashSet;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 142
    .local v6, contactIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 144
    .local v8, dataIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v0, -0x1

    :try_start_0
    invoke-interface {v7, v0}, Landroid/database/Cursor;->move(I)Z

    .line 145
    :cond_3
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 146
    if-eqz p3, :cond_4

    .line 149
    iget-object v0, p0, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->mContactList4Phone:Ljava/util/HashSet;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->mContactList4Phone:Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 153
    :cond_4
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 154
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 157
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 159
    iput-object v6, p0, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->mContactList4Email:Ljava/util/HashSet;

    .line 160
    invoke-direct {p0, v6, v8, p2}, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->update(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private queryViaType(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .parameter "sipAccount"
    .parameter "type"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 459
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "content"

    aput-object v0, v2, v1

    .line 460
    .local v2, BAIDU_SIP_PROJECTION:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 462
    .local v6, BAIDU_SIP_CONTENT_INDEX:I
    const-string/jumbo v3, "sip_account=? AND type=?"

    .line 465
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 467
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->BAIDU_SIP_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 470
    .local v7, sipCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 472
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 477
    .local v8, value:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 481
    .end local v8           #value:Ljava/lang/String;
    :goto_0
    return-object v8

    .line 477
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v8, v5

    .line 481
    goto :goto_0

    .line 477
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private update(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 24
    .parameter
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 371
    .local p1, contactIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    .local p2, dataIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 373
    .local v8, currentTimeMillis:J
    const/16 v16, 0x0

    .line 377
    .local v16, successful:Z
    sget v20, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v21, 0xe

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    .line 378
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 379
    sget-object v20, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    const/16 v21, 0x3

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 380
    sget-object v20, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    const-string v21, "Given list for data IDs is null. Ignoring."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_0
    :goto_0
    return v16

    .line 385
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v10

    .line 386
    .local v10, dataSize:I
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 387
    .local v13, idsSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 388
    .local v14, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    const/4 v7, 0x0

    .line 389
    .local v7, currentDataIndex:I
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 390
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 391
    .local v12, id:Ljava/lang/Long;
    invoke-virtual {v13, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 392
    if-ge v7, v10, :cond_2

    add-int/lit8 v20, v7, 0x1

    move/from16 v0, v20

    rem-int/lit16 v0, v0, 0xc8

    move/from16 v20, v0

    if-nez v20, :cond_2

    .line 393
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v13, v1}, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->updateUsageData(Ljava/util/HashSet;Ljava/lang/String;)Z

    move-result v16

    .line 394
    invoke-virtual {v13}, Ljava/util/HashSet;->clear()V

    .line 396
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 397
    goto :goto_1

    .line 398
    .end local v12           #id:Ljava/lang/Long;
    :cond_3
    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v20

    if-lez v20, :cond_0

    .line 399
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v13, v1}, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->updateUsageData(Ljava/util/HashSet;Ljava/lang/String;)Z

    move-result v16

    .line 400
    invoke-virtual {v13}, Ljava/util/HashSet;->clear()V

    goto :goto_0

    .line 405
    .end local v7           #currentDataIndex:I
    .end local v10           #dataSize:I
    .end local v13           #idsSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v14           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_4
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 406
    sget-object v20, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    const/16 v21, 0x3

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 407
    sget-object v20, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    const-string v21, "Given list for contact IDs is null. Ignoring."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 410
    :cond_5
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .local v19, whereBuilder:Ljava/lang/StringBuilder;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v18, whereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v15, v0, [Ljava/lang/String;

    .line 413
    .local v15, questionMarks:[Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 414
    .local v5, contactId:J
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 416
    .end local v5           #contactId:J
    :cond_6
    const-string v20, "?"

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 417
    const-string v20, "_id IN ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    move-object/from16 v0, v21

    invoke-static {v0, v15}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    sget-object v20, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    const/16 v21, 0x3

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 422
    sget-object v20, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "contactId where: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    sget-object v20, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "contactId selection: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_7
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 427
    .local v17, values:Landroid/content/ContentValues;
    const-string v20, "last_time_contacted"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v21, v0

    sget-object v22, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    move-object/from16 v3, v23

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    if-lez v20, :cond_8

    .line 430
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 432
    :cond_8
    sget-object v20, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    const/16 v21, 0x3

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 433
    sget-object v20, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "update toward raw contacts "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " failed"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateUsageData(Ljava/util/HashSet;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, idsSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 443
    const/4 v0, 0x0

    .line 444
    .local v0, successful:Z
    invoke-static {}, Lcom/baidu/internal/contacts/DataUsageStatUpdater$DataUsageFeedback;->access$000()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, ","

    invoke-static {v3, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 448
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->mResolver:Landroid/content/ContentResolver;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v2, v1, v3, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 449
    const/4 v0, 0x1

    .line 455
    :cond_0
    :goto_0
    return v0

    .line 451
    :cond_1
    sget-object v2, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    sget-object v2, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update toward data rows "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public updateWithAddress(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "long_text"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->internalUpdateWithAddress(Ljava/util/Collection;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public updateWithBaiduAccount(Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 18
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, accountList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v2, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    sget-object v2, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateWithBaiduAccount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    if-eqz p1, :cond_6

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 173
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v16, whereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .local v17, whereBuilder:Ljava/lang/StringBuilder;
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v15, v2, [Ljava/lang/String;

    .line 177
    .local v15, questionMarks:[Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 178
    const/4 v2, 0x0

    const-string/jumbo v3, "vnd.android.cursor.item/baidu-account"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 179
    const-string v2, "?"

    invoke-static {v15, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    const-string/jumbo v2, "mimetype=? AND "

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data1 IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-static {v3, v15}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "raw_contact_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "_id"

    aput-object v6, v4, v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 188
    .local v11, dataCursor:Landroid/database/Cursor;
    const-wide/16 v8, -0x1

    .line 189
    .local v8, contactId:J
    const-wide/16 v12, -0x1

    .line 191
    .local v12, dataId:J
    if-eqz v11, :cond_6

    .line 192
    new-instance v10, Ljava/util/HashSet;

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v10, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 193
    .local v10, contactIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v14, Ljava/util/HashSet;

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v14, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 196
    .local v14, dataIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v2, -0x1

    :try_start_0
    invoke-interface {v11, v2}, Landroid/database/Cursor;->move(I)Z

    .line 197
    :cond_1
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 198
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->getContactId(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 199
    const-wide/16 v2, -0x1

    cmp-long v2, v2, v8

    if-nez v2, :cond_2

    .line 200
    const/4 v2, 0x0

    .line 216
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 223
    .end local v8           #contactId:J
    .end local v10           #contactIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v11           #dataCursor:Landroid/database/Cursor;
    .end local v12           #dataId:J
    .end local v14           #dataIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v15           #questionMarks:[Ljava/lang/String;
    .end local v16           #whereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #whereBuilder:Ljava/lang/StringBuilder;
    :goto_1
    return v2

    .line 203
    .restart local v8       #contactId:J
    .restart local v10       #contactIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v11       #dataCursor:Landroid/database/Cursor;
    .restart local v12       #dataId:J
    .restart local v14       #dataIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v15       #questionMarks:[Ljava/lang/String;
    .restart local v16       #whereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17       #whereBuilder:Ljava/lang/StringBuilder;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->mContactList4Phone:Ljava/util/HashSet;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->mContactList4Phone:Ljava/util/HashSet;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 207
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->mContactList4Email:Ljava/util/HashSet;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->mContactList4Email:Ljava/util/HashSet;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 211
    :cond_4
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 212
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 219
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v10, v14, v1}, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->update(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    .line 223
    .end local v8           #contactId:J
    .end local v10           #contactIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v11           #dataCursor:Landroid/database/Cursor;
    .end local v12           #dataId:J
    .end local v14           #dataIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v15           #questionMarks:[Ljava/lang/String;
    .end local v16           #whereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #whereBuilder:Ljava/lang/StringBuilder;
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public updateWithPhoneNumber(Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 13
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, numbers:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 259
    sget-object v0, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    sget-object v0, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWithPhoneNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 263
    const-string v3, "PHONE_NUMBERS_EQUAL(data1,?,0)"

    .line 264
    .local v3, selection:Ljava/lang/String;
    const/4 v7, 0x0

    .line 266
    .local v7, cursor:Landroid/database/Cursor;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 267
    .local v6, contactIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 268
    .local v8, dataIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 269
    .local v9, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 270
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 271
    .local v10, number:Ljava/lang/String;
    iget-object v0, p0, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "contact_id"

    aput-object v4, v2, v11

    const-string v4, "_id"

    aput-object v4, v2, v12

    new-array v4, v12, [Ljava/lang/String;

    aput-object v10, v4, v11

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 273
    if-eqz v7, :cond_1

    .line 277
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 278
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 279
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 282
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 283
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 282
    :cond_3
    if-eqz v7, :cond_1

    .line 283
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 287
    .end local v10           #number:Ljava/lang/String;
    :cond_4
    iput-object v6, p0, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->mContactList4Phone:Ljava/util/HashSet;

    .line 288
    invoke-direct {p0, v6, v8, p2}, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->update(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    .line 290
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #contactIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #dataIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v9           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    return v0

    :cond_5
    move v0, v11

    goto :goto_2
.end method

.method public updateWithRfc822Address(Ljava/util/Collection;)Z
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, texts:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/CharSequence;>;"
    const/4 v8, 0x0

    .line 101
    if-nez p1, :cond_0

    .line 111
    :goto_0
    return v8

    .line 104
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 105
    .local v0, addresses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 106
    .local v5, text:Ljava/lang/CharSequence;
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v7

    .line 107
    .local v7, tokens:[Landroid/text/util/Rfc822Token;
    move-object v1, v7

    .local v1, arr$:[Landroid/text/util/Rfc822Token;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v6, v1, v3

    .line 108
    .local v6, token:Landroid/text/util/Rfc822Token;
    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 111
    .end local v1           #arr$:[Landroid/text/util/Rfc822Token;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #text:Ljava/lang/CharSequence;
    .end local v6           #token:Landroid/text/util/Rfc822Token;
    .end local v7           #tokens:[Landroid/text/util/Rfc822Token;
    :cond_2
    const-string v9, "long_text"

    invoke-direct {p0, v0, v9, v8}, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->internalUpdateWithAddress(Ljava/util/Collection;Ljava/lang/String;Z)Z

    move-result v8

    goto :goto_0
.end method

.method public updateWithSipNumber(Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 17
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, numbers:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v14, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    const/4 v15, 0x3

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 305
    sget-object v14, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "updateWithSipNumber: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    if-eqz p1, :cond_b

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_b

    .line 309
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v9, phoneNumList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v4, emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v2, baiduAccountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 315
    .local v6, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 316
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 317
    .local v8, number:Ljava/lang/String;
    move-object v7, v8

    .line 318
    .local v7, normalizedSipNumber:Ljava/lang/String;
    const-string v14, "@"

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 319
    .local v5, end:I
    const/4 v14, -0x1

    if-eq v14, v5, :cond_2

    .line 320
    const/4 v14, 0x0

    invoke-virtual {v8, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 324
    :cond_2
    const/4 v14, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v14}, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->queryViaType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 325
    .local v10, phoneNumber:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 326
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_3
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v14}, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->queryViaType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 331
    .local v3, email:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 332
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_4
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v14}, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->queryViaType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, accountName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 338
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 342
    .end local v1           #accountName:Ljava/lang/String;
    .end local v3           #email:Ljava/lang/String;
    .end local v5           #end:I
    .end local v7           #normalizedSipNumber:Ljava/lang/String;
    .end local v8           #number:Ljava/lang/String;
    .end local v10           #phoneNumber:Ljava/lang/String;
    :cond_5
    const/4 v13, 0x0

    .line 343
    .local v13, updateWithPhone:Z
    const/4 v12, 0x0

    .line 344
    .local v12, updateWithEmail:Z
    const/4 v11, 0x0

    .line 346
    .local v11, updateWithBaiduAccount:Z
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_6

    .line 347
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->mContactList4Phone:Ljava/util/HashSet;

    .line 348
    const-string v14, "call"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v14}, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->updateWithPhoneNumber(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v13

    .line 351
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_7

    .line 352
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->mContactList4Email:Ljava/util/HashSet;

    .line 353
    const-string v14, "call"

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v15}, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->internalUpdateWithAddress(Ljava/util/Collection;Ljava/lang/String;Z)Z

    move-result v12

    .line 356
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_8

    .line 357
    const-string v14, "call"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14}, Lcom/baidu/internal/contacts/DataUsageStatUpdater;->updateWithBaiduAccount(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v11

    .line 360
    :cond_8
    if-nez v13, :cond_9

    if-nez v12, :cond_9

    if-eqz v11, :cond_a

    :cond_9
    const/4 v14, 0x1

    .line 363
    .end local v2           #baiduAccountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v9           #phoneNumList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #updateWithBaiduAccount:Z
    .end local v12           #updateWithEmail:Z
    .end local v13           #updateWithPhone:Z
    :goto_1
    return v14

    .line 360
    .restart local v2       #baiduAccountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v9       #phoneNumList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11       #updateWithBaiduAccount:Z
    .restart local v12       #updateWithEmail:Z
    .restart local v13       #updateWithPhone:Z
    :cond_a
    const/4 v14, 0x0

    goto :goto_1

    .line 363
    .end local v2           #baiduAccountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v9           #phoneNumList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #updateWithBaiduAccount:Z
    .end local v12           #updateWithEmail:Z
    .end local v13           #updateWithPhone:Z
    :cond_b
    const/4 v14, 0x0

    goto :goto_1
.end method
