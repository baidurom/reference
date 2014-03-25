.class public abstract Lcom/baidu/themeanimation/element/CommandElement;
.super Lcom/baidu/themeanimation/element/Element;
.source "CommandElement.java"


# static fields
.field public static final TYPE_COMMAND:I = 0x0

.field public static final TYPE_INTENT_COMMAND:I = 0x2

.field public static final TYPE_VARIABLE_COMMAND:I = 0x1


# instance fields
.field private mCondition:Z

.field private mDelay:J

.field private mDelayCondition:Z

.field private mHandler:Landroid/os/Handler;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 9
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/Element;-><init>()V

    .line 15
    iput-boolean v0, p0, Lcom/baidu/themeanimation/element/CommandElement;->mCondition:Z

    .line 16
    iput-boolean v0, p0, Lcom/baidu/themeanimation/element/CommandElement;->mDelayCondition:Z

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/themeanimation/element/CommandElement;->mDelay:J

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/CommandElement;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected exec()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public execDelay()V
    .locals 4

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/baidu/themeanimation/element/CommandElement;->mCondition:Z

    if-eqz v0, :cond_0

    .line 71
    iget-wide v0, p0, Lcom/baidu/themeanimation/element/CommandElement;->mDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/themeanimation/element/CommandElement;->mDelayCondition:Z

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/baidu/themeanimation/element/CommandElement;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/themeanimation/element/CommandElement$1;

    invoke-direct {v1, p0}, Lcom/baidu/themeanimation/element/CommandElement$1;-><init>(Lcom/baidu/themeanimation/element/CommandElement;)V

    iget-wide v2, p0, Lcom/baidu/themeanimation/element/CommandElement;->mDelay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/CommandElement;->exec()V

    goto :goto_0
.end method

.method public getCommandType()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/baidu/themeanimation/element/CommandElement;->mType:I

    return v0
.end method

.method public getCondition()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/baidu/themeanimation/element/CommandElement;->mCondition:Z

    return v0
.end method

.method public getDelay()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/baidu/themeanimation/element/CommandElement;->mDelay:J

    return-wide v0
.end method

.method public getDelayCondition()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/baidu/themeanimation/element/CommandElement;->mDelayCondition:Z

    return v0
.end method

.method public setCommandType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 23
    iput p1, p0, Lcom/baidu/themeanimation/element/CommandElement;->mType:I

    .line 24
    return-void
.end method

.method public setCondition(Ljava/lang/String;)V
    .locals 1
    .parameter "condition"

    .prologue
    .line 51
    invoke-static {p1}, Lcom/baidu/themeanimation/util/Utils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/CommandElement;->setCondition(Z)V

    .line 52
    return-void
.end method

.method public setCondition(Z)V
    .locals 0
    .parameter "condition"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/baidu/themeanimation/element/CommandElement;->mCondition:Z

    .line 48
    return-void
.end method

.method public setDelay(J)V
    .locals 0
    .parameter "delay"

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/baidu/themeanimation/element/CommandElement;->mDelay:J

    .line 36
    return-void
.end method

.method public setDelay(Ljava/lang/String;)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 39
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/themeanimation/element/CommandElement;->setDelay(J)V

    .line 40
    return-void
.end method

.method public setDelayCondition(Ljava/lang/String;)V
    .locals 1
    .parameter "condition"

    .prologue
    .line 63
    invoke-static {p1}, Lcom/baidu/themeanimation/util/Utils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/CommandElement;->setDelayCondition(Z)V

    .line 64
    return-void
.end method

.method public setDelayCondition(Z)V
    .locals 0
    .parameter "condition"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/baidu/themeanimation/element/CommandElement;->mDelayCondition:Z

    .line 60
    return-void
.end method
