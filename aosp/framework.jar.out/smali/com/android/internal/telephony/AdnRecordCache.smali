.class public final Lcom/android/internal/telephony/AdnRecordCache;
.super Landroid/os/Handler;
.source "AdnRecordCache.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final EVENT_LOAD_ALL_ADN_LIKE_DONE:I = 0x1

.field static final EVENT_UPDATE_ADN_DONE:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field public static MAX_PHB_NAME_LENGTH:I

.field public static MAX_PHB_NUMBER_ANR_LENGTH:I

.field public static MAX_PHB_NUMBER_LENGTH:I


# instance fields
.field adnLikeFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field adnLikeWaiters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mSimId:I

.field mSuccess:Z

.field private mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

.field phone:Lcom/android/internal/telephony/PhoneBase;

.field userWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0x3c

    sput v0, Lcom/android/internal/telephony/AdnRecordCache;->MAX_PHB_NAME_LENGTH:I

    .line 62
    const/16 v0, 0x28

    sput v0, Lcom/android/internal/telephony/AdnRecordCache;->MAX_PHB_NUMBER_LENGTH:I

    .line 63
    const/16 v0, 0x14

    sput v0, Lcom/android/internal/telephony/AdnRecordCache;->MAX_PHB_NUMBER_ANR_LENGTH:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mLock:Ljava/lang/Object;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mSuccess:Z

    .line 71
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecordCache;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 72
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/AdnRecordCache;)V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .line 74
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mSimId:I

    .line 75
    return-void
.end method

.method private clearUserWriters()V
    .locals 4

    .prologue
    .line 103
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 104
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 105
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    const-string v3, "AdnCace reset"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 108
    return-void
.end method

.method private clearWaiters()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 93
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 94
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 95
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 96
    .local v3, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "AdnCache reset"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6, v6, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 97
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 100
    return-void
.end method

