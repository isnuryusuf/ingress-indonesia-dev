.class public final Lcom/nianticproject/ingress/multiphotos/g;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/nianticproject/ingress/multiphotos/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/g;->a:Lcom/nianticproject/ingress/multiphotos/f;

    return-void
.end method

.method public static a(Landroid/support/v4/app/j;Lb/a/a;)Lcom/nianticproject/ingress/multiphotos/g;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/j;",
            "Lb/a/a",
            "<",
            "Lcom/nianticproject/ingress/multiphotos/f;",
            ">;)",
            "Lcom/nianticproject/ingress/multiphotos/g;"
        }
    .end annotation

    .prologue
    .line 36
    const-string/jumbo v0, "image_cache_retaining_fragment"

    invoke-virtual {p0, v0}, Landroid/support/v4/app/j;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/multiphotos/g;

    .line 38
    if-nez v0, :cond_0

    .line 39
    new-instance v2, Lcom/nianticproject/ingress/multiphotos/g;

    invoke-direct {v2}, Lcom/nianticproject/ingress/multiphotos/g;-><init>()V

    .line 40
    invoke-interface {p1}, Lb/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/multiphotos/f;

    iget-object v1, v2, Lcom/nianticproject/ingress/multiphotos/g;->a:Lcom/nianticproject/ingress/multiphotos/f;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v3, "This fragment already has a set image cache!"

    invoke-static {v1, v3}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/multiphotos/f;

    iput-object v0, v2, Lcom/nianticproject/ingress/multiphotos/g;->a:Lcom/nianticproject/ingress/multiphotos/f;

    .line 41
    invoke-virtual {p0}, Landroid/support/v4/app/j;->a()Landroid/support/v4/app/s;

    move-result-object v0

    const-string/jumbo v1, "image_cache_retaining_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/s;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->a()I

    move-object v0, v2

    .line 44
    :cond_0
    return-object v0

    .line 40
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/nianticproject/ingress/multiphotos/g;->l()V

    .line 53
    return-void
.end method

.method public final b()Lcom/nianticproject/ingress/multiphotos/f;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/g;->a:Lcom/nianticproject/ingress/multiphotos/f;

    return-object v0
.end method

.method public final s()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/g;->a:Lcom/nianticproject/ingress/multiphotos/f;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/g;->a:Lcom/nianticproject/ingress/multiphotos/f;

    invoke-interface {v0}, Lcom/nianticproject/ingress/multiphotos/f;->a()V

    .line 81
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->s()V

    .line 82
    return-void
.end method
