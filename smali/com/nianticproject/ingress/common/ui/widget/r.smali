.class final Lcom/nianticproject/ingress/common/ui/widget/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/widget/bc;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/widget/q;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/widget/q;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/widget/r;->a:Lcom/nianticproject/ingress/common/ui/widget/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/r;->a:Lcom/nianticproject/ingress/common/ui/widget/q;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/widget/q;->b(Lcom/nianticproject/ingress/common/ui/widget/q;)Lcom/nianticproject/ingress/common/ui/widget/s;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/r;->a:Lcom/nianticproject/ingress/common/ui/widget/q;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/widget/q;->b(Lcom/nianticproject/ingress/common/ui/widget/q;)Lcom/nianticproject/ingress/common/ui/widget/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/ui/widget/s;->a()V

    .line 108
    :cond_0
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    return-void
.end method

.method public final b(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/r;->a:Lcom/nianticproject/ingress/common/ui/widget/q;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/widget/q;->a(Lcom/nianticproject/ingress/common/ui/widget/q;)V

    .line 88
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/r;->a:Lcom/nianticproject/ingress/common/ui/widget/q;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/widget/q;->b(Lcom/nianticproject/ingress/common/ui/widget/q;)Lcom/nianticproject/ingress/common/ui/widget/s;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/r;->a:Lcom/nianticproject/ingress/common/ui/widget/q;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/widget/q;->b(Lcom/nianticproject/ingress/common/ui/widget/q;)Lcom/nianticproject/ingress/common/ui/widget/s;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/r;->a:Lcom/nianticproject/ingress/common/ui/widget/q;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/widget/q;->a()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/s;->a(Lcom/nianticproject/ingress/gameentity/f;)V

    .line 91
    :cond_0
    return-void
.end method

.method public final c(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    return-void
.end method
