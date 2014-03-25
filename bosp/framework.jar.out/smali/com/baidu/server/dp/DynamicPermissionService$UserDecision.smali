.class Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;
.super Ljava/lang/Object;
.source "DynamicPermissionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/server/dp/DynamicPermissionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserDecision"
.end annotation


# instance fields
.field cr:Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;

.field grant:I

.field final synthetic this$0:Lcom/baidu/server/dp/DynamicPermissionService;


# direct methods
.method public constructor <init>(Lcom/baidu/server/dp/DynamicPermissionService;Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;I)V
    .locals 0
    .parameter
    .parameter "cr"
    .parameter "grant"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p2, p0, Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;->cr:Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;

    .line 232
    iput p3, p0, Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;->grant:I

    .line 233
    return-void
.end method


# virtual methods
.method public isSameSession(Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;)Z
    .locals 1
    .parameter "cr"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;->cr:Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;

    invoke-virtual {v0, p1}, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->isSameRequest(Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;)Z

    move-result v0

    return v0
.end method
