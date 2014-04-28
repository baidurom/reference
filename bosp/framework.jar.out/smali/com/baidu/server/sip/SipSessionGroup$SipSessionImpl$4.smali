.class Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$4;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"

# interfaces
.implements Lgov/nist/javax/sip/clientauthutils/AccountManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->getAccountManager()Lgov/nist/javax/sip/clientauthutils/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;


# direct methods
.method constructor <init>(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$4;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCredentials(Ljavax/sip/ClientTransaction;Ljava/lang/String;)Lgov/nist/javax/sip/clientauthutils/UserCredentials;
    .locals 1
    .parameter "challengedTransaction"
    .parameter "realm"

    .prologue
    .line 1145
    new-instance v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$4$1;

    invoke-direct {v0, p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$4$1;-><init>(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$4;)V

    return-object v0
.end method
