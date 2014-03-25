.class Lcom/android/internal/policy/impl/PhoneWindowManager$15;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 3729
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x52

    const/4 v2, 0x1

    .line 3732
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->keyRemappingSendFakeKeyEvent(II)V
    invoke-static {v0, v1, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$600(Lcom/android/internal/policy/impl/PhoneWindowManager;II)V

    .line 3733
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->keyRemappingSendFakeKeyEvent(II)V
    invoke-static {v0, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$600(Lcom/android/internal/policy/impl/PhoneWindowManager;II)V

    .line 3735
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyRemappingVolumeDownLongPressed:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$702(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 3736
    return-void
.end method
