.class Lcom/android/server/TelephonyRegistry$DataPara;
.super Ljava/lang/Object;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataPara"
.end annotation


# instance fields
.field apn:Ljava/lang/String;

.field isDataConnectivityPossible:Z

.field linkCapabilities:Landroid/net/LinkCapabilities;

.field linkProperties:Landroid/net/LinkProperties;

.field networkType:I

.field reason:Ljava/lang/String;

.field roaming:Z

.field state:I

.field final synthetic this$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method public constructor <init>(Lcom/android/server/TelephonyRegistry;IZLjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V
    .locals 0
    .parameter
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "networkType"
    .parameter "roaming"

    .prologue
    .line 565
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$DataPara;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    iput p2, p0, Lcom/android/server/TelephonyRegistry$DataPara;->state:I

    .line 568
    iput-boolean p3, p0, Lcom/android/server/TelephonyRegistry$DataPara;->isDataConnectivityPossible:Z

    .line 569
    iput-object p4, p0, Lcom/android/server/TelephonyRegistry$DataPara;->reason:Ljava/lang/String;

    .line 570
    iput-object p5, p0, Lcom/android/server/TelephonyRegistry$DataPara;->apn:Ljava/lang/String;

    .line 571
    iput-object p6, p0, Lcom/android/server/TelephonyRegistry$DataPara;->linkProperties:Landroid/net/LinkProperties;

    .line 572
    iput-object p7, p0, Lcom/android/server/TelephonyRegistry$DataPara;->linkCapabilities:Landroid/net/LinkCapabilities;

    .line 573
    iput p8, p0, Lcom/android/server/TelephonyRegistry$DataPara;->networkType:I

    .line 574
    iput-boolean p9, p0, Lcom/android/server/TelephonyRegistry$DataPara;->roaming:Z

    .line 575
    return-void
.end method


# virtual methods
.method public equalsTo(Lcom/android/server/TelephonyRegistry$DataPara;)Z
    .locals 3
    .parameter "d"

    .prologue
    const/4 v0, 0x0

    .line 586
    if-nez p1, :cond_1

    .line 610
    :cond_0
    :goto_0
    return v0

    .line 587
    :cond_1
    iget v1, p0, Lcom/android/server/TelephonyRegistry$DataPara;->state:I

    iget v2, p1, Lcom/android/server/TelephonyRegistry$DataPara;->state:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/server/TelephonyRegistry$DataPara;->isDataConnectivityPossible:Z

    iget-boolean v2, p1, Lcom/android/server/TelephonyRegistry$DataPara;->isDataConnectivityPossible:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/server/TelephonyRegistry$DataPara;->roaming:Z

    iget-boolean v2, p0, Lcom/android/server/TelephonyRegistry$DataPara;->roaming:Z

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/TelephonyRegistry$DataPara;->networkType:I

    iget v2, p1, Lcom/android/server/TelephonyRegistry$DataPara;->networkType:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$DataPara;->apn:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$DataPara;->apn:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$DataPara;->linkProperties:Landroid/net/LinkProperties;

    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$DataPara;->linkProperties:Landroid/net/LinkProperties;

    if-eq v1, v2, :cond_2

    .line 595
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$DataPara;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v1, :cond_0

    .line 596
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$DataPara;->linkProperties:Landroid/net/LinkProperties;

    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$DataPara;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    :cond_2
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$DataPara;->linkCapabilities:Landroid/net/LinkCapabilities;

    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$DataPara;->linkCapabilities:Landroid/net/LinkCapabilities;

    if-eq v1, v2, :cond_3

    .line 603
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$DataPara;->linkCapabilities:Landroid/net/LinkCapabilities;

    if-eqz v1, :cond_0

    .line 604
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$DataPara;->linkCapabilities:Landroid/net/LinkCapabilities;

    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$DataPara;->linkCapabilities:Landroid/net/LinkCapabilities;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDataConnection: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/TelephonyRegistry$DataPara;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isDataConnectivityPossible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/TelephonyRegistry$DataPara;->isDataConnectivityPossible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$DataPara;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' apn=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$DataPara;->apn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/TelephonyRegistry$DataPara;->networkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " linkProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$DataPara;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " linkCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$DataPara;->linkCapabilities:Landroid/net/LinkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
