.class public Lcom/nianticproject/ingress/connectivity/ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 22
    const-string/jumbo v1, "noConnectivity"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 26
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->a()Lcom/nianticproject/ingress/NemesisApplication;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/nianticproject/ingress/NemesisApplication;->l()Lcom/nianticproject/ingress/connectivity/a;

    move-result-object v1

    .line 28
    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/connectivity/a;->a(Z)V

    .line 29
    return-void
.end method
