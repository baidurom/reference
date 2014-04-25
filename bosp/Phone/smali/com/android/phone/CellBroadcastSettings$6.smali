.class Lcom/android/phone/CellBroadcastSettings$6;
.super Ljava/lang/Object;
.source "CellBroadcastSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CellBroadcastSettings;->showLanguageSelectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CellBroadcastSettings;

.field final synthetic val$temp:[Z

.field final synthetic val$temp2:[Z


# direct methods
.method constructor <init>(Lcom/android/phone/CellBroadcastSettings;[Z[Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 783
    iput-object p1, p0, Lcom/android/phone/CellBroadcastSettings$6;->this$0:Lcom/android/phone/CellBroadcastSettings;

    iput-object p2, p0, Lcom/android/phone/CellBroadcastSettings$6;->val$temp:[Z

    iput-object p3, p0, Lcom/android/phone/CellBroadcastSettings$6;->val$temp2:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 785
    iget-object v5, p0, Lcom/android/phone/CellBroadcastSettings$6;->val$temp:[Z

    array-length v4, v5

    .line 787
    .local v4, tLength:I
    iget-object v5, p0, Lcom/android/phone/CellBroadcastSettings$6;->val$temp:[Z

    const/4 v6, 0x0

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_0

    .line 788
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 789
    iget-object v5, p0, Lcom/android/phone/CellBroadcastSettings$6;->val$temp:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v2

    .line 788
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 793
    .end local v2           #i:I
    :cond_0
    const/4 v1, 0x0

    .line 794
    .local v1, flag:Z
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 795
    iget-object v5, p0, Lcom/android/phone/CellBroadcastSettings$6;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #getter for: Lcom/android/phone/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/phone/CellBroadcastSettings;->access$2400(Lcom/android/phone/CellBroadcastSettings;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/CellBroadcastLanguage;

    iget-object v6, p0, Lcom/android/phone/CellBroadcastSettings$6;->val$temp:[Z

    aget-boolean v6, v6, v2

    invoke-virtual {v5, v6}, Lcom/android/phone/CellBroadcastLanguage;->setLanguageState(Z)V

    .line 796
    iget-object v5, p0, Lcom/android/phone/CellBroadcastSettings$6;->val$temp:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_1

    .line 797
    const/4 v1, 0x1

    .line 794
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 800
    :cond_2
    if-eqz v1, :cond_4

    .line 801
    iget-object v5, p0, Lcom/android/phone/CellBroadcastSettings$6;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #calls: Lcom/android/phone/CellBroadcastSettings;->makeLanguageConfigArray()[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-static {v5}, Lcom/android/phone/CellBroadcastSettings;->access$2500(Lcom/android/phone/CellBroadcastSettings;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v3

    .line 803
    .local v3, langList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/CellBroadcastSettings$6;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #calls: Lcom/android/phone/CellBroadcastSettings;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V
    invoke-static {v5, v3}, Lcom/android/phone/CellBroadcastSettings;->access$1100(Lcom/android/phone/CellBroadcastSettings;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    .end local v3           #langList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_3
    return-void

    .line 804
    .restart local v3       #langList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :catch_0
    move-exception v0

    .line 805
    .local v0, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/android/phone/CellBroadcastSettings$6;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #calls: Lcom/android/phone/CellBroadcastSettings;->showUpdateDBErrorInfoDialog()V
    invoke-static {v5}, Lcom/android/phone/CellBroadcastSettings;->access$1200(Lcom/android/phone/CellBroadcastSettings;)V

    .line 806
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_3

    .line 807
    iget-object v5, p0, Lcom/android/phone/CellBroadcastSettings$6;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #getter for: Lcom/android/phone/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/phone/CellBroadcastSettings;->access$2400(Lcom/android/phone/CellBroadcastSettings;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/CellBroadcastLanguage;

    iget-object v6, p0, Lcom/android/phone/CellBroadcastSettings$6;->val$temp2:[Z

    aget-boolean v6, v6, v2

    invoke-virtual {v5, v6}, Lcom/android/phone/CellBroadcastLanguage;->setLanguageState(Z)V

    .line 806
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 811
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #langList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_4
    iget-object v5, p0, Lcom/android/phone/CellBroadcastSettings$6;->this$0:Lcom/android/phone/CellBroadcastSettings;

    const v6, 0x7f0b029b

    #calls: Lcom/android/phone/CellBroadcastSettings;->displayMessage(I)V
    invoke-static {v5, v6}, Lcom/android/phone/CellBroadcastSettings;->access$1300(Lcom/android/phone/CellBroadcastSettings;I)V

    .line 812
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_3

    .line 813
    iget-object v5, p0, Lcom/android/phone/CellBroadcastSettings$6;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #getter for: Lcom/android/phone/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/phone/CellBroadcastSettings;->access$2400(Lcom/android/phone/CellBroadcastSettings;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/CellBroadcastLanguage;

    iget-object v6, p0, Lcom/android/phone/CellBroadcastSettings$6;->val$temp2:[Z

    aget-boolean v6, v6, v2

    invoke-virtual {v5, v6}, Lcom/android/phone/CellBroadcastLanguage;->setLanguageState(Z)V

    .line 812
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method
