.class final Landroid/server/search/SearchManagerService$LocaleChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/search/SearchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocaleChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/search/SearchManagerService;


# direct methods
.method private constructor <init>(Landroid/server/search/SearchManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Landroid/server/search/SearchManagerService$LocaleChangeReceiver;->this$0:Landroid/server/search/SearchManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/server/search/SearchManagerService;Landroid/server/search/SearchManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 222
    invoke-direct {p0, p1}, Landroid/server/search/SearchManagerService$LocaleChangeReceiver;-><init>(Landroid/server/search/SearchManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 225
    iget-object v0, p0, Landroid/server/search/SearchManagerService$LocaleChangeReceiver;->this$0:Landroid/server/search/SearchManagerService;

    #calls: Landroid/server/search/SearchManagerService;->initSearchEngineInfos()V
    invoke-static {v0}, Landroid/server/search/SearchManagerService;->access$400(Landroid/server/search/SearchManagerService;)V

    .line 226
    return-void
.end method
