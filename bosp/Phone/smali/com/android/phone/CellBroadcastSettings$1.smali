.class Lcom/android/phone/CellBroadcastSettings$1;
.super Ljava/lang/Object;
.source "CellBroadcastSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CellBroadcastSettings;->updateChannelUIList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CellBroadcastSettings;

.field final synthetic val$oldChannel:Lcom/android/phone/CellBroadcastChannel;


# direct methods
.method constructor <init>(Lcom/android/phone/CellBroadcastSettings;Lcom/android/phone/CellBroadcastChannel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/phone/CellBroadcastSettings$1;->this$0:Lcom/android/phone/CellBroadcastSettings;

    iput-object p2, p0, Lcom/android/phone/CellBroadcastSettings$1;->val$oldChannel:Lcom/android/phone/CellBroadcastChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings$1;->this$0:Lcom/android/phone/CellBroadcastSettings;

    iget-object v1, p0, Lcom/android/phone/CellBroadcastSettings$1;->val$oldChannel:Lcom/android/phone/CellBroadcastChannel;

    #calls: Lcom/android/phone/CellBroadcastSettings;->showEditChannelDialog(Lcom/android/phone/CellBroadcastChannel;)V
    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSettings;->access$100(Lcom/android/phone/CellBroadcastSettings;Lcom/android/phone/CellBroadcastChannel;)V

    .line 193
    const/4 v0, 0x0

    return v0
.end method
