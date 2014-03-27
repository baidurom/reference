.class public Lcom/android/phone/WhiteListProvider$WhiteListDBColumns;
.super Ljava/lang/Object;
.source "WhiteListProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/WhiteListProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WhiteListDBColumns"
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.android.phone.whitelist"

.field public static final AUTHORITY_URI:Landroid/net/Uri; = null

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.white.list"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.white.list"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATABASE_NAME:Ljava/lang/String; = "ipcallwhitelist.db"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final SUBSCRIBER:Ljava/lang/String; = "subscriber"

.field public static final TABLE_NAME:Ljava/lang/String; = "whitelist"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final WHITE_LIST_PATH:Ljava/lang/String; = "white_list"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 155
    const-string v0, "content://com.android.phone.whitelist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/WhiteListProvider$WhiteListDBColumns;->AUTHORITY_URI:Landroid/net/Uri;

    .line 159
    sget-object v0, Lcom/android/phone/WhiteListProvider$WhiteListDBColumns;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "white_list"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/WhiteListProvider$WhiteListDBColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
