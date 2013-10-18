.class final Lcom/nianticproject/ingress/common/model/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/model/k;

.field final synthetic b:Lcom/nianticproject/ingress/common/model/k;

.field final synthetic c:Lcom/nianticproject/ingress/common/model/g;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/model/g;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/model/k;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/nianticproject/ingress/common/model/h;->c:Lcom/nianticproject/ingress/common/model/g;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/model/h;->a:Lcom/nianticproject/ingress/common/model/k;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/model/h;->b:Lcom/nianticproject/ingress/common/model/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 9
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/h;->c:Lcom/nianticproject/ingress/common/model/g;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/model/g;->a(Lcom/nianticproject/ingress/common/model/g;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/model/l;

    .line 74
    iget-object v1, p0, Lcom/nianticproject/ingress/common/model/h;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/model/k;->a(Lcom/nianticproject/ingress/common/model/l;)V

    .line 75
    iget-object v1, p0, Lcom/nianticproject/ingress/common/model/h;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->c()J

    move-result-wide v1

    iget-object v3, p0, Lcom/nianticproject/ingress/common/model/h;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v3}, Lcom/nianticproject/ingress/common/model/k;->d()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    sget-object v7, Lcom/nianticproject/ingress/common/model/z;->d:Lcom/nianticproject/ingress/common/model/z;

    invoke-interface/range {v0 .. v7}, Lcom/nianticproject/ingress/common/model/l;->a(JJJLcom/nianticproject/ingress/common/model/z;)V

    .line 77
    iget-object v1, p0, Lcom/nianticproject/ingress/common/model/h;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->e()J

    move-result-wide v1

    invoke-static {}, Lcom/google/a/c/dc;->d()Lcom/google/a/c/dc;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/model/l;->a(JLjava/util/List;)V

    .line 78
    iget-object v1, p0, Lcom/nianticproject/ingress/common/model/h;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->l()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nianticproject/ingress/common/model/l;->a(IZ)V

    .line 80
    iget-object v1, p0, Lcom/nianticproject/ingress/common/model/h;->b:Lcom/nianticproject/ingress/common/model/k;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/nianticproject/ingress/common/model/h;->b:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->b()Lcom/nianticproject/ingress/shared/f;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/model/h;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/model/k;->b()Lcom/nianticproject/ingress/shared/f;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nianticproject/ingress/common/model/l;->a(Lcom/nianticproject/ingress/shared/f;Lcom/nianticproject/ingress/shared/f;)V

    .line 82
    iget-object v1, p0, Lcom/nianticproject/ingress/common/model/h;->b:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/model/h;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nianticproject/ingress/common/model/l;->a(Lcom/nianticproject/ingress/shared/ai;Lcom/nianticproject/ingress/shared/ai;)V

    goto :goto_0

    .line 85
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string/jumbo v0, "ForwardingPlayerModel#setPlayerModel:notify_listeners"

    return-object v0
.end method
