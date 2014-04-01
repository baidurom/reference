.class public final Landroid/provider/Telephony;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Telephony$WapPush;,
        Landroid/provider/Telephony$Intents;,
        Landroid/provider/Telephony$GPRSInfo;,
        Landroid/provider/Telephony$GprsInfo;,
        Landroid/provider/Telephony$SIMInfo;,
        Landroid/provider/Telephony$SimInfo;,
        Landroid/provider/Telephony$Carriers;,
        Landroid/provider/Telephony$MmsSms;,
        Landroid/provider/Telephony$Mms;,
        Landroid/provider/Telephony$Threads;,
        Landroid/provider/Telephony$ThreadsColumns;,
        Landroid/provider/Telephony$CanonicalAddressesColumns;,
        Landroid/provider/Telephony$BaseMmsColumns;,
        Landroid/provider/Telephony$CbSms;,
        Landroid/provider/Telephony$TextBasedCbSmsColumns;,
        Landroid/provider/Telephony$Sms;,
        Landroid/provider/Telephony$TextBasedSmsColumns;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOCAL_LOGV:Z = false

.field public static final SIMBackgroundRes:[I = null

.field private static final TAG:Ljava/lang/String; = "Telephony"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2469
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/provider/Telephony;->SIMBackgroundRes:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xcbt 0x0t 0x2t 0x2t
        0xcet 0x0t 0x2t 0x2t
        0xcct 0x0t 0x2t 0x2t
        0xcft 0x0t 0x2t 0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method
