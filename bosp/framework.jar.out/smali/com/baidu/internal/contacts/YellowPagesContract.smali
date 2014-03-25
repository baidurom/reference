.class public Lcom/baidu/internal/contacts/YellowPagesContract;
.super Ljava/lang/Object;
.source "YellowPagesContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/contacts/YellowPagesContract$Columns;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final FROM_YELLOW:Ljava/lang/String; = "from_yellow"

.field public static final PROPERTY_INIT:Ljava/lang/String; = "yellow_init"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "yellow_pages"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/contacts/YellowPagesContract;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method
