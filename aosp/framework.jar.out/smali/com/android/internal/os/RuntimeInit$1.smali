.class final Lcom/android/internal/os/RuntimeInit$1;
.super Lorg/apache/harmony/luni/internal/util/TimezoneGetter;
.source "RuntimeInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/RuntimeInit;->commonInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/util/TimezoneGetter;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 107
    const-string/jumbo v1, "persist.sys.timezone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, zoneinfo:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 110
    :cond_0
    const-string/jumbo v1, "persist.sys.timezone"

    const-string v2, "Asia/Shanghai"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_1
    const-string/jumbo v1, "persist.sys.timezone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
