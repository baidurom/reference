.class Lyi/preference/SwitchPreference$Listener;
.super Ljava/lang/Object;
.source "SwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/preference/SwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lyi/preference/SwitchPreference;


# direct methods
.method private constructor <init>(Lyi/preference/SwitchPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lyi/preference/SwitchPreference$Listener;->this$0:Lyi/preference/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lyi/preference/SwitchPreference;Lyi/preference/SwitchPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lyi/preference/SwitchPreference$Listener;-><init>(Lyi/preference/SwitchPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 45
    iget-object v0, p0, Lyi/preference/SwitchPreference$Listener;->this$0:Lyi/preference/SwitchPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #calls: Lyi/preference/SwitchPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v0, v1}, Lyi/preference/SwitchPreference;->access$100(Lyi/preference/SwitchPreference;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 53
    :goto_1
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lyi/preference/SwitchPreference$Listener;->this$0:Lyi/preference/SwitchPreference;

    invoke-virtual {v0, p2}, Lyi/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method
