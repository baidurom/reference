.class public Lbaidu/net/sip/extension/UserProfile;
.super Ljava/lang/Object;
.source "UserProfile.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbaidu/net/sip/extension/UserProfile$ErrorInfo;
    }
.end annotation


# static fields
.field public static final STATUS_NONE:I = 0x3

.field public static final STATUS_SIPOFF:I = 0x2

.field public static final STATUS_SIPON_OFFLINE:I = 0x1

.field public static final STATUS_SIPON_ONLINE:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mEmail:Ljava/lang/String;

.field public mErrorInfo:Lbaidu/net/sip/extension/UserProfile$ErrorInfo;

.field public mPhone:Ljava/lang/String;

.field public mQueryItem:Lbaidu/net/sip/extension/QueryItem;

.field public mSipid:Ljava/lang/String;

.field public mUname:Ljava/lang/String;

.field public mUstatus:I

.field public mUuid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "err"

    iput-object v0, p0, Lbaidu/net/sip/extension/UserProfile;->mSipid:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbaidu/net/sip/extension/QueryItem;)V
    .locals 0
    .parameter "uuid"
    .parameter "ustatus"
    .parameter "sipId"
    .parameter "uname"
    .parameter "email"
    .parameter "phone"
    .parameter "item"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lbaidu/net/sip/extension/UserProfile;->mUuid:I

    .line 34
    iput p2, p0, Lbaidu/net/sip/extension/UserProfile;->mUstatus:I

    .line 35
    iput-object p3, p0, Lbaidu/net/sip/extension/UserProfile;->mSipid:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lbaidu/net/sip/extension/UserProfile;->mUname:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lbaidu/net/sip/extension/UserProfile;->mEmail:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lbaidu/net/sip/extension/UserProfile;->mPhone:Ljava/lang/String;

    .line 39
    iput-object p7, p0, Lbaidu/net/sip/extension/UserProfile;->mQueryItem:Lbaidu/net/sip/extension/QueryItem;

    .line 40
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lbaidu/net/sip/extension/QueryItem;)V
    .locals 1
    .parameter "type"
    .parameter "errorStr"
    .parameter "item"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lbaidu/net/sip/extension/UserProfile$ErrorInfo;

    invoke-direct {v0, p0, p1, p2}, Lbaidu/net/sip/extension/UserProfile$ErrorInfo;-><init>(Lbaidu/net/sip/extension/UserProfile;ILjava/lang/String;)V

    iput-object v0, p0, Lbaidu/net/sip/extension/UserProfile;->mErrorInfo:Lbaidu/net/sip/extension/UserProfile$ErrorInfo;

    .line 44
    iput-object p3, p0, Lbaidu/net/sip/extension/UserProfile;->mQueryItem:Lbaidu/net/sip/extension/QueryItem;

    .line 45
    return-void
.end method


# virtual methods
.method public setErrorInfo(ILjava/lang/String;)V
    .locals 1
    .parameter "type"
    .parameter "errorStr"

    .prologue
    .line 48
    iget-object v0, p0, Lbaidu/net/sip/extension/UserProfile;->mErrorInfo:Lbaidu/net/sip/extension/UserProfile$ErrorInfo;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lbaidu/net/sip/extension/UserProfile$ErrorInfo;

    invoke-direct {v0, p0, p1, p2}, Lbaidu/net/sip/extension/UserProfile$ErrorInfo;-><init>(Lbaidu/net/sip/extension/UserProfile;ILjava/lang/String;)V

    iput-object v0, p0, Lbaidu/net/sip/extension/UserProfile;->mErrorInfo:Lbaidu/net/sip/extension/UserProfile$ErrorInfo;

    .line 54
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lbaidu/net/sip/extension/UserProfile;->mErrorInfo:Lbaidu/net/sip/extension/UserProfile$ErrorInfo;

    #setter for: Lbaidu/net/sip/extension/UserProfile$ErrorInfo;->mErrorType:I
    invoke-static {v0, p1}, Lbaidu/net/sip/extension/UserProfile$ErrorInfo;->access$002(Lbaidu/net/sip/extension/UserProfile$ErrorInfo;I)I

    .line 52
    iget-object v0, p0, Lbaidu/net/sip/extension/UserProfile;->mErrorInfo:Lbaidu/net/sip/extension/UserProfile$ErrorInfo;

    #setter for: Lbaidu/net/sip/extension/UserProfile$ErrorInfo;->mErrorString:Ljava/lang/String;
    invoke-static {v0, p2}, Lbaidu/net/sip/extension/UserProfile$ErrorInfo;->access$102(Lbaidu/net/sip/extension/UserProfile$ErrorInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
