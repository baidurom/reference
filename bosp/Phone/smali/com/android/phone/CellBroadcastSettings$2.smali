.class Lcom/android/phone/CellBroadcastSettings$2;
.super Ljava/lang/Object;
.source "CellBroadcastSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CellBroadcastSettings;->showAddChannelDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CellBroadcastSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/CellBroadcastSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/phone/CellBroadcastSettings$2;->this$0:Lcom/android/phone/CellBroadcastSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings$2;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #getter for: Lcom/android/phone/CellBroadcastSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/CellBroadcastSettings;->access$200(Lcom/android/phone/CellBroadcastSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 314
    return-void
.end method
