.class public final Landroid/support/v4/a/e;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v4/a/d;


# direct methods
.method public constructor <init>(Landroid/support/v4/a/d;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Landroid/support/v4/a/e;->a:Landroid/support/v4/a/d;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 53
    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public final onChange(Z)V
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/v4/a/e;->a:Landroid/support/v4/a/d;

    invoke-virtual {v0}, Landroid/support/v4/a/d;->o()V

    .line 63
    return-void
.end method
