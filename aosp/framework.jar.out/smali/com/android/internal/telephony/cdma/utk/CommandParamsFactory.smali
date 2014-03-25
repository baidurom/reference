.class Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;
.super Landroid/os/Handler;
.source "CommandParamsFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory$1;
    }
.end annotation


# static fields
.field static final LOAD_MULTI_ICONS:I = 0x2

.field static final LOAD_NO_ICON:I = 0x0

.field static final LOAD_SINGLE_ICON:I = 0x1

.field static final MSG_ID_LOAD_ICON_DONE:I = 0x1

.field static final REFRESH_NAA_FILE_CHANGE:I = 0x1

.field static final REFRESH_NAA_INIT:I = 0x3

.field static final REFRESH_NAA_INIT_AND_FILE_CHANGE:I = 0x2

.field static final REFRESH_NAA_INIT_AND_FULL_FILE_CHANGE:I = 0x0

.field static final REFRESH_UICC_RESET:I = 0x4

.field static final UIM_INPUT_MAX_UNICODE_LEN:I = 0x77

.field private static sInstance:Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;


# instance fields
.field private mCaller:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

.field private mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

.field private mIconLoadState:I

.field private mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/cdma/RuimFileHandler;)V
    .locals 2
    .parameter "caller"
    .parameter "fh"

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 37
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 39
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 69
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 70
    invoke-static {p0, p2}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/cdma/RuimFileHandler;)Lcom/android/internal/telephony/cdma/utk/IconLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    .line 71
    return-void
.end method

