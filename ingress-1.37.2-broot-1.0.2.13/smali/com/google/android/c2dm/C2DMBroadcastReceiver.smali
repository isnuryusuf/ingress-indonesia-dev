.class public Lcom/google/android/c2dm/C2DMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-static {p1, p2}, Lcom/google/android/c2dm/C2DMBaseReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 37
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/c2dm/C2DMBroadcastReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 38
    return-void
.end method
