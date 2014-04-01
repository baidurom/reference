.class Lbaidu/net/sip/extension/SipSSLSocketFactory$1;
.super Ljava/lang/Object;
.source "SipSSLSocketFactory.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbaidu/net/sip/extension/SipSSLSocketFactory;-><init>(Ljava/security/KeyStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbaidu/net/sip/extension/SipSSLSocketFactory;


# direct methods
.method constructor <init>(Lbaidu/net/sip/extension/SipSSLSocketFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lbaidu/net/sip/extension/SipSSLSocketFactory$1;->this$0:Lbaidu/net/sip/extension/SipSSLSocketFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 33
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 37
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method
