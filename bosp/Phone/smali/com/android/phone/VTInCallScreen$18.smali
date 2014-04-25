.class Lcom/android/phone/VTInCallScreen$18;
.super Ljava/lang/Object;
.source "VTInCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VTInCallScreen;->showStartVTRecorderDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VTInCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/VTInCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 2663
    iput-object p1, p0, Lcom/android/phone/VTInCallScreen$18;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2665
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$18;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/phone/VTInCallScreen;->access$2300(Lcom/android/phone/VTInCallScreen;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2666
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$18;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/phone/VTInCallScreen;->access$2300(Lcom/android/phone/VTInCallScreen;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 2667
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$18;->this$0:Lcom/android/phone/VTInCallScreen;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$2302(Lcom/android/phone/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2670
    :cond_0
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$18;->this$0:Lcom/android/phone/VTInCallScreen;

    iget-object v2, v2, Lcom/android/phone/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2671
    .local v0, currentString:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2673
    .local v1, type:I
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$18;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b03ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2675
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$18;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v3, "The choice of start VT recording : voice and peer video"

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 2676
    const/4 v1, 0x1

    .line 2689
    :goto_0
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$18;->this$0:Lcom/android/phone/VTInCallScreen;

    #calls: Lcom/android/phone/VTInCallScreen;->startRecord(I)V
    invoke-static {v2, v1}, Lcom/android/phone/VTInCallScreen;->access$2400(Lcom/android/phone/VTInCallScreen;I)V

    .line 2690
    :goto_1
    return-void

    .line 2677
    :cond_1
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$18;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b03cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2679
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$18;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v3, "The choice of start VT recording : only voice"

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 2680
    const/4 v1, 0x2

    goto :goto_0

    .line 2681
    :cond_2
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$18;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b03cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2683
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$18;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v3, "The choice of start VT recording : only peer video"

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 2684
    const/4 v1, 0x3

    goto :goto_0

    .line 2686
    :cond_3
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$18;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v3, "The choice of start VT recording : wrong string"

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    goto :goto_1
.end method
