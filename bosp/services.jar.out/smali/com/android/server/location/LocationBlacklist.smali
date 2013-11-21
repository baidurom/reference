.class public final Lcom/android/server/location/LocationBlacklist;
.super Landroid/database/ContentObserver;
.source "LocationBlacklist.java"


# static fields
.field private static final BLACKLIST_CONFIG_NAME:Ljava/lang/String; = "locationPackagePrefixBlacklist"

.field private static final D:Z = false

.field private static final TAG:Ljava/lang/String; = "LocationBlacklist"

.field private static final WHITELIST_CONFIG_NAME:Ljava/lang/String; = "locationPackagePrefixWhitelist"


# instance fields
.field private mBlacklist:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mLock:Ljava/lang/Object;

.field private mWhitelist:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationBlacklist;->mLock:Ljava/lang/Object;

    .line 50
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/location/LocationBlacklist;->mWhitelist:[Ljava/lang/String;

    .line 51
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/location/LocationBlacklist;->mBlacklist:[Ljava/lang/String;

    .line 53
    iput v1, p0, Lcom/android/server/location/LocationBlacklist;->mCurrentUserId:I

    .line 57
    iput-object p1, p0, Lcom/android/server/location/LocationBlacklist;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method private getStringArrayLocked(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "key"

    .prologue
    .line 128
    iget-object v8, p0, Lcom/android/server/location/LocationBlacklist;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 129
    :try_start_0
    iget-object v7, p0, Lcom/android/server/location/LocationBlacklist;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget v9, p0, Lcom/android/server/location/LocationBlacklist;->mCurrentUserId:I

    invoke-static {v7, p1, v9}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, flatString:Ljava/lang/String;
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    if-nez v1, :cond_0

    .line 133
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    .line 144
    :goto_0
    return-object v7

    .line 131
    .end local v1           #flatString:Ljava/lang/String;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 135
    .restart local v1       #flatString:Ljava/lang/String;
    :cond_0
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, splitStrings:[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 138
    .local v4, pkg:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 137
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 142
    :cond_1
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 144
    .end local v4           #pkg:Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    goto :goto_0
.end method

.method private inWhitelist(Ljava/lang/String;)Z
    .locals 6
    .parameter "pkg"

    .prologue
    .line 106
    iget-object v5, p0, Lcom/android/server/location/LocationBlacklist;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationBlacklist;->mWhitelist:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 108
    .local v3, white:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    monitor-exit v5

    .line 111
    .end local v3           #white:Ljava/lang/String;
    :goto_1
    return v4

    .line 107
    .restart local v3       #white:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v3           #white:Ljava/lang/String;
    :cond_1
    monitor-exit v5

    .line 111
    const/4 v4, 0x0

    goto :goto_1

    .line 110
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private reloadBlacklist()V
    .locals 2

    .prologue
    .line 76
    iget-object v1, p0, Lcom/android/server/location/LocationBlacklist;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/location/LocationBlacklist;->reloadBlacklistLocked()V

    .line 78
    monitor-exit v1

    .line 79
    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private reloadBlacklistLocked()V
    .locals 3

    .prologue
    .line 69
    const-string v0, "locationPackagePrefixWhitelist"

    invoke-direct {p0, v0}, Lcom/android/server/location/LocationBlacklist;->getStringArrayLocked(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/LocationBlacklist;->mWhitelist:[Ljava/lang/String;

    .line 70
    const-string v0, "LocationBlacklist"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "whitelist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/LocationBlacklist;->mWhitelist:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v0, "locationPackagePrefixBlacklist"

    invoke-direct {p0, v0}, Lcom/android/server/location/LocationBlacklist;->getStringArrayLocked(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/LocationBlacklist;->mBlacklist:[Ljava/lang/String;

    .line 72
    const-string v0, "LocationBlacklist"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blacklist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/LocationBlacklist;->mBlacklist:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "pw"

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWhitelist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationBlacklist;->mWhitelist:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBlacklist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationBlacklist;->mBlacklist:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/location/LocationBlacklist;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "locationPackagePrefixBlacklist"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 65
    invoke-direct {p0}, Lcom/android/server/location/LocationBlacklist;->reloadBlacklist()V

    .line 66
    return-void
.end method

.method public isBlacklisted(Ljava/lang/String;)Z
    .locals 6
    .parameter "packageName"

    .prologue
    .line 86
    iget-object v5, p0, Lcom/android/server/location/LocationBlacklist;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationBlacklist;->mBlacklist:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 88
    .local v1, black:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationBlacklist;->inWhitelist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_1
    const/4 v4, 0x1

    monitor-exit v5

    .line 99
    .end local v1           #black:Ljava/lang/String;
    :goto_1
    return v4

    .line 98
    :cond_2
    monitor-exit v5

    .line 99
    const/4 v4, 0x0

    goto :goto_1

    .line 98
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/server/location/LocationBlacklist;->reloadBlacklist()V

    .line 117
    return-void
.end method

.method public switchUser(I)V
    .locals 2
    .parameter "userId"

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/server/location/LocationBlacklist;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_0
    iput p1, p0, Lcom/android/server/location/LocationBlacklist;->mCurrentUserId:I

    .line 122
    invoke-direct {p0}, Lcom/android/server/location/LocationBlacklist;->reloadBlacklistLocked()V

    .line 123
    monitor-exit v1

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
