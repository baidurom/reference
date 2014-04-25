.class public Lcom/android/phone/CallRejectListModify;
.super Landroid/app/Activity;
.source "CallRejectListModify.java"

# interfaces
.implements Lcom/android/phone/CallRejectListAdapter$CheckSelectCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallRejectListModify$AddContactsTask;
    }
.end annotation


# static fields
.field private static final CALL_LIST_DIALOG_WAIT:I = 0x2

.field private static final ID_INDEX:I = 0x0

.field private static final MENU_ID_SELECT_ALL:I = 0x1

.field private static final MENU_ID_TRUSH:I = 0x3

.field private static final MENU_ID_UNSELECT_ALL:I = 0x2

.field private static final NAME_INDEX:I = 0x3

.field private static final NUMBER_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CallRejectListModify"

.field private static final TYPE_INDEX:I = 0x2

.field private static final mUri:Landroid/net/Uri;


# instance fields
.field private listView:Landroid/widget/ListView;

.field private mAddContactsTask:Lcom/android/phone/CallRejectListModify$AddContactsTask;

.field private mCRLItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/CallRejectListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCallRejectListAdapter:Lcom/android/phone/CallRejectListAdapter;

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "content://reject/list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallRejectListModify;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallRejectListModify;->mCRLItemArray:Ljava/util/ArrayList;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallRejectListModify;->mAddContactsTask:Lcom/android/phone/CallRejectListModify$AddContactsTask;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallRejectListModify;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/phone/CallRejectListModify;->mCRLItemArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/CallRejectListModify;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/phone/CallRejectListModify;->isCurTypeVtAndVoice(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallRejectListModify;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/phone/CallRejectListModify;->updateRowById(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/CallRejectListModify;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/phone/CallRejectListModify;->deleteRowById(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/CallRejectListModify;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/phone/CallRejectListModify;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method private configureActionBar()V
    .locals 6

    .prologue
    .line 321
    const-string v4, "CallRejectListModify"

    const-string v5, "configureActionBar()"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/phone/CallRejectListModify;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 323
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040019

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 324
    .local v1, customActionBarView:Landroid/view/View;
    const v4, 0x7f070096

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 325
    .local v2, doneMenuItem:Landroid/widget/ImageButton;
    new-instance v4, Lcom/android/phone/CallRejectListModify$2;

    invoke-direct {v4, p0}, Lcom/android/phone/CallRejectListModify$2;-><init>(Lcom/android/phone/CallRejectListModify;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListModify;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 332
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 333
    const/16 v4, 0x10

    const/16 v5, 0x1a

    invoke-virtual {v0, v4, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 336
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 337
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 339
    :cond_0
    return-void
.end method

.method private deleteRowById(Ljava/lang/String;)V
    .locals 6
    .parameter "id"

    .prologue
    .line 275
    :try_start_0
    sget-object v3, Lcom/android/phone/CallRejectListModify;->mUri:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 276
    .local v1, existNumberURI:Landroid/net/Uri;
    const-string v3, "CallRejectListModify"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "existNumberURI is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListModify;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 278
    .local v2, result:I
    const-string v3, "CallRejectListModify"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v1           #existNumberURI:Landroid/net/Uri;
    .end local v2           #result:I
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "CallRejectListModify"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseInt failed, the index is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteSelection()V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 244
    const-string v3, "CallRejectListModify"

    const-string v4, "Enter deleteSecection Function"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v2, 0x0

    .line 246
    .local v2, isSelected:Z
    iget-object v3, p0, Lcom/android/phone/CallRejectListModify;->mCRLItemArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallRejectListItem;

    .line 247
    .local v0, callrejectitem:Lcom/android/phone/CallRejectListItem;
    invoke-virtual {v0}, Lcom/android/phone/CallRejectListItem;->getIsChecked()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0

    .line 249
    .end local v0           #callrejectitem:Lcom/android/phone/CallRejectListItem;
    :cond_0
    if-eqz v2, :cond_1

    .line 250
    invoke-virtual {p0, v5}, Lcom/android/phone/CallRejectListModify;->showDialog(I)V

    .line 251
    new-instance v3, Lcom/android/phone/CallRejectListModify$AddContactsTask;

    invoke-direct {v3, p0}, Lcom/android/phone/CallRejectListModify$AddContactsTask;-><init>(Lcom/android/phone/CallRejectListModify;)V

    iput-object v3, p0, Lcom/android/phone/CallRejectListModify;->mAddContactsTask:Lcom/android/phone/CallRejectListModify$AddContactsTask;

    .line 252
    iget-object v3, p0, Lcom/android/phone/CallRejectListModify;->mAddContactsTask:Lcom/android/phone/CallRejectListModify$AddContactsTask;

    new-array v4, v5, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/phone/CallRejectListModify;->mCRLItemArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/phone/CallRejectListModify$AddContactsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 254
    :cond_1
    return-void
.end method

.method private getCallRejectListItems()V
    .locals 13

    .prologue
    .line 193
    const/4 v7, 0x0

    .line 195
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListModify;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CallRejectListModify;->mUri:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Number"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 198
    if-nez v7, :cond_0

    .line 223
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 225
    :goto_0
    return-void

    .line 201
    :cond_0
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 203
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 204
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 205
    .local v9, id:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 206
    .local v11, numberDB:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 207
    .local v12, type:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 208
    .local v10, name:Ljava/lang/String;
    const-string v0, "CallRejectListModify"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v0, "CallRejectListModify"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numberDB="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v0, "CallRejectListModify"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v0, "CallRejectListModify"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v0, "3"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "2"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "video"

    iget-object v1, p0, Lcom/android/phone/CallRejectListModify;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "1"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "voice"

    iget-object v1, p0, Lcom/android/phone/CallRejectListModify;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    :cond_2
    new-instance v6, Lcom/android/phone/CallRejectListItem;

    const/4 v0, 0x0

    invoke-direct {v6, v10, v11, v9, v0}, Lcom/android/phone/CallRejectListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 216
    .local v6, crli:Lcom/android/phone/CallRejectListItem;
    iget-object v0, p0, Lcom/android/phone/CallRejectListModify;->mCRLItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .end local v6           #crli:Lcom/android/phone/CallRejectListItem;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 220
    .end local v9           #id:Ljava/lang/String;
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #numberDB:Ljava/lang/String;
    .end local v12           #type:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 221
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "CallRejectListModify"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add the contact fail["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v8           #e:Ljava/lang/Exception;
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isCurTypeVtAndVoice(Ljava/lang/String;)Z
    .locals 12
    .parameter "id"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 285
    const/4 v1, 0x0

    .line 287
    .local v1, existNumberURI:Landroid/net/Uri;
    :try_start_0
    sget-object v0, Lcom/android/phone/CallRejectListModify;->mUri:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 292
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListModify;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v9

    const-string v4, "Number"

    aput-object v4, v2, v10

    const-string v4, "Type"

    aput-object v4, v2, v11

    const/4 v4, 0x3

    const-string v5, "Name"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 295
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v0, v9

    .line 309
    :goto_1
    return v0

    .line 288
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 289
    .local v7, e:Ljava/lang/NumberFormatException;
    const-string v0, "CallRejectListModify"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseInt failed, the index is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 298
    .end local v7           #e:Ljava/lang/NumberFormatException;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 300
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 301
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 302
    .local v8, type:Ljava/lang/String;
    const-string v0, "3"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 304
    goto :goto_1

    .line 306
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 308
    .end local v8           #type:Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 309
    goto :goto_1
.end method

.method private selectAll()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 228
    iget-object v2, p0, Lcom/android/phone/CallRejectListModify;->mCRLItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallRejectListItem;

    .line 229
    .local v0, callrejectitem:Lcom/android/phone/CallRejectListItem;
    invoke-virtual {v0, v3}, Lcom/android/phone/CallRejectListItem;->setIsChecked(Z)V

    goto :goto_0

    .line 231
    .end local v0           #callrejectitem:Lcom/android/phone/CallRejectListItem;
    :cond_0
    const v2, 0x7f0b031f

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/CallRejectListModify;->mCRLItemArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/CallRejectListModify;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallRejectListModify;->updateSelectedItemsView(Ljava/lang/String;)V

    .line 232
    iget-object v2, p0, Lcom/android/phone/CallRejectListModify;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 233
    return-void
.end method

.method private unSelectAll()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 236
    iget-object v2, p0, Lcom/android/phone/CallRejectListModify;->mCRLItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallRejectListItem;

    .line 237
    .local v0, callrejectitem:Lcom/android/phone/CallRejectListItem;
    invoke-virtual {v0, v5}, Lcom/android/phone/CallRejectListItem;->setIsChecked(Z)V

    goto :goto_0

    .line 239
    .end local v0           #callrejectitem:Lcom/android/phone/CallRejectListItem;
    :cond_0
    const v2, 0x7f0b031f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/CallRejectListModify;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallRejectListModify;->updateSelectedItemsView(Ljava/lang/String;)V

    .line 240
    iget-object v2, p0, Lcom/android/phone/CallRejectListModify;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 241
    return-void
.end method

.method private updateRowById(Ljava/lang/String;)V
    .locals 7
    .parameter "id"

    .prologue
    .line 257
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 258
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v4, "video"

    iget-object v5, p0, Lcom/android/phone/CallRejectListModify;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 259
    const-string v4, "Type"

    const-string v5, "1"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :goto_0
    :try_start_0
    sget-object v4, Lcom/android/phone/CallRejectListModify;->mUri:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 266
    .local v2, existNumberURI:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListModify;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 267
    .local v3, result:I
    const-string v4, "CallRejectListModify"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v2           #existNumberURI:Landroid/net/Uri;
    .end local v3           #result:I
    :goto_1
    return-void

    .line 261
    :cond_0
    const-string v4, "Type"

    const-string v5, "2"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :catch_0
    move-exception v1

    .line 269
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v4, "CallRejectListModify"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseInt failed, the index is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateSelectedItemsView(Ljava/lang/String;)V
    .locals 3
    .parameter "checkedItemsCount"

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListModify;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f070097

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 314
    .local v0, selectedItemsView:Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const v0, 0x7f040018

    invoke-virtual {p0, v0}, Lcom/android/phone/CallRejectListModify;->setContentView(I)V

    .line 108
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListModify;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallRejectListModify;->mType:Ljava/lang/String;

    .line 110
    invoke-direct {p0}, Lcom/android/phone/CallRejectListModify;->getCallRejectListItems()V

    .line 111
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/phone/CallRejectListModify;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/CallRejectListModify;->listView:Landroid/widget/ListView;

    .line 112
    new-instance v0, Lcom/android/phone/CallRejectListAdapter;

    iget-object v1, p0, Lcom/android/phone/CallRejectListModify;->mCRLItemArray:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallRejectListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/phone/CallRejectListModify;->mCallRejectListAdapter:Lcom/android/phone/CallRejectListAdapter;

    .line 113
    iget-object v0, p0, Lcom/android/phone/CallRejectListModify;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/phone/CallRejectListModify;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/CallRejectListModify;->mCallRejectListAdapter:Lcom/android/phone/CallRejectListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    iget-object v0, p0, Lcom/android/phone/CallRejectListModify;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/phone/CallRejectListModify$1;

    invoke-direct {v1, p0}, Lcom/android/phone/CallRejectListModify$1;-><init>(Lcom/android/phone/CallRejectListModify;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallRejectListModify;->mCallRejectListAdapter:Lcom/android/phone/CallRejectListAdapter;

    invoke-virtual {v0, p0}, Lcom/android/phone/CallRejectListAdapter;->setCheckSelectCallBack(Lcom/android/phone/CallRejectListAdapter$CheckSelectCallBack;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListModify;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallRejectListModify;->mType:Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Lcom/android/phone/CallRejectListModify;->configureActionBar()V

    .line 130
    const v0, 0x7f0b031f

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallRejectListModify;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallRejectListModify;->updateSelectedItemsView(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 135
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 136
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 137
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListModify;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0320

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 138
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 139
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 142
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    const v0, 0x7f0b031c

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201a0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 150
    const/4 v0, 0x2

    const v1, 0x7f0b031d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02019f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 153
    const/4 v0, 0x3

    const v1, 0x7f0b031e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201a1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 156
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 187
    iget-object v0, p0, Lcom/android/phone/CallRejectListModify;->mAddContactsTask:Lcom/android/phone/CallRejectListModify$AddContactsTask;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/phone/CallRejectListModify;->mAddContactsTask:Lcom/android/phone/CallRejectListModify$AddContactsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallRejectListModify$AddContactsTask;->cancel(Z)Z

    .line 190
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 161
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 177
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 163
    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/CallRejectListModify;->selectAll()V

    goto :goto_0

    .line 166
    :sswitch_1
    invoke-direct {p0}, Lcom/android/phone/CallRejectListModify;->unSelectAll()V

    goto :goto_0

    .line 169
    :sswitch_2
    invoke-direct {p0}, Lcom/android/phone/CallRejectListModify;->deleteSelection()V

    goto :goto_0

    .line 172
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListModify;->finish()V

    goto :goto_0

    .line 161
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x102002c -> :sswitch_3
    .end sparse-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 182
    return-void
.end method

.method public setChecked(Z)V
    .locals 7
    .parameter "isChecked"

    .prologue
    .line 343
    const/4 v1, 0x0

    .line 344
    .local v1, count:I
    iget-object v3, p0, Lcom/android/phone/CallRejectListModify;->mCRLItemArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallRejectListItem;

    .line 345
    .local v0, callrejectitem:Lcom/android/phone/CallRejectListItem;
    invoke-virtual {v0}, Lcom/android/phone/CallRejectListItem;->getIsChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    .end local v0           #callrejectitem:Lcom/android/phone/CallRejectListItem;
    :cond_1
    const v3, 0x7f0b031f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/CallRejectListModify;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallRejectListModify;->updateSelectedItemsView(Ljava/lang/String;)V

    .line 350
    return-void
.end method
