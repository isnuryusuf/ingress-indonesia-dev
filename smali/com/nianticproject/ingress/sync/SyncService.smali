.class public Lcom/nianticproject/ingress/sync/SyncService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static a:Lcom/nianticproject/ingress/sync/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 27
    sget-object v0, Lcom/nianticproject/ingress/sync/SyncService;->a:Lcom/nianticproject/ingress/sync/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/sync/a;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 20
    sget-object v0, Lcom/nianticproject/ingress/sync/SyncService;->a:Lcom/nianticproject/ingress/sync/a;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/nianticproject/ingress/sync/a;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/sync/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nianticproject/ingress/sync/SyncService;->a:Lcom/nianticproject/ingress/sync/a;

    .line 23
    :cond_0
    return-void
.end method