.method static declared-synchronized getInstance(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/cdma/RuimFileHandler;)Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;
    .locals 2
    .parameter "caller"
    .parameter "fh"

    .prologue
    .line 59
    const-class v1, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :goto_0
    monitor-exit v1

    return-object v0

    .line 62
    :cond_0
    if-eqz p1, :cond_1

    .line 63
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;-><init>(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/cdma/RuimFileHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 76
    .local v0, cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    if-eqz p1, :cond_0

    .line 78
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 80
    .local v1, ctlvCmdDet:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v1, :cond_0

    .line 82
    :try_start_0
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveCommandDetails(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/utk/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 89
    .end local v1           #ctlvCmdDet:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    :cond_0
    :goto_0
    return-object v0

    .line 83
    .restart local v1       #ctlvCmdDet:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    :catch_0
    move-exception v2

    .line 84
    .local v2, e:Lcom/android/internal/telephony/cdma/utk/ResultException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processCommandDetails: Failed to procees command details e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processDisplayText(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 274
    const-string/jumbo v3, "process DisplayText"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 277
    .local v2, textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;
    const/4 v1, 0x0

    .line 279
    .local v1, iconId:Lcom/android/internal/telephony/cdma/utk/IconId;
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 281
    .local v0, ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 282
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 286
    :cond_0
    iget-object v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 287
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v3

    .line 290
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_2

    .line 292
    iput-boolean v5, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->responseNeeded:Z

    .line 295
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_3

    .line 297
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v1

    .line 298
    iget-boolean v3, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 301
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_4

    .line 303
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/Duration;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->duration:Lcom/android/internal/telephony/cdma/utk/Duration;

    .line 307
    :cond_4
    iget v3, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    move v3, v4

    :goto_0
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->isHighPriority:Z

    .line 308
    iget v3, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_6

    move v3, v4

    :goto_1
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->userClear:Z

    .line 310
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 312
    if-eqz v1, :cond_7

    .line 313
    iput v4, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 314
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 318
    :goto_2
    return v4

    :cond_5
    move v3, v5

    .line 307
    goto :goto_0

    :cond_6
    move v3, v5

    .line 308
    goto :goto_1

    :cond_7
    move v4, v5

    .line 318
    goto :goto_2
.end method

.method private processEventNotify(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 647
    const-string/jumbo v5, "process EventNotify"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 650
    .local v2, textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;
    const/4 v1, 0x0

    .line 652
    .local v1, iconId:Lcom/android/internal/telephony/cdma/utk/IconId;
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 654
    .local v0, ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_1

    .line 655
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 660
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 661
    if-eqz v0, :cond_0

    .line 662
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v1

    .line 663
    iget-boolean v5, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v5, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 666
    :cond_0
    iput-boolean v4, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->responseNeeded:Z

    .line 667
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;

    invoke-direct {v5, p1, v2}, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 669
    if-eqz v1, :cond_2

    .line 670
    iput v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 671
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 675
    :goto_0
    return v3

    .line 657
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v3

    :cond_2
    move v3, v4

    .line 675
    goto :goto_0
.end method

.method private processGetInkey(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 377
    const-string/jumbo v3, "process GetInkey"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/Input;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/utk/Input;-><init>()V

    .line 380
    .local v2, input:Lcom/android/internal/telephony/cdma/utk/Input;
    const/4 v1, 0x0

    .line 382
    .local v1, iconId:Lcom/android/internal/telephony/cdma/utk/IconId;
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 384
    .local v0, ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_2

    .line 385
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/utk/Input;->text:Ljava/lang/String;

    .line 390
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 391
    if-eqz v0, :cond_0

    .line 392
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v1

    .line 396
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 397
    if-eqz v0, :cond_1

    .line 398
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/Duration;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/utk/Input;->duration:Lcom/android/internal/telephony/cdma/utk/Duration;

    .line 401
    :cond_1
    iput v4, v2, Lcom/android/internal/telephony/cdma/utk/Input;->minLen:I

    .line 402
    iput v4, v2, Lcom/android/internal/telephony/cdma/utk/Input;->maxLen:I

    .line 404
    iget v3, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/utk/Input;->digitOnly:Z

    .line 405
    iget v3, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    move v3, v4

    :goto_1
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/utk/Input;->ucs2:Z

    .line 406
    iget v3, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    move v3, v4

    :goto_2
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/utk/Input;->yesNo:Z

    .line 407
    iget v3, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_6

    move v3, v4

    :goto_3
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/utk/Input;->helpAvailable:Z

    .line 408
    iput-boolean v4, v2, Lcom/android/internal/telephony/cdma/utk/Input;->echo:Z

    .line 410
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/GetInputParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/cdma/utk/GetInputParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/Input;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 412
    if-eqz v1, :cond_7

    .line 413
    iput v4, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 414
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 418
    :goto_4
    return v4

    .line 387
    :cond_2
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v3

    :cond_3
    move v3, v5

    .line 404
    goto :goto_0

    :cond_4
    move v3, v5

    .line 405
    goto :goto_1

    :cond_5
    move v3, v5

    .line 406
    goto :goto_2

    :cond_6
    move v3, v5

    .line 407
    goto :goto_3

    :cond_7
    move v4, v5

    .line 418
    goto :goto_4
.end method

.method private processGetInput(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 11
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/16 v10, 0x77

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 434
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "process GetInput cmdDet.commandQualifier = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/Input;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/utk/Input;-><init>()V

    .line 437
    .local v3, input:Lcom/android/internal/telephony/cdma/utk/Input;
    const/4 v2, 0x0

    .line 439
    .local v2, iconId:Lcom/android/internal/telephony/cdma/utk/IconId;
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 441
    .local v0, ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_4

    .line 442
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->text:Ljava/lang/String;

    .line 447
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 448
    if-eqz v0, :cond_5

    .line 450
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 451
    .local v4, rawValue:[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 452
    .local v5, valueIndex:I
    aget-byte v6, v4, v5

    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->minLen:I

    .line 453
    add-int/lit8 v6, v5, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->maxLen:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 462
    if-eqz v0, :cond_0

    .line 463
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->defaultText:Ljava/lang/String;

    .line 466
    :cond_0
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 467
    if-eqz v0, :cond_1

    .line 468
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v2

    .line 471
    :cond_1
    iget v6, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_6

    .line 473
    iget v6, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2

    .line 475
    iput-boolean v7, v3, Lcom/android/internal/telephony/cdma/utk/Input;->ucs2:Z

    .line 483
    :cond_2
    :goto_0
    iget-boolean v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->ucs2:Z

    if-eqz v6, :cond_3

    .line 485
    iget v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->maxLen:I

    div-int/lit8 v6, v6, 0x2

    if-le v6, v10, :cond_7

    .line 487
    iput v10, v3, Lcom/android/internal/telephony/cdma/utk/Input;->maxLen:I

    .line 494
    :cond_3
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "maxLen = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v3, Lcom/android/internal/telephony/cdma/utk/Input;->maxLen:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    iget v6, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_8

    move v6, v7

    :goto_2
    iput-boolean v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->echo:Z

    .line 496
    iget v6, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_9

    move v6, v7

    :goto_3
    iput-boolean v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->packed:Z

    .line 497
    iget v6, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_a

    move v6, v7

    :goto_4
    iput-boolean v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->helpAvailable:Z

    .line 499
    new-instance v6, Lcom/android/internal/telephony/cdma/utk/GetInputParams;

    invoke-direct {v6, p1, v3}, Lcom/android/internal/telephony/cdma/utk/GetInputParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/Input;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 501
    if-eqz v2, :cond_b

    .line 502
    iput v7, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 503
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v8, v2, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 507
    :goto_5
    return v7

    .line 444
    .end local v4           #rawValue:[B
    .end local v5           #valueIndex:I
    :cond_4
    new-instance v6, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v6

    .line 454
    :catch_0
    move-exception v1

    .line 455
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v6

    .line 458
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_5
    new-instance v6, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v6

    .line 480
    .restart local v4       #rawValue:[B
    .restart local v5       #valueIndex:I
    :cond_6
    iput-boolean v7, v3, Lcom/android/internal/telephony/cdma/utk/Input;->digitOnly:Z

    goto :goto_0

    .line 491
    :cond_7
    iget v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->maxLen:I

    div-int/lit8 v6, v6, 0x2

    iput v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->maxLen:I

    goto :goto_1

    :cond_8
    move v6, v8

    .line 495
    goto :goto_2

    :cond_9
    move v6, v8

    .line 496
    goto :goto_3

    :cond_a
    move v6, v8

    .line 497
    goto :goto_4

    :cond_b
    move v7, v8

    .line 507
    goto :goto_5
.end method

.method private processLaunchBrowser(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 13
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v9, 0x1

    .line 718
    const-string/jumbo v10, "process LaunchBrowser"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 720
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 721
    .local v0, confirmMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;
    const/4 v3, 0x0

    .line 722
    .local v3, iconId:Lcom/android/internal/telephony/cdma/utk/IconId;
    const/4 v6, 0x0

    .line 724
    .local v6, url:Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v10, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 725
    .local v1, ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v1, :cond_0

    .line 727
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 728
    .local v5, rawValue:[B
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 729
    .local v7, valueIndex:I
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v8

    .line 730
    .local v8, valueLen:I
    if-lez v8, :cond_3

    .line 731
    invoke-static {v5, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 742
    .end local v5           #rawValue:[B
    .end local v7           #valueIndex:I
    .end local v8           #valueLen:I
    :cond_0
    :goto_0
    sget-object v10, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v10, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 743
    if-eqz v1, :cond_1

    .line 744
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 747
    :cond_1
    sget-object v10, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v10, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 748
    if-eqz v1, :cond_2

    .line 749
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v3

    .line 750
    iget-boolean v10, v3, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v10, v0, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 755
    :cond_2
    iget v10, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    packed-switch v10, :pswitch_data_0

    .line 758
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;

    .line 768
    .local v4, mode:Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;
    :goto_1
    new-instance v10, Lcom/android/internal/telephony/cdma/utk/LaunchBrowserParams;

    invoke-direct {v10, p1, v0, v6, v4}, Lcom/android/internal/telephony/cdma/utk/LaunchBrowserParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;Ljava/lang/String;Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;)V

    iput-object v10, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 770
    if-eqz v3, :cond_4

    .line 771
    iput v9, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 772
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v11, v3, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 776
    :goto_2
    return v9

    .line 734
    .end local v4           #mode:Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;
    .restart local v5       #rawValue:[B
    .restart local v7       #valueIndex:I
    .restart local v8       #valueLen:I
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 736
    .end local v5           #rawValue:[B
    .end local v7           #valueIndex:I
    .end local v8           #valueLen:I
    :catch_0
    move-exception v2

    .line 737
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v9, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v10, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v9

    .line 761
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :pswitch_0
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;->USE_EXISTING_BROWSER:Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;

    .line 762
    .restart local v4       #mode:Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;
    goto :goto_1

    .line 764
    .end local v4           #mode:Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;
    :pswitch_1
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;->LAUNCH_NEW_BROWSER:Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;

    .restart local v4       #mode:Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;
    goto :goto_1

    .line 776
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 755
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processLocalInformation(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 1
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 973
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const-string/jumbo v0, "process LocalInformation"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 975
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 977
    const/4 v0, 0x0

    return v0
.end method

.method private processMoreTime(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 1
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 963
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const-string/jumbo v0, "process MoreTime"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 966
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 968
    const/4 v0, 0x0

    return v0
.end method

.method private processPlayTone(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 13
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 792
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const-string/jumbo v0, "process PlayTone"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 794
    const/4 v3, 0x0

    .line 795
    .local v3, tone:Lcom/android/internal/telephony/cdma/utk/Tone;
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 796
    .local v2, textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;
    const/4 v4, 0x0

    .line 797
    .local v4, duration:Lcom/android/internal/telephony/cdma/utk/Duration;
    const/4 v8, 0x0

    .line 799
    .local v8, iconId:Lcom/android/internal/telephony/cdma/utk/IconId;
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v6

    .line 800
    .local v6, ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v6, :cond_0

    .line 802
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 804
    :try_start_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v9

    .line 805
    .local v9, rawValue:[B
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v11

    .line 806
    .local v11, valueIndex:I
    aget-byte v10, v9, v11

    .line 807
    .local v10, toneVal:I
    invoke-static {v10}, Lcom/android/internal/telephony/cdma/utk/Tone;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/Tone;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 815
    .end local v9           #rawValue:[B
    .end local v10           #toneVal:I
    .end local v11           #valueIndex:I
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v6

    .line 816
    if-eqz v6, :cond_1

    .line 817
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 820
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v6

    .line 821
    if-eqz v6, :cond_2

    .line 822
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/Duration;

    move-result-object v4

    .line 825
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v6

    .line 826
    if-eqz v6, :cond_3

    .line 827
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v8

    .line 828
    iget-boolean v0, v8, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v0, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 831
    :cond_3
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    const/4 v5, 0x1

    .line 833
    .local v5, vibrate:Z
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->responseNeeded:Z

    .line 834
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/PlayToneParams;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/utk/PlayToneParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;Lcom/android/internal/telephony/cdma/utk/Tone;Lcom/android/internal/telephony/cdma/utk/Duration;Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 836
    if-eqz v8, :cond_5

    .line 837
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 838
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v1, v8, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v0, v1, v12}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 840
    const/4 v0, 0x1

    .line 842
    :goto_1
    return v0

    .line 808
    .end local v5           #vibrate:Z
    :catch_0
    move-exception v7

    .line 809
    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v0

    .line 831
    .end local v7           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 842
    .restart local v5       #vibrate:Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private processRefresh(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 2
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 520
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "process Refresh: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    packed-switch v0, :pswitch_data_0

    .line 534
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 531
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    goto :goto_0

    .line 525
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private processSelectItem(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 11
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 550
    const-string/jumbo v7, "process SelectItem"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/Menu;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/utk/Menu;-><init>()V

    .line 553
    .local v3, menu:Lcom/android/internal/telephony/cdma/utk/Menu;
    const/4 v6, 0x0

    .line 554
    .local v6, titleIconId:Lcom/android/internal/telephony/cdma/utk/IconId;
    const/4 v1, 0x0

    .line 555
    .local v1, itemsIconId:Lcom/android/internal/telephony/cdma/utk/ItemsIconId;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 557
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 559
    .local v0, ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 560
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->title:Ljava/lang/String;

    .line 564
    :cond_0
    :goto_0
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v7, v2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 565
    if-eqz v0, :cond_1

    .line 566
    iget-object v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->items:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveItem(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/Item;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 573
    :cond_1
    iget-object v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->items:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 574
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cdma/utk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v7

    .line 577
    :cond_2
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 578
    if-eqz v0, :cond_3

    .line 581
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveItemId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    iput v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->defaultItem:I

    .line 584
    :cond_3
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 585
    if-eqz v0, :cond_4

    .line 586
    iput v8, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 587
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v6

    .line 588
    iget-boolean v7, v6, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->titleIconSelfExplanatory:Z

    .line 591
    :cond_4
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 592
    if-eqz v0, :cond_5

    .line 593
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 594
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveItemsIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/ItemsIconId;

    move-result-object v1

    .line 595
    iget-boolean v7, v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;->selfExplanatory:Z

    iput-boolean v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->itemsIconSelfExplanatory:Z

    .line 598
    :cond_5
    iget v7, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_7

    move v4, v8

    .line 599
    .local v4, presentTypeSpecified:Z
    :goto_1
    if-eqz v4, :cond_6

    .line 600
    iget v7, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_8

    .line 601
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/PresentationType;->DATA_VALUES:Lcom/android/internal/telephony/cdma/utk/PresentationType;

    iput-object v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->presentationType:Lcom/android/internal/telephony/cdma/utk/PresentationType;

    .line 606
    :cond_6
    :goto_2
    iget v7, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_9

    move v7, v8

    :goto_3
    iput-boolean v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->softKeyPreferred:Z

    .line 607
    iget v7, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_a

    move v7, v8

    :goto_4
    iput-boolean v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->helpAvailable:Z

    .line 609
    new-instance v10, Lcom/android/internal/telephony/cdma/utk/SelectItemParams;

    if-eqz v6, :cond_b

    move v7, v8

    :goto_5
    invoke-direct {v10, p1, v3, v7}, Lcom/android/internal/telephony/cdma/utk/SelectItemParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/Menu;Z)V

    iput-object v10, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 612
    iget v7, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    packed-switch v7, :pswitch_data_0

    :goto_6
    move v9, v8

    .line 632
    :pswitch_0
    return v9

    .end local v4           #presentTypeSpecified:Z
    :cond_7
    move v4, v9

    .line 598
    goto :goto_1

    .line 603
    .restart local v4       #presentTypeSpecified:Z
    :cond_8
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/PresentationType;->NAVIGATION_OPTIONS:Lcom/android/internal/telephony/cdma/utk/PresentationType;

    iput-object v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->presentationType:Lcom/android/internal/telephony/cdma/utk/PresentationType;

    goto :goto_2

    :cond_9
    move v7, v9

    .line 606
    goto :goto_3

    :cond_a
    move v7, v9

    .line 607
    goto :goto_4

    :cond_b
    move v7, v9

    .line 609
    goto :goto_5

    .line 616
    :pswitch_1
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v9, v6, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    goto :goto_6

    .line 620
    :pswitch_2
    iget-object v5, v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;->recordNumbers:[I

    .line 621
    .local v5, recordNumbers:[I
    if-eqz v6, :cond_c

    .line 623
    iget-object v7, v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;->recordNumbers:[I

    array-length v7, v7

    add-int/lit8 v7, v7, 0x1

    new-array v5, v7, [I

    .line 624
    iget v7, v6, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    aput v7, v5, v9

    .line 625
    iget-object v7, v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;->recordNumbers:[I

    iget-object v10, v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;->recordNumbers:[I

    array-length v10, v10

    invoke-static {v7, v9, v5, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 628
    :cond_c
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcons([ILandroid/os/Message;)V

    goto :goto_6

    .line 612
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processSendSms(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 8
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 924
    const-string/jumbo v6, "processSendSms"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 925
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 926
    .local v3, textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;
    const/4 v1, 0x0

    .line 927
    .local v1, iconId:Lcom/android/internal/telephony/cdma/utk/IconId;
    const/4 v2, 0x0

    .line 929
    .local v2, smsPdu:[B
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 931
    .local v0, ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_2

    .line 932
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 937
    :goto_0
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 938
    if-eqz v0, :cond_0

    .line 939
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v1

    .line 940
    iget-boolean v6, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v6, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 943
    :cond_0
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->CDMA_SMS_TPDU:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 944
    if-eqz v0, :cond_1

    .line 945
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveSmsPdu(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)[B

    move-result-object v2

    .line 948
    :cond_1
    iput-boolean v5, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->responseNeeded:Z

    .line 949
    new-instance v6, Lcom/android/internal/telephony/cdma/utk/SendSmsParams;

    invoke-direct {v6, p1, v3, v2}, Lcom/android/internal/telephony/cdma/utk/SendSmsParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;[B)V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 951
    if-eqz v1, :cond_3

    .line 952
    iput v4, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 953
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v6, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 957
    :goto_1
    return v4

    .line 934
    :cond_2
    const-string/jumbo v6, "processSendSms : textMsg.text is null"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v4, v5

    .line 957
    goto :goto_1
.end method

.method private processSetUpEventList(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 1
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 690
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const-string/jumbo v0, "process SetUpEventList"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 702
    const/4 v0, 0x1

    return v0
.end method

.method private processSetUpIdleModeText(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v3, 0x1

    .line 334
    const-string/jumbo v4, "process SetUpIdleModeText"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 337
    .local v2, textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;
    const/4 v1, 0x0

    .line 339
    .local v1, iconId:Lcom/android/internal/telephony/cdma/utk/IconId;
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 341
    .local v0, ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 342
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 345
    :cond_0
    iget-object v4, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 346
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_1

    .line 348
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v1

    .line 349
    iget-boolean v4, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v4, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 353
    :cond_1
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;

    invoke-direct {v4, p1, v2}, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 355
    if-eqz v1, :cond_2

    .line 356
    iput v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 357
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 361
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private processSetupCall(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 11
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 857
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const-string/jumbo v9, "process SetupCall"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 859
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 860
    .local v5, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v4, 0x0

    .line 862
    .local v4, ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 864
    .local v3, confirmMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 865
    .local v1, callMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 866
    .local v7, setupMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;
    const/4 v2, 0x0

    .line 867
    .local v2, confirmIconId:Lcom/android/internal/telephony/cdma/utk/IconId;
    const/4 v0, 0x0

    .line 870
    .local v0, callIconId:Lcom/android/internal/telephony/cdma/utk/IconId;
    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v9, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v4

    .line 871
    if-eqz v4, :cond_0

    .line 872
    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v9, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v8

    .line 873
    .local v8, temctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v8, :cond_5

    .line 875
    const-string/jumbo v9, "search confirm message not null"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 876
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 883
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "confirmMsg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", setupMsg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 886
    .end local v8           #temctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    :cond_0
    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v4

    .line 887
    if-eqz v4, :cond_1

    .line 888
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v2

    .line 889
    iget-boolean v9, v2, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v9, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 893
    :cond_1
    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v4

    .line 894
    if-eqz v4, :cond_2

    .line 895
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAdress(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 898
    :cond_2
    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v4

    .line 899
    if-eqz v4, :cond_3

    .line 900
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v0

    .line 901
    iget-boolean v9, v0, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v9, v1, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 904
    :cond_3
    new-instance v9, Lcom/android/internal/telephony/cdma/utk/CallSetupParams;

    invoke-direct {v9, p1, v3, v1, v7}, Lcom/android/internal/telephony/cdma/utk/CallSetupParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;Lcom/android/internal/telephony/cdma/utk/TextMessage;Lcom/android/internal/telephony/cdma/utk/TextMessage;)V

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 906
    if-nez v2, :cond_4

    if-eqz v0, :cond_8

    .line 907
    :cond_4
    const/4 v9, 0x2

    iput v9, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 908
    const/4 v9, 0x2

    new-array v6, v9, [I

    .line 909
    .local v6, recordNumbers:[I
    const/4 v10, 0x0

    if-eqz v2, :cond_6

    iget v9, v2, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    :goto_1
    aput v9, v6, v10

    .line 911
    const/4 v10, 0x1

    if-eqz v0, :cond_7

    iget v9, v0, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    :goto_2
    aput v9, v6, v10

    .line 914
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcons([ILandroid/os/Message;)V

    .line 916
    const/4 v9, 0x1

    .line 918
    .end local v6           #recordNumbers:[I
    :goto_3
    return v9

    .line 880
    .restart local v8       #temctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    :cond_5
    const/4 v9, 0x0

    iput-object v9, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 881
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_0

    .line 909
    .end local v8           #temctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    .restart local v6       #recordNumbers:[I
    :cond_6
    const/4 v9, -0x1

    goto :goto_1

    .line 911
    :cond_7
    const/4 v9, -0x1

    goto :goto_2

    .line 918
    .end local v6           #recordNumbers:[I
    :cond_8
    const/4 v9, 0x0

    goto :goto_3
.end method

.method private searchForNextTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    .locals 3
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 250
    .local p2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v1

    .line 251
    .local v1, tagValue:I
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    .line 253
    .local v0, ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getTag()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 257
    .end local v0           #ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    .locals 2
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 232
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 233
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    return-object v1
.end method

.method private sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V
    .locals 2
    .parameter "resCode"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sendMsgParamsDecoded(Lcom/android/internal/telephony/cdma/utk/ResultCode;Lcom/android/internal/telephony/cdma/utk/CommandParams;)V

    .line 219
    return-void
.end method

.method private setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/cdma/utk/ResultCode;
    .locals 7
    .parameter "data"

    .prologue
    .line 196
    const/4 v4, 0x0

    .line 197
    .local v4, icons:[Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 199
    .local v3, iconIndex:I
    if-nez p1, :cond_0

    .line 200
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 214
    .end local p1
    :goto_0
    return-object v6

    .line 202
    .restart local p1
    :cond_0
    iget v6, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    packed-switch v6, :pswitch_data_0

    .line 214
    .end local p1
    :cond_1
    :goto_1
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    goto :goto_0

    .line 204
    .restart local p1
    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    goto :goto_1

    .line 207
    .restart local p1
    :pswitch_1
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1
    move-object v4, p1

    check-cast v4, [Landroid/graphics/Bitmap;

    .line 209
    move-object v0, v4

    .local v0, arr$:[Landroid/graphics/Bitmap;
    array-length v5, v0

    .local v5, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2
    if-ge v1, v5, :cond_1

    aget-object v2, v0, v1

    .line 210
    .local v2, icon:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/cdma/utk/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 188
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 193
    :goto_0
    return-void

    .line 190
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/cdma/utk/ResultCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method make(Lcom/android/internal/telephony/cdma/utk/BerTlv;)V
    .locals 7
    .parameter "berTlv"

    .prologue
    .line 93
    if-nez p1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 98
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 100
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/BerTlv;->getTag()I

    move-result v5

    const/16 v6, 0xd0

    if-eq v5, v6, :cond_2

    .line 101
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    goto :goto_0

    .line 104
    :cond_2
    const/4 v1, 0x0

    .line 105
    .local v1, cmdPending:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/BerTlv;->getComprehensionTlvs()Ljava/util/List;

    move-result-object v3

    .line 107
    .local v3, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-result-object v0

    .line 108
    .local v0, cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    if-nez v0, :cond_3

    .line 109
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    goto :goto_0

    .line 115
    :cond_3
    iget v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    invoke-static {v5}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v2

    .line 117
    .local v2, cmdType:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;
    if-nez v2, :cond_4

    .line 118
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    goto :goto_0

    .line 123
    :cond_4
    :try_start_0
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory$1;->$SwitchMap$com$android$internal$telephony$cdma$utk$AppInterface$CommandType:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 171
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 172
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/utk/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v4

    .line 176
    .local v4, e:Lcom/android/internal/telephony/cdma/utk/ResultException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "make: caught ResultException e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 178
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/utk/ResultException;->result()Lcom/android/internal/telephony/cdma/utk/ResultCode;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    goto :goto_0

    .line 125
    .end local v4           #e:Lcom/android/internal/telephony/cdma/utk/ResultException;
    :pswitch_0
    :try_start_1
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    :try_end_1
    .catch Lcom/android/internal/telephony/cdma/utk/ResultException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 181
    :goto_1
    if-nez v1, :cond_0

    .line 182
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    goto :goto_0

    .line 128
    :pswitch_1
    :try_start_2
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 129
    goto :goto_1

    .line 131
    :pswitch_2
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processDisplayText(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 132
    goto :goto_1

    .line 134
    :pswitch_3
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processSetUpIdleModeText(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 135
    goto :goto_1

    .line 137
    :pswitch_4
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processGetInkey(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 138
    goto :goto_1

    .line 140
    :pswitch_5
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processGetInput(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 141
    goto :goto_1

    .line 145
    :pswitch_6
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processEventNotify(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 146
    goto :goto_1

    .line 148
    :pswitch_7
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processSendSms(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 149
    goto :goto_1

    .line 151
    :pswitch_8
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processSetupCall(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 152
    goto :goto_1

    .line 154
    :pswitch_9
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processRefresh(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    .line 155
    const/4 v1, 0x0

    .line 156
    goto :goto_1

    .line 161
    :pswitch_a
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processPlayTone(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 162
    goto :goto_1

    .line 164
    :pswitch_b
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processMoreTime(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 165
    goto :goto_1

    .line 167
    :pswitch_c
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processLocalInformation(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    :try_end_2
    .catch Lcom/android/internal/telephony/cdma/utk/ResultException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    .line 168
    goto :goto_1

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
