.class public Lcom/android/internal/telephony/cat/CatResponseMessage;
.super Ljava/lang/Object;
.source "CatResponseMessage.java"


# instance fields
.field additionalInfo:[B

.field cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

.field destinationId:I

.field event:I

.field oneShot:Z

.field resCode:Lcom/android/internal/telephony/cat/ResultCode;

.field sourceId:I

.field usersConfirm:Z

.field usersInput:Ljava/lang/String;

.field usersMenuSelection:I

.field usersYesNoSelection:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 56
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 57
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    .line 58
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    .line 59
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    .line 92
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->event:I

    .line 93
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->sourceId:I

    .line 94
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->destinationId:I

    .line 96
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->oneShot:Z

    .line 99
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 56
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 57
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    .line 58
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    .line 59
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    .line 92
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->event:I

    .line 93
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->sourceId:I

    .line 94
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->destinationId:I

    .line 96
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->oneShot:Z

    .line 102
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->event:I

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 3
    .parameter "cmdMsg"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 56
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 57
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    .line 58
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    .line 59
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    .line 92
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->event:I

    .line 93
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->sourceId:I

    .line 94
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->destinationId:I

    .line 96
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->oneShot:Z

    .line 63
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 64
    return-void
.end method


# virtual methods
.method getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    return-object v0
.end method

.method public setAdditionalInfo([B)V
    .locals 0
    .parameter "additionalInfo"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->additionalInfo:[B

    .line 132
    return-void
.end method

.method public setConfirmation(Z)V
    .locals 0
    .parameter "confirm"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    .line 84
    return-void
.end method

.method public setDestinationId(I)V
    .locals 0
    .parameter "dId"

    .prologue
    .line 122
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->destinationId:I

    .line 123
    return-void
.end method

.method public setEventId(I)V
    .locals 0
    .parameter "event"

    .prologue
    .line 114
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->event:I

    .line 115
    return-void
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 0
    .parameter "input"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setMenuSelection(I)V
    .locals 0
    .parameter "selection"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    .line 72
    return-void
.end method

.method public setOneShot(Z)V
    .locals 0
    .parameter "shot"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->oneShot:Z

    .line 140
    return-void
.end method

.method public setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V
    .locals 0
    .parameter "resCode"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 68
    return-void
.end method

.method public setSourceId(I)V
    .locals 0
    .parameter "sId"

    .prologue
    .line 110
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->sourceId:I

    .line 111
    return-void
.end method

.method public setYesNo(Z)V
    .locals 0
    .parameter "yesNo"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    .line 80
    return-void
.end method
