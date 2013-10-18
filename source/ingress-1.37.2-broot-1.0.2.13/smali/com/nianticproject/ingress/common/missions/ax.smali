.class final Lcom/nianticproject/ingress/common/missions/ax;
.super Lcom/nianticproject/ingress/common/w/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/aw;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/aw;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/ax;->a:Lcom/nianticproject/ingress/common/missions/aw;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/w/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/ax;->a:Lcom/nianticproject/ingress/common/missions/aw;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/aw;->a(Lcom/nianticproject/ingress/common/missions/aw;)V

    .line 214
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/ax;->a:Lcom/nianticproject/ingress/common/missions/aw;

    const-string/jumbo v1, "Mission 3 (Neutralizing hostile Portals) - Neutralize the hostile Portal by destroying its Resonators"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/aw;->a_(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/ax;->a:Lcom/nianticproject/ingress/common/missions/aw;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/aw;->n:Lcom/nianticproject/ingress/common/c/e;

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->af:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 217
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/ax;->a:Lcom/nianticproject/ingress/common/missions/aw;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/aw;->b(Lcom/nianticproject/ingress/common/missions/aw;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 218
    return-void
.end method
