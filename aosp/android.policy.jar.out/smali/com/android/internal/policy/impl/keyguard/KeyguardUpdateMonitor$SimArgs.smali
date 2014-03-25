.class Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimArgs"
.end annotation


# instance fields
.field simId:I

.field simMECategory:I

.field public final simState:Lcom/android/internal/telephony/IccCardConstants$State;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simId:I

    .line 490
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simMECategory:I

    .line 493
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 494
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/IccCardConstants$State;II)V
    .locals 1
    .parameter "state"
    .parameter "id"
    .parameter "meCategory"

    .prologue
    const/4 v0, 0x0

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simId:I

    .line 490
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simMECategory:I

    .line 497
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 498
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simId:I

    .line 499
    iput p3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simMECategory:I

    .line 500
    return-void
.end method

.method static fromIntent(Landroid/content/Intent;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;
    .locals 9
    .parameter "intent"

    .prologue
    .line 504
    const/4 v1, 0x0

    .line 505
    .local v1, id:I
    const/4 v3, 0x0

    .line 506
    .local v3, meCategory:I
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 507
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "only handles intent ACTION_SIM_STATE_CHANGED"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 509
    :cond_0
    const-string v6, "ss"

    invoke-virtual {p0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 510
    .local v5, stateExtra:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 511
    const-string v6, "simId"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 513
    :cond_1
    const-string v6, "ABSENT"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 514
    const-string v6, "reason"

    invoke-virtual {p0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, absentReason:Ljava/lang/String;
    const-string v6, "PERM_DISABLED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 519
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 561
    .end local v0           #absentReason:Ljava/lang/String;
    .local v4, state:Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_0
    new-instance v6, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;

    invoke-direct {v6, v4, v1, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;II)V

    return-object v6

    .line 521
    .end local v4           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    .restart local v0       #absentReason:Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v4       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 523
    .end local v0           #absentReason:Ljava/lang/String;
    .end local v4           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_3
    const-string v6, "READY"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 524
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v4       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 525
    .end local v4           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_4
    const-string v6, "LOCKED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 526
    const-string v6, "reason"

    invoke-virtual {p0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 528
    .local v2, lockedReason:Ljava/lang/String;
    const-string v6, "KeyguardUpdateMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "INTENT_VALUE_ICC_LOCKED, lockedReason="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v6, "PIN"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 530
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v4       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 531
    .end local v4           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_5
    const-string v6, "PUK"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 532
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v4       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 533
    .end local v4           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_6
    const-string v6, "NETWORK"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 534
    const/4 v3, 0x0

    .line 535
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v4       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 536
    .end local v4           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_7
    const-string v6, "NETWORK_SUBSET"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 537
    const/4 v3, 0x1

    .line 538
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v4       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 539
    .end local v4           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_8
    const-string v6, "SERVICE_PROVIDER"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 540
    const/4 v3, 0x2

    .line 541
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v4       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 542
    .end local v4           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_9
    const-string v6, "CORPORATE"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 543
    const/4 v3, 0x3

    .line 544
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v4       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 545
    .end local v4           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_a
    const-string v6, "SIM"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 546
    const/4 v3, 0x4

    .line 547
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v4       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto/16 :goto_0

    .line 549
    .end local v4           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_b
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v4       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto/16 :goto_0

    .line 551
    .end local v2           #lockedReason:Ljava/lang/String;
    .end local v4           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_c
    const-string v6, "LOADED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "IMSI"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 555
    :cond_d
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v4       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto/16 :goto_0

    .line 556
    .end local v4           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_e
    const-string v6, "NOT_READY"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 557
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v4       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto/16 :goto_0

    .line 559
    .end local v4           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_f
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v4       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto/16 :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
