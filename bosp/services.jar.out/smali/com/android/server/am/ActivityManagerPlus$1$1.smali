.class Lcom/android/server/am/ActivityManagerPlus$1$1;
.super Ljava/lang/Object;
.source "ActivityManagerPlus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerPlus$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerPlus$1;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerPlus$1;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerPlus$1$1;->this$1:Lcom/android/server/am/ActivityManagerPlus$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPlus$1$1;->this$1:Lcom/android/server/am/ActivityManagerPlus$1;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPlus$1$1;->this$1:Lcom/android/server/am/ActivityManagerPlus$1;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerPlus;->access$000(Lcom/android/server/am/ActivityManagerPlus;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->LaunchPowerOffAlarm(Landroid/content/Context;)V

    .line 283
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPlus$1$1;->this$1:Lcom/android/server/am/ActivityManagerPlus$1;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerService;->mAlarmBoot:Z

    .line 284
    return-void
.end method
