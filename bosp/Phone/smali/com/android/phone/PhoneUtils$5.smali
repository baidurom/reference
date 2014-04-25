.class final Lcom/android/phone/PhoneUtils$5;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 2003
    move-object v0, p2

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 2004
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    const/4 v1, 0x1

    .line 2008
    .local v1, isSipConn:Z
    :goto_0
    iget-boolean v3, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v3, :cond_0

    invoke-virtual {p3}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p3}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2025
    :cond_0
    iget v3, p3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-nez v3, :cond_1

    .line 2026
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    iput v3, p3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2048
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    iget-boolean v3, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v3, :cond_2

    invoke-virtual {p3}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p3}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2049
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2053
    :cond_2
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 2054
    return-void

    .line 2004
    .end local v1           #isSipConn:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 2033
    .restart local v1       #isSipConn:Z
    :cond_4
    const/4 v3, 0x0

    invoke-static {v3, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    .line 2037
    .local v2, newCi:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v2, :cond_1

    .line 2038
    iget-object v3, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2039
    iget-object v3, p3, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 2040
    iget-object v3, p3, Lcom/android/internal/telephony/CallerInfo;->label:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->label:Ljava/lang/String;

    .line 2041
    iget v3, p3, Lcom/android/internal/telephony/CallerInfo;->count:I

    iput v3, v2, Lcom/android/internal/telephony/CallerInfo;->count:I

    .line 2043
    move-object p3, v2

    goto :goto_1
.end method
