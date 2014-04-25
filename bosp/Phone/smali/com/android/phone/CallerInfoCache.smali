.class public Lcom/android/phone/CallerInfoCache;
.super Ljava/lang/Object;
.source "CallerInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallerInfoCache$1;,
        Lcom/android/phone/CallerInfoCache$CacheAsyncTask;,
        Lcom/android/phone/CallerInfoCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final CACHE_REFRESH_INTERVAL:I = 0x1b77400

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final INDEX_CUSTOM_RINGTONE:I = 0x2

.field private static final INDEX_NORMALIZED_NUMBER:I = 0x1

.field private static final INDEX_NUMBER:I = 0x0

.field private static final INDEX_SEND_TO_VOICEMAIL:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final MESSAGE_UPDATE_CACHE:I = 0x0

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final SELECTION:Ljava/lang/String; = "((custom_ringtone IS NOT NULL OR send_to_voicemail=1) AND data1 IS NOT NULL)"

.field private static final VDBG:Z


# instance fields
.field private mCacheAsyncTask:Lcom/android/phone/CallerInfoCache$CacheAsyncTask;

.field private final mContext:Landroid/content/Context;

.field private volatile mNumberToEntry:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/CallerInfoCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    const-class v0, Lcom/android/phone/CallerInfoCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallerInfoCache;->LOG_TAG:Ljava/lang/String;

    .line 47
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/CallerInfoCache;->DBG:Z

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "data1"

    aput-object v3, v0, v2

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "custom_ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CallerInfoCache;->PROJECTION:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 47
    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/android/phone/CallerInfoCache;->mContext:Landroid/content/Context;

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallerInfoCache;->mNumberToEntry:Ljava/util/HashMap;

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallerInfoCache;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/CallerInfoCache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/phone/CallerInfoCache;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/android/phone/CallerInfoCache;->DBG:Z

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/phone/CallerInfoCache;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/CallerInfoCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/phone/CallerInfoCache;->refreshCacheEntry()V

    return-void
.end method

.method public static init(Landroid/content/Context;)Lcom/android/phone/CallerInfoCache;
    .locals 2
    .parameter "context"

    .prologue
    .line 161
    sget-boolean v1, Lcom/android/phone/CallerInfoCache;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "init()"

    invoke-static {v1}, Lcom/android/phone/CallerInfoCache;->log(Ljava/lang/String;)V

    .line 162
    :cond_0
    new-instance v0, Lcom/android/phone/CallerInfoCache;

    invoke-direct {v0, p0}, Lcom/android/phone/CallerInfoCache;-><init>(Landroid/content/Context;)V

    .line 164
    .local v0, cache:Lcom/android/phone/CallerInfoCache;
    invoke-virtual {v0}, Lcom/android/phone/CallerInfoCache;->startAsyncCache()V

    .line 165
    invoke-direct {v0}, Lcom/android/phone/CallerInfoCache;->setRepeatingCacheUpdateAlarm()V

    .line 166
    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 335
    sget-object v0, Lcom/android/phone/CallerInfoCache;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return-void
.end method

