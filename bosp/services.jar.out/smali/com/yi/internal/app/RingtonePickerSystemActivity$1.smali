.class Lcom/yi/internal/app/RingtonePickerSystemActivity$1;
.super Ljava/lang/Object;
.source "RingtonePickerSystemActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yi/internal/app/RingtonePickerSystemActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yi/internal/app/RingtonePickerSystemActivity;


# direct methods
.method constructor <init>(Lcom/yi/internal/app/RingtonePickerSystemActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity$1;->this$0:Lcom/yi/internal/app/RingtonePickerSystemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 168
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "yi.intent.action.RINGTONE_PICKER_CUSTOM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, intentCustom:Landroid/content/Intent;
    const-string v1, "android.intent.extra.ringtone.TITLE"

    iget-object v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity$1;->this$0:Lcom/yi/internal/app/RingtonePickerSystemActivity;

    sget v3, Lyi/util/IDHelper;->STR_RING_PICK_CUST_TITLE:I

    invoke-virtual {v2, v3}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v1, "android.intent.extra.ringtone.TYPE"

    iget-object v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity$1;->this$0:Lcom/yi/internal/app/RingtonePickerSystemActivity;

    invoke-virtual {v2}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.ringtone.TYPE"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    iget-object v1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity$1;->this$0:Lcom/yi/internal/app/RingtonePickerSystemActivity;

    iget-object v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity$1;->this$0:Lcom/yi/internal/app/RingtonePickerSystemActivity;

    #getter for: Lcom/yi/internal/app/RingtonePickerSystemActivity;->REQUEST_CODE_CUSTOM_RINGTONE:I
    invoke-static {v2}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->access$000(Lcom/yi/internal/app/RingtonePickerSystemActivity;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 172
    return-void
.end method
