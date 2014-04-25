.class public Lcom/android/phone/ManageConferenceUtils;
.super Ljava/lang/Object;
.source "ManageConferenceUtils.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ManageConferenceUtils"

.field private static final MAX_CALLERS_IN_CONFERENCE:I = 0x5

.field static mLocalChanged:Z


# instance fields
.field private mButtonHangupAll:Landroid/widget/Button;

.field private mButtonManageConferenceDone:Landroid/widget/TextView;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallerContainer:Landroid/view/ViewGroup;

.field private mConferenceCallList:[Landroid/view/ViewGroup;

.field private mConferenceCallListSize:I

.field private mConferenceTime:Landroid/widget/Chronometer;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mManageConferenceHeader:Landroid/view/ViewGroup;

.field private mManageConferencePanel:Landroid/view/ViewGroup;

.field private mNumCallersInConference:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    .line 63
    sput-boolean v1, Lcom/android/phone/ManageConferenceUtils;->mLocalChanged:Z

    return-void

    :cond_0
    move v0, v1

    .line 48
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V
    .locals 1
    .parameter "inCallScreen"
    .parameter "cm"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ManageConferenceUtils constructor..."

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 73
    iput-object p2, p0, Lcom/android/phone/ManageConferenceUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 74
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 390
    const-string v0, "ManageConferenceUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-void
.end method


# virtual methods
.method public final displayCallerInfoForConferenceRow(Lcom/android/internal/telephony/CallerInfo;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 7
    .parameter "ci"
    .parameter "nameTextView"
    .parameter "numberTypeTextView"
    .parameter "numberTextView"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 298
    const-string v0, ""

    .line 299
    .local v0, callerName:Ljava/lang/String;
    const-string v1, ""

    .line 300
    .local v1, callerNumber:Ljava/lang/String;
    const-string v2, ""

    .line 301
    .local v2, callerNumberType:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 302
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 303
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 304
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 305
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 306
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f0b000f

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 315
    :cond_0
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 319
    invoke-virtual {p4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 327
    :goto_1
    return-void

    .line 309
    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 310
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    goto :goto_0

    .line 322
    :cond_2
    invoke-virtual {p4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public endConferenceConnection(ILcom/android/internal/telephony/Connection;)V
    .locals 2
    .parameter "i"
    .parameter "connection"

    .prologue
    .line 336
    sget-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===> ENDING conference connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 339
    :cond_0
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 343
    return-void
.end method

.method public getNumCallersInConference()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    return v0
.end method

.method public initManageConferencePanel()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    .line 77
    sget-boolean v3, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "initManageConferencePanel()..."

    invoke-direct {p0, v3}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 78
    :cond_0
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-nez v3, :cond_4

    .line 79
    sget-boolean v3, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "initManageConferencePanel: first-time initialization!"

    invoke-direct {p0, v3}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 82
    :cond_1
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f0700c8

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 83
    .local v1, stub:Landroid/view/ViewStub;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 85
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f0700d0

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    .line 87
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-nez v3, :cond_2

    .line 88
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t find manageConferencePanel!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 92
    :cond_2
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f0700d3

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferenceHeader:Landroid/view/ViewGroup;

    .line 93
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f0700d6

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mCallerContainer:Landroid/view/ViewGroup;

    .line 97
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f0700d1

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Chronometer;

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    .line 99
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    iget-object v4, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v5, 0x7f0b0182

    invoke-virtual {v4, v5}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    .line 102
    new-array v3, v6, [Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    .line 104
    new-array v2, v6, [I

    fill-array-data v2, :array_0

    .line 106
    .local v2, viewGroupIdList:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_3

    .line 107
    iget-object v4, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    aget v5, v2, v0

    invoke-virtual {v3, v5}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    aput-object v3, v4, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_3
    iput v6, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallListSize:I

    .line 113
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f0700d4

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mButtonManageConferenceDone:Landroid/widget/TextView;

    .line 114
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mButtonManageConferenceDone:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    .end local v0           #i:I
    .end local v1           #stub:Landroid/view/ViewStub;
    .end local v2           #viewGroupIdList:[I
    :cond_4
    return-void

    .line 104
    nop

    :array_0
    .array-data 0x4
        0xd7t 0x0t 0x7t 0x7ft
        0xd8t 0x0t 0x7t 0x7ft
        0xd9t 0x0t 0x7t 0x7ft
        0xdat 0x0t 0x7t 0x7ft
        0xdbt 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 375
    sget-boolean v1, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callerinfo query complete, updating UI."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    :cond_0
    move-object v0, p2

    .line 378
    check-cast v0, Landroid/view/ViewGroup;

    .line 379
    .local v0, vg:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 382
    const v1, 0x7f07009c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f07009d

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f07009e

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0, p3, v1, v2, v3}, Lcom/android/phone/ManageConferenceUtils;->displayCallerInfoForConferenceRow(Lcom/android/internal/telephony/CallerInfo;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 386
    return-void
.end method

.method public separateConferenceConnection(ILcom/android/internal/telephony/Connection;)V
    .locals 2
    .parameter "i"
    .parameter "connection"

    .prologue
    .line 352
    sget-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===> SEPARATING conference connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 355
    :cond_0
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->separateCall(Lcom/android/internal/telephony/Connection;)V

    .line 365
    return-void
.end method

.method public setPanelVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 123
    iget-object v1, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 125
    :cond_0
    return-void

    .line 123
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public startConferenceTime(J)V
    .locals 1
    .parameter "base"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 133
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 135
    :cond_0
    return-void
.end method

.method public stopConferenceTime()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 144
    :cond_0
    return-void
.end method

.method public updateManageConferencePanel(Ljava/util/List;)V
    .locals 16
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    .line 160
    sget-boolean v13, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v13, :cond_0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateManageConferencePanel()... num connections in conference = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 173
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/ManageConferenceUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v4

    .line 174
    .local v4, hasActiveCall:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/ManageConferenceUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    .line 177
    .local v5, hasHoldingCall:Z
    if-eqz v4, :cond_1

    if-nez v5, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 180
    .local v2, canSeparate:Z
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallListSize:I

    if-le v13, v14, :cond_4

    .line 181
    const/4 v6, 0x0

    .line 182
    .local v6, i:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    .line 183
    .local v12, temp:[Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 184
    .local v9, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    new-array v13, v13, [Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    .line 185
    move-object v1, v12

    .local v1, arr$:[Landroid/view/ViewGroup;
    array-length v11, v1

    .local v11, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move v7, v6

    .end local v6           #i:I
    .local v7, i:I
    :goto_1
    if-ge v8, v11, :cond_9

    aget-object v10, v1, v8

    .line 186
    .local v10, item:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    aput-object v10, v13, v7

    .line 185
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6           #i:I
    .restart local v7       #i:I
    goto :goto_1

    .line 177
    .end local v1           #arr$:[Landroid/view/ViewGroup;
    .end local v2           #canSeparate:Z
    .end local v7           #i:I
    .end local v8           #i$:I
    .end local v9           #inflater:Landroid/view/LayoutInflater;
    .end local v10           #item:Landroid/view/ViewGroup;
    .end local v11           #len$:I
    .end local v12           #temp:[Landroid/view/ViewGroup;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 188
    .restart local v1       #arr$:[Landroid/view/ViewGroup;
    .restart local v2       #canSeparate:Z
    .restart local v6       #i:I
    .restart local v8       #i$:I
    .restart local v9       #inflater:Landroid/view/LayoutInflater;
    .restart local v11       #len$:I
    .restart local v12       #temp:[Landroid/view/ViewGroup;
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    if-ge v6, v13, :cond_3

    .line 189
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    const v13, 0x7f04001b

    const/4 v15, 0x0

    invoke-virtual {v9, v13, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    aput-object v13, v14, v6

    .line 190
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/ManageConferenceUtils;->mCallerContainer:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v14, v14, v6

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 188
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 192
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/ManageConferenceUtils;->mCallerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->requestLayout()V

    .line 193
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallListSize:I

    .line 194
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mConferenceCallList = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 196
    .end local v1           #arr$:[Landroid/view/ViewGroup;
    .end local v6           #i:I
    .end local v8           #i$:I
    .end local v9           #inflater:Landroid/view/LayoutInflater;
    .end local v11           #len$:I
    .end local v12           #temp:[Landroid/view/ViewGroup;
    :cond_4
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallListSize:I

    if-ge v6, v13, :cond_7

    .line 197
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    if-ge v6, v13, :cond_6

    .line 199
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    .line 200
    .local v3, connection:Lcom/android/internal/telephony/Connection;
    sget-boolean v13, Lcom/android/phone/ManageConferenceUtils;->mLocalChanged:Z

    if-eqz v13, :cond_5

    .line 201
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->clearUserData()V

    .line 203
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v3, v2}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V

    .line 196
    .end local v3           #connection:Lcom/android/internal/telephony/Connection;
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 206
    :cond_6
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13, v14}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V

    goto :goto_4

    .line 210
    :cond_7
    sget-boolean v13, Lcom/android/phone/ManageConferenceUtils;->mLocalChanged:Z

    if-eqz v13, :cond_8

    .line 211
    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/phone/ManageConferenceUtils;->mLocalChanged:Z

    .line 214
    :cond_8
    return-void

    .end local v6           #i:I
    .restart local v1       #arr$:[Landroid/view/ViewGroup;
    .restart local v7       #i:I
    .restart local v8       #i$:I
    .restart local v9       #inflater:Landroid/view/LayoutInflater;
    .restart local v11       #len$:I
    .restart local v12       #temp:[Landroid/view/ViewGroup;
    :cond_9
    move v6, v7

    .end local v7           #i:I
    .restart local v6       #i:I
    goto/16 :goto_2
.end method

.method public updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V
    .locals 11
    .parameter "i"
    .parameter "connection"
    .parameter "canSeparate"

    .prologue
    const/4 v10, 0x0

    .line 230
    sget-boolean v8, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateManageConferenceRow("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")...  connection = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 232
    :cond_0
    if-eqz p2, :cond_4

    .line 234
    iget-object v8, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v8, v8, p1

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 237
    iget-object v8, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v8, v8, p1

    const v9, 0x7f07009b

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 238
    .local v0, endButton:Landroid/widget/ImageButton;
    iget-object v8, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v8, v8, p1

    const v9, 0x7f07009f

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 240
    .local v6, separateButton:Landroid/widget/ImageButton;
    iget-object v8, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v8, v8, p1

    const v9, 0x7f07009c

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 242
    .local v3, nameTextView:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v8, v8, p1

    const v9, 0x7f07009e

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 244
    .local v4, numberTextView:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v8, v8, p1

    const v9, 0x7f07009d

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 247
    .local v5, numberTypeTextView:Landroid/widget/TextView;
    sget-boolean v8, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- button: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", nameTextView: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 250
    :cond_1
    new-instance v1, Lcom/android/phone/ManageConferenceUtils$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/phone/ManageConferenceUtils$1;-><init>(Lcom/android/phone/ManageConferenceUtils;ILcom/android/internal/telephony/Connection;)V

    .line 256
    .local v1, endThisConnection:Landroid/view/View$OnClickListener;
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    if-eqz p3, :cond_3

    .line 259
    new-instance v7, Lcom/android/phone/ManageConferenceUtils$2;

    invoke-direct {v7, p0, p1, p2}, Lcom/android/phone/ManageConferenceUtils$2;-><init>(Lcom/android/phone/ManageConferenceUtils;ILcom/android/internal/telephony/Connection;)V

    .line 265
    .local v7, separateThisConnection:Landroid/view/View$OnClickListener;
    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    invoke-virtual {v6, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 273
    .end local v7           #separateThisConnection:Landroid/view/View$OnClickListener;
    :goto_0
    iget-object v8, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v9, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v9, v9, p1

    invoke-static {v8, p2, p0, v9}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v2

    .line 278
    .local v2, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget-boolean v8, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  - got info from startGetCallerInfo(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 281
    :cond_2
    iget-object v8, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0, v8, v3, v5, v4}, Lcom/android/phone/ManageConferenceUtils;->displayCallerInfoForConferenceRow(Lcom/android/internal/telephony/CallerInfo;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 287
    .end local v0           #endButton:Landroid/widget/ImageButton;
    .end local v1           #endThisConnection:Landroid/view/View$OnClickListener;
    .end local v2           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v3           #nameTextView:Landroid/widget/TextView;
    .end local v4           #numberTextView:Landroid/widget/TextView;
    .end local v5           #numberTypeTextView:Landroid/widget/TextView;
    .end local v6           #separateButton:Landroid/widget/ImageButton;
    :goto_1
    return-void

    .line 268
    .restart local v0       #endButton:Landroid/widget/ImageButton;
    .restart local v1       #endThisConnection:Landroid/view/View$OnClickListener;
    .restart local v3       #nameTextView:Landroid/widget/TextView;
    .restart local v4       #numberTextView:Landroid/widget/TextView;
    .restart local v5       #numberTypeTextView:Landroid/widget/TextView;
    .restart local v6       #separateButton:Landroid/widget/ImageButton;
    :cond_3
    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 285
    .end local v0           #endButton:Landroid/widget/ImageButton;
    .end local v1           #endThisConnection:Landroid/view/View$OnClickListener;
    .end local v3           #nameTextView:Landroid/widget/TextView;
    .end local v4           #numberTextView:Landroid/widget/TextView;
    .end local v5           #numberTypeTextView:Landroid/widget/TextView;
    .end local v6           #separateButton:Landroid/widget/ImageButton;
    :cond_4
    iget-object v8, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v8, v8, p1

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method
