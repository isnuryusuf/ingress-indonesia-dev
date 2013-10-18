.class final Lcom/nianticproject/ingress/common/itemupgrade/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/nianticproject/ingress/common/itemupgrade/q;->a:Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/q;->a:Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog;->g()V

    .line 62
    return-void
.end method
