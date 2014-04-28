.class Lcom/baidu/themeanimation/element/CommandElement$1;
.super Ljava/lang/Object;
.source "CommandElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/themeanimation/element/CommandElement;->execDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/themeanimation/element/CommandElement;


# direct methods
.method constructor <init>(Lcom/baidu/themeanimation/element/CommandElement;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/baidu/themeanimation/element/CommandElement$1;->this$0:Lcom/baidu/themeanimation/element/CommandElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/baidu/themeanimation/element/CommandElement$1;->this$0:Lcom/baidu/themeanimation/element/CommandElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/CommandElement;->exec()V

    .line 76
    return-void
.end method
