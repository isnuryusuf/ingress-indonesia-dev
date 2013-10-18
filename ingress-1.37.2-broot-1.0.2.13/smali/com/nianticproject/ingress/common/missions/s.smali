.class final Lcom/nianticproject/ingress/common/missions/s;
.super Lcom/nianticproject/ingress/common/w/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/s;->a:Lcom/nianticproject/ingress/common/missions/a;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/w/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 179
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/s;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/a;->n:Lcom/nianticproject/ingress/common/c/e;

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->ah:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 180
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/s;->a:Lcom/nianticproject/ingress/common/missions/a;

    const-string/jumbo v1, "Objectives complete"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/a;->a_(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/s;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/s;->a:Lcom/nianticproject/ingress/common/missions/a;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/missions/a;->r()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/a;->a(Ljava/util/Collection;)V

    .line 182
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/s;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/s;->a:Lcom/nianticproject/ingress/common/missions/a;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/a;->c(Lcom/nianticproject/ingress/common/missions/a;)Lcom/nianticproject/ingress/common/w/d;

    move-result-object v1

    const/4 v2, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/missions/a;->a(Lcom/nianticproject/ingress/common/w/d;ILjava/util/concurrent/TimeUnit;)V

    .line 184
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/s;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/a;->m:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->B()Lcom/nianticproject/ingress/common/ui/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/e/b;->b()V

    .line 185
    return-void
.end method
