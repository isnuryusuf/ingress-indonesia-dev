.class final Lcom/nianticproject/ingress/common/missions/be;
.super Lcom/nianticproject/ingress/common/missions/ab;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/bd;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/bd;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/be;->a:Lcom/nianticproject/ingress/common/missions/bd;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nianticproject/ingress/common/missions/ab;-><init>(Lcom/nianticproject/ingress/common/missions/a;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 292
    invoke-super {p0}, Lcom/nianticproject/ingress/common/missions/ab;->a()V

    .line 293
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/be;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/bd;->n:Lcom/nianticproject/ingress/common/c/e;

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->af:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 294
    const-string/jumbo v0, "Mission 6(Links) - Link two Portals."

    .line 300
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/be;->a:Lcom/nianticproject/ingress/common/missions/bd;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/missions/bd;->a_(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/be;->a:Lcom/nianticproject/ingress/common/missions/bd;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/bd;->w()V

    .line 303
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/be;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/bd;->m:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/be;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/bd;->b:Lcom/nianticproject/ingress/common/missions/ac;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/ac;->a:Lcom/google/a/d/u;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/google/a/d/u;)V

    .line 305
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/be;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/be;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/bd;->c:Lcom/nianticproject/ingress/gameentity/f;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/be;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/missions/bd;->b:Lcom/nianticproject/ingress/common/missions/ac;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/missions/ac;->a:Lcom/google/a/d/u;

    const-string/jumbo v3, "first_hacked_key_guid"

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/missions/bd;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/google/a/d/u;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public final u_()V
    .locals 2

    .prologue
    .line 310
    invoke-super {p0}, Lcom/nianticproject/ingress/common/missions/ab;->u_()V

    .line 312
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/be;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/bd;->P:Ljava/util/Set;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/be;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/bd;->c:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 313
    return-void
.end method
