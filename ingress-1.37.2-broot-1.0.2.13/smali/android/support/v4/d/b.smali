.class final Landroid/support/v4/d/b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v4/d/a;


# virtual methods
.method public final deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x1

    return v0
.end method

.method public final onChange(Z)V
    .locals 1
    .parameter

    .prologue
    .line 465
    iget-object v0, p0, Landroid/support/v4/d/b;->a:Landroid/support/v4/d/a;

    invoke-virtual {v0}, Landroid/support/v4/d/a;->b()V

    .line 466
    return-void
.end method
