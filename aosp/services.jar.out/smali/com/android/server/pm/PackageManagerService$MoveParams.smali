.class Lcom/android/server/pm/PackageManagerService$MoveParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MoveParams"
.end annotation


# instance fields
.field final flags:I

.field mRet:I

.field final observer:Landroid/content/pm/IPackageMoveObserver;

.field final packageName:Ljava/lang/String;

.field final srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field final targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field uid:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Landroid/content/pm/IPackageMoveObserver;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter "srcArgs"
    .parameter "observer"
    .parameter "flags"
    .parameter "packageName"
    .parameter "dataDir"
    .parameter "uid"

    .prologue
    const/4 v1, 0x0

    .line 6063
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V

    .line 6064
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 6065
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->observer:Landroid/content/pm/IPackageMoveObserver;

    .line 6066
    iput p4, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->flags:I

    .line 6067
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    .line 6068
    iput p7, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->uid:I

    .line 6069
    if-eqz p2, :cond_0

    .line 6070
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 6071
    .local v0, packageUri:Landroid/net/Uri;
    #calls: Lcom/android/server/pm/PackageManagerService;->createInstallArgs(Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    invoke-static {p1, v0, p4, p5, p6}, Lcom/android/server/pm/PackageManagerService;->access$2800(Lcom/android/server/pm/PackageManagerService;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 6075
    .end local v0           #packageUri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 6073
    :cond_0
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    goto :goto_0
.end method


# virtual methods
.method handleReturnCode()V
    .locals 4

    .prologue
    .line 6122
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->mRet:I

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostInstall(II)I

    .line 6123
    const/4 v0, -0x6

    .line 6124
    .local v0, currentStatus:I
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->mRet:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 6125
    const/4 v0, 0x1

    .line 6129
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #calls: Lcom/android/server/pm/PackageManagerService;->processPendingMove(Lcom/android/server/pm/PackageManagerService$MoveParams;I)V
    invoke-static {v1, p0, v0}, Lcom/android/server/pm/PackageManagerService;->access$2900(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$MoveParams;I)V

    .line 6130
    return-void

    .line 6126
    :cond_1
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->mRet:I

    const/4 v2, -0x4

    if-ne v1, v2, :cond_0

    .line 6127
    const/4 v0, -0x1

    goto :goto_0
.end method

.method handleServiceError()V
    .locals 1

    .prologue
    .line 6134
    const/16 v0, -0x6e

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->mRet:I

    .line 6135
    return-void
.end method

.method public handleStartCopy()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 6078
    const/4 v0, -0x4

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->mRet:I

    .line 6080
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->checkFreeStorage(Lcom/android/internal/app/IMediaContainerService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6081
    const-string v0, "PackageManager"

    const-string v1, "Insufficient storage to install"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6118
    :cond_0
    :goto_0
    return-void

    .line 6085
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPreCopy()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->mRet:I

    .line 6086
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->mRet:I

    if-ne v0, v3, :cond_0

    .line 6090
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->mRet:I

    .line 6091
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->mRet:I

    if-eq v0, v3, :cond_2

    .line 6092
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostCopy(I)I

    goto :goto_0

    .line 6096
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostCopy(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->mRet:I

    .line 6097
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->mRet:I

    if-ne v0, v3, :cond_0

    .line 6101
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->mRet:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPreInstall(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->mRet:I

    .line 6102
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->mRet:I

    if-eq v0, v3, :cond_0

    goto :goto_0
.end method
