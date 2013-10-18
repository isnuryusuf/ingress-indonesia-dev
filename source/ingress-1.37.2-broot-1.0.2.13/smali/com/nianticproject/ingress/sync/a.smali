.class public Lcom/nianticproject/ingress/sync/a;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/sync/a;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/sync/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 34
    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/nianticproject/ingress/sync/a;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/nianticproject/ingress/curation/i;

    invoke-direct {v1}, Lcom/nianticproject/ingress/curation/i;-><init>()V

    new-instance v2, Lcom/nianticproject/ingress/sync/b;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/sync/b;-><init>(Lcom/nianticproject/ingress/sync/a;)V

    invoke-static {v0, v1, p5}, Lcom/nianticproject/ingress/curation/f;->a(Landroid/content/Context;Lcom/nianticproject/ingress/curation/e;Landroid/content/SyncResult;)V

    .line 53
    return-void
.end method
