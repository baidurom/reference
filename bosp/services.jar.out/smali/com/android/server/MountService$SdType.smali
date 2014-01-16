.class Lcom/android/server/MountService$SdType;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SdType"
.end annotation


# static fields
.field static final EXT_INT:Ljava/lang/String; = "2"

.field static final EXT_INT_AUTO:Ljava/lang/String; = "3"

.field static final EXT_ONLY:Ljava/lang/String; = "1"

.field static final INT_EXT_AUTO:Ljava/lang/String; = "4"

.field static final INT_ONLY:Ljava/lang/String; = "0"

.field static final TYPE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 209
    const-string v0, "persist.baidu.sdcard.type"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/MountService$SdType;->TYPE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
