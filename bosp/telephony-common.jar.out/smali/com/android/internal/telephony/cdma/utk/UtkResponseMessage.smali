.class public Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;
.super Ljava/lang/Object;
.source "UtkResponseMessage.java"


# instance fields
.field cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

.field resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

.field usersConfirm:Z

.field usersInput:Ljava/lang/String;

.field usersMenuSelection:I

.field usersYesNoSelection:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)V
    .locals 3
    .parameter "cmdMsg"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    .line 21
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 22
    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersMenuSelection:I

    .line 23
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersInput:Ljava/lang/String;

    .line 24
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersYesNoSelection:Z

    .line 25
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersConfirm:Z

    .line 28
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    .line 29
    return-void
.end method


# virtual methods
.method getCmdDetails()Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    return-object v0
.end method

.method public setConfirmation(Z)V
    .locals 0
    .parameter "confirm"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersConfirm:Z

    .line 49
    return-void
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 0
    .parameter "input"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersInput:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setMenuSelection(I)V
    .locals 0
    .parameter "selection"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersMenuSelection:I

    .line 37
    return-void
.end method

.method public setResultCode(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V
    .locals 0
    .parameter "resCode"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 33
    return-void
.end method

.method public setYesNo(Z)V
    .locals 0
    .parameter "yesNo"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersYesNoSelection:Z

    .line 45
    return-void
.end method
