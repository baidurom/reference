.class Lcom/baidu/server/sip/SipSessionGroup$RegisterCommand;
.super Ljava/util/EventObject;
.source "SipSessionGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/server/sip/SipSessionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisterCommand"
.end annotation


# instance fields
.field private mDuration:I

.field final synthetic this$0:Lcom/baidu/server/sip/SipSessionGroup;


# direct methods
.method public constructor <init>(Lcom/baidu/server/sip/SipSessionGroup;I)V
    .locals 0
    .parameter
    .parameter "duration"

    .prologue
    .line 1962
    iput-object p1, p0, Lcom/baidu/server/sip/SipSessionGroup$RegisterCommand;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    .line 1963
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 1964
    iput p2, p0, Lcom/baidu/server/sip/SipSessionGroup$RegisterCommand;->mDuration:I

    .line 1965
    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .prologue
    .line 1968
    iget v0, p0, Lcom/baidu/server/sip/SipSessionGroup$RegisterCommand;->mDuration:I

    return v0
.end method
