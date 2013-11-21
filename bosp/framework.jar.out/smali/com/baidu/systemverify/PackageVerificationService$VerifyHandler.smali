.class Lcom/baidu/systemverify/PackageVerificationService$VerifyHandler;
.super Landroid/os/Handler;
.source "PackageVerificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/systemverify/PackageVerificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerifyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/systemverify/PackageVerificationService;


# direct methods
.method public constructor <init>(Lcom/baidu/systemverify/PackageVerificationService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/baidu/systemverify/PackageVerificationService$VerifyHandler;->this$0:Lcom/baidu/systemverify/PackageVerificationService;

    .line 67
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 68
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 73
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 94
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 96
    :goto_0
    return-void

    .line 75
    :pswitch_0
    const/4 v2, 0x1

    .line 76
    .local v2, installed:Z
    invoke-static {}, Lcom/baidu/systemverify/PackageVerificationService;->access$000()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 77
    .local v4, pkgName:Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/systemverify/PackageVerificationService$VerifyHandler;->this$0:Lcom/baidu/systemverify/PackageVerificationService;

    #calls: Lcom/baidu/systemverify/PackageVerificationService;->isPackageInstalled(Ljava/lang/String;)Z
    invoke-static {v5, v4}, Lcom/baidu/systemverify/PackageVerificationService;->access$100(Lcom/baidu/systemverify/PackageVerificationService;Ljava/lang/String;)Z

    move-result v2

    .line 78
    if-nez v2, :cond_1

    .line 81
    .end local v4           #pkgName:Ljava/lang/String;
    :cond_0
    if-nez v2, :cond_2

    .line 82
    const-string v5, "PackageVerificationService"

    const-string v6, "System crash due to dependent system services missing."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 76
    .restart local v4       #pkgName:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 87
    .end local v4           #pkgName:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/baidu/systemverify/PackageVerificationService$VerifyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 91
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #installed:Z
    .end local v3           #len$:I
    :pswitch_1
    iget-object v5, p0, Lcom/baidu/systemverify/PackageVerificationService$VerifyHandler;->this$0:Lcom/baidu/systemverify/PackageVerificationService;

    #calls: Lcom/baidu/systemverify/PackageVerificationService;->finish()V
    invoke-static {v5}, Lcom/baidu/systemverify/PackageVerificationService;->access$200(Lcom/baidu/systemverify/PackageVerificationService;)V

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
