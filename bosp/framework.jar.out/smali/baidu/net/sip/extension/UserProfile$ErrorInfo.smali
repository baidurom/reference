.class public Lbaidu/net/sip/extension/UserProfile$ErrorInfo;
.super Ljava/lang/Object;
.source "UserProfile.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbaidu/net/sip/extension/UserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ErrorInfo"
.end annotation


# static fields
.field public static final ERROR_TYPE_INVALID_BDUSS:I = 0x1

.field public static final ERROR_TYPE_OTHER:I = 0xa

.field public static final ERROR_TYPE_QUERY_FAILED:I = 0x3

.field public static final ERROR_TYPE_SERVER_ERROR:I = 0x2

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mErrorString:Ljava/lang/String;

.field private mErrorType:I

.field final synthetic this$0:Lbaidu/net/sip/extension/UserProfile;


# direct methods
.method public constructor <init>(Lbaidu/net/sip/extension/UserProfile;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "errorType"
    .parameter "errorString"

    .prologue
    .line 66
    iput-object p1, p0, Lbaidu/net/sip/extension/UserProfile$ErrorInfo;->this$0:Lbaidu/net/sip/extension/UserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p2, p0, Lbaidu/net/sip/extension/UserProfile$ErrorInfo;->mErrorType:I

    .line 68
    iput-object p3, p0, Lbaidu/net/sip/extension/UserProfile$ErrorInfo;->mErrorString:Ljava/lang/String;

    .line 69
    return-void
.end method

.method static synthetic access$002(Lbaidu/net/sip/extension/UserProfile$ErrorInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lbaidu/net/sip/extension/UserProfile$ErrorInfo;->mErrorType:I

    return p1
.end method

.method static synthetic access$102(Lbaidu/net/sip/extension/UserProfile$ErrorInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lbaidu/net/sip/extension/UserProfile$ErrorInfo;->mErrorString:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getErrorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lbaidu/net/sip/extension/UserProfile$ErrorInfo;->mErrorString:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorType()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lbaidu/net/sip/extension/UserProfile$ErrorInfo;->mErrorType:I

    return v0
.end method
