.class public final Lcom/baidu/internal/contacts/DataUsageStatUpdater$DataUsageFeedback;
.super Ljava/lang/Object;
.source "DataUsageStatUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/contacts/DataUsageStatUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataUsageFeedback"
.end annotation


# static fields
.field private static final FEEDBACK_URI:Landroid/net/Uri; = null

.field private static final USAGE_TYPE:Ljava/lang/String; = "type"

.field public static final USAGE_TYPE_CALL:Ljava/lang/String; = "call"

.field public static final USAGE_TYPE_LONG_TEXT:Ljava/lang/String; = "long_text"

.field public static final USAGE_TYPE_SHORT_TEXT:Ljava/lang/String; = "short_text"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "usagefeedback"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/contacts/DataUsageStatUpdater$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/baidu/internal/contacts/DataUsageStatUpdater$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    return-object v0
.end method