.method private putNewEntryWhenAppropriate(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter "numberOrSipAddress"
    .parameter "customRingtone"
    .parameter "sendToVoicemail"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/CallerInfoCache$CacheEntry;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, newNumberToEntry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/phone/CallerInfoCache$CacheEntry;>;"
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallerInfoCache$CacheEntry;

    .line 289
    .local v0, entry:Lcom/android/phone/CallerInfoCache$CacheEntry;
    iget-boolean v1, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->sendToVoicemail:Z

    if-nez v1, :cond_0

    if-eqz p4, :cond_0

    .line 290
    new-instance v1, Lcom/android/phone/CallerInfoCache$CacheEntry;

    invoke-direct {v1, p3, p4}, Lcom/android/phone/CallerInfoCache$CacheEntry;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .end local v0           #entry:Lcom/android/phone/CallerInfoCache$CacheEntry;
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    new-instance v1, Lcom/android/phone/CallerInfoCache$CacheEntry;

    invoke-direct {v1, p3, p4}, Lcom/android/phone/CallerInfoCache$CacheEntry;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private refreshCacheEntry()V
    .locals 14

    .prologue
    .line 211
    const/4 v6, 0x0

    .line 213
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallerInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/CallerInfoCache;->PROJECTION:[Ljava/lang/String;

    const-string v3, "((custom_ringtone IS NOT NULL OR send_to_voicemail=1) AND data1 IS NOT NULL)"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 215
    if-eqz v6, :cond_8

    .line 218
    new-instance v10, Ljava/util/HashMap;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 221
    .local v10, newNumberToEntry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/phone/CallerInfoCache$CacheEntry;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 222
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 223
    .local v12, number:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 224
    .local v11, normalizedNumber:Ljava/lang/String;
    if-nez v11, :cond_0

    .line 227
    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 229
    :cond_0
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 230
    .local v7, customRingtone:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v13, 0x1

    .line 232
    .local v13, sendToVoicemail:Z
    :goto_1
    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    invoke-direct {p0, v10, v12, v7, v13}, Lcom/android/phone/CallerInfoCache;->putNewEntryWhenAppropriate(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 275
    .end local v7           #customRingtone:Ljava/lang/String;
    .end local v10           #newNumberToEntry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/phone/CallerInfoCache$CacheEntry;>;"
    .end local v11           #normalizedNumber:Ljava/lang/String;
    .end local v12           #number:Ljava/lang/String;
    .end local v13           #sendToVoicemail:Z
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 276
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 230
    .restart local v7       #customRingtone:Ljava/lang/String;
    .restart local v10       #newNumberToEntry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/phone/CallerInfoCache$CacheEntry;>;"
    .restart local v11       #normalizedNumber:Ljava/lang/String;
    .restart local v12       #number:Ljava/lang/String;
    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    .line 245
    .restart local v13       #sendToVoicemail:Z
    :cond_3
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v9

    .line 246
    .local v9, length:I
    const/4 v0, 0x7

    if-le v9, v0, :cond_4

    add-int/lit8 v0, v9, -0x7

    invoke-virtual {v11, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 249
    .local v8, key:Ljava/lang/String;
    :goto_2
    invoke-direct {p0, v10, v8, v7, v13}, Lcom/android/phone/CallerInfoCache;->putNewEntryWhenAppropriate(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .end local v8           #key:Ljava/lang/String;
    :cond_4
    move-object v8, v11

    .line 246
    goto :goto_2

    .line 261
    .end local v7           #customRingtone:Ljava/lang/String;
    .end local v9           #length:I
    .end local v11           #normalizedNumber:Ljava/lang/String;
    .end local v12           #number:Ljava/lang/String;
    .end local v13           #sendToVoicemail:Z
    :cond_5
    iput-object v10, p0, Lcom/android/phone/CallerInfoCache;->mNumberToEntry:Ljava/util/HashMap;

    .line 263
    sget-boolean v0, Lcom/android/phone/CallerInfoCache;->DBG:Z

    if-eqz v0, :cond_6

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caching entries are done. Total: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallerInfoCache;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    .end local v10           #newNumberToEntry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/phone/CallerInfoCache$CacheEntry;>;"
    :cond_6
    :goto_3
    if-eqz v6, :cond_7

    .line 276
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 281
    :cond_7
    return-void

    .line 272
    :cond_8
    :try_start_2
    sget-object v0, Lcom/android/phone/CallerInfoCache;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private setRepeatingCacheUpdateAlarm()V
    .locals 8

    .prologue
    const-wide/32 v4, 0x1b77400

    .line 189
    sget-boolean v1, Lcom/android/phone/CallerInfoCache;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "setRepeatingCacheUpdateAlarm"

    invoke-static {v1}, Lcom/android/phone/CallerInfoCache;->log(Ljava/lang/String;)V

    .line 191
    :cond_0
    new-instance v7, Landroid/content/Intent;

    const-string v1, "com.android.phone.UPDATE_CALLER_INFO_CACHE"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v7, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/phone/CallerInfoCache;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/phone/CallerInfoCacheUpdateReceiver;

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 193
    iget-object v1, p0, Lcom/android/phone/CallerInfoCache;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x1000

    invoke-static {v1, v2, v7, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 195
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/phone/CallerInfoCache;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 197
    .local v0, alarmManager:Landroid/app/AlarmManager;
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 200
    return-void
.end method


# virtual methods
.method public getCacheEntry(Ljava/lang/String;)Lcom/android/phone/CallerInfoCache$CacheEntry;
    .locals 6
    .parameter "number"

    .prologue
    .line 308
    iget-object v4, p0, Lcom/android/phone/CallerInfoCache;->mNumberToEntry:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    .line 311
    :cond_0
    sget-object v4, Lcom/android/phone/CallerInfoCache;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Fallback cache isn\'t ready."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v0, 0x0

    .line 331
    :goto_0
    return-object v0

    .line 316
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 319
    iget-object v4, p0, Lcom/android/phone/CallerInfoCache;->mNumberToEntry:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallerInfoCache$CacheEntry;

    .local v0, entry:Lcom/android/phone/CallerInfoCache$CacheEntry;
    goto :goto_0

    .line 321
    .end local v0           #entry:Lcom/android/phone/CallerInfoCache$CacheEntry;
    :cond_2
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 322
    .local v3, normalizedNumber:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 323
    .local v2, length:I
    const/4 v4, 0x7

    if-le v2, v4, :cond_3

    add-int/lit8 v4, v2, -0x7

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, key:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/phone/CallerInfoCache;->mNumberToEntry:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallerInfoCache$CacheEntry;

    .restart local v0       #entry:Lcom/android/phone/CallerInfoCache$CacheEntry;
    goto :goto_0

    .end local v0           #entry:Lcom/android/phone/CallerInfoCache$CacheEntry;
    .end local v1           #key:Ljava/lang/String;
    :cond_3
    move-object v1, v3

    .line 323
    goto :goto_1
.end method

.method startAsyncCache()V
    .locals 2

    .prologue
    .line 175
    sget-boolean v0, Lcom/android/phone/CallerInfoCache;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "startAsyncCache"

    invoke-static {v0}, Lcom/android/phone/CallerInfoCache;->log(Ljava/lang/String;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallerInfoCache;->mCacheAsyncTask:Lcom/android/phone/CallerInfoCache$CacheAsyncTask;

    if-eqz v0, :cond_1

    .line 178
    sget-object v0, Lcom/android/phone/CallerInfoCache;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Previous cache task is remaining."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/android/phone/CallerInfoCache;->mCacheAsyncTask:Lcom/android/phone/CallerInfoCache$CacheAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallerInfoCache$CacheAsyncTask;->cancel(Z)Z

    .line 181
    :cond_1
    new-instance v0, Lcom/android/phone/CallerInfoCache$CacheAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallerInfoCache$CacheAsyncTask;-><init>(Lcom/android/phone/CallerInfoCache;Lcom/android/phone/CallerInfoCache$1;)V

    iput-object v0, p0, Lcom/android/phone/CallerInfoCache;->mCacheAsyncTask:Lcom/android/phone/CallerInfoCache$CacheAsyncTask;

    .line 182
    iget-object v0, p0, Lcom/android/phone/CallerInfoCache;->mCacheAsyncTask:Lcom/android/phone/CallerInfoCache$CacheAsyncTask;

    invoke-virtual {v0}, Lcom/android/phone/CallerInfoCache$CacheAsyncTask;->acquireWakeLockAndExecute()V

    .line 183
    return-void
.end method
