.class public Lcom/baidu/sip/utility/VoipUtility;
.super Ljava/lang/Object;
.source "VoipUtility.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "VoipUtility"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSipAccountOnline(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 5
    .parameter "context"
    .parameter "content"
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 24
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    const/4 v3, 0x3

    if-le p2, v3, :cond_1

    .line 33
    :cond_0
    :goto_0
    return v2

    .line 27
    :cond_1
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 28
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 29
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 31
    invoke-static {p1, p2, v4}, Lbaidu/net/sip/extension/SipHttpUtilites;->isSipAccountOnline(Ljava/lang/String;IZ)Z

    move-result v2

    goto :goto_0
.end method
