.class final Lcom/nianticproject/ingress/common/missions/ev;
.super Lcom/nianticproject/ingress/common/w/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/eu;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/eu;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/ev;->a:Lcom/nianticproject/ingress/common/missions/eu;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/w/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/ev;->a:Lcom/nianticproject/ingress/common/missions/eu;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/eu;->a(Lcom/nianticproject/ingress/common/missions/eu;)V

    .line 196
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/ev;->a:Lcom/nianticproject/ingress/common/missions/eu;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/eu;->k:Lcom/nianticproject/ingress/common/model/m;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/ev;->a:Lcom/nianticproject/ingress/common/missions/eu;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/eu;->b(Lcom/nianticproject/ingress/common/missions/eu;)Lcom/nianticproject/ingress/common/model/l;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/m;->a(Lcom/nianticproject/ingress/common/model/l;)V

    .line 197
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/ev;->a:Lcom/nianticproject/ingress/common/missions/eu;

    const-string/jumbo v1, "Mission 2 (Portal Hacking) - Hack a Portal."

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/eu;->a_(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/ev;->a:Lcom/nianticproject/ingress/common/missions/eu;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/eu;->n:Lcom/nianticproject/ingress/common/c/e;

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->af:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 199
    return-void
.end method

.method public final u_()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/ev;->a:Lcom/nianticproject/ingress/common/missions/eu;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/eu;->k:Lcom/nianticproject/ingress/common/model/m;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/ev;->a:Lcom/nianticproject/ingress/common/missions/eu;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/eu;->b(Lcom/nianticproject/ingress/common/missions/eu;)Lcom/nianticproject/ingress/common/model/l;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/m;->b(Lcom/nianticproject/ingress/common/model/l;)V

    .line 204
    return-void
.end method
