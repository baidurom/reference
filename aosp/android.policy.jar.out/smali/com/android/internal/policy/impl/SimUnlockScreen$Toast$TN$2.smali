.class Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN$2;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;)V
    .locals 0
    .parameter

    .prologue
    .line 1441
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN$2;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN$2;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;->handleHide()V

    .line 1444
    return-void
.end method
