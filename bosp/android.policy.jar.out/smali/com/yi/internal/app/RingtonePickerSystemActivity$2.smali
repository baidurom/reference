.class Lcom/yi/internal/app/RingtonePickerSystemActivity$2;
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
    .line 184
    iput-object p1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity$2;->this$0:Lcom/yi/internal/app/RingtonePickerSystemActivity;

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
    .line 187
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity$2;->this$0:Lcom/yi/internal/app/RingtonePickerSystemActivity;

    #setter for: Lcom/yi/internal/app/RingtonePickerSystemActivity;->mClickedPos:I
    invoke-static {v0, p3}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->access$102(Lcom/yi/internal/app/RingtonePickerSystemActivity;I)I

    .line 190
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity$2;->this$0:Lcom/yi/internal/app/RingtonePickerSystemActivity;

    const/4 v1, 0x0

    #calls: Lcom/yi/internal/app/RingtonePickerSystemActivity;->playRingtone(II)V
    invoke-static {v0, p3, v1}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->access$200(Lcom/yi/internal/app/RingtonePickerSystemActivity;II)V

    .line 191
    return-void
.end method
