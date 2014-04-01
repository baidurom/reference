.class Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$Data;
.super Ljava/lang/Object;
.source "SmartKeyguardStatusViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data"
.end annotation


# instance fields
.field final icon:I

.field final text:Ljava/lang/CharSequence;

.field final synthetic this$1:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter
    .parameter "t"
    .parameter "i"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$Data;->this$1:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$Data;->text:Ljava/lang/CharSequence;

    .line 259
    iput p3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$Data;->icon:I

    .line 260
    return-void
.end method
