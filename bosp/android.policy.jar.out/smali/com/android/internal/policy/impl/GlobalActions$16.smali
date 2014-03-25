.class Lcom/android/internal/policy/impl/GlobalActions$16;
.super Landroid/database/ContentObserver;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$16;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$16;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #calls: Lcom/android/internal/policy/impl/GlobalActions;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1900(Lcom/android/internal/policy/impl/GlobalActions;)V

    .line 1104
    return-void
.end method
