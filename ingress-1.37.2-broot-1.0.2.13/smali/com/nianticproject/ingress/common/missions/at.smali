.class final Lcom/nianticproject/ingress/common/missions/at;
.super Lcom/nianticproject/ingress/common/w/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/as;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/as;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/at;->a:Lcom/nianticproject/ingress/common/missions/as;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/w/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/at;->a:Lcom/nianticproject/ingress/common/missions/as;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/as;->a(Lcom/nianticproject/ingress/common/missions/as;)V

    .line 180
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/at;->a:Lcom/nianticproject/ingress/common/missions/as;

    const-string/jumbo v1, "Mission 4 (Capturing and fortifying Portals) - Capture the Portal by deploying a Resonator."

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/as;->a_(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/at;->a:Lcom/nianticproject/ingress/common/missions/as;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/as;->n:Lcom/nianticproject/ingress/common/c/e;

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->af:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 183
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/at;->a:Lcom/nianticproject/ingress/common/missions/as;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/as;->b(Lcom/nianticproject/ingress/common/missions/as;)Lcom/nianticproject/ingress/common/missions/aq;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/missions/au;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/missions/au;-><init>(Lcom/nianticproject/ingress/common/missions/at;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/aq;->a(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

.method public final u_()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/at;->a:Lcom/nianticproject/ingress/common/missions/as;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/as;->b(Lcom/nianticproject/ingress/common/missions/as;)Lcom/nianticproject/ingress/common/missions/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/at;->a:Lcom/nianticproject/ingress/common/missions/as;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/as;->c:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/aq;->b(Ljava/lang/String;)V

    .line 194
    return-void
.end method
