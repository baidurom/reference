.class Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;
.super Ljava/lang/Object;
.source "MediatekDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmPm"
.end annotation


# instance fields
.field private final mAmPm:Landroid/widget/TextView;

.field private final mAmString:Ljava/lang/String;

.field private final mPmString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 4
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const v1, 0x2100059

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;->mAmPm:Landroid/widget/TextView;

    .line 83
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;->mAmPm:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 84
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, ampm:[Ljava/lang/String;
    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;->mAmString:Ljava/lang/String;

    .line 86
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;->mPmString:Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method getAmPmText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method setIsMorning(Z)V
    .locals 2
    .parameter "isMorning"

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;->mAmPm:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;->mAmString:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;->mPmString:Ljava/lang/String;

    goto :goto_0
.end method

.method setShowAmPm(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;->mAmPm:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    return-void

    .line 90
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
