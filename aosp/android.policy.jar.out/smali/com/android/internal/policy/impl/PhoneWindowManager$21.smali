.class Lcom/android/internal/policy/impl/PhoneWindowManager$21;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->waitForKeyguard(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field final synthetic val$screenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4345
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->val$screenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShown(Landroid/os/IBinder;)V
    .locals 2
    .parameter "windowToken"

    .prologue
    .line 4349
    if-nez p1, :cond_0

    .line 4350
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->val$screenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->waitForTopFullscreenWindowDrawn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1200(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 4355
    :goto_0
    return-void

    .line 4352
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->val$screenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->waitForKeyguardWindowDrawn(Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    invoke-static {v0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1300(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    goto :goto_0
.end method
