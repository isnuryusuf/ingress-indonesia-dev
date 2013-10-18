.class final Lcom/nianticproject/ingress/common/missions/ay;
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
    .line 221
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/ay;->a:Lcom/nianticproject/ingress/common/missions/aw;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/w/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 225
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/ay;->a:Lcom/nianticproject/ingress/common/missions/aw;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/aw;->j:Lcom/nianticproject/ingress/common/g/ad;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/ay;->a:Lcom/nianticproject/ingress/common/missions/aw;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/aw;->c(Lcom/nianticproject/ingress/common/missions/aw;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/a/c/du;->b(Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/g/ad;->c(Ljava/util/Set;)V

    .line 230
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/ay;->a:Lcom/nianticproject/ingress/common/missions/aw;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/ay;->a:Lcom/nianticproject/ingress/common/missions/aw;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/aw;->d(Lcom/nianticproject/ingress/common/missions/aw;)Lcom/nianticproject/ingress/common/w/d;

    move-result-object v1

    const/4 v2, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/missions/aw;->a(Lcom/nianticproject/ingress/common/w/d;ILjava/util/concurrent/TimeUnit;)V

    .line 231
    return-void
.end method
