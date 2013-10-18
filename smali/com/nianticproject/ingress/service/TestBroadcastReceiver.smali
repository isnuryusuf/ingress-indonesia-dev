.class public Lcom/nianticproject/ingress/service/TestBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-static {p1}, Lcom/nianticproject/ingress/service/CommService;->c(Landroid/content/Context;)V

    .line 50
    return-void
.end method
