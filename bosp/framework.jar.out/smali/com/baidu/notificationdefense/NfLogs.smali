.class public Lcom/baidu/notificationdefense/NfLogs;
.super Ljava/lang/Object;
.source "NfLogs.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.baidu.providers.nf"

.field public static final CONTENTTEXT:Ljava/lang/String; = "contentText"

.field public static final CONTENTTITLE:Ljava/lang/String; = "contentTitle"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.com.baidu.nf"

.field public static final CONTENT_TYPE_ITEM:Ljava/lang/String; = "vnd.android.cursor.item/vnd.com.baidu.nf"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final NF_ID:Ljava/lang/String; = "nfId"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final PKG:Ljava/lang/String; = "pkg"

.field public static final TABLE_NAME:Ljava/lang/String; = "logs"

.field public static final TICKERTEXT:Ljava/lang/String; = "tickerText"

.field public static final WHEN:Ljava/lang/String; = "time"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "content://com.baidu.providers.nf/logs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/notificationdefense/NfLogs;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
