.class final Lcom/nianticproject/ingress/common/b/m;
.super Lcom/nianticproject/ingress/common/x/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nianticproject/ingress/common/b/k;

.field final synthetic c:Lcom/nianticproject/ingress/common/b/l;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/b/l;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/b/k;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/nianticproject/ingress/common/b/m;->c:Lcom/nianticproject/ingress/common/b/l;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/b/m;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/nianticproject/ingress/common/b/m;->b:Lcom/nianticproject/ingress/common/b/k;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/x/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 2
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/nianticproject/ingress/common/b/m;->c:Lcom/nianticproject/ingress/common/b/l;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/b/l;->b:Lcom/nianticproject/ingress/common/b/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/b/j;->a(Lcom/nianticproject/ingress/common/b/j;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/b/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/b/l;

    .line 116
    iget-object v1, v0, Lcom/nianticproject/ingress/common/b/l;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/a/a/an;->a(Z)V

    .line 117
    iget-object v1, p0, Lcom/nianticproject/ingress/common/b/m;->b:Lcom/nianticproject/ingress/common/b/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/b/k;->b()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/nianticproject/ingress/common/b/l;->a:Ljava/lang/Object;

    .line 118
    const/4 v0, 0x0

    return-object v0

    .line 116
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
