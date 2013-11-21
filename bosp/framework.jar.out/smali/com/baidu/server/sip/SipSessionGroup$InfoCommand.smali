.class Lcom/baidu/server/sip/SipSessionGroup$InfoCommand;
.super Ljava/util/EventObject;
.source "SipSessionGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/server/sip/SipSessionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InfoCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/server/sip/SipSessionGroup;


# direct methods
.method public constructor <init>(Lcom/baidu/server/sip/SipSessionGroup;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "info"

    .prologue
    .line 2003
    iput-object p1, p0, Lcom/baidu/server/sip/SipSessionGroup$InfoCommand;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    .line 2004
    invoke-direct {p0, p2}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 2005
    return-void
.end method


# virtual methods
.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2008
    invoke-virtual {p0}, Lcom/baidu/server/sip/SipSessionGroup$InfoCommand;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
