.class public Lcom/android/phone/AutoRedialProvider$AutoRedialDBColumns;
.super Ljava/lang/Object;
.source "AutoRedialProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AutoRedialProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoRedialDBColumns"
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.android.phone.autoredial"

.field public static final AUTHORITY_URI:Landroid/net/Uri; = null

.field public static final AUTO_REDIAL_LIST_PATH:Ljava/lang/String; = "auto_redial_list"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.autoredial.list"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.autoredial.list"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATABASE_NAME:Ljava/lang/String; = "autorediallist.db"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final REPEAT_TIME:Ljava/lang/String; = "repeat"

.field public static final SPEAKERON:Ljava/lang/String; = "speaker"

.field public static final TABLE_NAME:Ljava/lang/String; = "autoredial"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 143
    const-string v0, "content://com.android.phone.autoredial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/AutoRedialProvider$AutoRedialDBColumns;->AUTHORITY_URI:Landroid/net/Uri;

    .line 147
    sget-object v0, Lcom/android/phone/AutoRedialProvider$AutoRedialDBColumns;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "auto_redial_list"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/AutoRedialProvider$AutoRedialDBColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
