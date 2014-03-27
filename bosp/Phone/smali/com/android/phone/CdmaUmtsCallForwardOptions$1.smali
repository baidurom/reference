.class Lcom/android/phone/CdmaUmtsCallForwardOptions$1;
.super Ljava/lang/Object;
.source "CdmaUmtsCallForwardOptions.java"

# interfaces
.implements Lcom/android/phone/CdmaForwardEditPhoneNumberPreference$OnDialogClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CdmaUmtsCallForwardOptions;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaUmtsCallForwardOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaUmtsCallForwardOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions$1;->this$0:Lcom/android/phone/CdmaUmtsCallForwardOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;IZ)V
    .locals 3
    .parameter "preference"
    .parameter "buttonClicked"
    .parameter "isEnable"

    .prologue
    .line 109
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    .line 112
    invoke-virtual {p1}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions$1;->this$0:Lcom/android/phone/CdmaUmtsCallForwardOptions;

    #calls: Lcom/android/phone/CdmaUmtsCallForwardOptions;->toast()V
    invoke-static {v0}, Lcom/android/phone/CdmaUmtsCallForwardOptions;->access$000(Lcom/android/phone/CdmaUmtsCallForwardOptions;)V

    goto :goto_0

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions$1;->this$0:Lcom/android/phone/CdmaUmtsCallForwardOptions;

    #getter for: Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CdmaCallForwardEditPreference;
    invoke-static {v0}, Lcom/android/phone/CdmaUmtsCallForwardOptions;->access$100(Lcom/android/phone/CdmaUmtsCallForwardOptions;)Lcom/android/phone/CdmaCallForwardEditPreference;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 116
    iget-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions$1;->this$0:Lcom/android/phone/CdmaUmtsCallForwardOptions;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*72"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/CdmaUmtsCallForwardOptions;->call(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CdmaUmtsCallForwardOptions;->access$200(Lcom/android/phone/CdmaUmtsCallForwardOptions;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions$1;->this$0:Lcom/android/phone/CdmaUmtsCallForwardOptions;

    #getter for: Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CdmaCallForwardEditPreference;
    invoke-static {v0}, Lcom/android/phone/CdmaUmtsCallForwardOptions;->access$300(Lcom/android/phone/CdmaUmtsCallForwardOptions;)Lcom/android/phone/CdmaCallForwardEditPreference;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 118
    iget-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions$1;->this$0:Lcom/android/phone/CdmaUmtsCallForwardOptions;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*90"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/CdmaUmtsCallForwardOptions;->call(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CdmaUmtsCallForwardOptions;->access$200(Lcom/android/phone/CdmaUmtsCallForwardOptions;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions$1;->this$0:Lcom/android/phone/CdmaUmtsCallForwardOptions;

    #getter for: Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CdmaCallForwardEditPreference;
    invoke-static {v0}, Lcom/android/phone/CdmaUmtsCallForwardOptions;->access$400(Lcom/android/phone/CdmaUmtsCallForwardOptions;)Lcom/android/phone/CdmaCallForwardEditPreference;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 120
    iget-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions$1;->this$0:Lcom/android/phone/CdmaUmtsCallForwardOptions;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*92"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/CdmaUmtsCallForwardOptions;->call(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CdmaUmtsCallForwardOptions;->access$200(Lcom/android/phone/CdmaUmtsCallForwardOptions;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions$1;->this$0:Lcom/android/phone/CdmaUmtsCallForwardOptions;

    #getter for: Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CdmaCallForwardEditPreference;
    invoke-static {v0}, Lcom/android/phone/CdmaUmtsCallForwardOptions;->access$500(Lcom/android/phone/CdmaUmtsCallForwardOptions;)Lcom/android/phone/CdmaCallForwardEditPreference;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions$1;->this$0:Lcom/android/phone/CdmaUmtsCallForwardOptions;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*68"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/CdmaUmtsCallForwardOptions;->call(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CdmaUmtsCallForwardOptions;->access$200(Lcom/android/phone/CdmaUmtsCallForwardOptions;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    :cond_6
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions$1;->this$0:Lcom/android/phone/CdmaUmtsCallForwardOptions;

    #getter for: Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CdmaCallForwardEditPreference;
    invoke-static {v0}, Lcom/android/phone/CdmaUmtsCallForwardOptions;->access$100(Lcom/android/phone/CdmaUmtsCallForwardOptions;)Lcom/android/phone/CdmaCallForwardEditPreference;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 127
    iget-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions$1;->this$0:Lcom/android/phone/CdmaUmtsCallForwardOptions;

    const-string v1, "*720"

    #calls: Lcom/android/phone/CdmaUmtsCallForwardOptions;->call(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CdmaUmtsCallForwardOptions;->access$200(Lcom/android/phone/CdmaUmtsCallForwardOptions;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :cond_7
    iget-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions$1;->this$0:Lcom/android/phone/CdmaUmtsCallForwardOptions;

    #getter for: Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CdmaCallForwardEditPreference;
    invoke-static {v0}, Lcom/android/phone/CdmaUmtsCallForwardOptions;->access$300(Lcom/android/phone/CdmaUmtsCallForwardOptions;)Lcom/android/phone/CdmaCallForwardEditPreference;

    move-result-object v0

    if-ne p1, v0, :cond_8

    .line 129
    iget-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions$1;->this$0:Lcom/android/phone/CdmaUmtsCallForwardOptions;

    const-string v1, "*900"

    #calls: Lcom/android/phone/CdmaUmtsCallForwardOptions;->call(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CdmaUmtsCallForwardOptions;->access$200(Lcom/android/phone/CdmaUmtsCallForwardOptions;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 130
    :cond_8
    iget-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions$1;->this$0:Lcom/android/phone/CdmaUmtsCallForwardOptions;

    #getter for: Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CdmaCallForwardEditPreference;
    invoke-static {v0}, Lcom/android/phone/CdmaUmtsCallForwardOptions;->access$400(Lcom/android/phone/CdmaUmtsCallForwardOptions;)Lcom/android/phone/CdmaCallForwardEditPreference;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 131
    iget-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions$1;->this$0:Lcom/android/phone/CdmaUmtsCallForwardOptions;

    const-string v1, "*920"

    #calls: Lcom/android/phone/CdmaUmtsCallForwardOptions;->call(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CdmaUmtsCallForwardOptions;->access$200(Lcom/android/phone/CdmaUmtsCallForwardOptions;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    :cond_9
    iget-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions$1;->this$0:Lcom/android/phone/CdmaUmtsCallForwardOptions;

    #getter for: Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CdmaCallForwardEditPreference;
    invoke-static {v0}, Lcom/android/phone/CdmaUmtsCallForwardOptions;->access$500(Lcom/android/phone/CdmaUmtsCallForwardOptions;)Lcom/android/phone/CdmaCallForwardEditPreference;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions$1;->this$0:Lcom/android/phone/CdmaUmtsCallForwardOptions;

    const-string v1, "*680"

    #calls: Lcom/android/phone/CdmaUmtsCallForwardOptions;->call(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CdmaUmtsCallForwardOptions;->access$200(Lcom/android/phone/CdmaUmtsCallForwardOptions;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
