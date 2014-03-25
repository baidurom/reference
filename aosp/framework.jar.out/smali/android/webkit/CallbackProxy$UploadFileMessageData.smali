.class Landroid/webkit/CallbackProxy$UploadFileMessageData;
.super Ljava/lang/Object;
.source "CallbackProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/CallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UploadFileMessageData"
.end annotation


# instance fields
.field private mAcceptType:Ljava/lang/String;

.field private mCallback:Landroid/webkit/CallbackProxy$UploadFile;

.field private mCapture:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/webkit/CallbackProxy$UploadFile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uploadFile"
    .parameter "acceptType"
    .parameter "capture"

    .prologue
    .line 1664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1665
    iput-object p1, p0, Landroid/webkit/CallbackProxy$UploadFileMessageData;->mCallback:Landroid/webkit/CallbackProxy$UploadFile;

    .line 1666
    iput-object p2, p0, Landroid/webkit/CallbackProxy$UploadFileMessageData;->mAcceptType:Ljava/lang/String;

    .line 1667
    iput-object p3, p0, Landroid/webkit/CallbackProxy$UploadFileMessageData;->mCapture:Ljava/lang/String;

    .line 1668
    return-void
.end method


# virtual methods
.method public getAcceptType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1675
    iget-object v0, p0, Landroid/webkit/CallbackProxy$UploadFileMessageData;->mAcceptType:Ljava/lang/String;

    return-object v0
.end method

.method public getCapture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1679
    iget-object v0, p0, Landroid/webkit/CallbackProxy$UploadFileMessageData;->mCapture:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadFile()Landroid/webkit/CallbackProxy$UploadFile;
    .locals 1

    .prologue
    .line 1671
    iget-object v0, p0, Landroid/webkit/CallbackProxy$UploadFileMessageData;->mCallback:Landroid/webkit/CallbackProxy$UploadFile;

    return-object v0
.end method
