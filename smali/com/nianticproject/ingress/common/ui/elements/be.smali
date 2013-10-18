.class final Lcom/nianticproject/ingress/common/ui/elements/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/gameentity/f;

.field final synthetic b:Lcom/google/a/a/ba;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/gameentity/f;Lcom/google/a/a/ba;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/be;->a:Lcom/nianticproject/ingress/gameentity/f;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/elements/be;->b:Lcom/google/a/a/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/be;->a:Lcom/nianticproject/ingress/gameentity/f;

    if-eqz v0, :cond_0

    .line 80
    const-string/jumbo v0, "QuickAction"

    const-string/jumbo v1, "fireWeapon"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/be;->b:Lcom/google/a/a/ba;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/be;->a:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0, v1}, Lcom/google/a/a/ba;->a(Ljava/lang/Object;)V

    .line 83
    :cond_0
    return-void
.end method
