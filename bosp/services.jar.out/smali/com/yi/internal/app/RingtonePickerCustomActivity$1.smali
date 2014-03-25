.class Lcom/yi/internal/app/RingtonePickerCustomActivity$1;
.super Ljava/lang/Object;
.source "RingtonePickerCustomActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yi/internal/app/RingtonePickerCustomActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yi/internal/app/RingtonePickerCustomActivity;


# direct methods
.method constructor <init>(Lcom/yi/internal/app/RingtonePickerCustomActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity$1;->this$0:Lcom/yi/internal/app/RingtonePickerCustomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity$1;->this$0:Lcom/yi/internal/app/RingtonePickerCustomActivity;

    #setter for: Lcom/yi/internal/app/RingtonePickerCustomActivity;->mClickedPos:I
    invoke-static {v0, p3}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->access$002(Lcom/yi/internal/app/RingtonePickerCustomActivity;I)I

    .line 191
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity$1;->this$0:Lcom/yi/internal/app/RingtonePickerCustomActivity;

    #getter for: Lcom/yi/internal/app/RingtonePickerCustomActivity;->mOkButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->access$100(Lcom/yi/internal/app/RingtonePickerCustomActivity;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity$1;->this$0:Lcom/yi/internal/app/RingtonePickerCustomActivity;

    #getter for: Lcom/yi/internal/app/RingtonePickerCustomActivity;->mOkButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->access$100(Lcom/yi/internal/app/RingtonePickerCustomActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity$1;->this$0:Lcom/yi/internal/app/RingtonePickerCustomActivity;

    #getter for: Lcom/yi/internal/app/RingtonePickerCustomActivity;->mOkButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->access$100(Lcom/yi/internal/app/RingtonePickerCustomActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity$1;->this$0:Lcom/yi/internal/app/RingtonePickerCustomActivity;

    const/4 v1, 0x0

    #calls: Lcom/yi/internal/app/RingtonePickerCustomActivity;->playRingtone(II)V
    invoke-static {v0, p3, v1}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->access$200(Lcom/yi/internal/app/RingtonePickerCustomActivity;II)V

    .line 196
    return-void
.end method
