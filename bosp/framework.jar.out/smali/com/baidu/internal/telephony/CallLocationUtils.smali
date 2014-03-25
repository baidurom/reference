.class public Lcom/baidu/internal/telephony/CallLocationUtils;
.super Ljava/lang/Object;
.source "CallLocationUtils.java"


# static fields
.field private static final CALL_LOCATION_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "CallLocationUtils"

.field private static final VDBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "content://com.android.Contacts.CallLocation/calllocation"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/telephony/CallLocationUtils;->CALL_LOCATION_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method