.method private notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .locals 5
    .parameter
    .parameter "ar"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 525
    .local p1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-nez p1, :cond_1

    .line 537
    :cond_0
    return-void

    .line 529
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, s:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 530
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 532
    .local v2, waiter:Landroid/os/Message;
    if-eqz v2, :cond_2

    .line 533
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 534
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 529
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 1
    .parameter "response"
    .parameter "errString"

    .prologue
    .line 139
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    .line 143
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    .locals 2
    .parameter "response"
    .parameter "errString"
    .parameter "ril_errno"

    .prologue
    .line 148
    invoke-static {p3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 150
    .local v0, e:Lcom/android/internal/telephony/CommandException;
    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 152
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 153
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 155
    :cond_0
    return-void
.end method


# virtual methods
.method public addContactToGroup(II)Z
    .locals 1
    .parameter "adnIndex"
    .parameter "grpIndex"

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->addContactToGroup(II)Z

    move-result v0

    return v0
.end method

.method public extensionEfForEf(I)I
    .locals 1
    .parameter "efid"

    .prologue
    const/16 v0, 0x6f4a

    .line 126
    sparse-switch p1, :sswitch_data_0

    .line 133
    const/4 v0, -0x1

    :goto_0
    :sswitch_0
    return v0

    .line 127
    :sswitch_1
    const/16 v0, 0x6fc8

    goto :goto_0

    .line 129
    :sswitch_2
    const/16 v0, 0x6f4c

    goto :goto_0

    .line 130
    :sswitch_3
    const/16 v0, 0x6f4b

    goto :goto_0

    .line 132
    :sswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_4
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_3
        0x6f40 -> :sswitch_0
        0x6f49 -> :sswitch_2
        0x6fc7 -> :sswitch_1
    .end sparse-switch
.end method

.method public getRecordsIfLoaded(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "efid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUSIMGroupById(I)Ljava/lang/String;
    .locals 1
    .parameter "nGasId"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUSIMGroupById(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUSIMGrpMaxCount()I
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUSIMGrpMaxCount()I

    move-result v0

    return v0
.end method

.method public getUSIMGrpMaxNameLen()I
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUSIMGrpMaxNameLen()I

    move-result v0

    return v0
.end method

.method public getUsimGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/UsimGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimGroups()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 546
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 598
    :goto_0
    return-void

    .line 549
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 550
    .local v2, ar:Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 553
    .local v3, efid:I
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 554
    .local v6, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 556
    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_0

    .line 557
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    iget-object v7, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v8, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 561
    :goto_1
    invoke-direct {p0, v6, v2}, Lcom/android/internal/telephony/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 559
    :cond_0
    const-string v7, "GSM"

    const-string v8, "EVENT_LOAD_ALL_ADN_LIKE_DONE exception"

    iget-object v9, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v7, v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 564
    .end local v2           #ar:Landroid/os/AsyncResult;
    .end local v3           #efid:I
    .end local v6           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    :pswitch_1
    const-string v7, "EVENT_UPDATE_ADN_DONE"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 565
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 566
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 567
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 568
    .restart local v3       #efid:I
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 569
    .local v4, index:I
    iget-object v7, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v7

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v1, v0

    .line 571
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_3

    .line 572
    if-eqz v1, :cond_1

    .line 573
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/AdnRecord;->setRecordIndex(I)V

    .line 574
    iget v7, v1, Lcom/android/internal/telephony/AdnRecord;->efid:I

    if-gtz v7, :cond_1

    .line 575
    iput v3, v1, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 578
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adnLikeFiles changed index:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ",adn:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 579
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v7, v9, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 580
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    if-eqz v7, :cond_3

    const/16 v7, 0x6f3b

    if-eq v3, v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v7, v9, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateUsimPhonebookRecordsList(ILcom/android/internal/telephony/AdnRecord;)V

    .line 583
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Message;

    .line 584
    .local v5, response:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 586
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AdnRecordCacheEx: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 588
    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_4

    .line 589
    const/4 v7, 0x0

    iget-object v9, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v5, v7, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 590
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 592
    :cond_4
    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_5

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->mSuccess:Z

    .line 593
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 594
    monitor-exit v8

    goto/16 :goto_0

    .end local v1           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v2           #ar:Landroid/os/AsyncResult;
    .end local v3           #efid:I
    .end local v4           #index:I
    .end local v5           #response:Landroid/os/Message;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 592
    .restart local v1       #adn:Lcom/android/internal/telephony/AdnRecord;
    .restart local v2       #ar:Landroid/os/AsyncResult;
    .restart local v3       #efid:I
    .restart local v4       #index:I
    .restart local v5       #response:Landroid/os/Message;
    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    .line 546
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasExistGroup(Ljava/lang/String;)I
    .locals 1
    .parameter "grpName"

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasExistGroup(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public insertUSIMGroup(Ljava/lang/String;)I
    .locals 1
    .parameter "grpName"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->insertUSIMGroup(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 602
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AdnRecordCache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    return-void
.end method

.method public removeContactFromGroup(II)Z
    .locals 1
    .parameter "adnIndex"
    .parameter "grpIndex"

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->removeContactFromGroup(II)Z

    move-result v0

    return v0
.end method

.method public removeUSIMGroupById(I)Z
    .locals 1
    .parameter "nGasId"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->removeUSIMGroupById(I)Z

    move-result v0

    return v0
.end method

.method public requestLoadAllAdnLike(IILandroid/os/Message;)V
    .locals 6
    .parameter "efid"
    .parameter "extensionEf"
    .parameter "response"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestLoadAllAdnLike "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 467
    const/16 v2, 0x4f30

    if-ne p1, v2, :cond_1

    .line 468
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v0

    .line 472
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestLoadAllAdnLike result = null ?"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 475
    if-eqz v0, :cond_3

    .line 476
    if-eqz p3, :cond_0

    .line 477
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 478
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 518
    :cond_0
    :goto_2
    return-void

    .line 470
    .end local v0           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v0

    .restart local v0       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    goto :goto_0

    :cond_2
    move v2, v4

    .line 472
    goto :goto_1

    .line 486
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 488
    .local v1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-eqz v1, :cond_4

    .line 492
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 498
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .restart local v1       #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 504
    if-gez p2, :cond_5

    .line 507
    if-eqz p3, :cond_0

    .line 508
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF is not known ADN-like EF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 510
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 516
    :cond_5
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecordCache;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-virtual {p0, v3, p1, v4}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/telephony/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    goto :goto_2
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 83
    const-string/jumbo v0, "reset"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->reset()V

    .line 87
    invoke-direct {p0}, Lcom/android/internal/telephony/AdnRecordCache;->clearWaiters()V

    .line 88
    invoke-direct {p0}, Lcom/android/internal/telephony/AdnRecordCache;->clearUserWriters()V

    .line 90
    return-void
.end method

.method public declared-synchronized updateAdnByIndex(ILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V
    .locals 13
    .parameter "efid"
    .parameter "adn"
    .parameter "recordIndex"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    .line 171
    .local v4, extensionEF:I
    if-gez v4, :cond_1

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EF is not known ADN-like EF:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 176
    :cond_1
    :try_start_1
    iget-object v1, p2, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sget v2, Lcom/android/internal/telephony/AdnRecordCache;->MAX_PHB_NAME_LENGTH:I

    if-le v1, v2, :cond_2

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the input length of alphaTag is too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3ea

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 170
    .end local v4           #extensionEF:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 185
    .restart local v4       #extensionEF:I
    :cond_2
    :try_start_2
    iget-object v1, p2, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p2, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sget v2, Lcom/android/internal/telephony/AdnRecordCache;->MAX_PHB_NUMBER_ANR_LENGTH:I

    if-le v1, v2, :cond_3

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the input length of additional number is too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3f2

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto :goto_0

    .line 194
    :cond_3
    iget-object v1, p2, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    .line 195
    .local v9, num_length:I
    iget-object v1, p2, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 196
    add-int/lit8 v9, v9, -0x1

    .line 199
    :cond_4
    sget v1, Lcom/android/internal/telephony/AdnRecordCache;->MAX_PHB_NUMBER_LENGTH:I

    if-le v9, v1, :cond_5

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the input length of phoneNumber is too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e9

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 209
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Message;

    .line 210
    .local v10, pendingResponse:Landroid/os/Message;
    if-eqz v10, :cond_6

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Have pending update for EF:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 215
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v0, p5

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 217
    iget-object v12, p0, Lcom/android/internal/telephony/AdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    :try_start_3
    new-instance v1, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/4 v2, 0x2

    move/from16 v0, p3

    invoke-virtual {p0, v2, p1, v0, p2}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    move-object v2, p2

    move v3, p1

    move/from16 v5, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 224
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 228
    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 229
    :try_start_6
    iget-boolean v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mSuccess:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_0

    .line 232
    const/16 v1, 0x6f3a

    if-ne p1, v1, :cond_9

    .line 234
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v2, p2, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    move/from16 v0, p3

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAnrByAdnIndex(Ljava/lang/String;I)V

    .line 235
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v2, p2, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    move/from16 v0, p3

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateEmailsByAdnIndex([Ljava/lang/String;I)I

    move-result v11

    .line 236
    .local v11, success:I
    const/4 v1, -0x1

    if-ne v1, v11, :cond_7

    .line 237
    const-string v1, "drop the email for the limitation of the SIM card"

    const/16 v2, 0x3ed

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 253
    .end local v11           #success:I
    :catch_0
    move-exception v8

    .line 254
    .local v8, e:Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 225
    .end local v8           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 226
    .local v8, e:Ljava/lang/InterruptedException;
    :try_start_9
    monitor-exit v12

    goto/16 :goto_0

    .line 228
    .end local v8           #e:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v1

    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 242
    .restart local v11       #success:I
    :cond_7
    const/4 v1, -0x2

    if-ne v1, v11, :cond_8

    .line 243
    :try_start_b
    const-string/jumbo v1, "the email string is too long"

    const/16 v2, 0x3ee

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    .line 247
    const-string v1, "GSM"

    const-string v2, "haman, by index email too long"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 250
    :cond_8
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 251
    invoke-virtual/range {p5 .. p5}, Landroid/os/Message;->sendToTarget()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_0

    .line 259
    .end local v11           #success:I
    :cond_9
    const/16 v1, 0x6f3b

    if-ne p1, v1, :cond_0

    .line 260
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_c
    move-object/from16 v0, p5

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 261
    invoke-virtual/range {p5 .. p5}, Landroid/os/Message;->sendToTarget()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized updateAdnBySearch(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)I
    .locals 20
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAdnBySearch efid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "pin2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldAdn ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], new Adn["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 283
    const/4 v7, -0x1

    .line 285
    .local v7, index:I
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/AdnRecordCache;->extensionEfForEf(I)I

    move-result v6

    .line 287
    .local v6, extensionEF:I
    if-gez v6, :cond_0

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF is not known ADN-like EF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v13, v7

    .line 453
    .end local v7           #index:I
    .local v13, index:I
    :goto_0
    monitor-exit p0

    return v13

    .line 292
    .end local v13           #index:I
    .restart local v7       #index:I
    :cond_0
    :try_start_1
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Lcom/android/internal/telephony/AdnRecordCache;->MAX_PHB_NAME_LENGTH:I

    if-le v3, v4, :cond_1

    .line 294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the input length of alphaTag is too long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3ea

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    move v13, v7

    .line 298
    .end local v7           #index:I
    .restart local v13       #index:I
    goto :goto_0

    .line 301
    .end local v13           #index:I
    .restart local v7       #index:I
    :cond_1
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    .line 302
    .local v15, num_length:I
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const/16 v4, 0x2b

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 303
    add-int/lit8 v15, v15, -0x1

    .line 306
    :cond_2
    sget v3, Lcom/android/internal/telephony/AdnRecordCache;->MAX_PHB_NUMBER_LENGTH:I

    if-le v15, v3, :cond_3

    .line 308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the input length of phoneNumber is too long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e9

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    move v13, v7

    .line 313
    .end local v7           #index:I
    .restart local v13       #index:I
    goto :goto_0

    .line 316
    .end local v13           #index:I
    .restart local v7       #index:I
    :cond_3
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 317
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    .line 318
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    const/16 v4, 0x2b

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 319
    add-int/lit8 v15, v15, -0x1

    .line 322
    :cond_4
    sget v3, Lcom/android/internal/telephony/AdnRecordCache;->MAX_PHB_NUMBER_ANR_LENGTH:I

    if-le v15, v3, :cond_5

    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the input length of additional number is too long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3f2

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    move v13, v7

    .line 327
    .end local v7           #index:I
    .restart local v13       #index:I
    goto/16 :goto_0

    .line 331
    .end local v13           #index:I
    .restart local v7       #index:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkEmailLength([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 332
    const-string/jumbo v3, "the email string is too long"

    const/16 v4, 0x3ee

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    move v13, v7

    .line 336
    .end local v7           #index:I
    .restart local v13       #index:I
    goto/16 :goto_0

    .line 341
    .end local v13           #index:I
    .restart local v7       #index:I
    :cond_6
    const/16 v3, 0x4f30

    move/from16 v0, p1

    if-ne v0, v3, :cond_7

    .line 342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v16

    .line 347
    .local v16, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_1
    if-nez v16, :cond_8

    .line 348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adn list not exist for EF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3f3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    move v13, v7

    .line 352
    .end local v7           #index:I
    .restart local v13       #index:I
    goto/16 :goto_0

    .line 344
    .end local v13           #index:I
    .end local v16           #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    .restart local v7       #index:I
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v16

    .restart local v16       #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    goto :goto_1

    .line 355
    :cond_8
    const/4 v10, 0x1

    .line 356
    .local v10, count:I
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 357
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/AdnRecord;->isEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 358
    move v7, v10

    .line 363
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAdnBySearch index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 364
    const/4 v3, -0x1

    if-ne v7, v3, :cond_c

    .line 365
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_b

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_b

    .line 366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adn record don\'t exist for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3eb

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    :goto_3
    move v13, v7

    .line 374
    .end local v7           #index:I
    .restart local v13       #index:I
    goto/16 :goto_0

    .line 361
    .end local v13           #index:I
    .restart local v7       #index:I
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 372
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adn record don\'t exist for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 282
    .end local v6           #extensionEF:I
    .end local v7           #index:I
    .end local v10           #count:I
    .end local v14           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    .end local v15           #num_length:I
    .end local v16           #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 377
    .restart local v6       #extensionEF:I
    .restart local v7       #index:I
    .restart local v10       #count:I
    .restart local v14       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    .restart local v15       #num_length:I
    .restart local v16       #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_c
    const/16 v3, 0x4f30

    move/from16 v0, p1

    if-ne v0, v3, :cond_d

    .line 378
    add-int/lit8 v3, v7, -0x1

    :try_start_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/AdnRecord;

    .line 379
    .local v12, foundAdn:Lcom/android/internal/telephony/AdnRecord;
    iget v0, v12, Lcom/android/internal/telephony/AdnRecord;->efid:I

    move/from16 p1, v0

    .line 380
    iget v6, v12, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 381
    iget v7, v12, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 383
    move/from16 v0, p1

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 384
    move-object/from16 v0, p3

    iput v6, v0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 385
    move-object/from16 v0, p3

    iput v7, v0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 388
    .end local v12           #foundAdn:Lcom/android/internal/telephony/AdnRecord;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Message;

    .line 390
    .local v17, pendingResponse:Landroid/os/Message;
    if-eqz v17, :cond_e

    .line 391
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Have pending update for EF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    move v13, v7

    .line 392
    .end local v7           #index:I
    .restart local v13       #index:I
    goto/16 :goto_0

    .line 394
    .end local v13           #index:I
    .restart local v7       #index:I
    :cond_e
    if-nez p1, :cond_f

    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Abnormal efid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    move v13, v7

    .line 396
    .end local v7           #index:I
    .restart local v13       #index:I
    goto/16 :goto_0

    .line 398
    .end local v13           #index:I
    .restart local v7       #index:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {v3, v7, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkEmailCapacityFree(I[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 399
    const-string v3, "drop the email for the limitation of the SIM card"

    const/16 v4, 0x3ed

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    move v13, v7

    .line 403
    .end local v7           #index:I
    .restart local v13       #index:I
    goto/16 :goto_0

    .line 405
    .end local v13           #index:I
    .restart local v7       #index:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkEmailLength([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 406
    const-string/jumbo v3, "the email string is too long"

    const/16 v4, 0x3ee

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    move v13, v7

    .line 410
    .end local v7           #index:I
    .restart local v13       #index:I
    goto/16 :goto_0

    .line 413
    .end local v13           #index:I
    .restart local v7       #index:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 416
    :try_start_3
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/AdnRecordCache;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v7, v2}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v4, p3

    move/from16 v5, p1

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 422
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 426
    :try_start_5
    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 427
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mSuccess:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v3, :cond_12

    move v13, v7

    .end local v7           #index:I
    .restart local v13       #index:I
    goto/16 :goto_0

    .line 423
    .end local v13           #index:I
    .restart local v7       #index:I
    :catch_0
    move-exception v11

    .line 424
    .local v11, e:Ljava/lang/InterruptedException;
    :try_start_7
    monitor-exit v19

    move v13, v7

    .end local v7           #index:I
    .restart local v13       #index:I
    goto/16 :goto_0

    .line 426
    .end local v11           #e:Ljava/lang/InterruptedException;
    .end local v13           #index:I
    .restart local v7       #index:I
    :catchall_1
    move-exception v3

    monitor-exit v19
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v3

    .line 430
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAnrByAdnIndex(Ljava/lang/String;I)V

    .line 434
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateEmailsByAdnIndex([Ljava/lang/String;I)I

    move-result v18

    .line 435
    .local v18, success:I
    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_13

    .line 436
    const-string v3, "drop the email for the limitation of the SIM card"

    const/16 v4, 0x3ed

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    :goto_4
    move v13, v7

    .line 453
    .end local v7           #index:I
    .restart local v13       #index:I
    goto/16 :goto_0

    .line 441
    .end local v13           #index:I
    .restart local v7       #index:I
    :cond_13
    const/4 v3, -0x2

    move/from16 v0, v18

    if-ne v3, v0, :cond_14

    .line 442
    const-string/jumbo v3, "the email string is too long"

    const/16 v4, 0x3ee

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    .line 446
    const-string v3, "GSM"

    const-string v4, "haman, by search email too long"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 449
    :cond_14
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 450
    invoke-virtual/range {p5 .. p5}, Landroid/os/Message;->sendToTarget()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4
.end method

.method public updateUSIMGroup(ILjava/lang/String;)I
    .locals 1
    .parameter "nGasId"
    .parameter "grpName"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateUSIMGroup(ILjava/lang/String;)I

    move-result v0

    return v0
.end method
