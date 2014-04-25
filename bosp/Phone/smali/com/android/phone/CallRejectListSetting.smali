.class public Lcom/android/phone/CallRejectListSetting;
.super Landroid/preference/PreferenceActivity;
.source "CallRejectListSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallRejectListSetting$AddContactsTask;
    }
.end annotation


# static fields
.field public static final CACHED_FORMATTED_NUMBER:I = 0xf

.field public static final CACHED_LOOKUP_URI:I = 0xb

.field public static final CACHED_MATCHED_NUMBER:I = 0xc

.field public static final CACHED_NAME:I = 0x8

.field public static final CACHED_NORMALIZED_NUMBER:I = 0xd

.field public static final CACHED_NUMBER_LABEL:I = 0xa

.field public static final CACHED_NUMBER_TYPE:I = 0x9

.field public static final CACHED_PHOTO_ID:I = 0xe

.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String; = null

.field private static final CALL_LIST_DIALOG_EDIT:I = 0x0

.field private static final CALL_LIST_DIALOG_SELECT:I = 0x1

.field private static final CALL_LIST_DIALOG_WAIT:I = 0x2

.field public static final CALL_LOG_PROJECTION:[Ljava/lang/String; = null

.field private static final CALL_LOG_SEARCH:Ljava/lang/String; = "android.intent.action.SEARCH"

.field private static final CALL_REJECT_CONTACTS_REQUEST:I = 0x7d

.field private static final CALL_REJECT_LOG_REQUEST:I = 0x7e

.field public static final CALL_TYPE:I = 0x4

.field private static final CONTACTS_ADD_ACTION:Ljava/lang/String; = "android.intent.action.contacts.list.PICKMULTIPHONES"

.field private static final CONTACTS_ADD_ACTION_RESULT:Ljava/lang/String; = "com.mediatek.contacts.list.pickdataresult"

.field private static final CONTACT_NAME_COLUMN:I = 0x3

.field public static final COUNTRY_ISO:I = 0x5

.field public static final DATE:I = 0x2

.field public static final DURATION:I = 0x3

.field private static final EVENT_HANDLER_MESSAGE_WAIT:I = 0x0

.field public static final GEOCODED_LOCATION:I = 0x7

.field public static final ID:I = 0x0

.field private static final ID_INDEX:I = 0x0

.field public static final IS_READ:I = 0x10

.field private static final MENU_ID_ADD:I = 0x3

.field private static final MENU_ID_DELETE:I = 0x1

.field private static final NAME_INDEX:I = 0x3

.field public static final NUMBER:I = 0x1

.field private static final NUMBER_INDEX:I = 0x1

.field private static final PHONE_ID_COLUMN:I = 0x0

.field private static final PHONE_LABEL_COLUMN:I = 0x2

.field private static final PHONE_NUMBER_COLUMN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CallRejectListSetting"

.field private static final TYPE_INDEX:I = 0x2

.field public static final VOICEMAIL_URI:I = 0x6

.field private static final mCallLogUri:Landroid/net/Uri;

.field private static final mContactsUri:Landroid/net/Uri;

.field private static final mUri:Landroid/net/Uri;


# instance fields
.field private listView:Landroid/widget/ListView;

.field private mAddBtn:Landroid/widget/Button;

.field private mAddContactsBtn:Landroid/widget/ImageButton;

.field private mAddContactsTask:Lcom/android/phone/CallRejectListSetting$AddContactsTask;

.field private mDeleteBtn:Landroid/widget/Button;

.field private mDialogCancelBtn:Landroid/widget/Button;

.field private mDialogSaveBtn:Landroid/widget/Button;

.field private mNumberEditText:Landroid/widget/EditText;

.field private mPhoneNumberFromContacts:Ljava/lang/String;

.field private mResultIntent:Landroid/content/Intent;

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    const-string v0, "content://reject/list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallRejectListSetting;->mUri:Landroid/net/Uri;

    .line 56
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/phone/CallRejectListSetting;->mContactsUri:Landroid/net/Uri;

    .line 57
    const-string v0, "content://call_log/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallRejectListSetting;->mCallLogUri:Landroid/net/Uri;

    .line 69
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "data1"

    aput-object v1, v0, v3

    const-string v1, "data3"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/CallRejectListSetting;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    .line 89
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "duration"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "countryiso"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "voicemail_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "geocoded_location"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "lookup_uri"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "matched_number"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "normalized_number"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "formatted_number"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "is_read"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "simid"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "vtcall"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CallRejectListSetting;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallRejectListSetting;->mAddContactsTask:Lcom/android/phone/CallRejectListSetting$AddContactsTask;

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallRejectListSetting;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/CallRejectListSetting;->mResultIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/CallRejectListSetting;IILandroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/CallRejectListSetting;->updataCallback(IILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/CallRejectListSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/phone/CallRejectListSetting;->showNumbers()V

    return-void
.end method

.method private allWhite(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    .line 543
    if-eqz p1, :cond_0

    .line 544
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 546
    :cond_0
    return-object p1
.end method

.method private equalsNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "number1"
    .parameter "number2"

    .prologue
    .line 483
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 484
    :cond_0
    const/4 v0, 0x0

    .line 493
    :goto_0
    return v0

    .line 486
    :cond_1
    const/4 v0, 0x0

    .line 488
    .local v0, isEquals:Z
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 489
    const/4 v0, 0x1

    goto :goto_0

    .line 491
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private insert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "number"
    .parameter "name"

    .prologue
    .line 497
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 498
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v1, "Number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v1, p0, Lcom/android/phone/CallRejectListSetting;->mType:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    const-string v1, "Type"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :goto_0
    const-string v1, "Name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CallRejectListSetting;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 506
    return-void

    .line 502
    :cond_0
    const-string v1, "Type"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private insertNumbers(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "number"
    .parameter "name"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 458
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CallRejectListSetting;->mUri:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v10

    const-string v4, "Number"

    aput-object v4, v2, v11

    const-string v4, "type"

    aput-object v4, v2, v12

    const/4 v4, 0x3

    const-string v5, "Name"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 461
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 480
    :goto_0
    return-void

    .line 464
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 466
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 467
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 468
    .local v7, id:Ljava/lang/String;
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 469
    .local v8, numberDB:Ljava/lang/String;
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 471
    .local v9, type:Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/android/phone/CallRejectListSetting;->equalsNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 473
    invoke-direct {p0, v7, p1, p2, v9}, Lcom/android/phone/CallRejectListSetting;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 476
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 478
    .end local v7           #id:Ljava/lang/String;
    .end local v8           #numberDB:Ljava/lang/String;
    .end local v9           #type:Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 479
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallRejectListSetting;->insert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showNumbers()V
    .locals 13

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    .line 259
    .local v11, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v11}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 261
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CallRejectListSetting;->mUri:Landroid/net/Uri;

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

    move-result-object v6

    .line 264
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 286
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 269
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 270
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 271
    .local v7, id:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 272
    .local v9, numberDB:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 273
    .local v12, type:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 274
    .local v8, name:Ljava/lang/String;
    const-string v0, "3"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "2"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "video"

    iget-object v1, p0, Lcom/android/phone/CallRejectListSetting;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "1"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "voice"

    iget-object v1, p0, Lcom/android/phone/CallRejectListSetting;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    :cond_2
    new-instance v10, Landroid/preference/Preference;

    invoke-direct {v10, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 278
    .local v10, preference:Landroid/preference/Preference;
    invoke-virtual {v10, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 279
    invoke-virtual {v10, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 280
    invoke-virtual {v11, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 282
    .end local v10           #preference:Landroid/preference/Preference;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 284
    .end local v7           #id:Ljava/lang/String;
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #numberDB:Ljava/lang/String;
    .end local v12           #type:Ljava/lang/String;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 285
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListSetting;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method private updataCallback(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 378
    packed-switch p2, :pswitch_data_0

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 380
    :pswitch_0
    const/16 v3, 0x7d

    if-ne p1, v3, :cond_1

    .line 381
    const-string v3, "com.mediatek.contacts.list.pickdataresult"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    .line 382
    .local v1, contactId:[J
    if-eqz v1, :cond_0

    array-length v3, v1

    if-ltz v3, :cond_0

    .line 385
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallRejectListSetting;->mAddContactsTask:Lcom/android/phone/CallRejectListSetting$AddContactsTask;

    invoke-virtual {v3}, Lcom/android/phone/CallRejectListSetting$AddContactsTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 386
    aget-wide v3, v1, v2

    long-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallRejectListSetting;->updateContactsNumbers(I)V

    .line 385
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 388
    .end local v1           #contactId:[J
    .end local v2           #i:I
    :cond_1
    const/16 v3, 0x7e

    if-ne p1, v3, :cond_0

    .line 389
    const-string v3, "calllogids"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, callLogId:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/phone/CallRejectListSetting;->updateCallLogNumbers(Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "id"
    .parameter "number"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 509
    if-nez p1, :cond_0

    .line 540
    :goto_0
    return-void

    .line 512
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 513
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v5, "Number"

    invoke-virtual {v0, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const/4 v4, 0x0

    .line 518
    .local v4, typeInt:I
    :try_start_0
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 523
    :goto_1
    iget-object v5, p0, Lcom/android/phone/CallRejectListSetting;->mType:Ljava/lang/String;

    const-string v6, "video"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 524
    const-string v5, "Type"

    or-int/lit8 v6, v4, 0x2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0321

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 530
    const-string v5, "Name"

    invoke-virtual {v0, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_1
    :try_start_1
    sget-object v5, Lcom/android/phone/CallRejectListSetting;->mUri:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 535
    .local v2, existNumberURI:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 536
    .local v3, result:I
    const-string v5, "CallRejectListSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 537
    .end local v2           #existNumberURI:Landroid/net/Uri;
    .end local v3           #result:I
    :catch_0
    move-exception v1

    .line 538
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v5, "CallRejectListSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseInt failed, the index is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 519
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 520
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const-string v5, "CallRejectListSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseInt failed, the typeInt is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 526
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const-string v5, "Type"

    or-int/lit8 v6, v4, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private updateCallLogNumbers(I)V
    .locals 9
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 421
    sget-object v0, Lcom/android/phone/CallRejectListSetting;->mCallLogUri:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 422
    .local v1, existNumberURI:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/phone/CallRejectListSetting;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 424
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 426
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 427
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallRejectListSetting;->allWhite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 428
    .local v8, number:Ljava/lang/String;
    const/16 v0, 0x8

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 429
    .local v7, name:Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0321

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 432
    :cond_1
    invoke-direct {p0, v8, v7}, Lcom/android/phone/CallRejectListSetting;->insertNumbers(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 436
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #number:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 438
    return-void
.end method

.method private updateCallLogNumbers(Ljava/lang/String;)V
    .locals 8
    .parameter "callLogId"

    .prologue
    .line 400
    const-string v5, "CallRejectListSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--------------["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]---------------"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 418
    :cond_0
    return-void

    .line 404
    :cond_1
    const-string v5, "_id"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 407
    const/16 v5, 0x8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 408
    .local v3, ids:Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 409
    .local v4, idsArray:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/CallRejectListSetting;->mAddContactsTask:Lcom/android/phone/CallRejectListSetting$AddContactsTask;

    invoke-virtual {v5}, Lcom/android/phone/CallRejectListSetting$AddContactsTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 411
    :try_start_0
    aget-object v5, v4, v1

    const/4 v6, 0x1

    aget-object v7, v4, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 412
    .local v2, id:I
    invoke-direct {p0, v2}, Lcom/android/phone/CallRejectListSetting;->updateCallLogNumbers(I)V

    .line 413
    const-string v5, "CallRejectListSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "id is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    .end local v2           #id:I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v5, "CallRejectListSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseInt failed, the id is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateContactsNumbers(I)V
    .locals 9
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 441
    sget-object v0, Lcom/android/phone/CallRejectListSetting;->mContactsUri:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 442
    .local v1, existNumberURI:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/phone/CallRejectListSetting;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 444
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 446
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallRejectListSetting;->allWhite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 448
    .local v8, number:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 449
    .local v7, name:Ljava/lang/String;
    invoke-direct {p0, v8, v7}, Lcom/android/phone/CallRejectListSetting;->insertNumbers(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 453
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #number:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 455
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 372
    new-instance v0, Lcom/android/phone/CallRejectListSetting$AddContactsTask;

    invoke-direct {v0, p0}, Lcom/android/phone/CallRejectListSetting$AddContactsTask;-><init>(Lcom/android/phone/CallRejectListSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallRejectListSetting;->mAddContactsTask:Lcom/android/phone/CallRejectListSetting$AddContactsTask;

    .line 373
    iput-object p3, p0, Lcom/android/phone/CallRejectListSetting;->mResultIntent:Landroid/content/Intent;

    .line 374
    iget-object v0, p0, Lcom/android/phone/CallRejectListSetting;->mAddContactsTask:Lcom/android/phone/CallRejectListSetting$AddContactsTask;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallRejectListSetting$AddContactsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 375
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 330
    iget-object v2, p0, Lcom/android/phone/CallRejectListSetting;->mDeleteBtn:Landroid/widget/Button;

    if-ne p1, v2, :cond_1

    .line 331
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 332
    .local v0, it:Landroid/content/Intent;
    const-class v2, Lcom/android/phone/CallRejectListModify;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 333
    const-string v2, "type"

    iget-object v3, p0, Lcom/android/phone/CallRejectListSetting;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    invoke-virtual {p0, v0}, Lcom/android/phone/CallRejectListSetting;->startActivity(Landroid/content/Intent;)V

    .line 353
    .end local v0           #it:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallRejectListSetting;->mAddBtn:Landroid/widget/Button;

    if-ne p1, v2, :cond_2

    .line 336
    invoke-virtual {p0, v3}, Lcom/android/phone/CallRejectListSetting;->showDialog(I)V

    goto :goto_0

    .line 337
    :cond_2
    iget-object v2, p0, Lcom/android/phone/CallRejectListSetting;->mAddContactsBtn:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_3

    .line 338
    invoke-virtual {p0, v3}, Lcom/android/phone/CallRejectListSetting;->dismissDialog(I)V

    .line 339
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/phone/CallRejectListSetting;->showDialog(I)V

    goto :goto_0

    .line 340
    :cond_3
    iget-object v2, p0, Lcom/android/phone/CallRejectListSetting;->mDialogSaveBtn:Landroid/widget/Button;

    if-ne p1, v2, :cond_4

    .line 341
    invoke-virtual {p0, v3}, Lcom/android/phone/CallRejectListSetting;->dismissDialog(I)V

    .line 342
    iget-object v2, p0, Lcom/android/phone/CallRejectListSetting;->mNumberEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallRejectListSetting;->mNumberEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallRejectListSetting;->mType:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 347
    iget-object v2, p0, Lcom/android/phone/CallRejectListSetting;->mNumberEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallRejectListSetting;->allWhite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, rejectNumbers:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0321

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallRejectListSetting;->insertNumbers(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-direct {p0}, Lcom/android/phone/CallRejectListSetting;->showNumbers()V

    goto :goto_0

    .line 350
    .end local v1           #rejectNumbers:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/android/phone/CallRejectListSetting;->mDialogCancelBtn:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 351
    invoke-virtual {p0, v3}, Lcom/android/phone/CallRejectListSetting;->dismissDialog(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 183
    const v1, 0x7f040016

    invoke-virtual {p0, v1}, Lcom/android/phone/CallRejectListSetting;->setContentView(I)V

    .line 185
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListSetting;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 186
    .local v0, preference:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0, v0}, Lcom/android/phone/CallRejectListSetting;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 198
    const v1, 0x7f070092

    invoke-virtual {p0, v1}, Lcom/android/phone/CallRejectListSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/phone/CallRejectListSetting;->listView:Landroid/widget/ListView;

    .line 199
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListSetting;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallRejectListSetting;->mType:Ljava/lang/String;

    .line 200
    const-string v1, "voice"

    iget-object v2, p0, Lcom/android/phone/CallRejectListSetting;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0313

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/CallRejectListSetting;->setTitle(Ljava/lang/CharSequence;)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0316

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/CallRejectListSetting;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    .line 290
    if-nez p1, :cond_3

    .line 291
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 292
    .local v0, dialog:Landroid/app/Dialog;
    const v2, 0x7f040014

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 293
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b031a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 294
    const v2, 0x7f07008e

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/CallRejectListSetting;->mAddContactsBtn:Landroid/widget/ImageButton;

    .line 295
    iget-object v2, p0, Lcom/android/phone/CallRejectListSetting;->mAddContactsBtn:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/android/phone/CallRejectListSetting;->mAddContactsBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    :cond_0
    const v2, 0x7f070090

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/CallRejectListSetting;->mDialogSaveBtn:Landroid/widget/Button;

    .line 300
    iget-object v2, p0, Lcom/android/phone/CallRejectListSetting;->mDialogSaveBtn:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 301
    iget-object v2, p0, Lcom/android/phone/CallRejectListSetting;->mDialogSaveBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    :cond_1
    const v2, 0x7f07008f

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/CallRejectListSetting;->mDialogCancelBtn:Landroid/widget/Button;

    .line 305
    iget-object v2, p0, Lcom/android/phone/CallRejectListSetting;->mDialogCancelBtn:Landroid/widget/Button;

    if-eqz v2, :cond_2

    .line 306
    iget-object v2, p0, Lcom/android/phone/CallRejectListSetting;->mDialogCancelBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    :cond_2
    const v2, 0x7f07008d

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/CallRejectListSetting;->mNumberEditText:Landroid/widget/EditText;

    .line 324
    .end local v0           #dialog:Landroid/app/Dialog;
    :goto_0
    return-object v0

    .line 310
    :cond_3
    if-ne p1, v4, :cond_4

    .line 311
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 312
    .restart local v0       #dialog:Landroid/app/Dialog;
    const v2, 0x7f040015

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 313
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b031b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 314
    const v2, 0x7f070092

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 315
    .local v1, listView:Landroid/widget/ListView;
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 317
    .end local v0           #dialog:Landroid/app/Dialog;
    .end local v1           #listView:Landroid/widget/ListView;
    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 318
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 319
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0320

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 320
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 321
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_0

    .line 324
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 223
    const v0, 0x7f0b0318

    invoke-interface {p1, v3, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 225
    const/4 v0, 0x3

    const v1, 0x7f0b0319

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 227
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 215
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 216
    iget-object v0, p0, Lcom/android/phone/CallRejectListSetting;->mAddContactsTask:Lcom/android/phone/CallRejectListSetting$AddContactsTask;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/phone/CallRejectListSetting;->mAddContactsTask:Lcom/android/phone/CallRejectListSetting$AddContactsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallRejectListSetting$AddContactsTask;->cancel(Z)Z

    .line 219
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
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
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x1

    .line 357
    invoke-virtual {p0, v1}, Lcom/android/phone/CallRejectListSetting;->dismissDialog(I)V

    .line 358
    if-nez p3, :cond_1

    .line 359
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.contacts.list.PICKMULTIPHONES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const/16 v1, 0x7d

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallRejectListSetting;->startActivityForResult(Landroid/content/Intent;I)V

    .line 368
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    if-ne p3, v1, :cond_0

    .line 363
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.android.contacts"

    const-string v2, "com.mediatek.contacts.activities.CallLogMultipleChoiceActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const/16 v1, 0x7e

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallRejectListSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 240
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 253
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 242
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/phone/CallRejectListSetting;->showDialog(I)V

    goto :goto_0

    .line 245
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 246
    .local v0, it:Landroid/content/Intent;
    const-class v1, Lcom/android/phone/CallRejectListModify;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 247
    const-string v1, "type"

    iget-object v2, p0, Lcom/android/phone/CallRejectListSetting;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    invoke-virtual {p0, v0}, Lcom/android/phone/CallRejectListSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 232
    const-string v2, "CallRejectListSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--------------[preference count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/CallRejectListSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]---------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/CallRejectListSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 234
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 235
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 209
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 210
    invoke-direct {p0}, Lcom/android/phone/CallRejectListSetting;->showNumbers()V

    .line 211
    return-void
.end method
