.class final Lcom/nianticproject/ingress/common/ui/elements/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/widget/z;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1282
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/al;->a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/al;->a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;->l(Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;)Lcom/nianticproject/ingress/common/model/ab;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/model/ab;->a:Lcom/nianticproject/ingress/common/model/ab;

    if-eq v0, v1, :cond_2

    .line 1287
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v4

    .line 1288
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/al;->a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;->m(Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    .line 1289
    const-class v2, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    .line 1290
    if-eqz v0, :cond_0

    .line 1291
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1295
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/al;->a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;->f(Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;)Lcom/nianticproject/ingress/common/ui/elements/av;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/al;->a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;->j(Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/al;->a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;->e(Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;)Lcom/nianticproject/ingress/gameentity/components/Portal;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/al;->a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;->l(Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;)Lcom/nianticproject/ingress/common/model/ab;

    move-result-object v3

    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/elements/al;->a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    invoke-static {v5}, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;->n(Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/nianticproject/ingress/common/ui/elements/av;->a(Lcom/nianticproject/ingress/common/scanner/ej;Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/common/model/ab;Ljava/util/Set;Lcom/nianticproject/ingress/gameentity/f;)V

    .line 1298
    :cond_2
    return-void
.end method
