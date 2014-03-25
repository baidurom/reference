.class Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;
.super Ljava/lang/Object;
.source "QuickbootActivityManagerServiceHook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/QuickbootActivityManagerServiceHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetBackgroundTask"
.end annotation


# instance fields
.field nextIndex:I

.field final synthetic this$0:Lcom/android/server/am/QuickbootActivityManagerServiceHook;


# direct methods
.method private constructor <init>(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;->this$0:Lcom/android/server/am/QuickbootActivityManagerServiceHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/QuickbootActivityManagerServiceHook;Lcom/android/server/am/QuickbootActivityManagerServiceHook$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;-><init>(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 173
    const-string v1, "QuickbootActivityManagerServiceHook"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetBackgroundTask: set background to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;->nextIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget v1, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;->nextIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 176
    iget-object v1, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;->this$0:Lcom/android/server/am/QuickbootActivityManagerServiceHook;

    #getter for: Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->access$200(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    const v2, #drawable@battery_charge#t

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->setQbBackgroundRes(I)V

    .line 190
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;->this$0:Lcom/android/server/am/QuickbootActivityManagerServiceHook;

    #getter for: Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->access$200(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->access$1100()[I

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;->nextIndex:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->setQbBackgroundRes(I)V

    .line 184
    iget v1, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;->nextIndex:I

    add-int/lit8 v0, v1, 0x1

    .line 185
    .local v0, index:I
    invoke-static {}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->access$1100()[I

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 186
    invoke-static {}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->access$600()I

    move-result v0

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;->this$0:Lcom/android/server/am/QuickbootActivityManagerServiceHook;

    const/16 v2, 0x1f4

    #calls: Lcom/android/server/am/QuickbootActivityManagerServiceHook;->setQbChargerBackground(II)V
    invoke-static {v1, v0, v2}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->access$800(Lcom/android/server/am/QuickbootActivityManagerServiceHook;II)V

    goto :goto_0
.end method
