.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimArgs"
.end annotation


# instance fields
.field simId:I

.field public final simState:Lcom/android/internal/telephony/IccCard$State;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 282
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 280
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simId:I

    .line 283
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    .line 284
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 1
    .parameter "state"
    .parameter "SimId"

    .prologue
    .line 287
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 280
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simId:I

    .line 288
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    .line 289
    iput p2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simId:I

    .line 290
    return-void
.end method

.method static fromIntent(Landroid/content/Intent;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;
    .locals 7
    .parameter "intent"

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, SimId:I
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 296
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "only handles intent ACTION_SIM_STATE_CHANGED"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 298
    :cond_0
    const-string v5, "ss"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 300
    .local v4, stateExtra:Ljava/lang/String;
    const-string v5, "simId"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 302
    const-string v5, "ABSENT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 303
    const-string v5, "reason"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, absentReason:Ljava/lang/String;
    const-string v5, "PERM_DISABLED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 308
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    .line 331
    .end local v1           #absentReason:Ljava/lang/String;
    .local v3, state:Lcom/android/internal/telephony/IccCard$State;
    :goto_0
    new-instance v5, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;

    invoke-direct {v5, v3, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCard$State;I)V

    return-object v5

    .line 310
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    .restart local v1       #absentReason:Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 312
    .end local v1           #absentReason:Ljava/lang/String;
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_2
    const-string v5, "READY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 313
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 314
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_3
    const-string v5, "LOCKED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 315
    const-string v5, "reason"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, lockedReason:Ljava/lang/String;
    const-string v5, "PIN"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 318
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 319
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_4
    const-string v5, "PUK"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 320
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 322
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_5
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 324
    .end local v2           #lockedReason:Ljava/lang/String;
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_6
    const-string v5, "NETWORK"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 325
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 326
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_7
    const-string v5, "NOT_READY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 327
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 329
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_8
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
