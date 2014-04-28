.class Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$4$1;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"

# interfaces
.implements Lgov/nist/javax/sip/clientauthutils/UserCredentials;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$4;->getCredentials(Ljavax/sip/ClientTransaction;Ljava/lang/String;)Lgov/nist/javax/sip/clientauthutils/UserCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$4;


# direct methods
.method constructor <init>(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$4$1;->this$2:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$4$1;->this$2:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$4;

    iget-object v0, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$4;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mPassword:Ljava/lang/String;
    invoke-static {v0}, Lcom/baidu/server/sip/SipSessionGroup;->access$2400(Lcom/baidu/server/sip/SipSessionGroup;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSipDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$4$1;->this$2:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$4;

    iget-object v0, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$4;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mLocalProfile:Lbaidu/net/sip/SipProfile;
    invoke-static {v0}, Lcom/baidu/server/sip/SipSessionGroup;->access$1500(Lcom/baidu/server/sip/SipSessionGroup;)Lbaidu/net/sip/SipProfile;

    move-result-object v0

    invoke-virtual {v0}, Lbaidu/net/sip/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1147
    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$4$1;->this$2:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$4;

    iget-object v1, v1, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$4;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, v1, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mLocalProfile:Lbaidu/net/sip/SipProfile;
    invoke-static {v1}, Lcom/baidu/server/sip/SipSessionGroup;->access$1500(Lcom/baidu/server/sip/SipSessionGroup;)Lbaidu/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {v1}, Lbaidu/net/sip/SipProfile;->getAuthUserName()Ljava/lang/String;

    move-result-object v0

    .line 1148
    .local v0, username:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .end local v0           #username:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #username:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$4$1;->this$2:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$4;

    iget-object v1, v1, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$4;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, v1, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mLocalProfile:Lbaidu/net/sip/SipProfile;
    invoke-static {v1}, Lcom/baidu/server/sip/SipSessionGroup;->access$1500(Lcom/baidu/server/sip/SipSessionGroup;)Lbaidu/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {v1}, Lbaidu/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
