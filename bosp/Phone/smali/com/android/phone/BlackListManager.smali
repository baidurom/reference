.class public Lcom/android/phone/BlackListManager;
.super Ljava/lang/Object;
.source "BlackListManager.java"


# static fields
.field private static final ALL_NUMBERS:I = 0x1

.field private static final AUTO_REJECT:I = 0x2

.field private static final BLACK_LIST_PROJECTION:[Ljava/lang/String; = null

.field private static final BLACK_LIST_URI:Ljava/lang/String; = "content://reject/list"

.field private static final BLOCK_VIDEO_CALL:I = 0x2

.field private static final BLOCK_VOICE_AND_VIDEO_CALL:I = 0x3

.field private static final BLOCK_VOICE_CALL:I = 0x1

.field private static final DBG:Z = true

.field private static final DO_NOT_BLOCK:I = 0x0

.field private static final OFF:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BlackListManager"

.field public static final VIDEO_CALL_REJECT_MODE:I = 0x1

.field private static final VIDEO_CALL_REJECT_MODE_KEY:Ljava/lang/String; = "vt_call_reject_mode"

.field public static final VOICE_CALL_REJECT_MODE:I = 0x0

.field private static final VOICE_CALL_REJECT_MODE_KEY:Ljava/lang/String; = "voice_call_reject_mode"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Number"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/BlackListManager;->BLACK_LIST_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/phone/BlackListManager;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method public autoReject(Ljava/lang/String;I)Z
    .locals 12
    .parameter "number"
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 61
    iget-object v0, p0, Lcom/android/phone/BlackListManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://reject/list"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/BlackListManager;->BLACK_LIST_PROJECTION:[Ljava/lang/String;

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 63
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 64
    const-string v0, "cursor is null..."

    invoke-virtual {p0, v0}, Lcom/android/phone/BlackListManager;->log(Ljava/lang/String;)V

    move v0, v10

    .line 94
    :goto_0
    return v0

    .line 70
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 71
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 72
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, blockNumber:Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 77
    .local v7, blockType:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blockType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/BlackListManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    const/4 v0, 0x3

    if-ne v7, v0, :cond_1

    move v0, v11

    .line 80
    goto :goto_0

    .line 82
    :cond_1
    if-nez p2, :cond_2

    if-ne v7, v11, :cond_2

    move v0, v11

    .line 83
    goto :goto_0

    .line 85
    :cond_2
    if-ne p2, v11, :cond_3

    const/4 v0, 0x2

    if-ne v7, v0, :cond_3

    move v0, v11

    .line 86
    goto :goto_0

    .line 87
    .end local v7           #blockType:I
    :catch_0
    move-exception v9

    .line 88
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    .end local v9           #e:Ljava/lang/Exception;
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .end local v6           #blockNumber:Ljava/lang/String;
    :cond_4
    move v0, v10

    .line 94
    goto :goto_0
.end method

.method public getBlockMode(I)I
    .locals 4
    .parameter "type"

    .prologue
    .line 49
    if-nez p1, :cond_0

    const-string v1, "voice_call_reject_mode"

    .line 51
    .local v1, key:Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/BlackListManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 57
    :goto_1
    return v2

    .line 49
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    const-string v1, "vt_call_reject_mode"

    goto :goto_0

    .line 53
    .restart local v1       #key:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 57
    const/4 v2, 0x0

    goto :goto_1
.end method

.method log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 45
    const-string v0, "BlackListManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method public shouldBlock(Ljava/lang/String;I)Z
    .locals 4
    .parameter "number"
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 98
    invoke-virtual {p0, p2}, Lcom/android/phone/BlackListManager;->getBlockMode(I)I

    move-result v0

    .line 99
    .local v0, mode:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldBlock, number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/BlackListManager;->log(Ljava/lang/String;)V

    .line 101
    if-nez v0, :cond_1

    .line 102
    const/4 v1, 0x0

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 104
    :cond_1
    if-eq v0, v1, :cond_0

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/BlackListManager;->autoReject(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0
.end method
