.class final Lcom/nianticproject/ingress/common/c/q;
.super Lcom/nianticproject/ingress/common/c/br;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/c/ai;

.field final synthetic b:Lcom/nianticproject/ingress/common/c/bn;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/c/bn;Lcom/nianticproject/ingress/common/c/ai;Lcom/nianticproject/ingress/common/c/bn;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    iput-object p2, p0, Lcom/nianticproject/ingress/common/c/q;->a:Lcom/nianticproject/ingress/common/c/ai;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/c/q;->b:Lcom/nianticproject/ingress/common/c/bn;

    iput-boolean p4, p0, Lcom/nianticproject/ingress/common/c/q;->c:Z

    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/c/br;-><init>(Lcom/nianticproject/ingress/common/c/bn;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "playTask"

    return-object v0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/q;->e:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->w()V

    .line 38
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/q;->a:Lcom/nianticproject/ingress/common/c/ai;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/q;->b:Lcom/nianticproject/ingress/common/c/bn;

    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/c/q;->c:Z

    invoke-interface {v0, v1, v2}, Lcom/nianticproject/ingress/common/c/ai;->a(Lcom/nianticproject/ingress/common/c/bn;Z)V

    .line 39
    return-void
.end method

.method protected final d()Z
    .locals 4

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/q;->e:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->u()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
