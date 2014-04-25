.class Lcom/android/phone/CellBroadcastSettings$MyHandler;
.super Landroid/os/Handler;
.source "CellBroadcastSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CellBroadcastSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CellBroadcastSettings;


# direct methods
.method private constructor <init>(Lcom/android/phone/CellBroadcastSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 624
    iput-object p1, p0, Lcom/android/phone/CellBroadcastSettings$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CellBroadcastSettings;Lcom/android/phone/CellBroadcastSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 624
    invoke-direct {p0, p1}, Lcom/android/phone/CellBroadcastSettings$MyHandler;-><init>(Lcom/android/phone/CellBroadcastSettings;)V

    return-void
.end method

.method private handleGetCellBroadcastConfigResponse(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/16 v7, 0x190

    const/16 v6, 0x64

    const/4 v5, 0x0

    .line 638
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v6, :cond_1

    .line 639
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSettings;

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSettings$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #getter for: Lcom/android/phone/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/phone/CellBroadcastSettings;->access$1700(Lcom/android/phone/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/CellBroadcastSettings;->onFinished(Landroid/preference/Preference;Z)V

    .line 643
    :goto_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 644
    .local v0, ar:Landroid/os/AsyncResult;
    if-nez v0, :cond_2

    .line 645
    const-string v2, "Settings/CellBroadcastSettings"

    const-string v3, "handleGetCellBroadcastConfigResponse,ar is null"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSettings;

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSettings$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #getter for: Lcom/android/phone/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/phone/CellBroadcastSettings;->access$1700(Lcom/android/phone/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Lcom/android/phone/CellBroadcastSettings;->onError(Landroid/preference/Preference;I)V

    .line 647
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v6, :cond_0

    .line 648
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #getter for: Lcom/android/phone/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/phone/CellBroadcastSettings;->access$1700(Lcom/android/phone/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 649
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #getter for: Lcom/android/phone/CellBroadcastSettings;->mAddChannelPreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/phone/CellBroadcastSettings;->access$1800(Lcom/android/phone/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 686
    :cond_0
    :goto_1
    return-void

    .line 641
    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSettings;

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSettings$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #getter for: Lcom/android/phone/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/phone/CellBroadcastSettings;->access$1700(Lcom/android/phone/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/CellBroadcastSettings;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    .line 653
    .restart local v0       #ar:Landroid/os/AsyncResult;
    :cond_2
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    .line 656
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSettings;

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSettings$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #getter for: Lcom/android/phone/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/phone/CellBroadcastSettings;->access$1700(Lcom/android/phone/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    const/16 v4, 0x12c

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/CellBroadcastSettings;->onError(Landroid/preference/Preference;I)V

    .line 657
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v6, :cond_0

    .line 658
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #getter for: Lcom/android/phone/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/phone/CellBroadcastSettings;->access$1700(Lcom/android/phone/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 659
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #getter for: Lcom/android/phone/CellBroadcastSettings;->mAddChannelPreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/phone/CellBroadcastSettings;->access$1800(Lcom/android/phone/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    .line 663
    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    .line 664
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSettings;

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSettings$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #getter for: Lcom/android/phone/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/phone/CellBroadcastSettings;->access$1700(Lcom/android/phone/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Lcom/android/phone/CellBroadcastSettings;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 666
    :cond_4
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_6

    .line 667
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 668
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #calls: Lcom/android/phone/CellBroadcastSettings;->queryChannelFromDatabase()Z
    invoke-static {v2}, Lcom/android/phone/CellBroadcastSettings;->access$1900(Lcom/android/phone/CellBroadcastSettings;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 669
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #calls: Lcom/android/phone/CellBroadcastSettings;->initChannelMap()V
    invoke-static {v2}, Lcom/android/phone/CellBroadcastSettings;->access$2000(Lcom/android/phone/CellBroadcastSettings;)V

    .line 670
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #calls: Lcom/android/phone/CellBroadcastSettings;->updateCurrentChannelAndLanguage(Ljava/util/ArrayList;)V
    invoke-static {v2, v1}, Lcom/android/phone/CellBroadcastSettings;->access$2100(Lcom/android/phone/CellBroadcastSettings;Ljava/util/ArrayList;)V

    .line 671
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #calls: Lcom/android/phone/CellBroadcastSettings;->updateChannelUIList()V
    invoke-static {v2}, Lcom/android/phone/CellBroadcastSettings;->access$1000(Lcom/android/phone/CellBroadcastSettings;)V

    .line 672
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #calls: Lcom/android/phone/CellBroadcastSettings;->updateLanguageSummary()V
    invoke-static {v2}, Lcom/android/phone/CellBroadcastSettings;->access$2200(Lcom/android/phone/CellBroadcastSettings;)V

    goto :goto_1

    .line 674
    :cond_5
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #calls: Lcom/android/phone/CellBroadcastSettings;->showUpdateDBErrorInfoDialog()V
    invoke-static {v2}, Lcom/android/phone/CellBroadcastSettings;->access$1200(Lcom/android/phone/CellBroadcastSettings;)V

    goto :goto_1

    .line 677
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    :cond_6
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSettings;

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSettings$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #getter for: Lcom/android/phone/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/phone/CellBroadcastSettings;->access$1700(Lcom/android/phone/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Lcom/android/phone/CellBroadcastSettings;->onError(Landroid/preference/Preference;I)V

    .line 678
    const-string v2, "Settings/CellBroadcastSettings"

    const-string v3, "handleGetCellBroadcastConfigResponse: ar.result is null"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v6, :cond_0

    .line 680
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #getter for: Lcom/android/phone/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/phone/CellBroadcastSettings;->access$1700(Lcom/android/phone/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 681
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #getter for: Lcom/android/phone/CellBroadcastSettings;->mAddChannelPreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/phone/CellBroadcastSettings;->access$1800(Lcom/android/phone/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method private handleSetCellBroadcastConfigResponse(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 689
    iget v1, p1, Landroid/os/Message;->arg2:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_2

    .line 690
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 691
    .local v0, ar:Landroid/os/AsyncResult;
    if-nez v0, :cond_0

    .line 692
    const-string v1, "Settings/CellBroadcastSettings"

    const-string v2, "handleSetCellBroadcastConfigResponse,ar is null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSettings$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSettings;

    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #getter for: Lcom/android/phone/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/phone/CellBroadcastSettings;->access$1700(Lcom/android/phone/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/16 v3, 0x190

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/CellBroadcastSettings;->onError(Landroid/preference/Preference;I)V

    .line 695
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 698
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSettings$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSettings;

    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #getter for: Lcom/android/phone/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/phone/CellBroadcastSettings;->access$1700(Lcom/android/phone/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/16 v3, 0x12c

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/CellBroadcastSettings;->onError(Landroid/preference/Preference;I)V

    .line 700
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSettings$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSettings;

    const/4 v2, 0x0

    #calls: Lcom/android/phone/CellBroadcastSettings;->getCellBroadcastConfig(Z)V
    invoke-static {v1, v2}, Lcom/android/phone/CellBroadcastSettings;->access$2300(Lcom/android/phone/CellBroadcastSettings;Z)V

    .line 702
    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 627
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 635
    :goto_0
    return-void

    .line 629
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CellBroadcastSettings$MyHandler;->handleGetCellBroadcastConfigResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 632
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CellBroadcastSettings$MyHandler;->handleSetCellBroadcastConfigResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 627
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
